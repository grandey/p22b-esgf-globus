#!/usr/bin/zsh

# Written by create_cmip6_globus_batch_files.ipynb on 2022-01-19.
# Globus endpoint is ee3aa1a0-7e4c-11e6-afc4-22000b92c261 (Name: CEDA ESGF DN1).
# 1 batch file(s).
# Caution:
# Please do not run this script if previously submitted Globus transfers are still running (to reduce risk of two or more transfers trying to access same local file simultaneously, and in light of Globus limits).
# Environment variables:
# $GCP_EP_CMIP6 should point to destination Globus endpoint, including desired path.
# Usage:
# zsh 0_main_ee3aa1a0-7e4c-11e6-afc4-22000b92c261_CEDA-ESGF-DN1.sh

# Is endpoint activated?
globus endpoint is-activated ee3aa1a0-7e4c-11e6-afc4-22000b92c261
if [ $? -ne 0 ]; then
    echo "ee3aa1a0-7e4c-11e6-afc4-22000b92c261 is not activated. Please activate then re-run this script."
    globus endpoint activate --web ee3aa1a0-7e4c-11e6-afc4-22000b92c261
    exit 1
fi

# Submit batch transfers
echo ACCESS-CM2_r1i1p1f1_mon_thetao_ssp585_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/ACCESS-CM2_r1i1p1f1_mon_thetao_ssp585_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_mon_thetao_ssp585_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 1

exit 0
