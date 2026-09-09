# data

Raw datasets used by the notebooks in this repo. Each dataset lives in its
own subdirectory with a `download.sh` script that fetches it; `data/Makefile`
wraps these scripts into `make` targets.

## Usage

- `make -C data` — download all datasets.
- `make -C data <name>` — download just one dataset (e.g. `make -C data candia`).
- `make -C data force-<name>` — redownload even if files already exist.
- `make -C data clean-<name>` — remove a dataset's downloaded files.
- `make -C data clean` — remove all downloaded datasets.

## Datasets

### candia

SomaScan 7k plasma proteomics variability data from Candia et al.,
*Scientific Reports*, 12:17147 (2022).

- Source: https://osf.io/srgef/
- Directory: `data/candia/`
- Size: ~959 MB total (13 files)

| File | Size |
|------|------|
| RFU_hyb.msnCal.ps.cal.msnAll.txt | 132 MB |
| RFU_hyb.msnCal.ps.cal.txt | 132 MB |
| RFU_hyb.msnCal.ps.txt | 132 MB |
| RFU_hyb.msnCal.txt | 132 MB |
| RFU_hyb.txt | 132 MB |
| SS-217041.hybNorm.medNormInt.plateScale.calibrate.anmlQC.qcCheck.anmlSMP.adat | 102 MB |
| SS-217041.raw.adat | 99 MB |
| RFU_raw.txt | 95 MB |
| plate.txt | 2.9 MB |
| somamer.txt | 744 KB |
| sample.txt | 520 KB |
| README.pdf | 94 KB |
| Normalization_Pipeline.R | 6.5 KB |

Make sure you have enough free disk space (roughly 1 GB) before running the
download.

<!-- Add new datasets above this line, following the same format:
     name, one-line description, source link, directory, size table. -->

## Adding a new dataset

1. Create `data/<name>/download.sh`, following the `--force`/`--clean`
   convention used by `data/candia/download.sh`.
2. Add `<name>` to `DATASETS` in `data/Makefile`.
3. Document it under [Datasets](#datasets) above, including source, size,
   and a per-file breakdown.
