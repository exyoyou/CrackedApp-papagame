package com.volcengine.mobsecBiz.metasec.ml;

import java.util.Map;
import ms.bz.bd.c.Pgl.pblv;

/* JADX INFO: loaded from: classes9.dex */
public final class PglMSConfig extends pblv {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final pblv f85804q;

    public static class Builder extends pblv.pgla<Builder> {
        public Builder(String str, String str2) {
            super(str, str2, pblv.COLLECT_MODE_DEFAULT);
        }

        public Builder addAdvanceInfo(String str, String str2) {
            addAdvanceInfo0(str, str2);
            return this;
        }

        public PglMSConfig build() {
            return new PglMSConfig(a(), 0);
        }

        public Builder setChannel(String str) {
            setChannel0(str);
            return this;
        }

        public Builder setClientType(int i10) {
            setClientType0(i10);
            return this;
        }

        public Builder setCustomInfo(Map<String, String> map) {
            setCustomInfo0(map);
            return this;
        }

        public Builder setDeviceID(String str) {
            setDeviceID0(str);
            return this;
        }

        public Builder setInstallID(String str) {
            setInstallID0(str);
            return this;
        }

        public Builder setOaid(String str) {
            setOaid0(str);
            return this;
        }

        public Builder(String str, String str2, int i10) {
            super(str, str2, i10);
        }

        public Builder(String str, String str2, String str3) {
            super(str, str2, str3, pblv.COLLECT_MODE_DEFAULT);
        }

        public Builder(String str, String str2, String str3, int i10) {
            super(str, str2, str3, i10);
        }
    }

    private PglMSConfig(pblv.pgla pglaVar) {
        this.f85804q = pglaVar;
    }

    final pblv a() {
        return this.f85804q;
    }

    /* synthetic */ PglMSConfig(pblv.pgla pglaVar, int i10) {
        this(pglaVar);
    }
}
