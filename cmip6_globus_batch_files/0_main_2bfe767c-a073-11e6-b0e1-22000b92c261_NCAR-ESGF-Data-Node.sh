#!/usr/bin/zsh

# Written by create_cmip6_globus_batch_files.ipynb on 2022-01-24.
# Globus endpoint is 2bfe767c-a073-11e6-b0e1-22000b92c261 (Name: NCAR ESGF Data Node).
# 2 batch file(s).
# Caution:
# Please do not run this script if previously submitted Globus transfers are still running (to reduce risk of two or more transfers trying to access same local file simultaneously, and in light of Globus limits).
# Environment variables:
# $GCP_EP_CMIP6 should point to destination Globus endpoint, including desired path.
# Usage:
# zsh 0_main_2bfe767c-a073-11e6-b0e1-22000b92c261_NCAR-ESGF-Data-Node.sh

# Is endpoint activated?
globus endpoint is-activated 2bfe767c-a073-11e6-b0e1-22000b92c261
if [ $? -ne 0 ]; then
    echo "2bfe767c-a073-11e6-b0e1-22000b92c261 is not activated. Please activate then re-run this script."
    globus endpoint activate --web 2bfe767c-a073-11e6-b0e1-22000b92c261
    exit 1
fi

# Submit batch transfers
echo CESM2-WACCM_r1i1p1f1_Omon_4vars-inc-zostoga_6exps_2bfe767c-a073-11e6-b0e1-22000b92c261
globus transfer 2bfe767c-a073-11e6-b0e1-22000b92c261 $GCP_EP_CMIP6 --batch 2bfe767c-a073-11e6-b0e1-22000b92c261/CESM2-WACCM_r1i1p1f1_Omon_4vars-inc-zostoga_6exps_2bfe767c-a073-11e6-b0e1-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM_r1i1p1f1_Omon_4vars-inc-zostoga_6exps_2bfe767c-a073-11e6-b0e1-22000b92c261"
sleep 1
echo CESM2-WACCM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_2bfe767c-a073-11e6-b0e1-22000b92c261
globus transfer 2bfe767c-a073-11e6-b0e1-22000b92c261 $GCP_EP_CMIP6 --batch 2bfe767c-a073-11e6-b0e1-22000b92c261/CESM2-WACCM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_2bfe767c-a073-11e6-b0e1-22000b92c261.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CESM2-WACCM_r1i1p1f1_Amon_4vars-inc-rlut_6exps_2bfe767c-a073-11e6-b0e1-22000b92c261"
sleep 1

exit 0
