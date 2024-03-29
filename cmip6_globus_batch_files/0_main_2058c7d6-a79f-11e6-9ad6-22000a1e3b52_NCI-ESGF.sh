#!/usr/bin/zsh

# Written by create_cmip6_globus_batch_files.ipynb on 2022-11-01.
# Globus endpoint is 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 (Name: NCI ESGF).
# 150 batch file(s).
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
echo ACCESS-CM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/ACCESS-CM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo ACCESS-ESM1-5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/ACCESS-ESM1-5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-ESM1-5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo AWI-CM-1-1-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/AWI-CM-1-1-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "AWI-CM-1-1-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo BCC-CSM2-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/BCC-CSM2-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-CSM2-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo BCC-ESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/BCC-ESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-ESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CAMS-CSM1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CAMS-CSM1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CAMS-CSM1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CESM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CESM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CESM2-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CESM2-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CESM2-WACCM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CESM2-WACCM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CESM2-WACCM-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CESM2-WACCM-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CIESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CIESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CIESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CMCC-CM2-SR5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CMCC-CM2-SR5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-CM2-SR5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CNRM-CM6-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CNRM-CM6-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CNRM-CM6-1-HR_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CNRM-CM6-1-HR_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1-HR_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CNRM-ESM2-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CNRM-ESM2-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-ESM2-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CanESM5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CanESM5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CanESM5_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CanESM5_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CanESM5-CanOE_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CanESM5-CanOE_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5-CanOE_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo E3SM-1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/E3SM-1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo E3SM-1-1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/E3SM-1-1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo E3SM-1-1-ECA_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/E3SM-1-1-ECA_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1-ECA_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo EC-Earth3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/EC-Earth3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo EC-Earth3-AerChem_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/EC-Earth3-AerChem_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-AerChem_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo EC-Earth3-Veg_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/EC-Earth3-Veg_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo EC-Earth3-Veg-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/EC-Earth3-Veg-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo GISS-E2-1-H_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GISS-E2-1-H_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo GISS-E2-1-H_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GISS-E2-1-H_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo GISS-E2-1-H_r1i1p3f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GISS-E2-1-H_r1i1p3f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p3f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo GISS-E2-2-G_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GISS-E2-2-G_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-2-G_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo INM-CM4-8_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/INM-CM4-8_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM4-8_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo INM-CM5-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/INM-CM5-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM5-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo IPSL-CM6A-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/IPSL-CM6A-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM6A-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo KIOST-ESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/KIOST-ESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "KIOST-ESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo MIROC-ES2L_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MIROC-ES2L_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC-ES2L_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo MIROC6_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MIROC6_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC6_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo MPI-ESM-1-2-HAM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MPI-ESM-1-2-HAM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM-1-2-HAM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo MPI-ESM1-2-HR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MPI-ESM1-2-HR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-HR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo MPI-ESM1-2-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MPI-ESM1-2-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo MRI-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MRI-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MRI-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo NESM3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/NESM3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NESM3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo NorESM2-LM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/NorESM2-LM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-LM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo NorESM2-MM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/NorESM2-MM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-MM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo SAM0-UNICON_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/SAM0-UNICON_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "SAM0-UNICON_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo TaiESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/TaiESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "TaiESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo UKESM1-0-LL_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/UKESM1-0-LL_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "UKESM1-0-LL_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo ACCESS-CM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/ACCESS-CM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo ACCESS-ESM1-5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/ACCESS-ESM1-5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-ESM1-5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo AWI-CM-1-1-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/AWI-CM-1-1-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "AWI-CM-1-1-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo BCC-CSM2-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/BCC-CSM2-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-CSM2-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo BCC-ESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/BCC-ESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-ESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CAMS-CSM1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CAMS-CSM1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CAMS-CSM1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CAS-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CAS-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CAS-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CESM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CESM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CESM2-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CESM2-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CESM2-WACCM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CESM2-WACCM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CESM2-WACCM-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CESM2-WACCM-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CIESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CIESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CIESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CMCC-CM2-SR5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CMCC-CM2-SR5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-CM2-SR5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CNRM-CM6-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CNRM-CM6-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CNRM-CM6-1-HR_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CNRM-CM6-1-HR_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1-HR_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CNRM-ESM2-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CNRM-ESM2-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-ESM2-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CanESM5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CanESM5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CanESM5_r1i1p2f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CanESM5_r1i1p2f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p2f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo CanESM5-CanOE_r1i1p2f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CanESM5-CanOE_r1i1p2f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5-CanOE_r1i1p2f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo E3SM-1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/E3SM-1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo E3SM-1-1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/E3SM-1-1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo E3SM-1-1-ECA_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/E3SM-1-1-ECA_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1-ECA_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo EC-Earth3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/EC-Earth3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo EC-Earth3-AerChem_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/EC-Earth3-AerChem_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-AerChem_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo EC-Earth3-CC_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/EC-Earth3-CC_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-CC_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo EC-Earth3-Veg_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/EC-Earth3-Veg_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo EC-Earth3-Veg-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/EC-Earth3-Veg-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo FGOALS-f3-L_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/FGOALS-f3-L_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FGOALS-f3-L_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo FGOALS-g3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/FGOALS-g3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FGOALS-g3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo FIO-ESM-2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/FIO-ESM-2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FIO-ESM-2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo GFDL-ESM4_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GFDL-ESM4_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GFDL-ESM4_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo GISS-E2-1-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GISS-E2-1-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo GISS-E2-1-G_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GISS-E2-1-G_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo GISS-E2-1-G_r1i1p1f3_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GISS-E2-1-G_r1i1p1f3_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p1f3_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo GISS-E2-1-G_r1i1p3f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GISS-E2-1-G_r1i1p3f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p3f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo GISS-E2-1-G_r1i1p5f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GISS-E2-1-G_r1i1p5f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p5f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo GISS-E2-1-H_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GISS-E2-1-H_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo GISS-E2-1-H_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GISS-E2-1-H_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo GISS-E2-1-H_r1i1p3f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GISS-E2-1-H_r1i1p3f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p3f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo GISS-E2-2-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GISS-E2-2-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-2-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo IITM-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/IITM-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IITM-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo INM-CM4-8_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/INM-CM4-8_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM4-8_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo INM-CM5-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/INM-CM5-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM5-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo IPSL-CM6A-LR_r1i1p1f1_mon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/IPSL-CM6A-LR_r1i1p1f1_mon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM6A-LR_r1i1p1f1_mon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo KACE-1-0-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/KACE-1-0-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "KACE-1-0-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 5
echo KIOST-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/KIOST-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "KIOST-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 180
echo MIROC-ES2L_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MIROC-ES2L_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC-ES2L_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 182
echo MIROC6_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MIROC6_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC6_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 184
echo MPI-ESM-1-2-HAM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MPI-ESM-1-2-HAM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM-1-2-HAM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 186
echo MPI-ESM1-2-HR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MPI-ESM1-2-HR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-HR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 188
echo MPI-ESM1-2-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MPI-ESM1-2-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 190
echo MRI-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MRI-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MRI-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 192
echo NESM3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/NESM3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NESM3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 194
echo NorCPM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/NorCPM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorCPM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 196
echo NorESM2-LM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/NorESM2-LM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-LM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 198
echo NorESM2-MM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/NorESM2-MM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-MM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 200
echo TaiESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/TaiESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "TaiESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 202
echo UKESM1-0-LL_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/UKESM1-0-LL_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "UKESM1-0-LL_r1i1p1f2_Amon_4vars-inc-rlut_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 204
echo ACCESS-CM2_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/ACCESS-CM2_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 206
echo ACCESS-ESM1-5_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/ACCESS-ESM1-5_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-ESM1-5_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 208
echo BCC-ESM1_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/BCC-ESM1_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-ESM1_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 210
echo CESM2_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CESM2_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 212
echo CESM2-FV2_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CESM2-FV2_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-FV2_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 214
echo CESM2-WACCM_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CESM2-WACCM_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 216
echo CESM2-WACCM-FV2_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CESM2-WACCM-FV2_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM-FV2_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 218
echo CIESM_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CIESM_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CIESM_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 220
echo CMCC-CM2-SR5_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CMCC-CM2-SR5_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-CM2-SR5_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 222
echo CNRM-CM6-1_r1i1p1f2_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CNRM-CM6-1_r1i1p1f2_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1_r1i1p1f2_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 224
echo CNRM-CM6-1-HR_r1i1p1f2_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CNRM-CM6-1-HR_r1i1p1f2_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1-HR_r1i1p1f2_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 226
echo CNRM-ESM2-1_r1i1p1f2_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CNRM-ESM2-1_r1i1p1f2_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-ESM2-1_r1i1p1f2_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 228
echo CanESM5_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CanESM5_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 230
echo CanESM5_r1i1p2f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CanESM5_r1i1p2f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p2f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 232
echo CanESM5-CanOE_r1i1p2f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/CanESM5-CanOE_r1i1p2f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5-CanOE_r1i1p2f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 234
echo E3SM-1-0_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/E3SM-1-0_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-0_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 236
echo E3SM-1-1_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/E3SM-1-1_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 238
echo E3SM-1-1-ECA_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/E3SM-1-1-ECA_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1-ECA_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 240
echo EC-Earth3_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/EC-Earth3_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 242
echo EC-Earth3-AerChem_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/EC-Earth3-AerChem_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-AerChem_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 244
echo EC-Earth3-Veg_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/EC-Earth3-Veg_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 246
echo EC-Earth3-Veg-LR_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/EC-Earth3-Veg-LR_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg-LR_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 248
echo FGOALS-f3-L_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/FGOALS-f3-L_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FGOALS-f3-L_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 250
echo FGOALS-g3_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/FGOALS-g3_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FGOALS-g3_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 252
echo FIO-ESM-2-0_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/FIO-ESM-2-0_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FIO-ESM-2-0_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 254
echo GFDL-CM4_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GFDL-CM4_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GFDL-CM4_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 256
echo GFDL-ESM4_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GFDL-ESM4_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GFDL-ESM4_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 258
echo GISS-E2-1-G_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GISS-E2-1-G_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 260
echo GISS-E2-1-G_r1i1p5f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GISS-E2-1-G_r1i1p5f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p5f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 262
echo GISS-E2-1-H_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/GISS-E2-1-H_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 264
echo INM-CM4-8_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/INM-CM4-8_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM4-8_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 266
echo INM-CM5-0_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/INM-CM5-0_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM5-0_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 268
echo IPSL-CM6A-LR_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/IPSL-CM6A-LR_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM6A-LR_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 270
echo KIOST-ESM_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/KIOST-ESM_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "KIOST-ESM_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 272
echo MIROC-ES2L_r1i1p1f2_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MIROC-ES2L_r1i1p1f2_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC-ES2L_r1i1p1f2_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 274
echo MIROC6_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MIROC6_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC6_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 276
echo MPI-ESM-1-2-HAM_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MPI-ESM-1-2-HAM_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM-1-2-HAM_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 278
echo MPI-ESM1-2-HR_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MPI-ESM1-2-HR_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-HR_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 280
echo MPI-ESM1-2-LR_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MPI-ESM1-2-LR_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-LR_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 282
echo MRI-ESM2-0_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/MRI-ESM2-0_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MRI-ESM2-0_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 284
echo NorCPM1_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/NorCPM1_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorCPM1_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 286
echo NorESM2-LM_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/NorESM2-LM_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-LM_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 288
echo NorESM2-MM_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/NorESM2-MM_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-MM_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 290
echo SAM0-UNICON_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/SAM0-UNICON_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "SAM0-UNICON_r1i1p1f1_Ofx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 292
echo TaiESM1_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/TaiESM1_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "TaiESM1_r1i1p1f1_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 294
echo UKESM1-0-LL_r1i1p1f2_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/UKESM1-0-LL_r1i1p1f2_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "UKESM1-0-LL_r1i1p1f2_fx_areacello-areacella_8exps_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 296
echo ACCESS-CM2_r1i1p1f1_Omon_thetao_ssp585_2058c7d6-a79f-11e6-9ad6-22000a1e3b52
globus transfer 2058c7d6-a79f-11e6-9ad6-22000a1e3b52 $GCP_EP_CMIP6 --batch 2058c7d6-a79f-11e6-9ad6-22000a1e3b52/ACCESS-CM2_r1i1p1f1_Omon_thetao_ssp585_2058c7d6-a79f-11e6-9ad6-22000a1e3b52.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_Omon_thetao_ssp585_2058c7d6-a79f-11e6-9ad6-22000a1e3b52"
sleep 298

exit 0
