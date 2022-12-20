export PLATFORM               = asap7

export DESIGN_NICKNAME        = dinocpu_single_cycle
export DESIGN_NAME            = SingleCycleCPU

export VERILOG_FILES         = $(sort $(wildcard ./designs/src/$(DESIGN_NICKNAME)/*.v))
export SDC_FILE              = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

# Control Unit
# export CORE_UTILIZATION       = 20
# export CORE_ASPECT_RATIO      = 1
# export CORE_MARGIN            = 2
# export PLACE_DENSITY = 0.72

# Register File
# export CORE_UTILIZATION = 20
# export CORE_ASPECT_RATIO = 1
# export CORE_MARGIN = 2
# export PLACE_DENSITY = 0.75

# SingleCycleCPU
export CORE_UTILIZATION = 40
export CORE_ASPECT_RATIO = 1
export CORE_MARGIN = 2
export PLACE_DENSITY = 0.75

#export GLOBAL_PLACEMENT_ARGS = -init_density_penalty 0.000001 -verbose_level 10

#export DIE_AREA               = 0 0 2.5 2.5
#export CORE_AREA              = 0.5 0.5 2 2

export ENABLE_DPO = 0

export DFF_LIB_FILE           = $($(CORNER)_DFF_LIB_FILE)
