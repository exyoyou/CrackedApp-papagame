package com.byazt.cv;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 597, 13})
public class tt extends com.byazt.nc.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.yl.ve f12627c;

    public tt(com.byazt.yl.ve veVar) {
        this.f12627c = veVar;
    }

    @Override // com.byazt.nc.ve
    public String getAppName() {
        com.byazt.yl.ve veVar = this.f12627c;
        if (veVar != null) {
            return veVar.getAppName();
        }
        return null;
    }

    @Override // com.byazt.nc.ve
    public String getAppVersion() {
        com.byazt.yl.ve veVar = this.f12627c;
        if (veVar != null) {
            return veVar.getVersionName();
        }
        return null;
    }

    @Override // com.byazt.nc.ve
    public String getDeveloperName() {
        com.byazt.yl.ve veVar = this.f12627c;
        if (veVar != null) {
            return veVar.getAuthorName();
        }
        return null;
    }

    @Override // com.byazt.nc.ve
    public String getFunctionDescUrl() {
        com.byazt.yl.ve veVar = this.f12627c;
        if (veVar != null) {
            return veVar.getFunctionDescUrl();
        }
        return null;
    }

    @Override // com.byazt.nc.ve
    public String getPermissionUrl() {
        com.byazt.yl.ve veVar = this.f12627c;
        if (veVar != null) {
            return veVar.getPermissionsUrl();
        }
        return null;
    }

    @Override // com.byazt.nc.ve
    public Map<String, String> getPermissionsMap() {
        com.byazt.yl.ve veVar = this.f12627c;
        if (veVar != null) {
            return veVar.getPermissionsMap();
        }
        return null;
    }

    @Override // com.byazt.nc.ve
    public String getPrivacyUrl() {
        com.byazt.yl.ve veVar = this.f12627c;
        if (veVar != null) {
            return veVar.getPrivacyAgreement();
        }
        return null;
    }

    @Override // com.byazt.nc.ve
    public String getRegNumber() {
        com.byazt.yl.ve veVar = this.f12627c;
        if (veVar != null) {
            return veVar.getRegNumber();
        }
        return null;
    }

    @Override // com.byazt.nc.ve
    public String getRegUrl() {
        com.byazt.yl.ve veVar = this.f12627c;
        if (veVar != null) {
            return veVar.getRegUrl();
        }
        return null;
    }
}
