package com.join.mgps.ad;

import android.app.Activity;
import android.content.Context;
import com.MApplication;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.t2;
import com.papa.sim.statistic.Event;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static a f58301o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f58302p = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f58303q = 2;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f58304r = 3;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f58305s = 4;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f58306t = 5;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f58307u = 7;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f58308v = 8;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f58309w = 9;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f58310x = 10;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a0 f58311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f58312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private l f58313c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private s f58314d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f58315e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f58316f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f58317g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f58318h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f58319i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f58320j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f58321k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f58322l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f58323m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private n f58324n;

    private a(Context context) {
        this.f58315e = context;
    }

    private void c(String appId, String adId, boolean showAd) {
        if (t2.h(appId) || t2.h(adId)) {
            return;
        }
        if (this.f58312b == null || !adId.equals(this.f58316f)) {
            this.f58316f = adId;
            b bVar = new b(this.f58315e, appId, adId, showAd);
            this.f58312b = bVar;
            bVar.a();
            return;
        }
        h hVar = this.f58312b;
        if (hVar != null) {
            hVar.c();
        }
    }

    private void d(String appId, String adId, boolean showAd) {
        if (t2.h(appId) || t2.h(adId)) {
            return;
        }
        if (this.f58313c == null || !adId.equals(this.f58320j)) {
            this.f58320j = adId;
            c cVar = new c(this.f58315e, appId, adId, showAd);
            this.f58313c = cVar;
            cVar.a();
            return;
        }
        l lVar = this.f58313c;
        if (lVar != null) {
            lVar.c();
        }
    }

    private void e(String appId, String adId, boolean showAd) {
        if (t2.h(appId) || t2.h(adId)) {
            return;
        }
        if (this.f58314d == null || !adId.equals(this.f58321k)) {
            this.f58321k = adId;
            d dVar = new d(this.f58315e, appId, adId, showAd);
            this.f58314d = dVar;
            dVar.a();
            return;
        }
        s sVar = this.f58314d;
        if (sVar != null) {
            sVar.c();
        }
    }

    private void f(String appId, String adId, boolean showAd) {
        if (t2.h(appId) || t2.h(adId)) {
            return;
        }
        if (this.f58311a == null || !adId.equals(this.f58317g)) {
            this.f58317g = adId;
            C0689a c0689a = new C0689a(this.f58315e, appId, adId, showAd);
            this.f58311a = c0689a;
            c0689a.a();
            return;
        }
        a0 a0Var = this.f58311a;
        if (a0Var != null) {
            a0Var.c();
        }
    }

    public static a g(Context context) {
        if (f58301o == null) {
            f58301o = new a(context);
        }
        return f58301o;
    }

    public void b() {
        this.f58324n = null;
    }

    public void h(int adType, String appId, String adId, n listener) {
        this.f58324n = listener;
        if (adType == 2) {
            c(appId, adId, false);
        } else if (adType != 3 && adType != 4) {
            if (adType == 7) {
                d(appId, adId, false);
            } else if (adType == 9) {
                e(appId, adId, false);
            } else {
                f(appId, adId, false);
            }
        }
        this.f58322l = adType;
        this.f58323m = true;
    }

    public void i(Activity activity) {
        s sVar;
        l lVar;
        h hVar;
        a0 a0Var;
        if (!this.f58323m) {
            a3.b(activity).d("please call method load before show");
            return;
        }
        int i10 = this.f58322l;
        if (i10 == 1 && (a0Var = this.f58311a) != null) {
            a0Var.p(activity);
            return;
        }
        if (i10 == 2 && (hVar = this.f58312b) != null) {
            hVar.p(activity);
            return;
        }
        if (i10 == 7 && (lVar = this.f58313c) != null) {
            lVar.p(activity);
        } else {
            if (i10 != 9 || (sVar = this.f58314d) == null) {
                return;
            }
            sVar.p(activity);
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.ad.a$a, reason: collision with other inner class name */
    class C0689a extends a0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ boolean f58325u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0689a(Context ctx, String appId, String posId, final boolean val$showAd) {
            super(ctx, appId, posId);
            this.f58325u = val$showAd;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClick() {
            super.onWfADClick();
            MApplication.f3182z.O(true);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADClick();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose() {
            super.onWfADClose();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADClose();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADExpose() {
            super.onWfADExpose();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADExpose();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            super.onWfADLoad(showAd);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADLoad(showAd);
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADShow();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfError(int err, String msg) {
            super.onWfError(err, msg);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfError(err, msg);
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f58325u);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfReward(Map<String, Object> map) {
            super.onWfReward(map);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfReward(map);
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfVideoCached();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoComplete() {
            super.onWfVideoComplete();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfVideoComplete();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId) {
            super.onWfADClose(gameId);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADClose(gameId);
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADClose(gameId, howTimes, times);
            }
        }
    }

    class b extends h {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ boolean f58327r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Context ctx, String appId, String posId, final boolean val$showAd) {
            super(ctx, appId, posId);
            this.f58327r = val$showAd;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClick() {
            super.onWfADClick();
            MApplication.f3182z.O(true);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADClick();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose() {
            super.onWfADClose();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADClose();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADExpose() {
            super.onWfADExpose();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADExpose();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            super.onWfADLoad(showAd);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADLoad(showAd);
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADShow();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfError(int err, String msg) {
            super.onWfError(err, msg);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfError(err, msg);
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f58327r);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfReward(Map<String, Object> map) {
            super.onWfReward(map);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfReward(map);
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfVideoCached();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoComplete() {
            super.onWfVideoComplete();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfVideoComplete();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId) {
            super.onWfADClose(gameId);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADClose(gameId);
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADClose(gameId, howTimes, times);
            }
        }
    }

    class c extends l {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ boolean f58329u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Context ctx, String appId, String posId, final boolean val$showAd) {
            super(ctx, appId, posId);
            this.f58329u = val$showAd;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClick() {
            super.onWfADClick();
            MApplication.f3182z.O(true);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADClick();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose() {
            super.onWfADClose();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADClose();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADExpose() {
            super.onWfADExpose();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADExpose();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            super.onWfADLoad(showAd);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADLoad(showAd);
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADShow();
            }
            k(Event.Stopad_GromoreSdk_VideoShow.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfError(int err, String msg) {
            super.onWfError(err, msg);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfError(err, msg);
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f58329u);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfReward(Map<String, Object> map) {
            super.onWfReward(map);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfReward(map);
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfVideoCached();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoComplete() {
            super.onWfVideoComplete();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfVideoComplete();
            }
        }

        @Override // com.join.mgps.ad.l
        public void x() {
            super.x();
            k(Event.Stopad_GromoreSdk_Videoloading.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId) {
            super.onWfADClose(gameId);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADClose(gameId);
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADClose(gameId, howTimes, times);
            }
        }
    }

    class d extends s {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ boolean f58331t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Context ctx, String appId, String posId, final boolean val$showAd) {
            super(ctx, appId, posId);
            this.f58331t = val$showAd;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClick() {
            super.onWfADClick();
            MApplication.f3182z.O(true);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADClick();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose() {
            super.onWfADClose();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADClose();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADExpose() {
            super.onWfADExpose();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADExpose();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            super.onWfADLoad(showAd);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADLoad(showAd);
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADShow();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfError(int err, String msg) {
            super.onWfError(err, msg);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfError(err, msg);
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f58331t);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfReward(Map<String, Object> map) {
            super.onWfReward(map);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfReward(map);
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfVideoCached();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoComplete() {
            super.onWfVideoComplete();
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfVideoComplete();
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId) {
            super.onWfADClose(gameId);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADClose(gameId);
            }
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
            if (a.this.f58324n != null) {
                a.this.f58324n.onWfADClose(gameId, howTimes, times);
            }
        }
    }
}
