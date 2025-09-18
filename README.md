# AMBA AHB Protocol Implementation in Verilog

This project implements the **AMBA AHB (Advanced High-performance Bus)** protocol using Verilog HDL.
It models a **single master – single slave** configuration, following ARM’s official AHB specification.
The design demonstrates pipelined and burst data transfers using RTL-level Verilog.

---

## Project Overview

* **Protocol:** AMBA AHB (ARM standard)
* **Language:** Verilog HDL
* **Design Approach:** RTL-level implementation
* **Simulation Tool:** ModelSim Simulator

---

## Module Descriptions

### 1. Master

* Generates address, control, and write data signals.
* Supports pipelined operations and burst transfers.
* Drives signals such as `HADDR`, `HTRANS`, `HWRITE`, `HBURST`, and `HWDATA`.

### 2. Slave

* Responds to master requests.
* Provides read data and transfer responses (`HRDATA`, `HRESP`, `HREADYOUT`).
* Handles both read and write transactions.

---

## Key Protocol Features Implemented

* **Pipelined address and data phases**
* Transfer types via `HTRANS`:

  * `IDLE`, `BUSY`, `NONSEQ`, `SEQ`
* Burst types via `HBURST`:

  * `SINGLE`, `INCR`, `WRAP`
* Read/Write control using `HWRITE`
* Handshaking using `HREADY` and `HRESP`

---

## Future Extensions

* Add support for multiple slaves (requires decoder and mux).
* Include multiple masters with arbitration logic.
* Implement advanced burst wrapping and split transfers.
