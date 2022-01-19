#!/usr/bin/zsh

# Written by create_cmip6_globus_batch_files.ipynb on 2022-01-19.
# Globus endpoint is 415a6320-e49c-11e5-9798-22000b9da45e (Name: LLNL ESGF).
# 1 batch file(s).
# Caution:
# Please do not run this script if previously submitted Globus transfers are still running (to reduce risk of two or more transfers trying to access same local file simultaneously, and in light of Globus limits).
# Environment variables:
# $GCP_EP_CMIP6 should point to destination Globus endpoint, including desired path.
# Usage:
# zsh 0_main_415a6320-e49c-11e5-9798-22000b9da45e_LLNL-ESGF.sh

# Is endpoint activated?
globus endpoint is-activated 415a6320-e49c-11e5-9798-22000b9da45e
if [ $? -ne 0 ]; then
    echo "415a6320-e49c-11e5-9798-22000b9da45e is not activated. Please activate then re-run this script."
    globus endpoint activate --web 415a6320-e49c-11e5-9798-22000b9da45e
    exit 1
fi

# Submit batch transfers
echo ACCESS-CM2_r1i1p1f1_mon_thetao_ssp585_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/ACCESS-CM2_r1i1p1f1_mon_thetao_ssp585_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_mon_thetao_ssp585_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1

exit 0
