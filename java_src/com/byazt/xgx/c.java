package com.byazt.xgx;

import com.byazt.omf.x;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1109, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Boolean f21840c = null;
    public Boolean tt = null;
    public Boolean ve = null;

    public boolean c() {
        if (this.f21840c == null) {
            com.byazt.dj.uj ujVarNu = x.m().nu();
            this.f21840c = Boolean.valueOf(ujVarNu == null || ujVarNu.isCanUsePhoneState());
        }
        return this.f21840c.booleanValue();
    }

    public boolean tt() {
        if (this.tt == null) {
            com.byazt.dj.uj ujVarNu = x.m().nu();
            this.tt = Boolean.valueOf(ujVarNu == null || ujVarNu.isCanUseWifiState());
        }
        return this.tt.booleanValue();
    }

    public boolean ve() {
        if (this.ve == null) {
            com.byazt.dj.uj ujVarNu = x.m().nu();
            this.ve = Boolean.valueOf(ujVarNu == null || ujVarNu.isCanUseLocation());
        }
        return this.ve.booleanValue();
    }
}
