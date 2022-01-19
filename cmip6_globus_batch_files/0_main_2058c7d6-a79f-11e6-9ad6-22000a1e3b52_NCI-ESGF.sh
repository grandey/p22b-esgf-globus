#!/usr/bin/zsh

# Written by create_cmip6_globus_batch_files.ipynb on 2022-01-19.
# Globus endpoint is 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 (Name: NCI ESGF).
# 1 batch file(s).
# Caution:
# Please do not run this script if previously submitted Globus transfers are still running (to reduce risk of two or more transfers trying to access same local file simultaneously, and in light of Globus limits).
# Environment variables:
# $GCP_EP_CMIP6 should point to destination Globus endpoint, including desired path.
# Usage:
# zsh 0_main_2058c7d6-a79f-11e6-9ad6-22000a1e3b52_NCI-ESGF.sh

# Is endpoint activated?
globus endpoint is-activated 2058c7d6-a79f-11e6-9ad6-22000a1e3b52
if [ $? -ne 0 ]; then
    echo "2058c7d6-a79f-11e6-9ad6-22000a1e3b52 is not activated. Please activate then re-run this script."
    globus endpoint activate --web 2058c7d6-a79f-11e6-9ad6-22000a1e3b52
    exit 1
fi

# Submit batch transfers
echo ACCESS-CM2_r1i1p1f1_mon_thetao_ssp585_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/ACCESS-CM2_r1i1p1f1_mon_thetao_ssp585_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_mon_thetao_ssp585_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1

exit 0
