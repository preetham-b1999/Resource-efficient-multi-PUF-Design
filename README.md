# Resource-Efficient-Multi-PUF-Design
A multi-PUF consists of both weak PUF and strong PUF. Here we will design a weak PUF circuit with PICO PUFs and XOR gates, and consider FFAPUF as our strong PUF. Two Multi PUF techniques are proposed below. Let the challenge bits be C1 to Cn. We are considering 32-bit input challenges, so n is equal to 32.

PICO PUF

![PICO_PUF](https://github.com/bsp9991/Resource-efficient-multi-PUF-Design/assets/130135576/45ce2d32-bbdd-4895-a4fe-3dd84f91d3db)

The below circuit refers to MPUF-t1

![mpuf_t1](https://github.com/bsp9991/Resource-efficient-multi-PUF-Design/assets/130135576/96bdc4cc-30cf-4e57-98ce-80ffa56cdf1c)

The extended version of MPUF-t1 is MPUF-t2. The following figure depicts MPUF-t2

![mpuf_t2](https://github.com/bsp9991/Resource-efficient-multi-PUF-Design/assets/130135576/668b69fb-95e9-479c-bb5f-c3cdec1aced5)

The above summarizes our weak PUF circuit.

These above-obfuscated challenge bits act as input to the strong PUF FFAPUF. The FFAPUF we considered has two types of slices

Type-1 slice: It requires 3 input bits.

![ffapuf_slice1](https://github.com/bsp9991/Resource-efficient-multi-PUF-Design/assets/130135576/ca0a7685-a504-438a-84e4-5dec94740573)

Type-2 slice: It requires 2 input bits.

![ffapuf_slice2](https://github.com/bsp9991/Resource-efficient-multi-PUF-Design/assets/130135576/ce534209-cbeb-43a6-96cc-d504cf45c41b)

Tools and technologies used in this project are Xilinx Vivado, Vitis, Verilog, C++, Python, Tcl, VScode, and MATLAB.
Respective Verilog, C++, and MATLAB codes along with constraint files are given.

Further, we will also be creating a softcore Microblaze IP for establishing the UART protocol. It enables us to send corresponding challenges, control signals, and receive responses.

![MicroBlaze](https://github.com/bsp9991/Resource-efficient-multi-PUF-Design/assets/130135576/8f06effe-d5e5-4619-8465-838810245d05)

Corresponding Vitis codes are written which uses the established UART protocol to send control signals and receive responses from implemented PUF.
