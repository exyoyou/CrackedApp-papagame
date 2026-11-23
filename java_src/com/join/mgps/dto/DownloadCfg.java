package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class DownloadCfg implements Serializable {
    private String cfg_switch;
    private String cfg_switch_express;
    private String cfg_values;
    private String cfg_values_express;

    public DownloadCfg() {
    }

    public String getCfg_switch() {
        return this.cfg_switch;
    }

    public String getCfg_switch_express() {
        return this.cfg_switch_express;
    }

    public String getCfg_values() {
        return this.cfg_values;
    }

    public String getCfg_values_express() {
        return this.cfg_values_express;
    }

    public void setCfg_switch(String cfg_switch) {
        this.cfg_switch = cfg_switch;
    }

    public void setCfg_switch_express(String cfg_switch_express) {
        this.cfg_switch_express = cfg_switch_express;
    }

    public void setCfg_values(String cfg_values) {
        this.cfg_values = cfg_values;
    }

    public void setCfg_values_express(String cfg_values_express) {
        this.cfg_values_express = cfg_values_express;
    }

    public DownloadCfg(String cfg_switch_express, String cfg_values_express) {
        this.cfg_switch_express = cfg_switch_express;
        this.cfg_values_express = cfg_values_express;
    }
}
