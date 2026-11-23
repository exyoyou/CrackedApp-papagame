package com.byazt.ol;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.el.SSWebView;
import com.byazt.nr.yp;
import com.byazt.xl.sl;
import com.byazt.xl.sp;
import com.byazt.xl.u;
import com.byazt.xl.x;
import com.byazt.xv.ThemeStatusBroadcastReceiver;
import com.bytedance.component.sdk.annotation.UiThread;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 41, 20})
public abstract class c implements com.byazt.sr.c, com.byazt.xv.c, sl, com.byazt.xl.uj<SSWebView> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f17885a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONObject f17886c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f17887da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile sp f17888i;
    public x sl;
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public u f17890t;
    public boolean tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f17891u;
    public SSWebView ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f17892x;
    public int yp;
    public int uj = 8;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public AtomicBoolean f17889n = new AtomicBoolean(false);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f17893z = false;

    public c(Context context, u uVar, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver) {
        this.f17887da = false;
        this.f17885a = context;
        this.f17890t = uVar;
        this.sp = uVar.a();
        themeStatusBroadcastReceiver.c(this);
        if (com.byazt.sr.uj.c()) {
            t();
            return;
        }
        SSWebView sSWebViewU = u();
        this.ve = sSWebViewU;
        if (sSWebViewU != null) {
            this.f17887da = true;
        } else if (com.byazt.sr.uj.getContext() != null) {
            this.ve = new SSWebView(com.byazt.sr.uj.getContext());
        }
    }

    private void t() {
        if (this.f17885a == null && com.byazt.sr.uj.getContext() != null) {
            this.f17885a = com.byazt.sr.uj.getContext();
        }
        if (this.f17885a != null) {
            SSWebView sSWebViewU = u();
            this.ve = sSWebViewU;
            if (sSWebViewU == null) {
                this.ve = new SSWebView(new MutableContextWrapper(this.f17885a.getApplicationContext()));
            } else {
                this.f17887da = true;
            }
        }
    }

    private SSWebView u() {
        return this.f17890t.zm() ? n.c().c(this.f17885a, this.sp) : n.c().tt(this.f17885a, this.sp);
    }

    private void yp() {
        if (this.f17890t.zm()) {
            n.c().tt(this.ve);
        } else {
            n.c().ve(this.ve);
        }
    }

    public abstract void a();

    public void c(boolean z10, int i10) {
    }

    public void da() {
    }

    public void i() {
    }

    public void n() {
        if (c() == null) {
            return;
        }
        try {
            c().getWebView().resumeTimers();
        } catch (Exception unused) {
        }
    }

    public u sl() {
        return this.f17890t;
    }

    @Override // com.byazt.xl.uj
    /* JADX INFO: renamed from: tt, reason: merged with bridge method [inline-methods] */
    public SSWebView sp() {
        return c();
    }

    public abstract void tt(int i10);

    public void uj() {
        if (this.f17889n.get()) {
            return;
        }
        this.f17889n.set(true);
        a();
        if (this.ve.getParent() != null) {
            ((ViewGroup) this.ve.getParent()).removeView(this.ve);
        }
        if (this.tt) {
            yp();
        } else {
            n.c().n(this.ve);
        }
    }

    @Override // com.byazt.xl.uj
    public int ve() {
        return 0;
    }

    public void x() {
        i();
        Activity activityC = com.byazt.nr.tt.c(this.ve);
        if (activityC != null) {
            this.yp = tt(activityC);
        }
    }

    public void c(String str) {
        this.f17892x = str;
    }

    @Override // com.byazt.xl.sl
    public void tt(View view, int i10, com.byazt.sr.ve veVar, int i11) {
        x xVar = this.sl;
        if (xVar != null) {
            xVar.tt(view, i10, veVar, i11);
        }
    }

    public SSWebView c() {
        return this.ve;
    }

    private int tt(Activity activity) {
        return activity.hashCode();
    }

    public void c(x xVar) {
        this.sl = xVar;
    }

    @Override // com.byazt.xl.uj
    public void c(sp spVar) {
        this.f17888i = spVar;
        if (c() != null && c().getWebView() != null) {
            if (TextUtils.isEmpty(this.f17892x)) {
                this.f17888i.c(102, "url is empty");
                return;
            }
            if (!this.f17890t.zm()) {
                if (!this.f17893z && !com.byazt.six.tt.c(this.f17886c)) {
                    sp spVar2 = this.f17888i;
                    StringBuilder sb2 = new StringBuilder("data null is ");
                    sb2.append(this.f17886c == null);
                    spVar2.c(103, sb2.toString());
                    return;
                }
                if (this.f17893z && !com.byazt.six.tt.ve(this.f17886c)) {
                    sp spVar3 = this.f17888i;
                    StringBuilder sb3 = new StringBuilder("choice ad data null is ");
                    sb3.append(this.f17886c == null);
                    spVar3.c(103, sb3.toString());
                    return;
                }
            } else if (ve() == 9 && !com.byazt.six.tt.tt(this.f17886c)) {
                sp spVar4 = this.f17888i;
                StringBuilder sb4 = new StringBuilder("data null is ");
                sb4.append(this.f17886c == null);
                spVar4.c(103, sb4.toString());
                return;
            }
            this.f17890t.sp().tt(this.f17887da);
            if (this.f17887da) {
                try {
                    this.ve.clearView();
                    this.f17890t.sp().sp();
                    yp.c(this.ve.getWebView(), "javascript:window.SDK_RESET_RENDER();window.SDK_TRIGGER_RENDER();");
                    return;
                } catch (Exception e10) {
                    n.c().n(this.ve);
                    this.f17888i.c(102, "load exception is " + e10.getMessage());
                    return;
                }
            }
            SSWebView sSWebViewC = c();
            sSWebViewC.clearView();
            this.f17890t.sp().sp();
            sSWebViewC.loadUrl(this.f17892x);
            return;
        }
        sp spVar5 = this.f17888i;
        StringBuilder sb5 = new StringBuilder("SSWebview null is ");
        sb5.append(c() == null);
        sb5.append(" or Webview is null");
        spVar5.c(102, sb5.toString());
    }

    public void c(boolean z10) {
        this.f17891u = z10;
    }

    @Override // com.byazt.xl.sl
    public void c(final com.byazt.xl.yp ypVar) {
        if (ypVar == null) {
            if (this.f17888i != null) {
                this.f17888i.c(105, "renderResult is null");
                return;
            }
            return;
        }
        boolean zVe = ypVar.ve();
        final float fUj = (float) ypVar.uj();
        final float fN = (float) ypVar.n();
        if (ve() == 0 && (fUj <= 0.0f || fN <= 0.0f)) {
            if (this.f17888i != null) {
                this.f17888i.c(105, "width is " + fUj + "height is " + fN);
                return;
            }
            return;
        }
        this.tt = zVe;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            c(ypVar, fUj, fN);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.byazt.ol.c.1
                @Override // java.lang.Runnable
                public void run() {
                    c.this.c(ypVar, fUj, fN);
                }
            });
        }
    }

    public void c(com.byazt.xl.yp ypVar, float f10, float f11) {
        c(this.tt, ypVar.sl());
        boolean z10 = this.tt;
        if (z10 && !this.f17891u) {
            c(f10, f11);
            tt(this.uj);
            if (this.f17888i != null) {
                this.f17888i.c(c(), ypVar);
                return;
            }
            return;
        }
        if (!z10) {
            n.c().n(this.ve);
        }
        c(ypVar.sl(), ypVar.da());
    }

    @Override // com.byazt.xl.sl
    public void c(View view, int i10, com.byazt.sr.ve veVar, int i11) {
        x xVar = this.sl;
        if (xVar != null) {
            xVar.c(view, i10, veVar, i11);
        }
    }

    @UiThread
    public void c(float f10, float f11) {
        this.f17890t.sp().x();
        if (com.byazt.sr.uj.c() && ve() == 9) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) c().getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new FrameLayout.LayoutParams(-1, -1);
            }
            layoutParams.width = -1;
            layoutParams.height = -1;
            c().setLayoutParams(layoutParams);
            return;
        }
        int iC = (int) com.byazt.or.x.c(this.f17885a, f10);
        int iC2 = (int) com.byazt.or.x.c(this.f17885a, f11);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) c().getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams2 = new FrameLayout.LayoutParams(iC, iC2);
        }
        layoutParams2.width = iC;
        layoutParams2.height = iC2;
        c().setLayoutParams(layoutParams2);
    }

    private void c(int i10, String str) {
        if (this.f17888i != null) {
            this.f17888i.c(i10, str);
        }
    }

    @Override // com.byazt.sr.c
    public void c(Activity activity) {
        if (this.yp == 0 || activity == null || activity.hashCode() != this.yp) {
            return;
        }
        uj();
        da();
    }
}
