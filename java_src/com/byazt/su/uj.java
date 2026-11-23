package com.byazt.su;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1486, 15})
@Deprecated
public class uj implements DownloadEventConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f19883a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f19884c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f19885da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f19886i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f19887m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f19888n;
    public String nu;
    public String sl;
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Object f19889t;
    public boolean tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f19890u;
    public String uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f19891x;
    public boolean yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f19892z;

    @com.byazt.zqa.c(c = {0, 1, 1486, 123})
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f19893a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f19894c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public String f19895da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f19896i;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public String f19897m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f19898n;
        public String nu;
        public String sl;
        public String sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public Object f19899t;
        public boolean tt;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public boolean f19900u;
        public String uj;
        public String ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public String f19901x;
        public boolean yp;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public boolean f19902z;

        public uj c() {
            return new uj(this);
        }
    }

    @Override // com.byazt.su.DownloadEventConfig
    public String getClickButtonTag() {
        return this.f19884c;
    }

    @Override // com.byazt.su.DownloadEventConfig
    public String getClickContinueLabel() {
        return this.f19883a;
    }

    @Override // com.byazt.su.DownloadEventConfig
    public String getClickInstallLabel() {
        return this.sp;
    }

    @Override // com.byazt.su.DownloadEventConfig
    public String getClickItemTag() {
        return null;
    }

    @Override // com.byazt.su.DownloadEventConfig
    public String getClickLabel() {
        return this.ve;
    }

    @Override // com.byazt.su.DownloadEventConfig
    public String getClickPauseLabel() {
        return this.f19888n;
    }

    @Override // com.byazt.su.DownloadEventConfig
    public String getClickStartLabel() {
        return this.uj;
    }

    @Override // com.byazt.su.DownloadEventConfig
    public int getDownloadScene() {
        return 0;
    }

    @Override // com.byazt.su.DownloadEventConfig
    public Object getExtraEventObject() {
        return this.f19889t;
    }

    @Override // com.byazt.su.DownloadEventConfig
    public JSONObject getExtraJson() {
        return null;
    }

    @Override // com.byazt.su.DownloadEventConfig
    public JSONObject getParamsJson() {
        return null;
    }

    @Override // com.byazt.su.DownloadEventConfig
    public String getRefer() {
        return this.nu;
    }

    @Override // com.byazt.su.DownloadEventConfig
    public String getStorageDenyLabel() {
        return this.f19885da;
    }

    @Override // com.byazt.su.DownloadEventConfig
    public boolean isEnableClickEvent() {
        return this.tt;
    }

    @Override // com.byazt.su.DownloadEventConfig
    public boolean isEnableV3Event() {
        return this.f19890u;
    }

    @Override // com.byazt.su.DownloadEventConfig
    public void setDownloadScene(int i10) {
    }

    @Override // com.byazt.su.DownloadEventConfig
    public void setRefer(String str) {
    }

    public uj() {
    }

    private uj(c cVar) {
        this.f19884c = cVar.f19894c;
        this.tt = cVar.tt;
        this.ve = cVar.ve;
        this.uj = cVar.uj;
        this.f19888n = cVar.f19898n;
        this.f19883a = cVar.f19893a;
        this.sp = cVar.sp;
        this.f19891x = cVar.f19901x;
        this.f19886i = cVar.f19896i;
        this.f19885da = cVar.f19895da;
        this.sl = cVar.sl;
        this.f19889t = cVar.f19899t;
        this.f19890u = cVar.f19900u;
        this.yp = cVar.yp;
        this.f19892z = cVar.f19902z;
        this.f19887m = cVar.f19897m;
        this.nu = cVar.nu;
    }
}
