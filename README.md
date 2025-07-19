# AMBA AHB Protocol Implementation in Verilog

This project implements the **AMBA AHB (Advanced High-performance Bus)** protocol using Verilog HDL. It includes key components of an AHB system such as the **master**, **slave**, **decoder**, and **multiplexer**. The design follows ARM's official AHB specification and demonstrates pipelined and burst data transfers.

---

## Project Overview

- **Protocol:** AMBA AHB (ARM standard)
- **Language:** Verilog HDL
- **Design Approach:** RTL-level implementation
- **Simulation Tool:** ModelSim Simulator
- 
---

## Module Descriptions

### 1. Master
- Generates address, control, and write data signals.
- Supports burst transfers and pipelined operations.

### 2. Slave
- Responds to master requests.
- Provides read data and transfer responses (HRESP, HREADYOUT).

### 3. Decoder
- Selects the appropriate slave based on the address.

### 4. Multiplexer
- Routes read data and response signals from the selected slave to the master.

---

## Key Protocol Features Implemented

- Pipelined **address and data phases**
- Transfer types: `IDLE`, `BUSY`, `NONSEQ`, `SEQ` (via `HTRANS`)
- Burst types: `SINGLE`, `INCR`, `WRAP` (via `HBURST`)
- Read and write direction control (`HWRITE`)
- Handshaking with `HREADY` and `HRESP`

---




