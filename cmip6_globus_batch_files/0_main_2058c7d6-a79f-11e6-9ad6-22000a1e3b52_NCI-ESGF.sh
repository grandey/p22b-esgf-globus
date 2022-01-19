#!/usr/bin/zsh

# Written by create_cmip6_globus_batch_files.ipynb on 2022-01-19.
# Globus endpoint is 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 (Name: NCI ESGF).
# 24 batch file(s).
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
echo ACCESS-CM2_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/ACCESS-CM2_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo ACCESS-ESM1-5_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/ACCESS-ESM1-5_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-ESM1-5_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo BCC-CSM2-MR_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/BCC-CSM2-MR_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-CSM2-MR_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo BCC-ESM1_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/BCC-ESM1_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-ESM1_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo CMCC-CM2-SR5_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CMCC-CM2-SR5_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-CM2-SR5_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo CNRM-CM6-1_r1i1p1f2_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CNRM-CM6-1_r1i1p1f2_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1_r1i1p1f2_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo CNRM-CM6-1-HR_r1i1p1f2_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CNRM-CM6-1-HR_r1i1p1f2_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1-HR_r1i1p1f2_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo CNRM-ESM2-1_r1i1p1f2_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CNRM-ESM2-1_r1i1p1f2_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-ESM2-1_r1i1p1f2_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo CanESM5_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CanESM5_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo EC-Earth3_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/EC-Earth3_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo EC-Earth3-Veg_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/EC-Earth3-Veg_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo EC-Earth3-Veg-LR_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/EC-Earth3-Veg-LR_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg-LR_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo INM-CM4-8_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/INM-CM4-8_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM4-8_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo INM-CM5-0_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/INM-CM5-0_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM5-0_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo IPSL-CM6A-LR_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/IPSL-CM6A-LR_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM6A-LR_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo MIROC6_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MIROC6_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC6_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo MPI-ESM-1-2-HAM_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MPI-ESM-1-2-HAM_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM-1-2-HAM_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo MPI-ESM1-2-HR_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MPI-ESM1-2-HR_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-HR_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo MPI-ESM1-2-LR_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MPI-ESM1-2-LR_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-LR_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo MRI-ESM2-0_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MRI-ESM2-0_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MRI-ESM2-0_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo NorESM2-LM_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/NorESM2-LM_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-LM_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo NorESM2-MM_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/NorESM2-MM_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-MM_r1i1p1f1_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo UKESM1-0-LL_r1i1p1f2_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/UKESM1-0-LL_r1i1p1f2_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "UKESM1-0-LL_r1i1p1f2_mon_zostoga_6exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1
echo ACCESS-CM2_r1i1p1f1_mon_thetao_ssp585_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/ACCESS-CM2_r1i1p1f1_mon_thetao_ssp585_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_mon_thetao_ssp585_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 1

exit 0
