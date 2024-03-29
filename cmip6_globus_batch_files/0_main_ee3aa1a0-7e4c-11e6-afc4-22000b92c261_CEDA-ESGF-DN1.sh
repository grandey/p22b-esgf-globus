#!/usr/bin/zsh

# Written by create_cmip6_globus_batch_files.ipynb on 2022-11-01.
# Globus endpoint is ee3aa1a0-7e4c-11e6-afc4-22000b92c261 (Name: CEDA ESGF DN1).
# 175 batch file(s).
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
echo ACCESS-CM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/ACCESS-CM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo ACCESS-ESM1-5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/ACCESS-ESM1-5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-ESM1-5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo AWI-CM-1-1-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/AWI-CM-1-1-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "AWI-CM-1-1-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo AWI-ESM-1-1-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/AWI-ESM-1-1-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "AWI-ESM-1-1-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo BCC-CSM2-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/BCC-CSM2-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-CSM2-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo BCC-ESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/BCC-ESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-ESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CAMS-CSM1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CAMS-CSM1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CAMS-CSM1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CAS-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CAS-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CAS-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CESM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CESM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CESM2-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CESM2-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CESM2-WACCM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CESM2-WACCM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CESM2-WACCM-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CESM2-WACCM-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM-FV2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CIESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CIESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CIESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CMCC-CM2-SR5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CMCC-CM2-SR5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-CM2-SR5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CMCC-ESM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CMCC-ESM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-ESM2_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CNRM-CM6-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CNRM-CM6-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CNRM-CM6-1-HR_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CNRM-CM6-1-HR_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1-HR_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CNRM-ESM2-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CNRM-ESM2-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-ESM2-1_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CanESM5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CanESM5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CanESM5_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CanESM5_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CanESM5-CanOE_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CanESM5-CanOE_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5-CanOE_r1i1p2f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo E3SM-1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/E3SM-1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo E3SM-1-1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/E3SM-1-1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo E3SM-1-1-ECA_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/E3SM-1-1-ECA_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1-ECA_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo EC-Earth3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/EC-Earth3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo EC-Earth3-AerChem_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/EC-Earth3-AerChem_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-AerChem_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo EC-Earth3-CC_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/EC-Earth3-CC_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-CC_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo EC-Earth3-Veg_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/EC-Earth3-Veg_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo EC-Earth3-Veg-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/EC-Earth3-Veg-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo GISS-E2-1-G-CC_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-1-G-CC_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G-CC_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo GISS-E2-1-H_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-1-H_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo GISS-E2-1-H_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-1-H_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo GISS-E2-2-G_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-2-G_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-2-G_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo GISS-E2-2-H_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-2-H_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-2-H_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo ICON-ESM-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/ICON-ESM-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ICON-ESM-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo INM-CM4-8_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/INM-CM4-8_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM4-8_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo INM-CM5-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/INM-CM5-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM5-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo IPSL-CM6A-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/IPSL-CM6A-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM6A-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo KIOST-ESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/KIOST-ESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "KIOST-ESM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo MCM-UA-1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MCM-UA-1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MCM-UA-1-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo MIROC-ES2L_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MIROC-ES2L_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC-ES2L_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo MIROC6_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MIROC6_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC6_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo MPI-ESM-1-2-HAM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MPI-ESM-1-2-HAM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM-1-2-HAM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo MPI-ESM1-2-HR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MPI-ESM1-2-HR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-HR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo MPI-ESM1-2-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MPI-ESM1-2-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-LR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo MRI-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MRI-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MRI-ESM2-0_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo NESM3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/NESM3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NESM3_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo NorCPM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/NorCPM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorCPM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo NorESM2-LM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/NorESM2-LM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-LM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo NorESM2-MM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/NorESM2-MM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-MM_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo SAM0-UNICON_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/SAM0-UNICON_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "SAM0-UNICON_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo TaiESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/TaiESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "TaiESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo UKESM1-0-LL_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/UKESM1-0-LL_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "UKESM1-0-LL_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo UKESM1-1-LL_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/UKESM1-1-LL_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "UKESM1-1-LL_r1i1p1f2_Omon_6vars-inc-zostoga_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo ACCESS-CM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/ACCESS-CM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo ACCESS-ESM1-5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/ACCESS-ESM1-5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-ESM1-5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo AWI-CM-1-1-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/AWI-CM-1-1-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "AWI-CM-1-1-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo AWI-ESM-1-1-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/AWI-ESM-1-1-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "AWI-ESM-1-1-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo BCC-CSM2-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/BCC-CSM2-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-CSM2-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo BCC-ESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/BCC-ESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-ESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CAMS-CSM1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CAMS-CSM1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CAMS-CSM1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CAS-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CAS-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CAS-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CESM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CESM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CESM2-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CESM2-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CESM2-WACCM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CESM2-WACCM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CESM2-WACCM-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CESM2-WACCM-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM-FV2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CIESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CIESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CIESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CMCC-CM2-SR5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CMCC-CM2-SR5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-CM2-SR5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CMCC-ESM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CMCC-ESM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-ESM2_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CNRM-CM6-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CNRM-CM6-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CNRM-CM6-1-HR_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CNRM-CM6-1-HR_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1-HR_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CNRM-ESM2-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CNRM-ESM2-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-ESM2-1_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CanESM5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CanESM5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CanESM5_r1i1p2f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CanESM5_r1i1p2f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p2f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo CanESM5-CanOE_r1i1p2f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CanESM5-CanOE_r1i1p2f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5-CanOE_r1i1p2f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo E3SM-1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/E3SM-1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo E3SM-1-1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/E3SM-1-1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo E3SM-1-1-ECA_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/E3SM-1-1-ECA_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1-ECA_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo EC-Earth3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/EC-Earth3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo EC-Earth3-AerChem_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/EC-Earth3-AerChem_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-AerChem_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo EC-Earth3-CC_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/EC-Earth3-CC_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-CC_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo EC-Earth3-Veg_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/EC-Earth3-Veg_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo EC-Earth3-Veg-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/EC-Earth3-Veg-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo FGOALS-f3-L_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/FGOALS-f3-L_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FGOALS-f3-L_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo FGOALS-g3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/FGOALS-g3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FGOALS-g3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo FIO-ESM-2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/FIO-ESM-2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FIO-ESM-2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo GFDL-ESM4_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GFDL-ESM4_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GFDL-ESM4_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo GISS-E2-1-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-1-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo GISS-E2-1-G_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-1-G_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo GISS-E2-1-G_r1i1p1f3_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-1-G_r1i1p1f3_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p1f3_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 5
echo GISS-E2-1-G_r1i1p3f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-1-G_r1i1p3f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p3f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 180
echo GISS-E2-1-G_r1i1p5f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-1-G_r1i1p5f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p5f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 182
echo GISS-E2-1-G-CC_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-1-G-CC_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G-CC_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 184
echo GISS-E2-1-H_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-1-H_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 186
echo GISS-E2-1-H_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-1-H_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 188
echo GISS-E2-1-H_r1i1p3f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-1-H_r1i1p3f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p3f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 190
echo GISS-E2-2-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-2-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-2-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 192
echo GISS-E2-2-H_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-2-H_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-2-H_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 194
echo ICON-ESM-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/ICON-ESM-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ICON-ESM-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 196
echo IITM-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/IITM-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IITM-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 198
echo INM-CM4-8_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/INM-CM4-8_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM4-8_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 200
echo INM-CM5-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/INM-CM5-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM5-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 202
echo IPSL-CM5A2-INCA_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/IPSL-CM5A2-INCA_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM5A2-INCA_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 204
echo IPSL-CM6A-LR_r1i1p1f1_mon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/IPSL-CM6A-LR_r1i1p1f1_mon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM6A-LR_r1i1p1f1_mon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 206
echo KACE-1-0-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/KACE-1-0-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "KACE-1-0-G_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 208
echo KIOST-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/KIOST-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "KIOST-ESM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 210
echo MCM-UA-1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MCM-UA-1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MCM-UA-1-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 212
echo MIROC-ES2H_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MIROC-ES2H_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC-ES2H_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 214
echo MIROC-ES2L_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MIROC-ES2L_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC-ES2L_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 216
echo MIROC6_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MIROC6_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC6_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 218
echo MPI-ESM-1-2-HAM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MPI-ESM-1-2-HAM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM-1-2-HAM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 220
echo MPI-ESM1-2-HR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MPI-ESM1-2-HR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-HR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 222
echo MPI-ESM1-2-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MPI-ESM1-2-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-LR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 224
echo MRI-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MRI-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MRI-ESM2-0_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 226
echo NESM3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/NESM3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NESM3_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 228
echo NorCPM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/NorCPM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorCPM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 230
echo NorESM2-LM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/NorESM2-LM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-LM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 232
echo NorESM2-MM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/NorESM2-MM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-MM_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 234
echo SAM0-UNICON_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/SAM0-UNICON_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "SAM0-UNICON_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 236
echo TaiESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/TaiESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "TaiESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 238
echo UKESM1-0-LL_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/UKESM1-0-LL_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "UKESM1-0-LL_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 240
echo UKESM1-1-LL_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/UKESM1-1-LL_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "UKESM1-1-LL_r1i1p1f2_Amon_4vars-inc-rlut_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 242
echo ACCESS-CM2_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/ACCESS-CM2_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 244
echo ACCESS-ESM1-5_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/ACCESS-ESM1-5_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-ESM1-5_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 246
echo AWI-CM-1-1-MR_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/AWI-CM-1-1-MR_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "AWI-CM-1-1-MR_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 248
echo AWI-ESM-1-1-LR_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/AWI-ESM-1-1-LR_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "AWI-ESM-1-1-LR_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 250
echo BCC-CSM2-MR_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/BCC-CSM2-MR_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-CSM2-MR_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 252
echo BCC-ESM1_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/BCC-ESM1_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-ESM1_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 254
echo CAS-ESM2-0_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CAS-ESM2-0_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CAS-ESM2-0_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 256
echo CESM2_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CESM2_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 258
echo CESM2-FV2_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CESM2-FV2_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-FV2_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 260
echo CESM2-WACCM_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CESM2-WACCM_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 262
echo CESM2-WACCM-FV2_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CESM2-WACCM-FV2_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM-FV2_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 264
echo CIESM_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CIESM_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CIESM_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 266
echo CMCC-CM2-SR5_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CMCC-CM2-SR5_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-CM2-SR5_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 268
echo CMCC-ESM2_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CMCC-ESM2_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CMCC-ESM2_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 270
echo CNRM-CM6-1_r1i1p1f2_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CNRM-CM6-1_r1i1p1f2_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1_r1i1p1f2_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 272
echo CNRM-CM6-1-HR_r1i1p1f2_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CNRM-CM6-1-HR_r1i1p1f2_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-CM6-1-HR_r1i1p1f2_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 274
echo CNRM-ESM2-1_r1i1p1f2_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CNRM-ESM2-1_r1i1p1f2_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CNRM-ESM2-1_r1i1p1f2_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 276
echo CanESM5_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CanESM5_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 278
echo CanESM5_r1i1p2f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CanESM5_r1i1p2f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5_r1i1p2f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 280
echo CanESM5-CanOE_r1i1p2f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/CanESM5-CanOE_r1i1p2f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CanESM5-CanOE_r1i1p2f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 282
echo E3SM-1-0_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/E3SM-1-0_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-0_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 284
echo E3SM-1-1_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/E3SM-1-1_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 286
echo E3SM-1-1-ECA_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/E3SM-1-1-ECA_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "E3SM-1-1-ECA_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 288
echo EC-Earth3_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/EC-Earth3_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 290
echo EC-Earth3-AerChem_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/EC-Earth3-AerChem_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-AerChem_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 292
echo EC-Earth3-CC_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/EC-Earth3-CC_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-CC_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 294
echo EC-Earth3-Veg_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/EC-Earth3-Veg_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 296
echo EC-Earth3-Veg-LR_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/EC-Earth3-Veg-LR_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "EC-Earth3-Veg-LR_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 298
echo FGOALS-f3-L_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/FGOALS-f3-L_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FGOALS-f3-L_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 300
echo FGOALS-g3_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/FGOALS-g3_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FGOALS-g3_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 302
echo FIO-ESM-2-0_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/FIO-ESM-2-0_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "FIO-ESM-2-0_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 304
echo GFDL-CM4_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GFDL-CM4_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GFDL-CM4_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 306
echo GFDL-ESM4_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GFDL-ESM4_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GFDL-ESM4_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 308
echo GISS-E2-1-G_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-1-G_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-G_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 310
echo GISS-E2-1-H_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/GISS-E2-1-H_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GISS-E2-1-H_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 312
echo INM-CM4-8_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/INM-CM4-8_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM4-8_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 314
echo INM-CM5-0_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/INM-CM5-0_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "INM-CM5-0_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 316
echo IPSL-CM5A2-INCA_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/IPSL-CM5A2-INCA_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM5A2-INCA_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 318
echo IPSL-CM6A-LR_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/IPSL-CM6A-LR_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "IPSL-CM6A-LR_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 320
echo KIOST-ESM_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/KIOST-ESM_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "KIOST-ESM_r1i1p1f1_Ofx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 322
echo MIROC-ES2L_r1i1p1f2_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MIROC-ES2L_r1i1p1f2_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC-ES2L_r1i1p1f2_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 324
echo MIROC6_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MIROC6_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MIROC6_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 326
echo MPI-ESM-1-2-HAM_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MPI-ESM-1-2-HAM_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM-1-2-HAM_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 328
echo MPI-ESM1-2-HR_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MPI-ESM1-2-HR_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-HR_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 330
echo MPI-ESM1-2-LR_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MPI-ESM1-2-LR_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MPI-ESM1-2-LR_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 332
echo MRI-ESM2-0_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/MRI-ESM2-0_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "MRI-ESM2-0_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 334
echo NorCPM1_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/NorCPM1_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorCPM1_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 336
echo NorESM2-LM_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/NorESM2-LM_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-LM_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 338
echo NorESM2-MM_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/NorESM2-MM_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "NorESM2-MM_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 340
echo SAM0-UNICON_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/SAM0-UNICON_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "SAM0-UNICON_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 342
echo TaiESM1_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/TaiESM1_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "TaiESM1_r1i1p1f1_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 344
echo UKESM1-0-LL_r1i1p1f2_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/UKESM1-0-LL_r1i1p1f2_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "UKESM1-0-LL_r1i1p1f2_fx_areacello-areacella_8exps_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 346
echo ACCESS-CM2_r1i1p1f1_Omon_thetao_ssp585_ee3aa1a0-7e4c-11e6-afc4-22000b92c261
globus transfer ee3aa1a0-7e4c-11e6-afc4-22000b92c261 $GCP_EP_CMIP6 --batch ee3aa1a0-7e4c-11e6-afc4-22000b92c261/ACCESS-CM2_r1i1p1f1_Omon_thetao_ssp585_ee3aa1a0-7e4c-11e6-afc4-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "ACCESS-CM2_r1i1p1f1_Omon_thetao_ssp585_ee3aa1a0-7e4c-11e6-afc4-22000b92c261"
sleep 348

exit 0
