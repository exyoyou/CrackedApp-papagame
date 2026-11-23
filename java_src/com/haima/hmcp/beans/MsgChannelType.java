package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class MsgChannelType implements Serializable {
    private static final long serialVersionUID = 1;
    int hm_sys_config_channelType;

    public int getHm_sys_config_channelType() {
        return this.hm_sys_config_channelType;
    }

    public void setHm_sys_config_channelType(int i10) {
        this.hm_sys_config_channelType = i10;
    }

    public String toString() {
        return "MsgChannelType{hm_sys_config_channelType=" + this.hm_sys_config_channelType + '}';
    }
}
