package com.join.mgps.ad;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.MApplication;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.a3;
import com.join.mgps.service.CommonService_;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class d extends t {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected static boolean f58357m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected static final long f58358n = 10000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f58359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f58360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f58361c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f58362d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected Activity f58363e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f58364f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f58365g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f58366h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected long f58367i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected long f58368j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected boolean f58369k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected Map<String, Object> f58370l;

    static {
        f58357m = com.join.android.app.common.http.c.f34547c;
    }

    public d(String type, Context ctx, String appId, String posId) {
        this.f58362d = type + "RewardVideo";
        this.f58359a = ctx;
        this.f58360b = appId;
        this.f58361c = posId;
    }

    public static void h(Context ctx, int num) {
        if (ctx != null) {
            if (num == 2) {
                MApplication.f3182z.O(true);
            }
            Intent intent = new Intent();
            intent.setAction("com.emu.ad.result");
            intent.putExtra("adAction", num);
            ctx.sendBroadcast(intent);
        }
    }

    public static void i(Context ctx, int num, Map<String, Object> extras) {
        if (ctx != null) {
            Intent intent = new Intent();
            intent.setAction("com.emu.ad.result");
            intent.putExtra("adAction", num);
            intent.putExtra("extras", JsonMapper.toJsonString(extras));
            ctx.sendBroadcast(intent);
        }
    }

    public static void j(Context ctx, int num, String gameId) {
        if (ctx != null) {
            Intent intent = new Intent();
            intent.setAction("com.join.android.app.mgsim.wufun.ad.result");
            intent.putExtra("adAction", num);
            intent.putExtra("gameId", gameId);
            ctx.sendBroadcast(intent);
        }
    }

    public abstract void a();

    protected boolean b() {
        return false;
    }

    public void c() {
        d(false);
    }

    public abstract void d(boolean showAd);

    protected void e() {
        this.f58368j = System.currentTimeMillis();
    }

    protected void f() {
        long j10 = this.f58368j;
        if (j10 <= 0) {
            return;
        }
        this.f58368j = 0L;
        if (System.currentTimeMillis() - j10 > 10000) {
            onWfVideoComplete();
        }
    }

    protected void g() {
        this.f58368j = 0L;
    }

    public void k(String eventName, String gameId) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint");
        intent.putExtra(CommonService_.AnonymousClass33.f72723b, eventName);
        intent.putExtra("gameId", gameId);
        this.f58359a.sendBroadcast(intent);
    }

    public void l(Map<String, Object> extras) {
        this.f58370l = extras;
    }

    public void m(String gameId) {
        this.f58364f = gameId;
    }

    public void n(int howTimes) {
        this.f58365g = howTimes;
    }

    public void o(int times) {
        this.f58366h = times;
    }

    @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
    public void onWfADClick() {
        super.onWfADClick();
    }

    @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
    public void onWfADClose() {
        super.onWfADClose();
    }

    @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
    public void onWfADExpose() {
        super.onWfADExpose();
    }

    @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
    public void onWfADLoad(boolean showAd) {
        Activity activity;
        super.onWfADLoad(showAd);
        Activity activity2 = this.f58363e;
        if (activity2 == null || activity2.isFinishing()) {
            this.f58363e = MApplication.f3182z.getActivity();
        }
        if (!showAd || (activity = this.f58363e) == null || activity.isFinishing()) {
            return;
        }
        s(this.f58363e, this.f58364f, this.f58365g, this.f58366h, this.f58370l);
    }

    @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
    public void onWfADShow() {
        super.onWfADShow();
    }

    @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
    public void onWfError(int err, String msg) {
        super.onWfError(err, msg);
        if (f58357m) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onError:");
            sb2.append(msg);
        }
    }

    @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
    public void onWfInitSuccess() {
        super.onWfInitSuccess();
        if (f58357m) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onInitSuccess appID:[");
            sb2.append(this.f58360b);
            sb2.append("],posID:[");
            sb2.append(this.f58361c);
            sb2.append("]");
        }
    }

    @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
    public void onWfReward(Map<String, Object> map) {
        super.onWfReward(map);
    }

    @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
    public void onWfVideoCached() {
        super.onWfVideoCached();
    }

    @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
    public void onWfVideoComplete() {
        this.f58368j = 0L;
        super.onWfVideoComplete();
    }

    public void p(Activity activity) {
        q(activity, "");
    }

    public void q(Activity activity, String gameId) {
        r(activity, gameId, 0, 0);
    }

    public void r(Activity activity, String gameId, int howTimes, int times) {
        s(activity, gameId, howTimes, times, null);
    }

    public void s(Activity activity, String gameId, int howTimes, int times, Map<String, Object> extras) {
        this.f58364f = gameId;
        this.f58366h = times;
        this.f58365g = howTimes;
        this.f58370l = extras;
        this.f58363e = activity;
        if (!com.join.android.app.common.utils.m.j(activity)) {
            a3.b(activity).d("网络异常，请联网重试");
            onWfError(-1, "网络异常，请联网重试");
        } else if (b()) {
            t(this.f58363e);
        } else if (Math.abs(System.currentTimeMillis() - this.f58367i) < 2000) {
            this.f58367i = System.currentTimeMillis();
            onWfError(-1, "视频加载中,请稍候...");
        } else {
            this.f58367i = System.currentTimeMillis();
            d(true);
        }
    }

    protected void t(Activity activity) {
        g();
    }

    @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
    public void onWfADClose(String gameId) {
        super.onWfADClose(gameId);
    }

    @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
    public void onWfADClose(String gameId, int howTimes, int times) {
        super.onWfADClose(gameId, howTimes, times);
    }

    @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
    public void onWfADClose(String gameId, int howTimes, int times, Map<String, Object> extras) {
        super.onWfADClose(gameId, howTimes, times, extras);
    }
}
