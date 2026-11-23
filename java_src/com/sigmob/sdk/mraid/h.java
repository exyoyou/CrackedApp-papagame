package com.sigmob.sdk.mraid;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.models.Size;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.CurrentAppOrientation;
import com.sigmob.sdk.base.models.ExposureChange;
import com.sigmob.sdk.base.models.ExtensionEvent;
import com.sigmob.sdk.base.models.MraidEnv;
import com.sigmob.sdk.base.models.PlacementType;
import com.sigmob.sdk.base.models.SensorEntity;
import com.sigmob.sdk.base.models.VideoItem;
import com.sigmob.sdk.base.models.ViewState;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.nativead.APKStatusBroadcastReceiver;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAds;
import com.tencent.cos.common.COSHttpResponseKey;
import java.net.URI;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f80967a = "MraidController";
    private APKStatusBroadcastReceiver A;
    private boolean B;
    private com.sigmob.sdk.base.common.g C;
    private WindowInsets D;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PlacementType f80968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final BaseAdUnit f80969c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final FrameLayout f80970d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d f80971e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final q f80972f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.sigmob.sdk.mraid.c f80973g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final m f80974h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f80975i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Integer f80976j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f80977k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ViewGroup f80978l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ViewState f80979m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private a f80980n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private e f80981o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private x f80982p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private f f80983q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private v f80984r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private c f80985s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Integer f80986t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f80987u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private p f80988v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f80989w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final HashMap<String, n> f80990x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final com.sigmob.sdk.mraid.e f80991y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final com.sigmob.sdk.mraid.d f80992z;

    public interface a {
        void a();

        void a(float progress);

        void a(int width, int height, int offsetX, int offsetY, com.sigmob.sdk.mraid.b.a closePosition, boolean allowOffscreen);

        void a(View view);

        void a(WindAdError error);

        void a(String ext);

        void a(URI uri, int type, String ext);

        void a(boolean isMute);

        void b();

        void b(float progress);

        void c();

        void d();

        void e();

        void f();

        void g();

        void h();
    }

    public interface b {
        void onReady(v webView, com.sigmob.sdk.base.common.v viewabilityManager);
    }

    class c extends BroadcastReceiver {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Context f81000b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f81001c = -1;

        c() {
        }

        public void a() {
            Context context = this.f81000b;
            if (context == null) {
                return;
            }
            context.unregisterReceiver(this);
            this.f81000b = null;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int iX;
            if (this.f81000b == null || h.this.f80989w || !"android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction()) || (iX = h.this.x()) == this.f81001c) {
                return;
            }
            this.f81001c = iX;
            h.this.a(iX);
        }

        public void a(Context context) {
            Preconditions.checkNotNull(context);
            Context applicationContext = context.getApplicationContext();
            this.f81000b = applicationContext;
            if (applicationContext == null) {
                return;
            }
            com.sigmob.sdk.base.utils.g.a(applicationContext, this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
        }
    }

    static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f81002a = new Handler();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private a f81003b;

        static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int f81004a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final View[] f81005b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final Handler f81006c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private Runnable f81007d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private final Runnable f81008e;

            private a(Handler handler, View[] views) {
                this.f81008e = new Runnable() { // from class: com.sigmob.sdk.mraid.h.d.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        for (final View view : a.this.f81005b) {
                            if (view.getHeight() > 0 || view.getWidth() > 0) {
                                a.this.b();
                            } else {
                                view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.sigmob.sdk.mraid.h.d.a.1.1
                                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                                    public boolean onPreDraw() {
                                        view.getViewTreeObserver().removeOnPreDrawListener(this);
                                        a.this.b();
                                        return true;
                                    }
                                });
                            }
                        }
                    }
                };
                this.f81006c = handler;
                this.f81005b = views;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void b() {
                int i10 = this.f81004a - 1;
                this.f81004a = i10;
                if (i10 == 0 && com.sigmob.sdk.base.utils.w.b(this.f81007d)) {
                    this.f81007d.run();
                    this.f81007d = null;
                }
            }

            void a() {
                this.f81006c.removeCallbacks(this.f81008e);
                this.f81007d = null;
            }

            void a(Runnable successRunnable) {
                this.f81007d = successRunnable;
                this.f81004a = this.f81005b.length;
                this.f81006c.post(this.f81008e);
            }
        }

        d() {
        }

        a a(View... views) {
            a aVar = new a(this.f81002a, views);
            this.f81003b = aVar;
            return aVar;
        }

        void a() {
            a aVar = this.f81003b;
            if (aVar == null) {
                return;
            }
            aVar.a();
            this.f81003b = null;
        }
    }

    public interface e {
        void useCustomCloseChanged(boolean useCustomClose);
    }

    public interface f {
        void a();

        void a(Integer duration);

        void a(Map<String, String> params);

        void b();

        void b(Map<String, String> params);

        void c();

        void d();

        void e();

        void f();

        void g();

        void h();
    }

    public h(Context context, BaseAdUnit adUnit, PlacementType placementType) {
        this(context, adUnit, placementType, new com.sigmob.sdk.mraid.c(adUnit, placementType), null, new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A() {
        e eVar = this.f80981o;
        if (eVar == null) {
            return;
        }
        eVar.useCustomCloseChanged(this.f80975i);
    }

    private Context w() {
        FrameLayout frameLayout = this.f80970d;
        if (frameLayout == null) {
            return null;
        }
        return frameLayout.getContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int x() {
        return ClientMetadata.getInstance().getScreenOrientation(w());
    }

    private void y() {
        com.sigmob.sdk.mraid.c cVar = this.f80973g;
        if (cVar == null || this.f80984r == null) {
            return;
        }
        cVar.b();
        try {
            this.f80984r.stopLoading();
            this.f80984r.removeAllViews();
            this.f80984r.destroy();
            com.sigmob.sdk.base.utils.x.a(this.f80984r);
        } catch (Exception e10) {
            com.sigmob.sdk.base.utils.k.f(f80967a, "detachMraidWebView: error = " + e10.getMessage(), new Object[0]);
        }
        this.f80984r = null;
    }

    private ViewGroup z() {
        if (com.sigmob.sdk.base.utils.w.b(this.f80978l)) {
            return this.f80978l;
        }
        View viewA = com.sigmob.sdk.base.utils.x.a(w(), this.f80970d);
        ViewGroup viewGroup = viewA instanceof ViewGroup ? (ViewGroup) viewA : this.f80970d;
        this.f80978l = viewGroup;
        return viewGroup;
    }

    public v g() {
        return this.f80984r;
    }

    @SuppressLint({"JavascriptInterface"})
    void k() {
        try {
            this.B = true;
            i();
            b(ViewState.DEFAULT);
            d();
            this.f80973g.e();
            this.f80973g.a(true);
            try {
                this.f80973g.j();
                o();
                this.f80973g.a(com.sigmob.sdk.b.b().getLocation());
            } catch (Throwable unused) {
                SigmobLog.e("Failed to apply orientation.");
            }
        } catch (Throwable th) {
            SigmobLog.e("handlePageLoad error", th);
        }
    }

    public void l() {
        this.f80989w = false;
        if (com.sigmob.sdk.base.utils.w.b(this.f80984r)) {
            this.f80984r.onResume();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void m() {
        this.f80971e.a();
        this.f80981o = null;
        this.f80980n = null;
        Iterator<n> it2 = this.f80990x.values().iterator();
        while (it2.hasNext()) {
            it2.next().b();
        }
        try {
            if (com.sigmob.sdk.base.utils.w.b(this.f80985s)) {
                this.f80985s.a();
                this.f80985s = null;
            }
        } catch (Throwable th) {
            com.sigmob.sdk.base.utils.k.f(f80967a, "destroy: error = " + th.getMessage(), new Object[0]);
        }
        try {
            if (com.sigmob.sdk.base.utils.w.b(this.A)) {
                APKStatusBroadcastReceiver aPKStatusBroadcastReceiver = this.A;
                aPKStatusBroadcastReceiver.b(aPKStatusBroadcastReceiver);
                this.A = null;
            }
        } catch (Throwable th2) {
            com.sigmob.sdk.base.utils.k.f(f80967a, "destroy: error = " + th2.getMessage(), new Object[0]);
        }
        if (!this.f80989w) {
            e(true);
        }
        y();
        p();
        this.f80980n = null;
        this.f80983q = null;
        this.f80981o = null;
        this.f80982p = null;
        this.f80971e.a();
        this.f80990x.clear();
        com.sigmob.sdk.base.utils.x.a(this.f80978l);
        this.f80978l = null;
    }

    protected void n() {
        ViewState viewState;
        ViewState viewState2;
        if (this.f80984r == null || (viewState = this.f80979m) == ViewState.LOADING || viewState == (viewState2 = ViewState.HIDDEN)) {
            return;
        }
        ViewState viewState3 = ViewState.EXPANDED;
        if (viewState == viewState3 || this.f80968b == PlacementType.INTERSTITIAL) {
            p();
        }
        ViewState viewState4 = this.f80979m;
        if (viewState4 == ViewState.RESIZED || viewState4 == viewState3) {
            this.f80970d.addView(this.f80984r, new FrameLayout.LayoutParams(-1, -1));
            this.f80970d.setVisibility(0);
            b(ViewState.DEFAULT);
        } else if (viewState4 == ViewState.DEFAULT) {
            this.f80970d.setVisibility(4);
            b(viewState2);
        }
    }

    void o() throws com.sigmob.sdk.mraid.f {
        int iA;
        p pVar = this.f80988v;
        if (pVar != p.NONE) {
            iA = pVar.a();
        } else {
            if (this.f80987u) {
                p();
                return;
            }
            Activity activityC = com.sigmob.sdk.base.utils.x.c(this.f80970d);
            if (activityC == null) {
                throw new com.sigmob.sdk.mraid.f("Unable to set MRAID expand orientation to 'none'; expected passed in Activity Context.");
            }
            iA = ClientMetadata.getInstance().getScreenOrientation(activityC);
        }
        b(iA);
    }

    void p() {
        try {
            Activity activityC = com.sigmob.sdk.base.utils.x.c(this.f80970d);
            if (com.sigmob.sdk.base.utils.w.b(activityC) && com.sigmob.sdk.base.utils.w.b(this.f80986t)) {
                activityC.setRequestedOrientation(this.f80986t.intValue());
            }
            this.f80986t = null;
        } catch (Exception e10) {
            SigmobLog.e("unApplyOrientation: " + e10.getMessage());
        }
    }

    public FrameLayout q() {
        return this.f80970d;
    }

    @Deprecated
    ViewState r() {
        return this.f80979m;
    }

    @Deprecated
    Integer s() {
        return this.f80986t;
    }

    @Deprecated
    boolean t() {
        return this.f80987u;
    }

    @Deprecated
    p u() {
        return this.f80988v;
    }

    @Deprecated
    v v() {
        return this.f80984r;
    }

    h(Context context, BaseAdUnit adUnit, PlacementType placementType, com.sigmob.sdk.mraid.c bridge, com.sigmob.sdk.mraid.c twoPartBridge, d screenMetricsWaiter) {
        this.f80975i = false;
        ViewState viewState = ViewState.LOADING;
        this.f80979m = viewState;
        this.f80985s = new c();
        this.f80987u = true;
        this.f80988v = p.NONE;
        this.f80989w = false;
        this.f80990x = new HashMap<>();
        com.sigmob.sdk.mraid.e eVar = new com.sigmob.sdk.mraid.e() { // from class: com.sigmob.sdk.mraid.h.1
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code duplicated, block: B:15:0x0064  */
            @Override // com.sigmob.sdk.mraid.e
            public void a(String event, JSONObject args) {
                SigmobLog.d("handleVpaidEvent event:" + event);
                SigmobLog.d("postMessage args:" + args);
                String strOptString = args.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString) || h.this.f80984r == null) {
                    SigmobLog.e("handleVpaidEvent uniqueId is null:" + args);
                    return;
                }
                n nVar = (n) h.this.f80990x.get(strOptString);
                t tVar = (com.sigmob.sdk.base.utils.w.b(nVar) && (nVar instanceof t)) ? (t) nVar : null;
                event.hashCode();
                switch (event) {
                    case "replay":
                        if (com.sigmob.sdk.base.utils.w.b(tVar)) {
                            tVar.c(args);
                            break;
                        }
                        break;
                    case "assetURL":
                        if (com.sigmob.sdk.base.utils.w.b(tVar)) {
                            tVar.a(args);
                            break;
                        }
                        break;
                    case "init":
                        t tVar2 = new t(strOptString);
                        tVar2.a(new u() { // from class: com.sigmob.sdk.mraid.h.1.1
                            @Override // com.sigmob.sdk.mraid.u
                            public void a(String uniqueId, int state) {
                                if (h.this.f80973g == null) {
                                    return;
                                }
                                h.this.f80973g.c(uniqueId, state);
                            }

                            @Override // com.sigmob.sdk.mraid.u
                            public void b(String uniqueId, int state) {
                                if (h.this.f80973g == null) {
                                    return;
                                }
                                h.this.f80973g.b(uniqueId, state);
                            }

                            @Override // com.sigmob.sdk.mraid.u
                            public void a(String uniqueId, int code, String message) {
                                ad.a("video", code, message, h.this.f80969c, (ad.a) null);
                                if (h.this.f80973g == null) {
                                    return;
                                }
                                h.this.f80973g.b(uniqueId, "code:" + code + ", msg:" + message);
                            }

                            @Override // com.sigmob.sdk.mraid.u
                            public void a(String uniqueId, long position) {
                                if (h.this.f80973g == null) {
                                    return;
                                }
                                h.this.f80973g.a(uniqueId, (int) position);
                            }

                            @Override // com.sigmob.sdk.mraid.u
                            public void a(String uniqueId, long duration, int width, int height) {
                                if (h.this.f80973g == null) {
                                    return;
                                }
                                h.this.f80973g.a(uniqueId, (int) duration, width, height);
                            }

                            @Override // com.sigmob.sdk.mraid.u
                            public void a(String uniqueId, long position, long duration) {
                                if (h.this.f80973g == null) {
                                    return;
                                }
                                h.this.f80973g.a(uniqueId, (int) position, (int) duration);
                            }
                        });
                        h.this.f80990x.put(strOptString, tVar2);
                        tVar2.a(h.this.f80984r.getContext(), args);
                        View viewA = tVar2.a();
                        if (com.sigmob.sdk.base.utils.w.b(viewA)) {
                            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(1, 1);
                            layoutParams.topMargin = -1;
                            layoutParams.rightMargin = -1;
                            h.this.f80970d.addView(viewA, layoutParams);
                            break;
                        }
                        break;
                    case "play":
                        if (com.sigmob.sdk.base.utils.w.b(tVar)) {
                            tVar.b(args);
                            break;
                        }
                        break;
                    case "seek":
                        if (com.sigmob.sdk.base.utils.w.b(tVar)) {
                            tVar.g(args);
                            break;
                        }
                        break;
                    case "stop":
                        if (com.sigmob.sdk.base.utils.w.b(tVar)) {
                            tVar.e(args);
                            tVar.b();
                            h.this.f80990x.remove(strOptString);
                            break;
                        }
                        break;
                    case "frame":
                        if (com.sigmob.sdk.base.utils.w.b(tVar)) {
                            tVar.h(args);
                            break;
                        }
                        break;
                    case "muted":
                        if (com.sigmob.sdk.base.utils.w.b(tVar)) {
                            tVar.f(args);
                            break;
                        }
                        break;
                    case "pause":
                        if (com.sigmob.sdk.base.utils.w.b(tVar)) {
                            tVar.d(args);
                            break;
                        }
                        break;
                }
            }

            @Override // com.sigmob.sdk.mraid.e
            public void b(String subEvent, JSONObject args) {
                n nVar;
                String strOptString = args.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString) || (nVar = (n) h.this.f80990x.get(strOptString)) == null || nVar.a() == null) {
                    return;
                }
                h.this.f80970d.bringChildToFront(h.this.f80984r);
            }

            @Override // com.sigmob.sdk.mraid.e
            public void c(String subEvent, JSONObject args) {
                n nVar;
                View viewA;
                String strOptString = args.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString) || (nVar = (n) h.this.f80990x.get(strOptString)) == null || (viewA = nVar.a()) == null) {
                    return;
                }
                com.sigmob.sdk.base.utils.x.a(viewA);
                h.this.f80970d.addView(viewA);
            }

            @Override // com.sigmob.sdk.mraid.e
            public void d(String subEvent, JSONObject args) {
                SigmobLog.d("postMessage subEvent data:" + args);
                String strOptString = args.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString)) {
                    SigmobLog.e("onMotionViewEvent uniqueId is null:" + args);
                }
                n nVar = (n) h.this.f80990x.get(strOptString);
                com.sigmob.sdk.mraid2.h hVar = nVar instanceof com.sigmob.sdk.mraid2.h ? (com.sigmob.sdk.mraid2.h) nVar : null;
                subEvent.hashCode();
                switch (subEvent) {
                    case "init_sensitivity_raw":
                        String strOptString2 = args.optString("type", "");
                        int iOptInt = args.optInt(g.f80961d, 0);
                        com.sigmob.sdk.mraid2.h hVar2 = new com.sigmob.sdk.mraid2.h(strOptString, strOptString2);
                        hVar2.a(new com.sigmob.sdk.mraid2.j() { // from class: com.sigmob.sdk.mraid.h.1.3
                            @Override // com.sigmob.sdk.mraid2.j
                            public void a(String uniqueId, String type, String event, HashMap<String, Object> args2) {
                                if (h.this.f80973g == null) {
                                    return;
                                }
                                h.this.f80973g.a(uniqueId, type, event, args2);
                            }
                        });
                        hVar2.b(iOptInt);
                        hVar2.d();
                        h.this.f80990x.put(strOptString, hVar2);
                        break;
                    case "init":
                        String strOptString3 = args.optString("type", "");
                        int iOptInt2 = args.optInt(g.f80960c, 0);
                        int iOptInt3 = args.optInt(g.f80963f, 0);
                        int iOptInt4 = args.optInt(g.f80964g, 0);
                        int iOptInt5 = args.optInt(g.f80965h, 0);
                        com.sigmob.sdk.mraid2.h hVar3 = new com.sigmob.sdk.mraid2.h(strOptString, strOptString3);
                        hVar3.a(new com.sigmob.sdk.mraid2.j() { // from class: com.sigmob.sdk.mraid.h.1.2
                            @Override // com.sigmob.sdk.mraid2.j
                            public void a(String uniqueId, String type, String event, HashMap<String, Object> args2) {
                                if (h.this.f80973g == null) {
                                    return;
                                }
                                h.this.f80973g.a(uniqueId, type, event, args2);
                            }
                        });
                        hVar3.a(new SensorEntity(iOptInt2, iOptInt3, iOptInt4, iOptInt5));
                        hVar3.d();
                        h.this.f80990x.put(strOptString, hVar3);
                        break;
                    case "destroy":
                        if (com.sigmob.sdk.base.utils.w.b(hVar)) {
                            hVar.b();
                        }
                        h.this.f80990x.remove(strOptString);
                        break;
                }
            }

            @Override // com.sigmob.sdk.mraid.e
            public void e(String subEvent, JSONObject args) {
                SigmobLog.d("onMotionViewEvent event:" + subEvent);
                SigmobLog.d("postMessage args:" + args);
                String strOptString = args.optString("uniqueId");
                if (com.sigmob.sdk.base.utils.t.a((CharSequence) strOptString)) {
                    SigmobLog.e("onMotionViewEvent uniqueId is null:" + args);
                }
                n nVar = (n) h.this.f80990x.get(strOptString);
                l lVar = (com.sigmob.sdk.base.utils.w.b(nVar) && (nVar instanceof l)) ? (l) nVar : null;
                subEvent.hashCode();
                switch (subEvent) {
                    case "shakeTimeThreshold":
                        if (com.sigmob.sdk.base.utils.w.b(lVar)) {
                            lVar.e(args.optInt(subEvent));
                            break;
                        }
                        break;
                    case "widgetIntervalTime":
                        if (com.sigmob.sdk.base.utils.w.b(lVar)) {
                            lVar.d(args.optInt(subEvent));
                            break;
                        }
                        break;
                    case "hidden":
                        if (com.sigmob.sdk.base.utils.w.b(lVar)) {
                            lVar.a(args.optBoolean("hidden"));
                            break;
                        }
                        break;
                    case "init":
                        l lVar2 = new l(com.sigmob.sdk.b.e(), strOptString, args.optInt("type"), h.this.f80969c);
                        lVar2.a(new com.sigmob.sdk.mraid2.j() { // from class: com.sigmob.sdk.mraid.h.1.4
                            @Override // com.sigmob.sdk.mraid2.j
                            public void a(String uniqueId, String type, String event, HashMap<String, Object> args2) {
                                if (h.this.f80973g == null) {
                                    return;
                                }
                                h.this.f80973g.a(uniqueId, type, event, args2);
                            }
                        });
                        h.this.f80990x.put(strOptString, lVar2);
                        break;
                    case "frame":
                        if (com.sigmob.sdk.base.utils.w.b(lVar)) {
                            lVar.a(args);
                            break;
                        }
                        break;
                    case "start":
                        if (com.sigmob.sdk.base.utils.w.b(lVar)) {
                            lVar.d();
                            break;
                        }
                        break;
                    case "sensitivity":
                        if (com.sigmob.sdk.base.utils.w.b(lVar)) {
                            lVar.a(args.optInt(subEvent));
                            break;
                        }
                        break;
                    case "destroy":
                        if (com.sigmob.sdk.base.utils.w.b(lVar)) {
                            lVar.b();
                        }
                        h.this.f80990x.remove(strOptString);
                        break;
                    case "sensitivity_raw":
                        if (com.sigmob.sdk.base.utils.w.b(lVar)) {
                            lVar.b(args.optInt(subEvent));
                            break;
                        }
                        break;
                    case "shakeTriggerType":
                        if (com.sigmob.sdk.base.utils.w.b(lVar)) {
                            lVar.c(args.optInt(subEvent));
                            break;
                        }
                        break;
                }
            }
        };
        this.f80991y = eVar;
        com.sigmob.sdk.mraid.d dVar = new com.sigmob.sdk.mraid.d() { // from class: com.sigmob.sdk.mraid.h.2
            @Override // com.sigmob.sdk.mraid.d
            public void a() {
                h.this.k();
                if (com.sigmob.sdk.base.utils.w.b(h.this.f80980n)) {
                    h.this.f80980n.a(h.this.f80970d);
                }
            }

            @Override // com.sigmob.sdk.mraid.d
            public void b() {
                h.this.j();
            }

            @Override // com.sigmob.sdk.mraid.d
            public void c() {
                if (com.sigmob.sdk.base.utils.w.b(h.this.f80980n)) {
                    h.this.f80980n.e();
                }
            }

            @Override // com.sigmob.sdk.mraid.d
            public void d() {
                h.this.n();
                h.this.f80980n.h();
            }

            @Override // com.sigmob.sdk.mraid.d
            public void e() {
                if (com.sigmob.sdk.base.utils.w.b(h.this.f80980n)) {
                    h.this.f80980n.f();
                }
            }

            @Override // com.sigmob.sdk.mraid.d
            public void f() {
                if (com.sigmob.sdk.base.utils.w.b(h.this.f80980n)) {
                    h.this.f80980n.g();
                }
            }

            @Override // com.sigmob.sdk.mraid.d
            public void g() {
                if (com.sigmob.sdk.base.utils.w.b(h.this.f80980n)) {
                    h.this.f80980n.c();
                }
            }

            @Override // com.sigmob.sdk.mraid.d
            public void a(int width, int height, int offsetX, int offsetY, com.sigmob.sdk.mraid.b.a closePosition, boolean allowOffscreen) {
                if (com.sigmob.sdk.base.utils.w.b(h.this.f80980n)) {
                    h.this.f80980n.a(width, height, offsetX, offsetY, closePosition, allowOffscreen);
                }
            }

            @Override // com.sigmob.sdk.mraid.d
            public void b(String event, Map<String, String> params) {
                h.this.a(event, params);
            }

            @Override // com.sigmob.sdk.mraid.d
            public void a(WindAdError errorCode) {
                h.this.a(errorCode);
            }

            @Override // com.sigmob.sdk.mraid.d
            public void b(boolean shouldUseCustomClose) {
                h.this.f(shouldUseCustomClose);
            }

            @Override // com.sigmob.sdk.mraid.d
            public void a(String event, Map<String, String> params) {
                h.this.b(event, params);
            }

            @Override // com.sigmob.sdk.mraid.d
            public void a(URI uri) {
                h.this.a(uri.toString());
            }

            @Override // com.sigmob.sdk.mraid.d
            public void a(URI uri, int type, String ext) {
                h.this.a(uri, type, ext);
            }

            @Override // com.sigmob.sdk.mraid.d
            public void a(URI uri, boolean shouldUseCustomClose) throws com.sigmob.sdk.mraid.f {
                h.this.a(uri, shouldUseCustomClose);
            }

            @Override // com.sigmob.sdk.mraid.d
            public void a(boolean isVisible) {
                h.this.f80973g.a(isVisible);
            }

            @Override // com.sigmob.sdk.mraid.d
            public void a(boolean allowOrientationChange, p forceOrientation) throws com.sigmob.sdk.mraid.f {
                h.this.a(allowOrientationChange, forceOrientation);
            }

            @Override // com.sigmob.sdk.mraid.d
            public boolean a(ConsoleMessage consoleMessage) {
                return h.this.a(consoleMessage);
            }

            @Override // com.sigmob.sdk.mraid.d
            public boolean a(String message, JsResult result) {
                return h.this.a(message, result);
            }
        };
        this.f80992z = dVar;
        Preconditions.checkNotNull(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.f80970d = frameLayout;
        this.f80969c = adUnit;
        this.f80968b = placementType;
        this.f80973g = bridge;
        this.f80971e = screenMetricsWaiter;
        this.f80979m = viewState;
        this.f80972f = new q(context, context.getResources().getDisplayMetrics().density);
        frameLayout.setBackgroundColor(0);
        new View(context).setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.mraid.e0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return h.a(view, motionEvent);
            }
        });
        this.f80985s.a(context);
        bridge.a(dVar);
        bridge.a(eVar);
        this.f80974h = new m();
    }

    private float a(String value, float defaultValue) {
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) value)) {
            return defaultValue;
        }
        try {
            return Float.parseFloat(value);
        } catch (Throwable unused) {
            return defaultValue;
        }
    }

    public void c() {
        if (com.sigmob.sdk.base.utils.w.b(this.f80984r)) {
            this.f80984r.resumeTimers();
        }
        if (this.f80989w) {
            this.f80973g.a(true);
        }
        this.f80989w = false;
    }

    public void d() {
        this.f80973g.a(new ExposureChange(100.0f, new Rect(0, 0, z().getWidth(), z().getHeight()), null));
    }

    public com.sigmob.sdk.mraid.c e() {
        return this.f80973g;
    }

    public Integer f() {
        if (com.sigmob.sdk.base.utils.w.b(this.f80976j)) {
            return this.f80976j;
        }
        this.f80973g.b(new ValueCallback() { // from class: com.sigmob.sdk.mraid.h0
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                this.f81012a.c((String) obj);
            }
        });
        return 0;
    }

    boolean h() {
        Activity activityC = com.sigmob.sdk.base.utils.x.c(this.f80970d);
        if (activityC == null || g() == null) {
            return false;
        }
        if (this.f80968b != PlacementType.INLINE) {
            return true;
        }
        return this.f80974h.a(activityC, g());
    }

    void i() {
        Context contextW = w();
        if (contextW == null) {
            return;
        }
        String str = ClientMetadata.getInstance().getOrientationInt().intValue() == 1 ? "portrait" : "landscape";
        DisplayMetrics displayMetrics = contextW.getResources().getDisplayMetrics();
        com.sigmob.sdk.base.common.g gVar = this.C;
        if (gVar == null) {
            this.f80972f.a(displayMetrics.widthPixels, displayMetrics.heightPixels);
        } else {
            this.f80972f.a(gVar.a(), this.C.b());
        }
        ViewGroup viewGroupZ = z();
        int measuredWidth = viewGroupZ.getMeasuredWidth();
        int measuredHeight = viewGroupZ.getMeasuredHeight();
        this.f80972f.a(0, 0, measuredWidth, measuredHeight);
        this.f80972f.c(0, 0, measuredWidth, measuredHeight);
        this.f80972f.b(0, 0, measuredWidth, measuredHeight);
        this.f80973g.a(new CurrentAppOrientation(str, true));
        this.f80973g.a(this.f80972f);
    }

    @SuppressLint({"JavascriptInterface"})
    void j() {
        final Context contextW = w();
        if (contextW == null) {
            return;
        }
        WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.mraid.f0
            @Override // java.lang.Runnable
            public final void run() {
                this.f80956b.a(contextW);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str) {
        if (com.sigmob.sdk.base.utils.t.a(str, "null") || com.sigmob.sdk.base.utils.t.a(str, "undefined")) {
            return;
        }
        try {
            float f10 = Float.parseFloat(str);
            if (f10 <= 1.0E-5d) {
                return;
            }
            Integer numValueOf = Integer.valueOf((int) (f10 * 1000.0f));
            this.f80976j = numValueOf;
            f fVar = this.f80983q;
            if (fVar == null) {
                return;
            }
            fVar.a(numValueOf);
        } catch (Throwable unused) {
        }
    }

    int a(int min, int target, int max) {
        return Math.max(min, Math.min(target, max));
    }

    public void b() {
        this.f80989w = true;
        this.f80973g.a(false);
    }

    public void d(boolean result) {
        if (result) {
            this.f80973g.i();
        }
    }

    public void e(boolean isFinishing) {
        this.f80989w = true;
        if (com.sigmob.sdk.base.utils.w.b(this.f80984r)) {
            this.f80984r.b(isFinishing);
        }
    }

    protected void f(boolean useCustomClose) {
        this.f80975i = useCustomClose;
        e eVar = this.f80981o;
        if (eVar == null) {
            return;
        }
        eVar.useCustomCloseChanged(useCustomClose);
    }

    void b(int screenOrientation) throws com.sigmob.sdk.mraid.f {
        Activity activityC = com.sigmob.sdk.base.utils.x.c(this.f80970d);
        if (activityC == null || !a(this.f80988v)) {
            throw new com.sigmob.sdk.mraid.f("Attempted to lock orientation to unsupported value: " + this.f80988v.name());
        }
        if (this.f80986t == null) {
            this.f80986t = Integer.valueOf(activityC.getRequestedOrientation());
        }
        try {
            activityC.setRequestedOrientation(screenOrientation);
        } catch (Exception e10) {
            SigmobLog.e("lockOrientation: " + e10.getMessage());
        }
    }

    public void c(boolean result) {
        if (result) {
            this.f80973g.h();
        } else {
            this.f80973g.g();
        }
    }

    private void b(ViewState viewState) {
        SigmobLog.d("MRAID state set to " + viewState);
        ViewState viewState2 = this.f80979m;
        this.f80979m = viewState;
        this.f80973g.a(viewState);
        if (com.sigmob.sdk.base.utils.w.b(this.f80980n)) {
            a(this.f80980n, viewState2, viewState);
        }
        SigmobLog.d("setViewState state set to " + viewState);
        a((Runnable) null);
    }

    public String a() {
        return this.f80973g.a();
    }

    public void a(int currentRotation) {
        SigmobLog.i("handleOrientationChange " + currentRotation);
        a((Runnable) null);
    }

    @Deprecated
    void a(int width, int height) {
        this.f80972f.a(0, 0, width, height);
    }

    public void b(String javascript) {
        this.f80973g.c(javascript);
    }

    void a(int widthDips, int heightDips, int offsetXDips, int offsetYDips, com.sigmob.sdk.mraid.b.a closePosition, boolean allowOffscreen) throws com.sigmob.sdk.mraid.f {
    }

    public void b(String url, b listener) {
        v vVar = new v(w());
        this.f80984r = vVar;
        vVar.a(true);
        this.f80984r.setBackgroundColor(0);
        if (com.sigmob.sdk.base.utils.w.b(listener)) {
            listener.onReady(this.f80984r, (com.sigmob.sdk.base.common.v) this.f80969c.getSessionManager());
        }
        this.f80973g.a(this.f80984r);
        this.f80970d.addView(this.f80984r, new FrameLayout.LayoutParams(-1, -1));
        this.f80973g.b(url);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String event, Map<String, String> params) {
        if (this.f80983q == null) {
        }
        event.hashCode();
        switch (event) {
            case "AdPaused":
                this.f80983q.b();
                break;
            case "AdImpression":
                this.f80983q.a();
                break;
            case "AdVideoThirdQuartile":
                this.f80983q.f();
                break;
            case "AdVideoMidpoint":
                this.f80983q.g();
                break;
            case "AdVideoComplete":
                this.f80983q.d();
                break;
            case "AdVideoFirstQuartile":
                this.f80983q.e();
                break;
            case "AdError":
                this.f80983q.b(params);
                break;
            case "AdVideoStart":
                this.f80983q.h();
                break;
            case "AdClickThru":
                this.f80983q.a(params);
                break;
            case "AdPlaying":
                this.f80983q.c();
                break;
        }
    }

    public void a(Activity activity) {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.sigmob.sdk.mraid.g0
            @Override // java.lang.Runnable
            public final void run() {
                this.f80966b.A();
            }
        }, 5000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context) {
        Size size;
        try {
            this.f80973g.a(new MraidEnv());
            this.f80973g.a(this.f80974h.b(context), this.f80974h.a(context), m.d(context), m.c(context), h(), true, true);
            this.f80973g.a(this.f80968b);
            this.f80973g.a(this.f80969c.getRvAdSetting());
            if (com.sigmob.sdk.base.utils.w.b(this.D)) {
                com.sigmob.sdk.base.utils.m mVarA = com.sigmob.sdk.videoplayer.c.a(this.D);
                this.f80973g.a(mVarA.a(), mVarA.b(), mVarA.c(), mVarA.d());
            }
            String video_url = this.f80969c.getVideo_url();
            MaterialMeta material = this.f80969c.getMaterial();
            if (com.sigmob.sdk.base.utils.t.b(video_url)) {
                String proxyVideoUrl = this.f80969c.getProxyVideoUrl();
                this.f80973g.a((material == null || (size = material.video_size) == null) ? new VideoItem(proxyVideoUrl, 0, 0) : new VideoItem(proxyVideoUrl, size.width.intValue(), material.video_size.height.intValue()));
                f();
            }
            if (com.sigmob.sdk.base.utils.w.b(material)) {
                MaterialMeta.Builder builderNewBuilder = material.newBuilder();
                if (!material.has_companion_endcard.booleanValue()) {
                    builderNewBuilder.companion(null);
                }
                this.f80973g.a(builderNewBuilder.html_snippet(null).html_url(null).deeplink_url(null).landing_page(null).web_event_handle(null).endcard_url(null).build());
            }
            this.f80973g.a(this.f80969c.getAd().newBuilder().materials(new LinkedList()).ad_tracking(new LinkedList()).build(), this.f80969c.getSlotAdSetting());
        } catch (Throwable th) {
            SigmobLog.e("handleMraidLoad", th);
        }
        if (this.B) {
            k();
        }
    }

    public void b(boolean result) {
        if (result) {
            this.f80973g.f();
        } else {
            this.f80973g.g();
        }
    }

    public void a(WindowInsets windowInsets) {
        this.D = windowInsets;
        SigmobLog.d("updateWindowInsets " + windowInsets);
        if (this.B) {
            com.sigmob.sdk.base.utils.m mVarA = com.sigmob.sdk.videoplayer.c.a(windowInsets);
            com.sigmob.sdk.mraid.c cVar = this.f80973g;
            if (cVar == null) {
                return;
            }
            cVar.a(mVarA.a(), mVarA.b(), mVarA.c(), mVarA.d());
        }
    }

    public void a(ValueCallback callback) {
        this.f80973g.a(callback);
    }

    public void a(com.sigmob.sdk.base.common.g adSize) {
        this.C = adSize;
    }

    @Deprecated
    void a(ViewState viewState) {
        this.f80979m = viewState;
    }

    public void a(a mraidListener) {
        this.f80980n = mraidListener;
    }

    static void a(a mraidListener, ViewState previousViewState, ViewState currentViewState) {
        Preconditions.checkNotNull(mraidListener);
        Preconditions.checkNotNull(previousViewState);
        Preconditions.checkNotNull(currentViewState);
    }

    @Deprecated
    void a(c receiver) {
        this.f80985s = receiver;
    }

    public void a(e listener) {
        this.f80981o = listener;
    }

    public void a(f vpaidEventListener) {
        this.f80983q = vpaidEventListener;
    }

    public void a(x debugListener) {
        this.f80982p = debugListener;
    }

    void a(WindAdError error) {
        a aVar = this.f80980n;
        if (aVar == null) {
            return;
        }
        aVar.a(error);
    }

    private void a(Runnable successRunnable) {
        this.f80971e.a();
        Context contextW = w();
        v vVarG = g();
        if (contextW == null || vVarG == null || this.f80989w) {
            return;
        }
        DisplayMetrics displayMetrics = contextW.getResources().getDisplayMetrics();
        com.sigmob.sdk.base.common.g gVar = this.C;
        if (gVar == null) {
            this.f80972f.a(displayMetrics.widthPixels, displayMetrics.heightPixels);
        } else {
            this.f80972f.a(gVar.a(), this.C.b());
        }
        int[] iArr = new int[2];
        ViewGroup viewGroupZ = z();
        viewGroupZ.getLocationOnScreen(iArr);
        this.f80972f.a(iArr[0], iArr[1], viewGroupZ.getWidth(), viewGroupZ.getHeight());
        this.f80972f.c(iArr[0], iArr[1], viewGroupZ.getWidth(), viewGroupZ.getHeight());
        vVarG.getLocationOnScreen(iArr);
        this.f80972f.b(iArr[0], iArr[1], vVarG.getWidth(), vVarG.getHeight());
        this.f80973g.a(new CurrentAppOrientation(ClientMetadata.getInstance().getOrientationInt().intValue() == 1 ? "portrait" : "landscape", true));
        this.f80973g.a(this.f80972f);
        if (com.sigmob.sdk.base.utils.w.b(successRunnable)) {
            successRunnable.run();
        }
    }

    void a(String videoUrl) {
    }

    public void a(String htmlData, b listener) {
        v vVar = new v(w());
        this.f80984r = vVar;
        vVar.a(true);
        this.f80984r.setBackgroundColor(0);
        if (com.sigmob.sdk.base.utils.w.b(listener)) {
            listener.onReady(this.f80984r, (com.sigmob.sdk.base.common.v) this.f80969c.getSessionManager());
        }
        this.f80973g.a(this.f80984r);
        this.f80970d.addView(this.f80984r, new FrameLayout.LayoutParams(-1, -1));
        this.f80973g.a(w(), htmlData);
    }

    public void a(String x10, String y10) {
        this.f80973g.a(x10, y10);
    }

    public void a(String uniqueId, String type, String began, HashMap<String, Object> args) {
        this.f80973g.a(uniqueId, type, began, args);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:26:0x0073  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void a(String event, Map<String, String> params) {
        byte b10;
        if (this.f80980n == null) {
            return;
        }
        try {
            String strA = com.sigmob.sdk.mraid.c.a(params.get("ext"));
            String strA2 = com.sigmob.sdk.mraid.c.a(params.get(COSHttpResponseKey.Data.CTIME));
            String strA3 = com.sigmob.sdk.mraid.c.a(params.get(NoticeTopAnimActivityDialog_.STATE_EXTRA));
            switch (event.hashCode()) {
                case -1610203128:
                    if (!event.equals(ExtensionEvent.AD_ENDCARD_SHOW)) {
                        b10 = -1;
                    } else {
                        b10 = 3;
                    }
                    break;
                case -1102513700:
                    if (!event.equals(ExtensionEvent.AD_COMPANION_CLICK)) {
                        b10 = -1;
                    } else {
                        b10 = 4;
                    }
                    break;
                case -934326481:
                    if (!event.equals("reward")) {
                        b10 = -1;
                    } else {
                        b10 = 1;
                    }
                    break;
                case -900560382:
                    if (!event.equals(ExtensionEvent.AD_SKIP)) {
                        b10 = -1;
                    } else {
                        b10 = 0;
                    }
                    break;
                case 112386354:
                    if (!event.equals(ExtensionEvent.AD_MUTE)) {
                        b10 = -1;
                    } else {
                        b10 = 2;
                    }
                    break;
                case 1293469449:
                    if (!event.equals(ExtensionEvent.AD_SHOE_SKIP_TIME)) {
                        b10 = -1;
                    } else {
                        b10 = 5;
                    }
                    break;
                default:
                    b10 = -1;
                    break;
            }
            if (b10 == 0) {
                this.f80980n.b(a(strA2, 0.0f));
                return;
            }
            if (b10 == 1) {
                this.f80980n.a(a(strA2, 0.0f));
                return;
            }
            if (b10 == 2) {
                if (com.sigmob.sdk.base.utils.w.b(strA3)) {
                    this.f80980n.a(strA3.equalsIgnoreCase("true") || strA3.equalsIgnoreCase("1"));
                }
            } else if (b10 == 3) {
                this.f80980n.a();
            } else if (b10 == 4) {
                this.f80980n.a(strA);
            } else {
                if (b10 != 5) {
                    return;
                }
                this.f80980n.b();
            }
        } catch (Throwable unused) {
        }
    }

    void a(URI uri, int interActionType, String ext) {
        a aVar = this.f80980n;
        if (aVar == null) {
            return;
        }
        aVar.a(uri, interActionType, ext);
    }

    void a(URI uri, boolean shouldUseCustomClose) throws com.sigmob.sdk.mraid.f {
    }

    public void a(boolean status) {
        if (com.sigmob.sdk.base.utils.w.b(this.f80973g)) {
            this.f80973g.b(status);
        }
    }

    void a(boolean allowOrientationChange, p forceOrientation) throws com.sigmob.sdk.mraid.f {
        if (!a(forceOrientation)) {
            throw new com.sigmob.sdk.mraid.f("Unable to force orientation to " + forceOrientation);
        }
        this.f80987u = allowOrientationChange;
        this.f80988v = forceOrientation;
        if (this.f80979m == ViewState.EXPANDED || (this.f80968b == PlacementType.INTERSTITIAL && !this.f80989w)) {
            o();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        return true;
    }

    boolean a(ConsoleMessage consoleMessage) {
        x xVar = this.f80982p;
        if (xVar == null) {
            return true;
        }
        return xVar.a(consoleMessage);
    }

    boolean a(p newOrientation) {
        if (newOrientation == p.NONE) {
            return true;
        }
        Activity activityC = com.sigmob.sdk.base.utils.x.c(this.f80970d);
        if (activityC == null) {
            return false;
        }
        try {
            int i10 = activityC.getPackageManager().getActivityInfo(new ComponentName(activityC, activityC.getClass()), 0).screenOrientation;
            return i10 == -1 || i10 == newOrientation.a();
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    boolean a(String message, JsResult result) {
        if (com.sigmob.sdk.base.utils.w.b(this.f80982p)) {
            return this.f80982p.a(message, result);
        }
        result.confirm();
        return true;
    }
}
