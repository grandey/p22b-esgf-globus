#!/usr/bin/zsh

# Written by create_cmip6_globus_batch_files.ipynb on 2022-11-01.
# Globus endpoint is 90282ada-ddac-11e8-8c90-0a1d4c5c824a (Name: None).
# 6 batch file(s).
# Caution:
# Please do not run this script if previously submitted Globus transfers are still running (to reduce risk of two or more transfers trying to access same local file simultaneously, and in light of Globus limits).
# Environment variables:
# $GCP_EP_CMIP6 should point to destination Globus endpoint, including desired path.
# Usage:
# zsh 0_main_90282ada-ddac-11e8-8c90-0a1d4c5c824a.sh

# Is endpoint activated?
globus endpoint is-activated 90282ada-ddac-11e8-8c90-0a1d4c5c824a
if [ $? -ne 0 ]; then
    echo "90282ada-ddac-11e8-8c90-0a1d4c5c824a is not activated. Please activate then re-run this script."
    globus endpoint activate --web 90282ada-ddac-11e8-8c90-0a1d4c5c824a
    exit 1
fi

# Submit batch transfers
echo BCC-CSM2-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a
globus transfer 90282ada-ddac-11e8-8c90-0a1d4c5c824a $GCP_EP_CMIP6 --batch 90282ada-ddac-11e8-8c90-0a1d4c5c824a/BCC-CSM2-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-CSM2-MR_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a"
sleep 5
echo BCC-ESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a
globus transfer 90282ada-ddac-11e8-8c90-0a1d4c5c824a $GCP_EP_CMIP6 --batch 90282ada-ddac-11e8-8c90-0a1d4c5c824a/BCC-ESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-ESM1_r1i1p1f1_Omon_6vars-inc-zostoga_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a"
sleep 5
echo BCC-CSM2-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a
globus transfer 90282ada-ddac-11e8-8c90-0a1d4c5c824a $GCP_EP_CMIP6 --batch 90282ada-ddac-11e8-8c90-0a1d4c5c824a/BCC-CSM2-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-CSM2-MR_r1i1p1f1_Amon_4vars-inc-rlut_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a"
sleep 5
echo BCC-ESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a
globus transfer 90282ada-ddac-11e8-8c90-0a1d4c5c824a $GCP_EP_CMIP6 --batch 90282ada-ddac-11e8-8c90-0a1d4c5c824a/BCC-ESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-ESM1_r1i1p1f1_Amon_4vars-inc-rlut_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a"
sleep 5
echo BCC-CSM2-MR_r1i1p1f1_Ofx_areacello-areacella_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a
globus transfer 90282ada-ddac-11e8-8c90-0a1d4c5c824a $GCP_EP_CMIP6 --batch 90282ada-ddac-11e8-8c90-0a1d4c5c824a/BCC-CSM2-MR_r1i1p1f1_Ofx_areacello-areacella_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-CSM2-MR_r1i1p1f1_Ofx_areacello-areacella_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a"
sleep 5
echo BCC-ESM1_r1i1p1f1_fx_areacello-areacella_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a
globus transfer 90282ada-ddac-11e8-8c90-0a1d4c5c824a $GCP_EP_CMIP6 --batch 90282ada-ddac-11e8-8c90-0a1d4c5c824a/BCC-ESM1_r1i1p1f1_fx_areacello-areacella_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "BCC-ESM1_r1i1p1f1_fx_areacello-areacella_8exps_90282ada-ddac-11e8-8c90-0a1d4c5c824a"
sleep 5

exit 0
