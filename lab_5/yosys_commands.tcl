# Read modules from Verilog file
read_verilog top.v

# Elaborate design hierarchy
hierarchy -check -top top

# Translate processes to netlists
proc

# Mapping to the internal cell library
techmap

# Mapping flip-flops to Nangate Open Cell Library typical.lib
# for example, always block
dfflibmap -liberty Nangate_Open_Cell_Library_typical.lib

# Mapping logic to Nangate Open Cell Library typical.lib
# for example, assign block
abc -liberty Nangate_Open_Cell_Library_typical.lib

# Remove unused cells and wires
clean

# Write the current design to a Verilog file
write_verilog -noattr synthesized_example.v

