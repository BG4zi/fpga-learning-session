set -e

ghdl -a *.vhd
ghdl -e tb_top
ghdl -r tb_top --wave=wave.ghw

