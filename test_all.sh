echo "Testing Brandy BBC BASIC: "
time brandy -quit spdtest.bbc.txt
echo

echo "Testing Johnsonscript: "
time gfxbin spdtest.johnsonscript
echo

echo "Testing tclsh: "
time tclsh spdtest.tcl
echo

echo "Testing python3: "
time python3 spdtest.py
echo

echo "Testing lua5.1: "
time lua spdtest.lua 
echo
