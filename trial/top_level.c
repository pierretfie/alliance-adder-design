#include "/home/pierre-tfie/alliance/install/include/genlib.h"

int main() {
    // Define the top-level circuit
    GENLIB_DEF_LOFIG("top_level");

    // Define ports of the top-level design
    GENLIB_LOCON("a", IN, "a");
    GENLIB_LOCON("b", IN, "b");
    GENLIB_LOCON("cin", IN, "cin");
    GENLIB_LOCON("sum", OUT, "sum");
    GENLIB_LOCON("cout", OUT, "cout");
    GENLIB_LOCON("vdd", IN, "vdd");
    GENLIB_LOCON("vss", IN, "vss");

    // Instantiate the existing modules
    GENLIB_LOINS("adder_boog", "U_boog", "a", "b", "cin", "sum", "cout", "vdd", "vss", 0);
    GENLIB_LOINS("adder_loon", "U_loon", "a", "b", "cin", "sum", "cout", "vdd", "vss", 0);

    // Save the top-level design
    GENLIB_SAVE_LOFIG();
    return 0;
}

