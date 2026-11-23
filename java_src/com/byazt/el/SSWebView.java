package com.byazt.el;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsListView;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import com.byazt.nl.uj;
import com.byazt.nr.m;
import com.byazt.nr.zm;
import com.byazt.qg.BizWebView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.join.mgps.activity.TagGameListActivity_;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALWAYS_DO_AV_SYNC, 2466})
public class SSWebView extends BizWebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f13507a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public float f13508da;
    public AtomicBoolean gr;
    public tt gt;
    public AtomicBoolean gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ve f13509h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f13510i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f13511m;
    public JSONObject md;
    public int my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.nzi.c f13512n;
    public float nu;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public JSONObject f13513p;
    public AtomicBoolean qy;
    public int rh;
    public zm rl;
    public long sl;
    public JSONObject sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f13514t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f13515u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f13516x;
    public boolean yp;
    public JSONObject yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f13517z;
    public AtomicInteger zm;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALWAYS_DO_AV_SYNC, 1264})
    public static class c extends WebViewClient {
        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (Build.VERSION.SDK_INT < 26) {
                return super.onRenderProcessGone(webView, renderProcessGoneDetail);
            }
            if (webView == null) {
                return true;
            }
            ViewGroup viewGroup = (ViewGroup) webView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(webView);
            }
            webView.destroy();
            return true;
        }
    }

    public interface tt {
        void c(int i10);
    }

    public interface ve {
        void c(MotionEvent motionEvent);

        void c(boolean z10);
    }

    public SSWebView(Context context) {
        super(context);
        this.f13510i = 0.0f;
        this.f13508da = 0.0f;
        this.sl = 0L;
        this.f13514t = 0L;
        this.f13515u = 0L;
        this.yp = false;
        this.f13517z = 20.0f;
        this.nu = 50.0f;
        this.qy = new AtomicBoolean();
        this.gu = new AtomicBoolean();
        this.gr = new AtomicBoolean(true);
        this.zm = new AtomicInteger();
    }

    private void a() {
        this.rl = null;
        this.gt = null;
        setTouchStateListener(null);
        O_();
        this.f13512n = null;
        this.sp = null;
        this.f13516x = false;
    }

    private static boolean tt(View view) {
        try {
            Class<?> clsLoadClass = view.getClass().getClassLoader().loadClass("androidx.viewpager.widget.ViewPager");
            if (clsLoadClass != null && clsLoadClass.isInstance(view)) {
                return true;
            }
        } catch (Throwable th) {
            m.c(th);
        }
        try {
            Class<?> clsLoadClass2 = view.getClass().getClassLoader().loadClass("androidx.viewpager.widget.ViewPager");
            return clsLoadClass2 != null && clsLoadClass2.isInstance(view);
        } catch (Throwable th2) {
            m.c(th2);
            return false;
        }
    }

    private boolean ve(View view) {
        try {
            Class<?> clsLoadClass = view.getClass().getClassLoader().loadClass("androidx.core.view.ScrollingView");
            if (clsLoadClass != null && clsLoadClass.isInstance(view)) {
                return true;
            }
        } catch (Throwable th) {
            m.c(th);
        }
        try {
            Class<?> clsLoadClass2 = view.getClass().getClassLoader().loadClass("androidx.core.view.ScrollingView");
            return clsLoadClass2 != null && clsLoadClass2.isInstance(view);
        } catch (Throwable th2) {
            m.c(th2);
            return false;
        }
    }

    @Override // com.byazt.qg.BizWebView, com.byazt.qg.MultiWebview
    public void M_() {
        a();
        super.M_();
    }

    public boolean N_() {
        zm zmVar = this.rl;
        if (zmVar == null) {
            return false;
        }
        return zmVar.c();
    }

    public void O_() {
        this.gu.set(false);
        zm zmVar = this.rl;
        if (zmVar != null) {
            com.byazt.nzi.c cVar = this.f13512n;
            zmVar.uj(cVar != null ? cVar.c() : 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ViewParent c(View view) {
        ViewParent parent = view.getParent();
        if ((parent instanceof AbsListView) || (parent instanceof ScrollView) || (parent instanceof HorizontalScrollView) || !(parent instanceof View)) {
            return parent;
        }
        View view2 = (View) parent;
        return (tt(view2) || ve(view2)) ? parent : c(view2);
    }

    @Override // com.byazt.qg.BizWebView, com.byazt.qg.MultiWebview, com.byazt.nl.uj
    public void destroy() {
        super.destroy();
        a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        ve veVar = this.f13509h;
        if (veVar != null) {
            veVar.c(true);
            this.f13509h.c(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public uj getInnerIWebView() {
        return this.tt;
    }

    public com.byazt.nzi.c getMaterialMeta() {
        return this.f13512n;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.qy.set(true);
        if (this.gu.get()) {
            tt(this.zm.get(), this.gr.get());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.qy.set(false);
        zm zmVar = this.rl;
        if (zmVar != null) {
            com.byazt.nzi.c cVar = this.f13512n;
            zmVar.tt(cVar != null ? cVar.c() : 0);
        }
    }

    @Override // android.view.ViewGroup
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        ViewParent viewParentC;
        try {
            c(motionEvent);
            boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
            if ((motionEvent.getActionMasked() == 2 || motionEvent.getActionMasked() == 0) && this.yp && (viewParentC = c((View) this)) != null) {
                viewParentC.requestDisallowInterceptTouchEvent(true);
            }
            return zOnInterceptTouchEvent;
        } catch (Throwable unused) {
            return super.onInterceptTouchEvent(motionEvent);
        }
    }

    @Override // com.byazt.qg.BizWebView, com.byazt.nl.uj
    public void onPause() {
        super.onPause();
        ve veVar = this.f13509h;
        if (veVar != null) {
            veVar.c(false);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        zm zmVar = this.rl;
        if (zmVar != null) {
            if (z10) {
                com.byazt.nzi.c cVar = this.f13512n;
                zmVar.c(cVar != null ? cVar.c() : 0);
            } else {
                com.byazt.nzi.c cVar2 = this.f13512n;
                zmVar.tt(cVar2 != null ? cVar2.c() : 0);
            }
        }
    }

    public void setCalculationMethod(int i10) {
        this.rh = i10;
    }

    public void setCalculationTwistMethod(int i10) {
        this.my = i10;
    }

    public void setDeepShakeValue(float f10) {
        this.f13511m = f10;
    }

    public void setIsPreventTouchEvent(boolean z10) {
        this.yp = z10;
    }

    public void setLandingPage(boolean z10) {
        this.f13516x = z10;
    }

    public void setMaterialMeta(com.byazt.nzi.c cVar) {
        this.f13512n = cVar;
    }

    public void setOnShakeListener(tt ttVar) {
        this.gt = ttVar;
    }

    public void setShakeInteractConf(JSONObject jSONObject) {
        this.f13513p = jSONObject;
    }

    public void setShakeValue(float f10) {
        this.f13517z = f10;
    }

    public void setTag(String str) {
        this.f13507a = str;
    }

    public void setTouchStateListener(ve veVar) {
        this.f13509h = veVar;
    }

    public void setTwistConfig(JSONObject jSONObject) {
        this.yv = jSONObject;
    }

    public void setTwistInteractConf(JSONObject jSONObject) {
        this.md = jSONObject;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.byazt.qg.BizWebView, com.byazt.nl.uj
    public void setWebViewClient(WebViewClient webViewClient) {
        if (webViewClient instanceof ve) {
            setTouchStateListener((ve) webViewClient);
        } else {
            setTouchStateListener(null);
        }
        if (webViewClient == 0) {
            webViewClient = new c();
        }
        super.setWebViewClient(webViewClient);
    }

    public void setWriggleValue(float f10) {
        this.nu = f10;
    }

    @Override // android.view.View
    public String getTag() {
        return this.f13507a;
    }

    public void c(int i10, boolean z10) {
        this.gr.set(z10);
        this.zm.set(i10);
        this.gu.set(true);
        if (this.qy.get()) {
            tt(i10, z10);
        }
    }

    private void tt(int i10, boolean z10) {
        zm zmVar = this.rl;
        if (zmVar == null) {
            this.rl = new zm(getContext(), i10, z10);
        } else {
            zmVar.c(z10);
        }
        this.rl.c(this.f13517z);
        this.rl.ve(this.f13511m);
        this.rl.tt(this.nu);
        this.rl.c(this.yv);
        this.rl.ve(this.f13513p);
        this.rl.tt(this.md);
        this.rl.n(this.rh);
        this.rl.a(this.my);
        this.rl.c(new zm.c() { // from class: com.byazt.el.SSWebView.1
            @Override // com.byazt.nr.zm.c
            public void c(int i11) {
                if (i11 == 1) {
                    SSWebView.this.c(1);
                } else {
                    if (i11 != 2) {
                        return;
                    }
                    SSWebView.this.c(2);
                }
            }
        });
        zm zmVar2 = this.rl;
        com.byazt.nzi.c cVar = this.f13512n;
        zmVar2.ve(cVar != null ? cVar.c() : 0);
    }

    public void c(int i10) {
        tt ttVar = this.gt;
        if (ttVar != null) {
            ttVar.c(i10);
        }
    }

    private void c(MotionEvent motionEvent) {
        if (!this.f13516x || this.f13512n == null) {
            return;
        }
        if ((this.f13507a == null && this.sp == null) || motionEvent == null) {
            return;
        }
        try {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f13510i = motionEvent.getRawX();
                this.f13508da = motionEvent.getRawY();
                this.sl = System.currentTimeMillis();
                this.sp = new JSONObject();
                if (this.tt != null) {
                    this.tt.setTag(2064056319, Long.valueOf(this.sl));
                    return;
                }
                return;
            }
            if (action == 1 || action == 3) {
                this.sp.put("start_x", String.valueOf(this.f13510i));
                this.sp.put("start_y", String.valueOf(this.f13508da));
                this.sp.put("offset_x", String.valueOf(motionEvent.getRawX() - this.f13510i));
                this.sp.put("offset_y", String.valueOf(motionEvent.getRawY() - this.f13508da));
                this.sp.put("url", String.valueOf(getUrl()));
                this.sp.put(TagGameListActivity_.TAG_EXTRA, "");
                this.f13514t = System.currentTimeMillis();
                if (this.tt != null) {
                    this.tt.setTag(2064056318, Long.valueOf(this.f13514t));
                }
                this.sp.put("down_time", this.sl);
                this.sp.put("up_time", this.f13514t);
                if (com.byazt.vj.c.c().tt() != null) {
                    long j10 = this.f13515u;
                    long j11 = this.sl;
                    if (j10 != j11) {
                        this.f13515u = j11;
                        com.byazt.vj.c.c();
                    }
                }
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }
}
