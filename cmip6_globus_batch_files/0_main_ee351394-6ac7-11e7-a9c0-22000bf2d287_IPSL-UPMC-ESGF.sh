#!/usr/bin/zsh

# Written by create_cmip6_globus_batch_files.ipynb on 2022-04-06.
# Globus endpoint is ee351394-6ac7-11e7-a9c0-22000bf2d287 (Name: IPSL UPMC ESGF).
# 3 batch file(s).
# Caution:
# Please do not run this script if previously submitted Globus transfers are still running (to reduce risk of two or more transfers trying to access same local file simultaneously, and in light of Globus limits).
# Environment variables:
# $GCP_EP_CMIP6 should point to destination Globus endpoint, including desired path.
# Usage:
# zsh 0_main_ee351394-6ac7-11e7-a9c0-22000bf2d287_IPSL-UPMC-ESGF.sh

# Is endpoint activated?
globus endpoint is-activated ee351394-6ac7-11e7-a9c0-22000bf2d287
if [ $? -ne 0 ]; then
    echo "ee351394-6ac7-11e7-a9c0-22000bf2d287 is not activated. Please activate then re-run this script."
    globus endpoint activate --web ee351394-6ac7-11e7-a9c0-22000bf2d287
    exit 1
fi

# Submit batch transfers
echo IPSL-CM6A-LR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_ee351394-6ac7-11e7-a9c0-22000bf2d287
globus transfer ee351394-6ac7-11e7-a9c0-22000bf2d287 $GCP_EP_CMIP6 --batch ee351394-6ac7-11e7-a9c0-22000bf2d287/IPSL-CM6A-LR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_ee351394-6ac7-11e7-a9c0-22000bf2d287.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM6A-LR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_ee351394-6ac7-11e7-a9c0-22000bf2d287"
sleep 1
echo IPSL-CM5A2-INCA_r1i1p1f1_Amon_4vars-inc-rlut_6exps_ee351394-6ac7-11e7-a9c0-22000bf2d287
globus transfer ee351394-6ac7-11e7-a9c0-22000bf2d287 $GCP_EP_CMIP6 --batch ee351394-6ac7-11e7-a9c0-22000bf2d287/IPSL-CM5A2-INCA_r1i1p1f1_Amon_4vars-inc-rlut_6exps_ee351394-6ac7-11e7-a9c0-22000bf2d287.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM5A2-INCA_r1i1p1f1_Amon_4vars-inc-rlut_6exps_ee351394-6ac7-11e7-a9c0-22000bf2d287"
sleep 1
echo IPSL-CM6A-LR_r1i1p1f1_mon_4vars-inc-rlut_6exps_ee351394-6ac7-11e7-a9c0-22000bf2d287
globus transfer ee351394-6ac7-11e7-a9c0-22000bf2d287 $GCP_EP_CMIP6 --batch ee351394-6ac7-11e7-a9c0-22000bf2d287/IPSL-CM6A-LR_r1i1p1f1_mon_4vars-inc-rlut_6exps_ee351394-6ac7-11e7-a9c0-22000bf2d287.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM6A-LR_r1i1p1f1_mon_4vars-inc-rlut_6exps_ee351394-6ac7-11e7-a9c0-22000bf2d287"
sleep 1

exit 0
