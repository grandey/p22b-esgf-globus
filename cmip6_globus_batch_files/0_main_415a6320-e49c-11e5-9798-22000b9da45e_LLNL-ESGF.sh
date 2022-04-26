#!/usr/bin/zsh

# Written by create_cmip6_globus_batch_files.ipynb on 2022-04-26.
# Globus endpoint is 415a6320-e49c-11e5-9798-22000b9da45e (Name: LLNL ESGF).
# 134 batch file(s).
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
echo ACCESS-CM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/ACCESS-CM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo ACCESS-ESM1-5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/ACCESS-ESM1-5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-ESM1-5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo AWI-CM-1-1-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/AWI-CM-1-1-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "AWI-CM-1-1-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo AWI-ESM-1-1-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/AWI-ESM-1-1-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "AWI-ESM-1-1-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo BCC-CSM2-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/BCC-CSM2-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-CSM2-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo BCC-ESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/BCC-ESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-ESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CAMS-CSM1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CAMS-CSM1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CAMS-CSM1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CAS-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CAS-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CAS-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CESM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CESM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CESM2-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CESM2-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CESM2-WACCM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CESM2-WACCM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CESM2-WACCM-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CESM2-WACCM-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CIESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CIESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CIESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CMCC-CM2-SR5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CMCC-CM2-SR5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-CM2-SR5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CMCC-ESM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CMCC-ESM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-ESM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CNRM-CM6-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CNRM-CM6-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CNRM-CM6-1-HR_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CNRM-CM6-1-HR_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1-HR_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CNRM-ESM2-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CNRM-ESM2-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-ESM2-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CanESM5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CanESM5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CanESM5_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CanESM5_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CanESM5-CanOE_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CanESM5-CanOE_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5-CanOE_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo E3SM-1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/E3SM-1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo E3SM-1-1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/E3SM-1-1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo E3SM-1-1-ECA_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/E3SM-1-1-ECA_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1-ECA_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo EC-Earth3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo EC-Earth3-AerChem_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3-AerChem_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-AerChem_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo EC-Earth3-CC_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3-CC_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-CC_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo EC-Earth3-Veg_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3-Veg_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo EC-Earth3-Veg-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3-Veg-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo FGOALS-f3-L_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/FGOALS-f3-L_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FGOALS-f3-L_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo FGOALS-g3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/FGOALS-g3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FGOALS-g3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo FIO-ESM-2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/FIO-ESM-2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FIO-ESM-2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo GFDL-CM4_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GFDL-CM4_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GFDL-CM4_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo GFDL-ESM4_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GFDL-ESM4_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GFDL-ESM4_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo GISS-E2-1-G_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-G_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo GISS-E2-1-G_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-G_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo GISS-E2-1-G_r1i1p1f3_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-G_r1i1p1f3_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p1f3_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo GISS-E2-1-G_r1i1p3f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-G_r1i1p3f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p3f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo GISS-E2-1-G_r1i1p5f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-G_r1i1p5f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p5f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo GISS-E2-1-H_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-H_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo GISS-E2-1-H_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-H_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo GISS-E2-1-H_r1i1p3f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-H_r1i1p3f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p3f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo GISS-E2-2-G_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-2-G_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-2-G_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo GISS-E2-2-H_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-2-H_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-2-H_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo ICON-ESM-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/ICON-ESM-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ICON-ESM-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo INM-CM4-8_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/INM-CM4-8_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM4-8_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo INM-CM5-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/INM-CM5-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM5-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo IPSL-CM6A-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/IPSL-CM6A-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM6A-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo KIOST-ESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/KIOST-ESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "KIOST-ESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo MCM-UA-1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MCM-UA-1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MCM-UA-1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo MIROC-ES2L_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MIROC-ES2L_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC-ES2L_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo MIROC6_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MIROC6_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC6_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo MPI-ESM-1-2-HAM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MPI-ESM-1-2-HAM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM-1-2-HAM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo MPI-ESM1-2-HR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MPI-ESM1-2-HR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-HR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo MPI-ESM1-2-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MPI-ESM1-2-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo MRI-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MRI-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MRI-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo NESM3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/NESM3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NESM3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo NorCPM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/NorCPM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorCPM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo NorESM2-LM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/NorESM2-LM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-LM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo NorESM2-MM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/NorESM2-MM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-MM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo SAM0-UNICON_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/SAM0-UNICON_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "SAM0-UNICON_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo TaiESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/TaiESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "TaiESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo UKESM1-0-LL_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/UKESM1-0-LL_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "UKESM1-0-LL_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo ACCESS-CM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/ACCESS-CM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo ACCESS-ESM1-5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/ACCESS-ESM1-5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-ESM1-5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo AWI-CM-1-1-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/AWI-CM-1-1-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "AWI-CM-1-1-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo AWI-ESM-1-1-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/AWI-ESM-1-1-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "AWI-ESM-1-1-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo BCC-CSM2-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/BCC-CSM2-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-CSM2-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo BCC-ESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/BCC-ESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-ESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CAMS-CSM1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CAMS-CSM1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CAMS-CSM1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CAS-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CAS-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CAS-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CESM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CESM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CESM2-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CESM2-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CESM2-WACCM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CESM2-WACCM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CESM2-WACCM-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CESM2-WACCM-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CIESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CIESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CIESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CMCC-CM2-SR5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CMCC-CM2-SR5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-CM2-SR5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CMCC-ESM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CMCC-ESM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-ESM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CNRM-CM6-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CNRM-CM6-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CNRM-CM6-1-HR_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CNRM-CM6-1-HR_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1-HR_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CNRM-ESM2-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CNRM-ESM2-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-ESM2-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CanESM5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CanESM5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CanESM5_r1i1p2f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CanESM5_r1i1p2f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p2f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo CanESM5-CanOE_r1i1p2f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CanESM5-CanOE_r1i1p2f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5-CanOE_r1i1p2f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo E3SM-1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/E3SM-1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo E3SM-1-1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/E3SM-1-1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo E3SM-1-1-ECA_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/E3SM-1-1-ECA_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1-ECA_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo EC-Earth3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo EC-Earth3-AerChem_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3-AerChem_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-AerChem_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo EC-Earth3-CC_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3-CC_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-CC_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 5
echo EC-Earth3-Veg_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3-Veg_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 90
echo EC-Earth3-Veg-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3-Veg-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 91
echo FGOALS-f3-L_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/FGOALS-f3-L_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FGOALS-f3-L_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 92
echo FGOALS-g3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/FGOALS-g3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FGOALS-g3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 93
echo FIO-ESM-2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/FIO-ESM-2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FIO-ESM-2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 94
echo GFDL-ESM4_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GFDL-ESM4_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GFDL-ESM4_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 95
echo GISS-E2-1-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 96
echo GISS-E2-1-G_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-G_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 97
echo GISS-E2-1-G_r1i1p1f3_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-G_r1i1p1f3_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p1f3_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 98
echo GISS-E2-1-G_r1i1p3f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-G_r1i1p3f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p3f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 99
echo GISS-E2-1-G_r1i1p5f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-G_r1i1p5f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p5f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 100
echo GISS-E2-1-G-CC_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-G-CC_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G-CC_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 101
echo GISS-E2-1-H_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-H_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 102
echo GISS-E2-1-H_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-H_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 103
echo GISS-E2-1-H_r1i1p3f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-H_r1i1p3f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p3f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 104
echo GISS-E2-2-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-2-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-2-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 105
echo GISS-E2-2-H_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-2-H_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-2-H_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 106
echo ICON-ESM-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/ICON-ESM-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ICON-ESM-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 107
echo IITM-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/IITM-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IITM-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 108
echo INM-CM4-8_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/INM-CM4-8_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM4-8_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 109
echo INM-CM5-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/INM-CM5-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM5-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 110
echo IPSL-CM5A2-INCA_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/IPSL-CM5A2-INCA_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM5A2-INCA_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 111
echo IPSL-CM6A-LR_r1i1p1f1_mon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/IPSL-CM6A-LR_r1i1p1f1_mon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM6A-LR_r1i1p1f1_mon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 112
echo KACE-1-0-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/KACE-1-0-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "KACE-1-0-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 113
echo KIOST-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/KIOST-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "KIOST-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 114
echo MCM-UA-1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MCM-UA-1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MCM-UA-1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 115
echo MIROC-ES2H_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MIROC-ES2H_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC-ES2H_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 116
echo MIROC-ES2H_r1i1p2f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MIROC-ES2H_r1i1p2f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC-ES2H_r1i1p2f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 117
echo MIROC-ES2H_r1i1p3f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MIROC-ES2H_r1i1p3f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC-ES2H_r1i1p3f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 118
echo MIROC-ES2H_r1i1p4f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MIROC-ES2H_r1i1p4f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC-ES2H_r1i1p4f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 119
echo MIROC-ES2L_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MIROC-ES2L_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC-ES2L_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 120
echo MIROC6_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MIROC6_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC6_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 121
echo MPI-ESM-1-2-HAM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MPI-ESM-1-2-HAM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM-1-2-HAM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 122
echo MPI-ESM1-2-HR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MPI-ESM1-2-HR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-HR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 123
echo MPI-ESM1-2-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MPI-ESM1-2-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 124
echo MRI-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MRI-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MRI-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 125
echo NESM3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/NESM3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NESM3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 126
echo NorCPM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/NorCPM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorCPM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 127
echo NorESM2-LM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/NorESM2-LM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-LM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 128
echo NorESM2-MM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/NorESM2-MM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-MM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 129
echo SAM0-UNICON_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/SAM0-UNICON_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "SAM0-UNICON_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 130
echo TaiESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/TaiESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "TaiESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 131
echo UKESM1-0-LL_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/UKESM1-0-LL_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "UKESM1-0-LL_r1i1p1f2_Amon_4vars-inc-rlut_8exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 132
echo ACCESS-CM2_r1i1p1f1_Omon_thetao_ssp585_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/ACCESS-CM2_r1i1p1f1_Omon_thetao_ssp585_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_Omon_thetao_ssp585_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 133

exit 0
