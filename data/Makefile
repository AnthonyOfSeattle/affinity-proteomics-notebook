# To add a dataset: create data/<name>/download.sh supporting --force and
# --clean (see data/candia/download.sh), then add <name> to DATASETS below.
DATASETS := candia

FORCE_TARGETS := $(addprefix force-,$(DATASETS))
CLEAN_TARGETS := $(addprefix clean-,$(DATASETS))

.PHONY: all clean $(DATASETS) $(FORCE_TARGETS) $(CLEAN_TARGETS)

all: $(DATASETS)

$(DATASETS):
	bash $@/download.sh

$(FORCE_TARGETS):
	bash $(patsubst force-%,%,$@)/download.sh --force

$(CLEAN_TARGETS):
	bash $(patsubst clean-%,%,$@)/download.sh --clean

clean: $(CLEAN_TARGETS)
