package com.byazt.dd;

import com.byazt.ar.AdDownloadController;
import com.byazt.ar.AdDownloadEventConfig;
import com.byazt.ar.AdDownloadModel;
import com.byazt.e.DeepLink;
import com.byazt.gq.t;
import com.byazt.su.DownloadController;
import com.byazt.su.DownloadEventConfig;
import com.byazt.su.DownloadModel;
import com.byazt.tk.AdBaseConstants;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1806, 13})
public class tt implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f12682a;
    public String aw;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f12683b;
    public int bm;
    public boolean bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f12684c;
    public boolean cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f12685d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f12686da;
    public long dz;
    public int eo;
    public int gr;
    public String gt;
    public JSONObject gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f12687h;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public boolean f12688hd;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12689i;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public boolean f12690ic;
    public boolean iu;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f12691j;
    public boolean kk;
    public String kp;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f12692l;
    public long lo;

    @AdBaseConstants.FunnelType
    public int lr;
    public boolean lt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f12693m;
    public long md;
    public String my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AtomicBoolean f12694n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public boolean f12695nb;
    public int nu;
    public String or;
    public boolean os;
    public boolean oz;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f12696p;
    public boolean pf;
    public boolean pu;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f12697q;
    public String qp;
    public long qy;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f12698r;
    public String rh;
    public boolean rl;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f12699s;
    public String sl;
    public long sp;
    public String sv;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f12700t;
    public long tk;
    public long to;
    public boolean tt;
    public long tx;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f12701u;
    public final AtomicBoolean uj;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public transient boolean f12702v;
    public final AtomicBoolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f12703x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f12704y;
    public int yp;
    public int yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f12705z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public int f12706zb;
    public boolean zm;

    private tt() {
        this.f12689i = 1;
        this.rl = true;
        this.zm = false;
        this.yv = 0;
        this.f12696p = 0;
        this.cu = false;
        this.f12695nb = false;
        this.pf = true;
        this.bx = true;
        this.f12684c = true;
        this.tt = true;
        this.ve = new AtomicBoolean(false);
        this.uj = new AtomicBoolean(false);
        this.f12694n = new AtomicBoolean(false);
        this.lr = 1;
        this.pu = true;
        this.tx = -1L;
    }

    public void a(long j10) {
        if (j10 > 0) {
            this.qy = j10;
        }
    }

    public String aw() {
        return this.my;
    }

    public boolean b() {
        return this.os;
    }

    public boolean bm() {
        return this.f12697q;
    }

    public boolean bx() {
        return this.zm;
    }

    public void c(int i10) {
        this.yv = i10;
    }

    public long cu() {
        return this.qy;
    }

    public int d() {
        return this.eo;
    }

    @Override // com.byazt.dd.c
    public String da() {
        return this.sv;
    }

    public int eo() {
        return this.f12706zb;
    }

    public int gr() {
        return this.yv;
    }

    @Override // com.byazt.dd.c
    public int gt() {
        return -1;
    }

    @Override // com.byazt.dd.c
    public DownloadController gu() {
        return j();
    }

    public long h() {
        return this.f12687h;
    }

    public String hd() {
        return this.kp;
    }

    public void i(int i10) {
        this.lr = i10;
    }

    public int ic() {
        return this.f12705z;
    }

    public AdDownloadEventConfig iu() {
        return new AdDownloadEventConfig.Builder().setClickButtonTag(this.sv).setRefer(this.aw).setIsEnableV3Event(this.f12690ic).build();
    }

    public AdDownloadController j() {
        return new AdDownloadController.Builder().setIsEnableBackDialog(this.zm).setLinkMode(this.f12705z).setDownloadMode(this.f12693m).setEnableShowComplianceDialog(this.pu).setEnableAH(this.f12684c).setEnableAM(this.tt).build();
    }

    public boolean kk() {
        return this.oz;
    }

    public boolean kp() {
        return this.f12702v;
    }

    public boolean l() {
        return this.kk;
    }

    public long lo() {
        return this.f12692l;
    }

    public boolean lr() {
        return this.f12688hd;
    }

    public boolean lt() {
        return this.cu;
    }

    @Override // com.byazt.dd.c
    public JSONObject m() {
        return null;
    }

    public long md() {
        long j10 = this.md;
        return j10 == 0 ? this.qy : j10;
    }

    @Override // com.byazt.dd.c
    public int my() {
        return this.gr;
    }

    public void n(long j10) {
        this.sp = j10;
    }

    public String nb() {
        return this.rh;
    }

    public void nu(boolean z10) {
        this.lt = z10;
    }

    public int or() {
        return this.f12689i;
    }

    public boolean os() {
        return this.iu;
    }

    public String oz() {
        return this.f12691j;
    }

    public synchronized void p() {
        this.f12696p++;
    }

    public int pf() {
        return this.bm;
    }

    public long pu() {
        return this.lo;
    }

    public boolean q() {
        return this.f12698r;
    }

    public int qp() {
        return this.nu;
    }

    public void qy(boolean z10) {
        this.iu = z10;
    }

    public long r() {
        return this.dz;
    }

    @Override // com.byazt.dd.c
    public JSONObject rh() {
        return null;
    }

    public void rl(boolean z10) {
        this.tt = z10;
    }

    public JSONObject s() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mId", this.f12682a);
            jSONObject.put("mExtValue", this.sp);
            jSONObject.put("mLogExtra", this.f12703x);
            jSONObject.put("mDownloadStatus", this.f12689i);
            jSONObject.put("mPackageName", this.f12686da);
            jSONObject.put("mIsAd", this.rl);
            jSONObject.put("mTimeStamp", this.qy);
            jSONObject.put("mExtras", this.gu);
            jSONObject.put("mVersionCode", this.nu);
            jSONObject.put("mVersionName", this.rh);
            jSONObject.put("mDownloadId", this.gr);
            jSONObject.put("mIsV3Event", this.f12690ic);
            jSONObject.put("mScene", this.bm);
            jSONObject.put("mEventTag", this.sv);
            jSONObject.put("mEventRefer", this.aw);
            jSONObject.put("mDownloadUrl", this.sl);
            jSONObject.put("mEnableBackDialog", this.zm);
            jSONObject.put("hasSendInstallFinish", this.ve.get());
            jSONObject.put("hasSendDownloadFailedFinally", this.uj.get());
            jSONObject.put("hasDoRebootMarketInstallFinishCheck", this.f12694n.get());
            jSONObject.put("mLastFailedErrCode", this.f12706zb);
            jSONObject.put("mLastFailedErrMsg", this.or);
            jSONObject.put("mOpenUrl", this.f12700t);
            jSONObject.put("mLinkMode", this.f12705z);
            jSONObject.put("mDownloadMode", this.f12693m);
            jSONObject.put("mModelType", this.yp);
            jSONObject.put("mAppName", this.my);
            jSONObject.put("mAppIcon", this.gt);
            jSONObject.put("mDownloadFailedTimes", this.yv);
            long j10 = this.md;
            if (j10 == 0) {
                j10 = this.qy;
            }
            jSONObject.put("mRecentDownloadResumeTime", j10);
            jSONObject.put("mClickPauseTimes", this.f12696p);
            jSONObject.put("mJumpInstallTime", this.f12687h);
            jSONObject.put("mCancelInstallTime", this.f12685d);
            jSONObject.put("mLastFailedResumeCount", this.eo);
            jSONObject.put("mIsUpdateDownload", this.cu);
            jSONObject.put("mOriginMimeType", this.qp);
            jSONObject.put("mIsPatchApplyHandled", this.f12695nb);
            jSONObject.put("downloadFinishReason", this.kp);
            jSONObject.put("clickDownloadTime", this.f12692l);
            jSONObject.put("clickDownloadSize", this.lo);
            jSONObject.put("installAfterCleanSpace", this.f12688hd);
            jSONObject.put("funnelType", this.lr);
            jSONObject.put("webUrl", this.f12701u);
            jSONObject.put("enableShowComplianceDialog", this.pu);
            jSONObject.put("isAutoDownloadOnCardShow", this.lt);
            int i10 = 1;
            jSONObject.put("enable_new_activity", this.pf ? 1 : 0);
            jSONObject.put("enable_pause", this.bx ? 1 : 0);
            jSONObject.put("enable_ah", this.f12684c ? 1 : 0);
            if (!this.tt) {
                i10 = 0;
            }
            jSONObject.put("enable_am", i10);
            jSONObject.putOpt("intent_jump_browser_success", Boolean.valueOf(this.iu));
            jSONObject.put("task_key", this.f12691j);
            jSONObject.putOpt("market_install_finish_check_start_timestamp", Long.valueOf(this.dz));
            jSONObject.putOpt("download_pause_timestamp", Long.valueOf(this.to));
            jSONObject.putOpt("download_finish_timestamp", Long.valueOf(this.tk));
        } catch (Exception e10) {
            t.gt().c(e10, "NativeDownloadModel toJson");
        }
        return jSONObject;
    }

    @Override // com.byazt.dd.c
    public JSONObject sl() {
        return null;
    }

    @Override // com.byazt.dd.c
    public JSONObject sp() {
        return this.gu;
    }

    public long sv() {
        return this.tx;
    }

    @Override // com.byazt.dd.c
    public long t() {
        return this.sp;
    }

    public boolean tk() {
        return this.f12695nb;
    }

    public String to() {
        return this.qp;
    }

    public void tt(int i10) {
        this.f12696p = i10;
    }

    public boolean tx() {
        return this.f12699s;
    }

    @Override // com.byazt.dd.c
    public boolean u() {
        return this.f12690ic;
    }

    public void uj(int i10) {
        this.f12706zb = i10;
    }

    public boolean v() {
        return this.f12704y;
    }

    public void ve(long j10) {
        this.f12685d = j10;
    }

    public void x(int i10) {
        this.bm = i10;
    }

    public AdDownloadModel y() {
        return new AdDownloadModel.Builder().setAdId(this.f12682a).setExtraValue(this.sp).setLogExtra(this.f12703x).setPackageName(this.f12686da).setExtra(this.gu).setIsAd(this.rl).setVersionCode(this.nu).setVersionName(this.rh).setDownloadUrl(this.sl).setModelType(this.yp).setMimeType(this.qp).setAppName(this.my).setAppIcon(this.gt).setTaskKey(this.f12691j).setDeepLink(new DeepLink(this.f12700t, this.f12701u, null)).build();
    }

    @Override // com.byazt.dd.c
    public List<String> yp() {
        return null;
    }

    public int yv() {
        return this.f12696p;
    }

    @Override // com.byazt.dd.c
    public Object z() {
        return null;
    }

    public String zb() {
        return this.or;
    }

    public synchronized void zm() {
        this.yv++;
    }

    public void a(int i10) {
        this.nu = i10;
    }

    public void c(long j10) {
        this.md = j10;
    }

    public void da(String str) {
        this.my = str;
    }

    public void gt(boolean z10) {
        this.f12684c = z10;
    }

    @Override // com.byazt.dd.c
    public String i() {
        return this.aw;
    }

    public void m(boolean z10) {
        this.pu = z10;
    }

    public void my(boolean z10) {
        this.bx = z10;
    }

    public void n(int i10) {
        this.f12689i = i10;
    }

    @Override // com.byazt.dd.c
    public boolean nu() {
        return this.pf;
    }

    @Override // com.byazt.dd.c
    public DownloadEventConfig qy() {
        return iu();
    }

    public void rh(boolean z10) {
        this.pf = z10;
    }

    @Override // com.byazt.dd.c
    public DownloadModel rl() {
        return y();
    }

    public void sl(String str) {
        this.gt = str;
    }

    public void sp(int i10) {
        this.gr = i10;
    }

    public void t(int i10) {
        this.yp = i10;
    }

    public void tt(long j10) {
        this.f12687h = j10;
    }

    public void u(String str) {
        this.qp = str;
    }

    public void uj(long j10) {
        this.f12682a = j10;
    }

    public void ve(int i10) {
        this.eo = i10;
    }

    @Override // com.byazt.dd.c
    public int x() {
        return this.lr;
    }

    public void yp(boolean z10) {
        this.f12699s = z10;
    }

    public void z(boolean z10) {
        this.f12704y = z10;
    }

    public void a(String str) {
        this.sv = str;
    }

    public void c(String str) {
        this.or = str;
    }

    public void da(int i10) {
        this.f12705z = i10;
    }

    public void i(String str) {
        this.f12700t = str;
    }

    @Override // com.byazt.dd.c
    public String n() {
        return this.f12686da;
    }

    public void sl(int i10) {
        this.f12693m = i10;
    }

    public void sp(String str) {
        this.aw = str;
    }

    public void t(String str) {
        this.kp = str;
    }

    @Override // com.byazt.dd.c
    public long tt() {
        return this.f12682a;
    }

    public void u(boolean z10) {
        this.oz = z10;
    }

    @Override // com.byazt.dd.c
    public String uj() {
        return this.f12703x;
    }

    public void ve(String str) {
        this.f12703x = str;
    }

    public void x(String str) {
        this.sl = str;
    }

    public void yp(String str) {
        this.f12691j = str;
    }

    @Override // com.byazt.dd.c
    public String a() {
        return this.f12700t;
    }

    public void c(boolean z10) {
        this.rl = z10;
    }

    public void da(boolean z10) {
        this.f12702v = z10;
    }

    public void i(long j10) {
        this.lo = j10;
    }

    public void n(String str) {
        this.f12701u = str;
    }

    public void sl(boolean z10) {
        this.os = z10;
    }

    public void sp(long j10) {
        this.tx = j10;
    }

    public void t(boolean z10) {
        this.f12698r = z10;
    }

    public void tt(String str) {
        this.f12686da = str;
    }

    public void uj(String str) {
        this.rh = str;
    }

    @Override // com.byazt.dd.c
    public boolean ve() {
        return this.rl;
    }

    public void x(long j10) {
        this.f12692l = j10;
    }

    public void a(boolean z10) {
        this.f12688hd = z10;
    }

    public void c(JSONObject jSONObject) {
        this.gu = jSONObject;
    }

    public void da(long j10) {
        this.dz = j10;
    }

    public void i(boolean z10) {
        this.f12695nb = z10;
    }

    public void n(boolean z10) {
        this.f12697q = z10;
    }

    public void sl(long j10) {
        this.to = j10;
    }

    public void sp(boolean z10) {
        this.kk = z10;
    }

    public void t(long j10) {
        this.tk = j10;
    }

    public void tt(boolean z10) {
        this.f12690ic = z10;
    }

    public void uj(boolean z10) {
        this.f12683b = z10;
    }

    public void ve(boolean z10) {
        this.zm = z10;
    }

    public void x(boolean z10) {
        this.cu = z10;
    }

    public static tt tt(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        tt ttVar = new tt();
        try {
            ttVar.uj(com.byazt.ki.tt.c(jSONObject, "mId"));
            ttVar.n(com.byazt.ki.tt.c(jSONObject, "mExtValue"));
            ttVar.ve(jSONObject.optString("mLogExtra"));
            ttVar.n(jSONObject.optInt("mDownloadStatus"));
            ttVar.tt(jSONObject.optString("mPackageName"));
            boolean z10 = true;
            ttVar.c(jSONObject.optBoolean("mIsAd", true));
            ttVar.a(com.byazt.ki.tt.c(jSONObject, "mTimeStamp"));
            ttVar.a(jSONObject.optInt("mVersionCode"));
            ttVar.uj(jSONObject.optString("mVersionName"));
            ttVar.sp(jSONObject.optInt("mDownloadId"));
            ttVar.tt(jSONObject.optBoolean("mIsV3Event"));
            ttVar.x(jSONObject.optInt("mScene"));
            ttVar.a(jSONObject.optString("mEventTag"));
            ttVar.sp(jSONObject.optString("mEventRefer"));
            ttVar.x(jSONObject.optString("mDownloadUrl"));
            ttVar.ve(jSONObject.optBoolean("mEnableBackDialog"));
            ttVar.ve.set(jSONObject.optBoolean("hasSendInstallFinish"));
            ttVar.uj.set(jSONObject.optBoolean("hasSendDownloadFailedFinally"));
            ttVar.f12694n.set(jSONObject.optBoolean("hasDoRebootMarketInstallFinishCheck"));
            ttVar.uj(jSONObject.optInt("mLastFailedErrCode"));
            ttVar.c(jSONObject.optString("mLastFailedErrMsg"));
            ttVar.i(jSONObject.optString("mOpenUrl"));
            ttVar.da(jSONObject.optInt("mLinkMode"));
            ttVar.sl(jSONObject.optInt("mDownloadMode"));
            ttVar.t(jSONObject.optInt("mModelType"));
            ttVar.da(jSONObject.optString("mAppName"));
            ttVar.sl(jSONObject.optString("mAppIcon"));
            ttVar.c(jSONObject.optInt("mDownloadFailedTimes", 0));
            ttVar.c(com.byazt.ki.tt.c(jSONObject, "mRecentDownloadResumeTime"));
            ttVar.tt(jSONObject.optInt("mClickPauseTimes"));
            ttVar.tt(com.byazt.ki.tt.c(jSONObject, "mJumpInstallTime"));
            ttVar.ve(com.byazt.ki.tt.c(jSONObject, "mCancelInstallTime"));
            ttVar.ve(jSONObject.optInt("mLastFailedResumeCount"));
            ttVar.t(jSONObject.optString("downloadFinishReason"));
            ttVar.i(jSONObject.optLong("clickDownloadSize"));
            ttVar.x(jSONObject.optLong("clickDownloadTime"));
            ttVar.x(jSONObject.optBoolean("mIsUpdateDownload"));
            ttVar.u(jSONObject.optString("mOriginMimeType"));
            ttVar.i(jSONObject.optBoolean("mIsPatchApplyHandled"));
            ttVar.a(jSONObject.optBoolean("installAfterCleanSpace"));
            ttVar.i(jSONObject.optInt("funnelType", 1));
            ttVar.n(jSONObject.optString("webUrl"));
            ttVar.m(jSONObject.optBoolean("enableShowComplianceDialog", true));
            ttVar.nu(jSONObject.optBoolean("isAutoDownloadOnCardShow"));
            ttVar.rh(jSONObject.optInt("enable_new_activity", 1) == 1);
            ttVar.my(jSONObject.optInt("enable_pause", 1) == 1);
            ttVar.gt(jSONObject.optInt("enable_ah", 1) == 1);
            if (jSONObject.optInt("enable_am", 1) != 1) {
                z10 = false;
            }
            ttVar.rl(z10);
            ttVar.c(jSONObject.optJSONObject("mExtras"));
            ttVar.qy(jSONObject.optBoolean("intent_jump_browser_success"));
            ttVar.yp(jSONObject.optString("task_key"));
            ttVar.da(jSONObject.optLong("market_install_finish_check_start_timestamp"));
            ttVar.sl(jSONObject.optLong("download_pause_timestamp", 0L));
            ttVar.t(jSONObject.optLong("download_finish_timestamp", 0L));
        } catch (Exception e10) {
            t.gt().c(e10, "NativeDownloadModel fromJson");
        }
        return ttVar;
    }

    @Override // com.byazt.dd.c
    public String c() {
        return this.sl;
    }

    public tt(DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        this(downloadModel, downloadEventConfig, downloadController, 0);
    }

    public tt(DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, int i10) {
        this.f12689i = 1;
        this.rl = true;
        this.zm = false;
        this.yv = 0;
        this.f12696p = 0;
        this.cu = false;
        this.f12695nb = false;
        this.pf = true;
        this.bx = true;
        this.f12684c = true;
        this.tt = true;
        this.ve = new AtomicBoolean(false);
        this.uj = new AtomicBoolean(false);
        this.f12694n = new AtomicBoolean(false);
        this.lr = 1;
        this.pu = true;
        this.tx = -1L;
        this.f12682a = downloadModel.getId();
        this.sp = downloadModel.getExtraValue();
        this.f12703x = downloadModel.getLogExtra();
        this.f12686da = downloadModel.getPackageName();
        this.gu = downloadModel.getExtra();
        this.rl = downloadModel.isAd();
        this.nu = downloadModel.getVersionCode();
        this.rh = downloadModel.getVersionName();
        this.sl = downloadModel.getDownloadUrl();
        if (downloadModel.getDeepLink() != null) {
            this.f12700t = downloadModel.getDeepLink().getOpenUrl();
            this.f12701u = downloadModel.getDeepLink().getWebUrl();
        }
        this.yp = downloadModel.getModelType();
        this.my = downloadModel.getName();
        this.gt = downloadModel.getAppIcon();
        this.qp = downloadModel.getMimeType();
        this.sv = downloadEventConfig.getClickButtonTag();
        this.aw = downloadEventConfig.getRefer();
        this.f12690ic = downloadEventConfig.isEnableV3Event();
        this.zm = downloadController.isEnableBackDialog();
        this.f12705z = downloadController.getLinkMode();
        this.f12693m = downloadController.getDownloadMode();
        this.pu = downloadController.enableShowComplianceDialog();
        this.lt = downloadController.isAutoDownloadOnCardShow();
        this.pf = downloadController.enableNewActivity();
        this.f12684c = downloadController.enableAH();
        this.tt = downloadController.enableAM();
        this.gr = i10;
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.qy = jCurrentTimeMillis;
        this.md = jCurrentTimeMillis;
        this.f12695nb = downloadModel.shouldDownloadWithPatchApply();
        if (downloadModel instanceof AdDownloadModel) {
            this.f12691j = ((AdDownloadModel) downloadModel).getTaskKey();
        }
    }
}
