package com.bytedance.sdk.openadsdk;

import com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 80, 81, 82, 1992})
public class CSJConfig implements AdConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f23339a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f23340c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    private boolean f23341da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int[] f23342i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f23343m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f23344n;
    private IMediationConfig nu;
    private Map<String, Object> sl;
    private boolean sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private TTCustomController f23345t;
    private String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f23346u;
    private String uj;
    private boolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f23347x;
    private int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f23348z;

    @com.byazt.zqa.c(c = {0, 80, 81, 82, 2156})
    static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f23350c;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int[] f23352i;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private IMediationConfig f23353m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private String f23354n;
        private TTCustomController sl;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private int f23355t;
        private String tt;
        private String uj;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private boolean f23358z;
        private boolean ve = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f23349a = 0;
        private boolean sp = true;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private boolean f23357x = false;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        private boolean f23351da = false;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private int f23356u = 2;
        private int yp = 0;
        private Map<String, Object> nu = null;

        c() {
        }

        public c c(String str) {
            this.f23350c = str;
            return this;
        }

        public c n(boolean z10) {
            this.f23358z = z10;
            return this;
        }

        public c tt(String str) {
            this.tt = str;
            return this;
        }

        public c uj(String str) {
            this.f23354n = str;
            return this;
        }

        public c ve(String str) {
            this.uj = str;
            return this;
        }

        public c c(boolean z10) {
            this.ve = z10;
            return this;
        }

        public c tt(boolean z10) {
            this.sp = z10;
            return this;
        }

        public c uj(boolean z10) {
            this.f23351da = z10;
            return this;
        }

        public c ve(boolean z10) {
            this.f23357x = z10;
            return this;
        }

        public c c(int i10) {
            this.f23349a = i10;
            return this;
        }

        public c tt(int i10) {
            this.f23355t = i10;
            return this;
        }

        public c uj(int i10) {
            this.yp = i10;
            return this;
        }

        public c ve(int i10) {
            this.f23356u = i10;
            return this;
        }

        public c c(int... iArr) {
            this.f23352i = iArr;
            return this;
        }

        public c c(TTCustomController tTCustomController) {
            this.sl = tTCustomController;
            return this;
        }

        public c c(IMediationConfig iMediationConfig) {
            this.f23353m = iMediationConfig;
            return this;
        }

        public c c(String str, Object obj) {
            if (this.nu == null) {
                this.nu = new HashMap();
            }
            this.nu.put(str, obj);
            return this;
        }
    }

    CSJConfig(c cVar) {
        this.ve = false;
        this.f23339a = 0;
        this.sp = true;
        this.f23347x = false;
        this.f23341da = false;
        this.f23340c = cVar.f23350c;
        this.tt = cVar.tt;
        this.ve = cVar.ve;
        this.uj = cVar.uj;
        this.f23344n = cVar.f23354n;
        this.f23339a = cVar.f23349a;
        this.sp = cVar.sp;
        this.f23347x = cVar.f23357x;
        this.f23342i = cVar.f23352i;
        this.f23341da = cVar.f23351da;
        this.f23345t = cVar.sl;
        this.f23346u = cVar.f23355t;
        this.f23348z = cVar.yp;
        this.yp = cVar.f23356u;
        this.f23343m = cVar.f23358z;
        this.nu = cVar.f23353m;
        this.sl = cVar.nu;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public int getAgeGroup() {
        return this.f23348z;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public String getAppId() {
        return this.f23340c;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public String getAppName() {
        return this.tt;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public TTCustomController getCustomController() {
        return this.f23345t;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public String getData() {
        return this.f23344n;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public int[] getDirectDownloadNetworkType() {
        return this.f23342i;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public Object getExtra(String str) {
        Map<String, Object> map = this.sl;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public Map<String, Object> getInitExtra() {
        return this.sl;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public String getKeywords() {
        return this.uj;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public IMediationConfig getMediationConfig() {
        return this.nu;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public int getPluginUpdateConfig() {
        return this.yp;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public int getThemeStatus() {
        return this.f23346u;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public int getTitleBarTheme() {
        return this.f23339a;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isAllowShowNotify() {
        return this.sp;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isDebug() {
        return this.f23347x;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isPaid() {
        return this.ve;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isSupportMultiProcess() {
        return this.f23341da;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isUseMediation() {
        return this.f23343m;
    }

    public void setAgeGroup(int i10) {
        this.f23348z = i10;
    }

    public void setAllowShowNotify(boolean z10) {
        this.sp = z10;
    }

    public void setAppId(String str) {
        this.f23340c = str;
    }

    public void setAppName(String str) {
        this.tt = str;
    }

    public void setCustomController(TTCustomController tTCustomController) {
        this.f23345t = tTCustomController;
    }

    public void setData(String str) {
        this.f23344n = str;
    }

    public void setDebug(boolean z10) {
        this.f23347x = z10;
    }

    public void setDirectDownloadNetworkType(int... iArr) {
        this.f23342i = iArr;
    }

    public void setKeywords(String str) {
        this.uj = str;
    }

    public void setPaid(boolean z10) {
        this.ve = z10;
    }

    public void setSupportMultiProcess(boolean z10) {
        this.f23341da = z10;
    }

    public void setThemeStatus(int i10) {
        this.f23346u = i10;
    }

    public void setTitleBarTheme(int i10) {
        this.f23339a = i10;
    }
}
