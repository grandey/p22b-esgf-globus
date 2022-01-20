#!/usr/bin/zsh

# Written by create_cmip6_globus_batch_files.ipynb on 2022-01-20.
# Globus endpoint is 4101e3a0-b7df-11eb-a16a-5fad80e6400b (Name: esgfcmcc#esgf-node2.cmcc.it).
# 2 batch file(s).
# Caution:
# Please do not run this script if previously submitted Globus transfers are still running (to reduce risk of two or more transfers trying to access same local file simultaneously, and in light of Globus limits).
# Environment variables:
# $GCP_EP_CMIP6 should point to destination Globus endpoint, including desired path.
# Usage:
# zsh 0_main_4101e3a0-b7df-11eb-a16a-5fad80e6400b_esgfcmcc#esgf-node2.cmcc.it.sh

# Is endpoint activated?
globus endpoint is-activated 4101e3a0-b7df-11eb-a16a-5fad80e6400b
if [ $? -ne 0 ]; then
    echo "4101e3a0-b7df-11eb-a16a-5fad80e6400b is not activated. Please activate then re-run this script."
    globus endpoint activate --web 4101e3a0-b7df-11eb-a16a-5fad80e6400b
    exit 1
fi

# Submit batch transfers
echo CMCC-CM2-SR5_r1i1p1f1_mon_zostoga-zos_6exps_4101e3a0-b7df-11eb-a16a-5fad80e6400b
globus transfer 4101e3a0-b7df-11eb-a16a-5fad80e6400b $GCP_EP_CMIP6 --batch 4101e3a0-b7df-11eb-a16a-5fad80e6400b/CMCC-CM2-SR5_r1i1p1f1_mon_zostoga-zos_6exps_4101e3a0-b7df-11eb-a16a-5fad80e6400b.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-CM2-SR5_r1i1p1f1_mon_zostoga-zos_6exps_4101e3a0-b7df-11eb-a16a-5fad80e6400b"
sleep 1
echo CMCC-ESM2_r1i1p1f1_mon_zostoga-zos_6exps_4101e3a0-b7df-11eb-a16a-5fad80e6400b
globus transfer 4101e3a0-b7df-11eb-a16a-5fad80e6400b $GCP_EP_CMIP6 --batch 4101e3a0-b7df-11eb-a16a-5fad80e6400b/CMCC-ESM2_r1i1p1f1_mon_zostoga-zos_6exps_4101e3a0-b7df-11eb-a16a-5fad80e6400b.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-ESM2_r1i1p1f1_mon_zostoga-zos_6exps_4101e3a0-b7df-11eb-a16a-5fad80e6400b"
sleep 1

exit 0
