package com.volcengine.mobsecBiz.metasec.ml;

import java.util.Map;
import ms.bz.bd.c.Pgl.p0;
import ms.bz.bd.c.Pgl.q0;

/* JADX INFO: loaded from: classes9.dex */
public final class PglMSManager implements q0.pgla {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q0.pgla f85805a;

    PglMSManager(p0 p0Var) {
        this.f85805a = p0Var;
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public Map<String, String> getFeatureHash(String str, byte[] bArr) {
        return this.f85805a.getFeatureHash(str, bArr);
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public String getToken() {
        return this.f85805a.getToken();
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public void report(String str) {
        this.f85805a.report(str);
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public void setBDDeviceID(String str) {
        this.f85805a.setBDDeviceID(str);
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public void setCollectMode(int i10) {
        this.f85805a.setCollectMode(i10);
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public void setDeviceID(String str) {
        this.f85805a.setDeviceID(str);
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public void setInstallID(String str) {
        this.f85805a.setInstallID(str);
    }
}
