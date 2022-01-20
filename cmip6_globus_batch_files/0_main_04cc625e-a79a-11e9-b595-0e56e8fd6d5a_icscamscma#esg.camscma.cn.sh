#!/usr/bin/zsh

# Written by create_cmip6_globus_batch_files.ipynb on 2022-01-20.
# Globus endpoint is 04cc625e-a79a-11e9-b595-0e56e8fd6d5a (Name: icscamscma#esg.camscma.cn).
# 1 batch file(s).
# Caution:
# Please do not run this script if previously submitted Globus transfers are still running (to reduce risk of two or more transfers trying to access same local file simultaneously, and in light of Globus limits).
# Environment variables:
# $GCP_EP_CMIP6 should point to destination Globus endpoint, including desired path.
# Usage:
# zsh 0_main_04cc625e-a79a-11e9-b595-0e56e8fd6d5a_icscamscma#esg.camscma.cn.sh

# Is endpoint activated?
globus endpoint is-activated 04cc625e-a79a-11e9-b595-0e56e8fd6d5a
if [ $? -ne 0 ]; then
    echo "04cc625e-a79a-11e9-b595-0e56e8fd6d5a is not activated. Please activate then re-run this script."
    globus endpoint activate --web 04cc625e-a79a-11e9-b595-0e56e8fd6d5a
    exit 1
fi

# Submit batch transfers
echo CAMS-CSM1-0_r1i1p1f1_mon_zostoga-zos_6exps_04cc625e-a79a-11e9-b595-0e56e8fd6d5a
globus transfer 04cc625e-a79a-11e9-b595-0e56e8fd6d5a $GCP_EP_CMIP6 --batch 04cc625e-a79a-11e9-b595-0e56e8fd6d5a/CAMS-CSM1-0_r1i1p1f1_mon_zostoga-zos_6exps_04cc625e-a79a-11e9-b595-0e56e8fd6d5a.txt --preserve-mtime --fail-on-quota-errors --skip-source-errors --sync-level checksum --label "CAMS-CSM1-0_r1i1p1f1_mon_zostoga-zos_6exps_04cc625e-a79a-11e9-b595-0e56e8fd6d5a"
sleep 1

exit 0
