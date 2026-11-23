package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class MsgSdkAbility implements Serializable {
    private static final long serialVersionUID = 1;
    long hm_sys_config_channelType_ability;

    public long getHm_sys_config_channelType_ability() {
        return this.hm_sys_config_channelType_ability;
    }

    public void setHm_sys_config_channelType_ability(long j10) {
        this.hm_sys_config_channelType_ability = j10;
    }

    public String toString() {
        return "MSGSDKAbility{hm_sys_config_channelType_ability=" + this.hm_sys_config_channelType_ability + '}';
    }
}
