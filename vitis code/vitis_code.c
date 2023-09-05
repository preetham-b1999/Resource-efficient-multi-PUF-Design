/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */
#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "xuartlite.h"
#include <stdio.h>
#include "sleep.h"
#include <string.h>
#include <stdlib.h>

XGpio axi_gpio_0;
XGpio axi_gpio_1;
XUartLite UartLite;
void up_reset();
void down_reset();
void set_challenge(int chal);
int get_response();

int main()
{
	int response;
	int challenge;
	int challeng;
	int buff=0;
	XGpio_Initialize(&axi_gpio_0,XPAR_GPIO_0_DEVICE_ID);
	XGpio_Initialize(&axi_gpio_1,XPAR_GPIO_1_DEVICE_ID);
	XUartLite_Initialize(&UartLite, XPAR_AXI_UARTLITE_0_DEVICE_ID);

	XGpio_SetDataDirection(&axi_gpio_0,1,0x00000000);
	XGpio_SetDataDirection(&axi_gpio_0,2,0xffffffff);
	XGpio_SetDataDirection(&axi_gpio_1,1,0);
	XGpio_SetDataDirection(&axi_gpio_1,2,0);

		up_reset();
		XGpio_DiscreteWrite(&axi_gpio_1,2,1);
		XGpio_DiscreteWrite(&axi_gpio_0,1,0XF0F0F0F0);
		usleep(250000);
		XGpio_DiscreteWrite(&axi_gpio_1,2,0);
		down_reset();
		usleep(250000);
		response=XGpio_DiscreteRead(&axi_gpio_0,2);
		xil_printf("%x\r\n",response);
		//xil_printf(response);
		usleep(25000);

		up_reset();
		XGpio_DiscreteWrite(&axi_gpio_1,2,1);
		XGpio_DiscreteWrite(&axi_gpio_0,1,0XF1F1F1F1);
		usleep(250000);
		XGpio_DiscreteWrite(&axi_gpio_1,2,0);
		down_reset();
		usleep(25000);
		response=XGpio_DiscreteRead(&axi_gpio_0,2);
		//xil_printf("%s&&%x\r\n", "F1F1F1F1", response);
		xil_printf("%x\r\n",response);
		//xil_printf(response);
		usleep(25000);

	for(challeng=0; challeng <1024; challeng++)
		{
			up_reset();
			XGpio_DiscreteWrite(&axi_gpio_1,2,1);
			challenge=4294967295-challeng;
			set_challenge(challenge);
			usleep(250000);
			XGpio_DiscreteWrite(&axi_gpio_1,2,0);
			down_reset();
			usleep(250000);
			response=get_response();
			buff=buff+1;
			//xil_printf("%x     %x\r\n", challenge, response);
			xil_printf("%x\r\n", response);
			//if (challenge==4294967295)
			//{
				//break;
			//}
		}
	xil_printf("number of CRPs: %x",buff);
}


void up_reset()
{
	XGpio_DiscreteWrite(&axi_gpio_1,1,1);
}

/*void up_clr()
{
	XGpio_DiscreteWrite(&axi_gpio_1,2,1);
}*/

void down_reset()
{
	XGpio_DiscreteWrite(&axi_gpio_1,1,0);
}

/*void down_clr()
{
	XGpio_DiscreteWrite(&axi_gpio_1,2,0);
}*/

void set_challenge(int chal)
{
	XGpio_DiscreteWrite(&axi_gpio_0,1,chal);
}


int get_response()
{
	int response;
	response=XGpio_DiscreteRead(&axi_gpio_0,2);
	return response;
}


