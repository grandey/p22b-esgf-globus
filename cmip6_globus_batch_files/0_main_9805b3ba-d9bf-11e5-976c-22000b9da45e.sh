#!/usr/bin/zsh

# Written by create_cmip6_globus_batch_files.ipynb on 2022-04-06.
# Globus endpoint is 9805b3ba-d9bf-11e5-976c-22000b9da45e (Name: None).
# 3 batch file(s).
# Caution:
# Please do not run this script if previously submitted Globus transfers are still running (to reduce risk of two or more transfers trying to access same local file simultaneously, and in light of Globus limits).
# Environment variables:
# $GCP_EP_CMIP6 should point to destination Globus endpoint, including desired path.
# Usage:
# zsh 0_main_9805b3ba-d9bf-11e5-976c-22000b9da45e.sh

# Is endpoint activated?
globus endpoint is-activated 9805b3ba-d9bf-11e5-976c-22000b9da45e
if [ $? -ne 0 ]; then
    echo "9805b3ba-d9bf-11e5-976c-22000b9da45e is not activated. Please activate then re-run this script."
    globus endpoint activate --web 9805b3ba-d9bf-11e5-976c-22000b9da45e
    exit 1
fi

# Submit batch transfers
echo GFDL-CM4_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_9805b3ba-d9bf-11e5-976c-22000b9da45e
globus transfer 9805b3ba-d9bf-11e5-976c-22000b9da45e $GCP_EP_CMIP6 --batch 9805b3ba-d9bf-11e5-976c-22000b9da45e/GFDL-CM4_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_9805b3ba-d9bf-11e5-976c-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GFDL-CM4_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_9805b3ba-d9bf-11e5-976c-22000b9da45e"
sleep 1
echo GFDL-ESM4_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_9805b3ba-d9bf-11e5-976c-22000b9da45e
globus transfer 9805b3ba-d9bf-11e5-976c-22000b9da45e $GCP_EP_CMIP6 --batch 9805b3ba-d9bf-11e5-976c-22000b9da45e/GFDL-ESM4_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_9805b3ba-d9bf-11e5-976c-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GFDL-ESM4_r1i1p1f1_Omon_6vars-inc-zostoga_6exps_9805b3ba-d9bf-11e5-976c-22000b9da45e"
sleep 1
echo GFDL-ESM4_r1i1p1f1_Amon_4vars-inc-rlut_6exps_9805b3ba-d9bf-11e5-976c-22000b9da45e
globus transfer 9805b3ba-d9bf-11e5-976c-22000b9da45e $GCP_EP_CMIP6 --batch 9805b3ba-d9bf-11e5-976c-22000b9da45e/GFDL-ESM4_r1i1p1f1_Amon_4vars-inc-rlut_6exps_9805b3ba-d9bf-11e5-976c-22000b9da45e.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "GFDL-ESM4_r1i1p1f1_Amon_4vars-inc-rlut_6exps_9805b3ba-d9bf-11e5-976c-22000b9da45e"
sleep 1

exit 0
