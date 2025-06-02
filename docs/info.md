## Cómo funciona

Este proyecto implementa una Unidad Aritmético-Lógica (ALU) de 8 bits capaz de realizar cinco operaciones: suma, AND, OR, XOR y NOT.
El núcleo de la ALU utiliza un sumador en cascada tipo ripple-carry compuesto por ocho sumadores completos (full adders) de 1 bit para realizar la suma.

El módulo recibe dos operandos de 4 bits (A y B) y una señal de selección de 3 bits (sel), que define la operación a realizar. Las señales están conectadas al estándar de entradas de Tiny Tapeout de la siguiente forma:

ui_in[3:0] → Operando A

ui_in[7:4] → Operando B

uio_in[2:0] → Selector de operación sel

El resultado se muestra en el bus de salida de 8 bits uo_out.

La ALU es completamente combinacional y no necesita señal de reloj (clk).

## Cómo probarlo

Para probar el diseño:

Asigna 8 bits a ui_in (4 bits para A y 4 bits para B).

Selecciona la operación deseada mediante uio_in[2:0]:

000: A + B

001: A AND B

010: A OR B

011: A XOR B

100: NOT A (B se ignora)

Observa el resultado en uo_out (8 bits de salida).

También puedes simular el módulo con Icarus Verilog y un testbench para verificar cada operación con entradas conocidas.

##  Hardware externo

Este proyecto es completamente digital y no requiere hardware externo cuando se simula o se fabrica mediante Tiny Tapeout.

Sin embargo, si se implementa en una FPGA como la Basys 3, se utilizan los siguientes elementos:

11 switches (SW0 a SW10): para ingresar los operandos A, B y la señal de selección sel

8 LEDs (LD0 a LD7): para visualizar el resultado de salida

No se utilizan PMODs, pantallas ni componentes adicionales.
