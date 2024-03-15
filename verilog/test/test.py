import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles

async def reset(dut):
    dut._log.info("reset")
    dut.n_rst.value = 0
    await ClockCycles(dut.clk, 10)
    dut.n_rst.value = 1

@cocotb.test()
async def test(dut):
    dut._log.info("start")
    clock = Clock(dut.clk, 10, units="us")
    cocotb.start_soon(clock.start())

    dut.ext_data.value = 0
    dut.load_divider.value = 0
    dut.data.value = 0

    await reset(dut)

    # test external control
    dut._log.info("reset")
    dut.ext_data.value = 1
    for i in range(2**8):
        dut.data.value = i
        await ClockCycles(dut.clk, 1)
        if i > 0:
            assert dut.r2r_out == i - 1

    # test internal generated clock
    dut.ext_data.value = 0
    await reset(dut)

    for i in range(2**8):
        await ClockCycles(dut.clk, 1)
        assert dut.r2r_out == i

    # test internal generated clock with divider
    await reset(dut)
    dut.data.value = 1
    dut.load_divider.value = 1
    await ClockCycles(dut.clk, 1)
    dut.load_divider.value = 0

    # check first 8 counts
    for i in range(8):
        for j in range(2**8):
            await ClockCycles(dut.clk, 1)
        # starts off at one, because in the first clock when we load the divider, the counter has already incremented
        assert dut.r2r_out == i + 1
