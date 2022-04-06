#!/usr/bin/zsh

# Written by create_cmip6_globus_batch_files.ipynb on 2022-04-06.
# Globus endpoint is 415a6320-e49c-11e5-9798-22000b9da45e (Name: LLNL ESGF).
# 103 batch file(s).
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
echo ACCESS-CM2_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/ACCESS-CM2_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo ACCESS-ESM1-5_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/ACCESS-ESM1-5_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-ESM1-5_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo AWI-CM-1-1-MR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/AWI-CM-1-1-MR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "AWI-CM-1-1-MR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo BCC-CSM2-MR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/BCC-CSM2-MR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-CSM2-MR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo BCC-ESM1_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/BCC-ESM1_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-ESM1_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CAMS-CSM1-0_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CAMS-CSM1-0_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CAMS-CSM1-0_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CAS-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CAS-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CAS-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CESM2_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CESM2_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CESM2-WACCM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CESM2-WACCM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CIESM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CIESM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CIESM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CMCC-CM2-SR5_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CMCC-CM2-SR5_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-CM2-SR5_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CMCC-ESM2_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CMCC-ESM2_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-ESM2_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CNRM-CM6-1_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CNRM-CM6-1_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CNRM-CM6-1-HR_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CNRM-CM6-1-HR_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1-HR_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CNRM-ESM2-1_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CNRM-ESM2-1_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-ESM2-1_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CanESM5_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CanESM5_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CanESM5_r1i1p2f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CanESM5_r1i1p2f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p2f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CanESM5-CanOE_r1i1p2f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CanESM5-CanOE_r1i1p2f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5-CanOE_r1i1p2f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo E3SM-1-1_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/E3SM-1-1_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo E3SM-1-1-ECA_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/E3SM-1-1-ECA_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1-ECA_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo EC-Earth3_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo EC-Earth3-AerChem_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3-AerChem_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-AerChem_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo EC-Earth3-CC_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3-CC_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-CC_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo EC-Earth3-Veg_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3-Veg_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo EC-Earth3-Veg-LR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3-Veg-LR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg-LR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo FGOALS-f3-L_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/FGOALS-f3-L_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FGOALS-f3-L_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo FGOALS-g3_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/FGOALS-g3_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FGOALS-g3_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo FIO-ESM-2-0_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/FIO-ESM-2-0_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FIO-ESM-2-0_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo GFDL-CM4_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GFDL-CM4_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GFDL-CM4_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo GFDL-ESM4_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GFDL-ESM4_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GFDL-ESM4_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo GISS-E2-1-G_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-G_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo GISS-E2-1-G_r1i1p3f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-G_r1i1p3f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p3f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo GISS-E2-1-G_r1i1p5f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-G_r1i1p5f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p5f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo GISS-E2-1-H_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-H_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo GISS-E2-1-H_r1i1p3f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-H_r1i1p3f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p3f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo INM-CM4-8_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/INM-CM4-8_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM4-8_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo INM-CM5-0_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/INM-CM5-0_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM5-0_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo IPSL-CM6A-LR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/IPSL-CM6A-LR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM6A-LR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo KIOST-ESM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/KIOST-ESM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "KIOST-ESM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo MIROC-ES2L_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MIROC-ES2L_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC-ES2L_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo MIROC6_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MIROC6_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC6_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo MPI-ESM-1-2-HAM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MPI-ESM-1-2-HAM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM-1-2-HAM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo MPI-ESM1-2-HR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MPI-ESM1-2-HR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-HR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo MPI-ESM1-2-LR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MPI-ESM1-2-LR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-LR_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo MRI-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MRI-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MRI-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo NESM3_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/NESM3_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NESM3_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo NorESM2-LM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/NorESM2-LM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-LM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo NorESM2-MM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/NorESM2-MM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-MM_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo TaiESM1_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/TaiESM1_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "TaiESM1_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo UKESM1-0-LL_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/UKESM1-0-LL_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "UKESM1-0-LL_r1i1p1f2_Omon_6vars-inc-zostoga_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo ACCESS-CM2_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/ACCESS-CM2_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo ACCESS-ESM1-5_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/ACCESS-ESM1-5_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-ESM1-5_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo AWI-CM-1-1-MR_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/AWI-CM-1-1-MR_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "AWI-CM-1-1-MR_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo BCC-CSM2-MR_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/BCC-CSM2-MR_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-CSM2-MR_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo BCC-ESM1_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/BCC-ESM1_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-ESM1_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CAMS-CSM1-0_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CAMS-CSM1-0_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CAMS-CSM1-0_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CAS-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CAS-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CAS-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CESM2_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CESM2_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CESM2-WACCM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CESM2-WACCM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CIESM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CIESM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CIESM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CMCC-CM2-SR5_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CMCC-CM2-SR5_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-CM2-SR5_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CMCC-ESM2_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CMCC-ESM2_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-ESM2_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CNRM-CM6-1_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CNRM-CM6-1_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CNRM-CM6-1-HR_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CNRM-CM6-1-HR_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1-HR_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CNRM-ESM2-1_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CNRM-ESM2-1_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-ESM2-1_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CanESM5_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CanESM5_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CanESM5_r1i1p2f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CanESM5_r1i1p2f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p2f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo CanESM5-CanOE_r1i1p2f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/CanESM5-CanOE_r1i1p2f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5-CanOE_r1i1p2f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo E3SM-1-1_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/E3SM-1-1_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo E3SM-1-1-ECA_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/E3SM-1-1-ECA_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1-ECA_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo EC-Earth3_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo EC-Earth3-AerChem_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3-AerChem_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-AerChem_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo EC-Earth3-CC_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3-CC_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-CC_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo EC-Earth3-Veg_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3-Veg_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo EC-Earth3-Veg-LR_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/EC-Earth3-Veg-LR_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg-LR_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo FGOALS-f3-L_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/FGOALS-f3-L_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FGOALS-f3-L_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo FGOALS-g3_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/FGOALS-g3_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FGOALS-g3_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo FIO-ESM-2-0_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/FIO-ESM-2-0_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FIO-ESM-2-0_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo GFDL-ESM4_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GFDL-ESM4_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GFDL-ESM4_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo GISS-E2-1-G_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-G_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo GISS-E2-1-G_r1i1p3f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-G_r1i1p3f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p3f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo GISS-E2-1-G_r1i1p5f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-G_r1i1p5f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p5f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo GISS-E2-1-H_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-H_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo GISS-E2-1-H_r1i1p3f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/GISS-E2-1-H_r1i1p3f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p3f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo IITM-ESM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/IITM-ESM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IITM-ESM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo INM-CM4-8_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/INM-CM4-8_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM4-8_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo INM-CM5-0_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/INM-CM5-0_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM5-0_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo IPSL-CM5A2-INCA_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/IPSL-CM5A2-INCA_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM5A2-INCA_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo IPSL-CM6A-LR_r1i1p1f1_mon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/IPSL-CM6A-LR_r1i1p1f1_mon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM6A-LR_r1i1p1f1_mon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo KACE-1-0-G_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/KACE-1-0-G_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "KACE-1-0-G_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo KIOST-ESM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/KIOST-ESM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "KIOST-ESM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo MIROC-ES2L_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MIROC-ES2L_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC-ES2L_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo MIROC6_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MIROC6_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC6_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo MPI-ESM-1-2-HAM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MPI-ESM-1-2-HAM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM-1-2-HAM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo MPI-ESM1-2-HR_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MPI-ESM1-2-HR_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-HR_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo MPI-ESM1-2-LR_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MPI-ESM1-2-LR_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-LR_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo MRI-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/MRI-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MRI-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo NESM3_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/NESM3_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NESM3_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo NorESM2-LM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/NorESM2-LM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-LM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo NorESM2-MM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/NorESM2-MM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-MM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo TaiESM1_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/TaiESM1_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "TaiESM1_r1i1p1f1_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo UKESM1-0-LL_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/UKESM1-0-LL_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "UKESM1-0-LL_r1i1p1f2_Amon_4vars-inc-rlut_6exps_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1
echo ACCESS-CM2_r1i1p1f1_Omon_thetao_ssp585_415a6320-e49c-11e5-9798-22000b9da45e
globus transfer 415a6320-e49c-11e5-9798-22000b9da45e $GCP_EP_CMIP6 --batch 415a6320-e49c-11e5-9798-22000b9da45e/ACCESS-CM2_r1i1p1f1_Omon_thetao_ssp585_415a6320-e49c-11e5-9798-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_Omon_thetao_ssp585_415a6320-e49c-11e5-9798-22000b9da45e"
sleep 1

exit 0
