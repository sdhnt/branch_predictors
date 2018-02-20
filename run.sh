#!/usr/bin/sh

pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type local -num_BP_entries 4096 -o stats_tournament.out -- $GROMACS_PATH/gromacs_base.amd64-m64-gcc41-nn -silent -deffnm $GROMACS_PATH/input/gromacs -nice 0 > gromacs.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type local -num_BP_entries 1024 -o stats_tournament.out -- $GROMACS_PATH/gromacs_base.amd64-m64-gcc41-nn -silent -deffnm $GROMACS_PATH/input/gromacs -nice 0 > gromacs.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type local -num_BP_entries 128 -o stats_tournament.out -- $GROMACS_PATH/gromacs_base.amd64-m64-gcc41-nn -silent -deffnm $GROMACS_PATH/input/gromacs -nice 0 > gromacs.out

pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type gshare -num_BP_entries 4096 -o stats_tournament.out -- $GROMACS_PATH/gromacs_base.amd64-m64-gcc41-nn -silent -deffnm $GROMACS_PATH/input/gromacs -nice 0 > gromacs.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type gshare -num_BP_entries 1024 -o stats_tournament.out -- $GROMACS_PATH/gromacs_base.amd64-m64-gcc41-nn -silent -deffnm $GROMACS_PATH/input/gromacs -nice 0 > gromacs.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type gshare -num_BP_entries 128 -o stats_tournament.out -- $GROMACS_PATH/gromacs_base.amd64-m64-gcc41-nn -silent -deffnm $GROMACS_PATH/input/gromacs -nice 0 > gromacs.out

pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type tournament -num_BP_entries 4096 -o stats_tournament.out -- $GROMACS_PATH/gromacs_base.amd64-m64-gcc41-nn -silent -deffnm $GROMACS_PATH/input/gromacs -nice 0 > gromacs.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type tournament -num_BP_entries 1024 -o stats_tournament.out -- $GROMACS_PATH/gromacs_base.amd64-m64-gcc41-nn -silent -deffnm $GROMACS_PATH/input/gromacs -nice 0 > gromacs.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type tournament -num_BP_entries 128 -o stats_tournament.out -- $GROMACS_PATH/gromacs_base.amd64-m64-gcc41-nn -silent -deffnm $GROMACS_PATH/input/gromacs -nice 0 > gromacs.out

pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type local -num_BP_entries 4096 -o stats_tournament.out -- $GOBMK_PATH/gobmk_base.amd64-m64-gcc41-nn --quiet --mode gtp < $GOBMK_PATH/13x13.tst > gobmk.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type local -num_BP_entries 1024 -o stats_tournament.out -- $GOBMK_PATH/gobmk_base.amd64-m64-gcc41-nn --quiet --mode gtp < $GOBMK_PATH/13x13.tst > gobmk.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type local -num_BP_entries 128 -o stats_tournament.out -- $GOBMK_PATH/gobmk_base.amd64-m64-gcc41-nn --quiet --mode gtp < $GOBMK_PATH/13x13.tst > gobmk.out

pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type gshare -num_BP_entries 4096 -o stats_tournament.out -- $GOBMK_PATH/gobmk_base.amd64-m64-gcc41-nn --quiet --mode gtp < $GOBMK_PATH/13x13.tst > gobmk.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type gshare -num_BP_entries 1024 -o stats_tournament.out -- $GOBMK_PATH/gobmk_base.amd64-m64-gcc41-nn --quiet --mode gtp < $GOBMK_PATH/13x13.tst > gobmk.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type gshare -num_BP_entries 128 -o stats_tournament.out -- $GOBMK_PATH/gobmk_base.amd64-m64-gcc41-nn --quiet --mode gtp < $GOBMK_PATH/13x13.tst > gobmk.out

pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type tournament -num_BP_entries 4096 -o stats_tournament.out -- $GOBMK_PATH/gobmk_base.amd64-m64-gcc41-nn --quiet --mode gtp < $GOBMK_PATH/13x13.tst > gobmk.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type tournament -num_BP_entries 1024 -o stats_tournament.out -- $GOBMK_PATH/gobmk_base.amd64-m64-gcc41-nn --quiet --mode gtp < $GOBMK_PATH/13x13.tst > gobmk.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type tournament -num_BP_entries 128 -o stats_tournament.out -- $GOBMK_PATH/gobmk_base.amd64-m64-gcc41-nn --quiet --mode gtp < $GOBMK_PATH/13x13.tst > gobmk.out

pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type local -num_BP_entries 4096 -o stats_tournament.out -- $SJENG_PATH/sjeng_base.amd64-m64-gcc41-nn $SJENG_PATH/ref.txt > sjeng.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type local -num_BP_entries 1024 -o stats_tournament.out -- $SJENG_PATH/sjeng_base.amd64-m64-gcc41-nn $SJENG_PATH/ref.txt > sjeng.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type local -num_BP_entries 128 -o stats_tournament.out -- $SJENG_PATH/sjeng_base.amd64-m64-gcc41-nn $SJENG_PATH/ref.txt > sjeng.out

pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type gshare -num_BP_entries 4096 -o stats_tournament.out -- $SJENG_PATH/sjeng_base.amd64-m64-gcc41-nn $SJENG_PATH/ref.txt > sjeng.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type gshare -num_BP_entries 1024 -o stats_tournament.out -- $SJENG_PATH/sjeng_base.amd64-m64-gcc41-nn $SJENG_PATH/ref.txt > sjeng.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type gshare -num_BP_entries 128 -o stats_tournament.out -- $SJENG_PATH/sjeng_base.amd64-m64-gcc41-nn $SJENG_PATH/ref.txt > sjeng.out

pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type tournament -num_BP_entries 4096 -o stats_tournament.out -- $SJENG_PATH/sjeng_base.amd64-m64-gcc41-nn $SJENG_PATH/ref.txt > sjeng.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type tournament -num_BP_entries 1024 -o stats_tournament.out -- $SJENG_PATH/sjeng_base.amd64-m64-gcc41-nn $SJENG_PATH/ref.txt > sjeng.out
pin -t $BP_EXAMPLE/obj-intel64/branch_predictor_example.so -BP_type tournament -num_BP_entries 128 -o stats_tournament.out -- $SJENG_PATH/sjeng_base.amd64-m64-gcc41-nn $SJENG_PATH/ref.txt > sjeng.out
