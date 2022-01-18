# p22b-esgf-download
Use Globus to download data from ESGF, including CMIP6 data.

## Requirements and setup
1. A Globus account (https://www.globus.org).
2. Globus Connect Personal (https://www.globus.org/globus-connect-personal).
3. An ESGF OpenID / CoG account, for activation of Globus Endpoints.

Additional requirements - including the Globus GLI (https://docs.globus.org/cli/) and ESGF PyClient (https://github.com/ESGF/esgf-pyclient) - can be installed via the `environment.yml` file with `conda`:
```
conda env create --file environment.yml
conda activate p22b-esgf-download
```

If `environment.yml` has been modified, then recreate the environment from scratch using the `--force` option:
```
conda env create --file environment.yml --force
```
(Note: `conda env update --prune` does not currently appear to work as expected - see https://github.com/conda/conda/issues/7279.)

## Author
B. S. Grandey (Nanyang Technological University), in collaboration with colleagues at NTU.

## Acknowledgements
This research / project is supported by the National Research Foundation, Singapore, and Ministry of National Development, Singapore under its Urban Solutions and Sustainability Integration Fund (Award No.: USS-IF-2020-3).
