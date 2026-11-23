package com.cloudplay.messagesdk.entity;

import java.io.Serializable;

/* JADX INFO: loaded from: classes9.dex */
public class HMSysAbility implements Serializable {
    private static final long serialVersionUID = 1;
    long hm_sys_config_channelType_ability;

    public long getHm_sys_config_channelType_ability() {
        return this.hm_sys_config_channelType_ability;
    }

    public void setHm_sys_config_channelType_ability(long j10) {
        this.hm_sys_config_channelType_ability = j10;
    }

    public String toString() {
        return "HMSysAbility{hm_sys_config_channelType_ability=" + this.hm_sys_config_channelType_ability + '}';
    }
}
