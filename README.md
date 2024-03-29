# p22b-esgf-globus
Use Globus to download data from ESGF, including CMIP6 data.

## Requirements and setup
1. A [Globus](https://www.globus.org) account.
2. [Globus Connect Personal](https://www.globus.org/globus-connect-personal).
3. An ESGF OpenID / CoG account, for activation of Globus Endpoints.

Additional requirements - including the [Globus GLI](https://docs.globus.org/cli/) and [ESGF PyClient](https://github.com/ESGF/esgf-pyclient) - can be installed via the [environment.yml](environment.yml) file with `conda`:
```
conda env create --file environment.yml
conda activate p22b-esgf-globus
```

If [environment.yml](environment.yml) has been modified, then recreate the environment from scratch using the `--force` option:
```
conda env create --file environment.yml --force
```
(Note: `conda env update --prune` does not currently appear to work as expected - see https://github.com/conda/conda/issues/7279.)

## Creating Globus batch files and transfer submission scripts
[create_cmip6_globus_batch_files.ipynb](create_cmip6_globus_batch_files.ipynb) writes the Globus batch files and transfer submission scripts. The files  and scripts are saved in [cmip6_globus_batch_files/](cmip6_globus_batch_files/).

## Submitting transfers via scripts
The zsh scripts in [cmip6_globus_batch_files/](cmip6_globus_batch_files/) can be used to initiate Globus transfers.  For example,
```
zsh 0_main_415a6320-e49c-11e5-9798-22000b9da45e_LLNL-ESGF.sh
```
Before running each script, check that no previously submitted Globus transfers are still active (in order to reduce the risk of two or more transfers trying to write same local file simultaneously, and in light of Globus limits). After running a script, wait for the transfers to complete before running the next script.

## Author
B. S. Grandey (Nanyang Technological University), in collaboration with colleagues at NTU.

## Acknowledgements
This Research/Project is supported by the National Research Foundation, Singapore, and National Environment Agency, Singapore under the National Sea Level Programme Funding Initiative (Award No. USS-IF-2020-3).

We acknowledge the World Climate Research Programme, which, through its Working Group on Coupled Modelling, coordinated and promoted CMIP6. We thank the climate modeling groups for producing and making available their model output, the Earth System Grid Federation (ESGF) for archiving the data and providing access, and the multiple funding agencies who support CMIP6 and ESGF.
