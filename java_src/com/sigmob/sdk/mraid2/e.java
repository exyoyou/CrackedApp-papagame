package com.sigmob.sdk.mraid2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.windad.WindAdError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f81196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f81197b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private m f81198c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f81199d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LinearLayout f81200e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private o f81201f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f81202g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List<c> f81203h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List<BaseAdUnit> f81204i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.sigmob.sdk.base.common.g f81205j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private WindowInsets f81206k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Handler f81207l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final t f81208m;

    /* JADX INFO: renamed from: com.sigmob.sdk.mraid2.e$2, reason: invalid class name */
    class AnonymousClass2 implements t {
        AnonymousClass2() {
        }

        @Override // com.sigmob.sdk.mraid2.t
        public LinearLayout a(c mraid2AdContainer, int orientation) {
            if (e.this.f81200e == null) {
                e.this.f81200e = new LinearLayout(e.this.f());
            }
            if (e.this.f81201f == null) {
                if (orientation == 1) {
                    e.this.f81201f = new l(e.this.f());
                    e.this.f81200e.setOrientation(0);
                } else {
                    e.this.f81201f = new r(e.this.f());
                    e.this.f81200e.setOrientation(1);
                }
                e.this.f81201f.setPageChangedListener(new u() { // from class: com.sigmob.sdk.mraid2.k0
                    @Override // com.sigmob.sdk.mraid2.u
                    public final void onPageChanged(c cVar, int i10, int i11) {
                        e.AnonymousClass2.a(cVar, i10, i11);
                    }
                });
                e.this.f81201f.getView().addView(e.this.f81200e, new ViewGroup.LayoutParams(-1, -1));
                e.this.f81196a.addView(e.this.f81201f.getView(), 0, new ViewGroup.LayoutParams(-1, -1));
            }
            if (mraid2AdContainer != null && mraid2AdContainer.getScrollTouchListener() == null) {
                mraid2AdContainer.setScrollTouchListener(new v() { // from class: com.sigmob.sdk.mraid2.e.2.1
                    @Override // com.sigmob.sdk.mraid2.v
                    public void a(c container, JSONObject args) {
                        if (e.this.f81201f == null) {
                            return;
                        }
                        e.this.f81201f.a(container, Dips.asIntPixels(args.optInt("x"), e.this.f()), Dips.asIntPixels(args.optInt("y"), e.this.f()));
                    }

                    @Override // com.sigmob.sdk.mraid2.v
                    public void b(JSONObject args) {
                        if (e.this.f81201f == null) {
                            return;
                        }
                        e.this.f81201f.b(Dips.asIntPixels(args.optInt("x"), e.this.f()), Dips.asIntPixels(args.optInt("y"), e.this.f()));
                    }

                    @Override // com.sigmob.sdk.mraid2.v
                    public void a(JSONObject args) {
                        if (e.this.f81201f == null) {
                            return;
                        }
                        e.this.f81201f.a(Dips.asIntPixels(args.optInt("x"), e.this.f()), Dips.asIntPixels(args.optInt("y"), e.this.f()));
                    }
                });
            }
            return e.this.f81200e;
        }

        @Override // com.sigmob.sdk.mraid2.t
        public c a(c parentWebView, JSONObject args) {
            e eVar = e.this;
            c cVarA = eVar.a(eVar.f(), parentWebView, args);
            e.this.f81203h.add(cVarA);
            return cVarA;
        }

        @Override // com.sigmob.sdk.mraid2.t
        public void b(c container) {
            if (e.this.f81198c == null) {
                return;
            }
            e.this.f81198c.c();
        }

        @Override // com.sigmob.sdk.mraid2.t
        public void a() {
            if (e.this.f81198c == null) {
                return;
            }
            e.this.f81198c.d();
        }

        @Override // com.sigmob.sdk.mraid2.t
        public void b(c container, JSONObject args) {
            e.this.f81197b = args.optBoolean("flag");
            if (e.this.f81198c == null) {
                return;
            }
            e.this.f81198c.a(e.this.f81197b);
        }

        @Override // com.sigmob.sdk.mraid2.t
        public void a(c container) {
            if (e.this.f81198c != null) {
                e.this.f81198c.b();
            }
            if (e.this.f81203h.isEmpty()) {
                return;
            }
            for (int i10 = 0; i10 < e.this.f81203h.size(); i10++) {
                ((c) e.this.f81203h.get(i10)).b();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(c cVar, int i10, int i11) {
            d mraidBridge;
            if (cVar == null || (mraidBridge = cVar.getMraidBridge()) == null) {
                return;
            }
            mraidBridge.a(i10, i11);
        }

        @Override // com.sigmob.sdk.mraid2.t
        public void a(c container, BaseAdUnit adUnit, JSONObject args) {
            if (e.this.f81198c == null) {
                return;
            }
            e.this.f81198c.a(container, adUnit, args);
        }
    }

    class a extends BroadcastReceiver {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Context f81213b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f81214c = -1;

        a() {
        }

        public void a() {
            Context context = this.f81213b;
            if (context == null) {
                return;
            }
            context.unregisterReceiver(this);
            this.f81213b = null;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int screenOrientation;
            if (this.f81213b == null || !"android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction()) || (screenOrientation = ClientMetadata.getInstance().getScreenOrientation(e.this.f())) == this.f81214c) {
                return;
            }
            this.f81214c = screenOrientation;
            e.this.a(screenOrientation);
        }

        public void a(Context context) {
            Preconditions.checkNotNull(context);
            Context applicationContext = context.getApplicationContext();
            this.f81213b = applicationContext;
            if (applicationContext == null) {
                return;
            }
            com.sigmob.sdk.base.utils.g.a(applicationContext, this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
        }
    }

    public e(Context context, List<BaseAdUnit> adUnits) {
        ArrayList arrayList = new ArrayList();
        this.f81203h = arrayList;
        this.f81207l = new Handler(Looper.getMainLooper());
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        this.f81208m = anonymousClass2;
        Preconditions.checkNotNull(context);
        this.f81204i = adUnits;
        FrameLayout frameLayout = new FrameLayout(context);
        this.f81196a = frameLayout;
        frameLayout.setBackgroundColor(0);
        a aVar = new a();
        this.f81202g = aVar;
        aVar.a(context);
        c cVar = new c(context, adUnits, frameLayout);
        this.f81199d = cVar;
        cVar.setLoadListener(new com.sigmob.sdk.mraid2.a() { // from class: com.sigmob.sdk.mraid2.e.1
            @Override // com.sigmob.sdk.mraid2.a
            public void a(c container) {
                if (e.this.f81198c == null) {
                    return;
                }
                try {
                    e.this.f81198c.a(e.this.f81199d);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.sigmob.sdk.mraid2.a
            public void a(WindAdError errCode) {
                if (e.this.f81198c == null) {
                    return;
                }
                try {
                    e.this.f81198c.a(errCode);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
        this.f81199d.setNextWebViewListener(anonymousClass2);
        arrayList.clear();
        arrayList.add(this.f81199d);
        frameLayout.addView(this.f81199d, new FrameLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context f() {
        FrameLayout frameLayout = this.f81196a;
        if (frameLayout == null) {
            return null;
        }
        return frameLayout.getContext();
    }

    public FrameLayout e() {
        return this.f81196a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c a(Context context, c parentWebView, JSONObject args) {
        c cVar = new c(context, this.f81204i, this.f81196a, parentWebView, args);
        cVar.setAdSize(this.f81205j);
        cVar.setNextWebViewListener(this.f81208m);
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        SigmobLog.d("onShow end");
        m mVar = this.f81198c;
        if (mVar == null) {
            return;
        }
        mVar.a(this.f81197b);
    }

    public void b() {
        if (com.sigmob.sdk.base.utils.e.a(this.f81203h)) {
            return;
        }
        for (int i10 = 0; i10 < this.f81203h.size(); i10++) {
            c cVar = this.f81203h.get(i10);
            cVar.l();
            d mraidBridge = cVar.getMraidBridge();
            if (mraidBridge != null) {
                mraidBridge.b(true);
            }
        }
    }

    public c c() {
        return this.f81199d;
    }

    public void d() {
        a aVar = this.f81202g;
        if (aVar != null) {
            aVar.a();
            this.f81202g = null;
        }
        try {
            Iterator<c> it2 = this.f81203h.iterator();
            while (it2.hasNext()) {
                it2.next().b();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            this.f81203h.clear();
            this.f81199d = null;
            this.f81198c = null;
        } catch (Throwable unused) {
        }
        this.f81207l.removeCallbacksAndMessages(null);
    }

    public void a() {
        if (com.sigmob.sdk.base.utils.e.a(this.f81203h)) {
            return;
        }
        for (int i10 = 0; i10 < this.f81203h.size(); i10++) {
            d mraidBridge = this.f81203h.get(i10).getMraidBridge();
            if (mraidBridge != null) {
                mraidBridge.b(false);
            }
        }
    }

    void a(int currentRotation) {
        SigmobLog.i("handleOrientationChange " + currentRotation);
        if (com.sigmob.sdk.base.utils.e.a(this.f81203h)) {
            return;
        }
        for (int i10 = 0; i10 < this.f81203h.size(); i10++) {
            d mraidBridge = this.f81203h.get(i10).getMraidBridge();
            if (mraidBridge != null) {
                mraidBridge.e();
                mraidBridge.a(this.f81205j);
            }
        }
    }

    public void a(WindowInsets windowInsets, boolean isLoaded) {
        this.f81206k = windowInsets;
        SigmobLog.d("updateWindowInsets " + windowInsets);
        if (!isLoaded || com.sigmob.sdk.base.utils.e.a(this.f81203h)) {
            return;
        }
        com.sigmob.sdk.base.utils.m mVarA = com.sigmob.sdk.videoplayer.c.a(windowInsets);
        for (int i10 = 0; i10 < this.f81203h.size(); i10++) {
            d mraidBridge = this.f81203h.get(i10).getMraidBridge();
            if (mraidBridge != null) {
                mraidBridge.a(mVarA.a(), mVarA.b(), mVarA.c(), mVarA.d());
            }
        }
    }

    public void a(com.sigmob.sdk.base.common.g adSize) {
        this.f81205j = adSize;
        this.f81199d.setAdSize(adSize);
        this.f81199d.a();
    }

    public void a(BaseAdUnit adUnit) {
        SigmobLog.d("onShow start");
        this.f81207l.postDelayed(new Runnable() { // from class: com.sigmob.sdk.mraid2.j0
            @Override // java.lang.Runnable
            public final void run() {
                this.f81224b.g();
            }
        }, ((long) 5) * 1000);
    }

    public void a(f mraid2ControllerListener) {
        this.f81199d.getMraidBridge().a(mraid2ControllerListener);
    }

    public void a(m mraidListener) {
        this.f81198c = mraidListener;
    }

    public void a(boolean status) {
        d mraidBridge;
        if (com.sigmob.sdk.base.utils.e.a(this.f81203h)) {
            return;
        }
        for (c cVar : this.f81203h) {
            if (cVar != null && (mraidBridge = cVar.getMraidBridge()) != null) {
                mraidBridge.a(status);
            }
        }
    }
}
