package com.bytedance.sdk.openadsdk;

import android.os.SystemClock;
import com.byazt.zqa.c;
import com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 80, 81, 82, 2497})
public final class TTAdConfig extends CSJConfig {

    @c(c = {0, 80, 81, 82, 2232})
    public static class Builder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private CSJConfig.c f23359c = new CSJConfig.c();
        private final long tt = SystemClock.elapsedRealtime();

        public Builder addExtra(String str, Object obj) {
            this.f23359c.c(str, obj);
            return this;
        }

        public Builder allowShowNotify(boolean z10) {
            this.f23359c.tt(z10);
            return this;
        }

        public Builder appId(String str) {
            this.f23359c.c(str);
            return this;
        }

        public Builder appName(String str) {
            this.f23359c.tt(str);
            return this;
        }

        public TTAdConfig build() {
            this.f23359c.c("csj_b_st_ts", Long.valueOf(this.tt));
            return new TTAdConfig(this.f23359c);
        }

        public Builder customController(TTCustomController tTCustomController) {
            this.f23359c.c(tTCustomController);
            return this;
        }

        public Builder data(String str) {
            this.f23359c.uj(str);
            return this;
        }

        public Builder debug(boolean z10) {
            this.f23359c.ve(z10);
            return this;
        }

        public Builder directDownloadNetworkType(int... iArr) {
            this.f23359c.c(iArr);
            return this;
        }

        public Builder keywords(String str) {
            this.f23359c.ve(str);
            return this;
        }

        public Builder paid(boolean z10) {
            this.f23359c.c(z10);
            return this;
        }

        public Builder setAgeGroup(int i10) {
            this.f23359c.uj(i10);
            return this;
        }

        public Builder setMediationConfig(IMediationConfig iMediationConfig) {
            this.f23359c.c(iMediationConfig);
            return this;
        }

        public Builder setPluginUpdateConfig(int i10) {
            this.f23359c.ve(i10);
            return this;
        }

        public Builder supportMultiProcess(boolean z10) {
            this.f23359c.uj(z10);
            return this;
        }

        public Builder themeStatus(int i10) {
            this.f23359c.tt(i10);
            return this;
        }

        public Builder titleBarTheme(int i10) {
            this.f23359c.c(i10);
            return this;
        }

        public Builder useMediation(boolean z10) {
            this.f23359c.n(z10);
            return this;
        }
    }

    private TTAdConfig(CSJConfig.c cVar) {
        super(cVar);
    }
}
