package com.byazt.hn;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 25, 54})
public final class ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f15013a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f15014c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f15016i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public View f15018n;
    public boolean sp;
    public tt tt;
    public com.byazt.hn.c uj;
    public n ve;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Application f15022z;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f15021x = true;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final Rect f15015da = new Rect();
    public final View.OnLayoutChangeListener sl = new View.OnLayoutChangeListener() { // from class: com.byazt.hn.ve.1
        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            if (ve.this.uj != null) {
                ve.this.uj.setBounds(0, 0, i12 - i10, i13 - i11);
            }
            ve.this.x();
        }
    };

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ViewTreeObserver.OnScrollChangedListener f15019t = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.byazt.hn.ve.2
        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            ve.this.x();
        }
    };

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ViewTreeObserver.OnWindowFocusChangeListener f15020u = new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.byazt.hn.ve.3
        @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
        public void onWindowFocusChanged(boolean z10) {
            ve.this.x();
        }
    };
    public final View.OnAttachStateChangeListener yp = new View.OnAttachStateChangeListener() { // from class: com.byazt.hn.ve.4
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            ve.this.n();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ve.this.a();
        }
    };

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Application.ActivityLifecycleCallbacks f15017m = new c() { // from class: com.byazt.hn.ve.5
        @Override // com.byazt.hn.ve.c, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (activity == ve.this.m()) {
                ve.this.f15021x = false;
                ve.this.x();
            }
        }

        @Override // com.byazt.hn.ve.c, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (activity == ve.this.m()) {
                ve.this.f15021x = true;
                ve.this.x();
            }
        }
    };

    @com.byazt.zqa.c(c = {0, 1, 25, 24})
    private static abstract class c implements Application.ActivityLifecycleCallbacks {
        private c() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    public ve(Context context) {
        this.f15014c = context != null ? context.getApplicationContext() : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        View view = this.f15018n;
        if (view == null) {
            this.f15013a = false;
            this.sp = false;
            rh();
            this.f15016i = false;
            return;
        }
        if (this.f15013a) {
            this.f15013a = false;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnScrollChangedListener(this.f15019t);
                ViewTreeObserver.OnWindowFocusChangeListener onWindowFocusChangeListener = this.f15020u;
                if (onWindowFocusChangeListener != null) {
                    viewTreeObserver.removeOnWindowFocusChangeListener(onWindowFocusChangeListener);
                }
            }
            c(false);
            u();
        }
        sl();
        rh();
    }

    private void da() {
        View view = this.f15018n;
        if (view == null || this.f15016i) {
            return;
        }
        view.addOnLayoutChangeListener(this.sl);
        this.f15018n.addOnAttachStateChangeListener(this.yp);
        this.f15016i = true;
    }

    private void i() {
        tt ttVar = this.tt;
        if (ttVar == null) {
            return;
        }
        if (this.ve == null) {
            this.ve = new n(ttVar);
        }
        View view = this.f15018n;
        if (view != null) {
            this.ve.c(view.getWidth(), this.f15018n.getHeight());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Activity m() {
        View view = this.f15018n;
        if (view == null) {
            return null;
        }
        return c(view.getContext());
    }

    private void nu() {
        Activity activityM;
        Application application;
        if (this.f15022z != null || (activityM = m()) == null || (application = activityM.getApplication()) == null) {
            return;
        }
        this.f15022z = application;
        application.registerActivityLifecycleCallbacks(this.f15017m);
    }

    private void rh() {
        Application application = this.f15022z;
        if (application != null) {
            application.unregisterActivityLifecycleCallbacks(this.f15017m);
            this.f15022z = null;
        }
    }

    private void sl() {
        View view = this.f15018n;
        if (view == null || !this.f15016i) {
            return;
        }
        view.removeOnLayoutChangeListener(this.sl);
        this.f15018n.removeOnAttachStateChangeListener(this.yp);
        this.f15016i = false;
    }

    private boolean sp() {
        View view;
        return this.f15013a && (view = this.f15018n) != null && this.f15021x && view.getVisibility() == 0 && this.f15018n.getWindowVisibility() == 0 && this.f15018n.getWidth() > 0 && this.f15018n.getHeight() > 0 && this.f15018n.getAlpha() > 0.0f && this.f15018n.getGlobalVisibleRect(this.f15015da) && this.f15015da.width() > 1 && this.f15015da.height() > 1;
    }

    private void t() {
        if (this.f15018n == null || this.tt == null || !z()) {
            return;
        }
        i();
        if (this.uj == null) {
            this.uj = new com.byazt.hn.c(this.ve);
        }
        int width = this.f15018n.getWidth();
        int height = this.f15018n.getHeight();
        if (width > 0 && height > 0) {
            this.uj.setBounds(0, 0, width, height);
        }
        this.f15018n.getOverlay().add(this.uj);
    }

    private void u() {
        if (this.f15018n == null || this.uj == null || !z()) {
            return;
        }
        this.f15018n.getOverlay().remove(this.uj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        c(sp());
    }

    private void yp() {
        com.byazt.hn.c cVar = this.uj;
        if (cVar != null) {
            cVar.tt();
        }
        n nVar = this.ve;
        if (nVar != null) {
            nVar.a();
            this.ve = null;
        }
        this.uj = null;
    }

    private static boolean z() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (this.f15013a || this.f15018n == null || this.tt == null || !z()) {
            return;
        }
        da();
        this.f15013a = true;
        t();
        ViewTreeObserver viewTreeObserver = this.f15018n.getViewTreeObserver();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.addOnScrollChangedListener(this.f15019t);
            ViewTreeObserver.OnWindowFocusChangeListener onWindowFocusChangeListener = this.f15020u;
            if (onWindowFocusChangeListener != null) {
                viewTreeObserver.addOnWindowFocusChangeListener(onWindowFocusChangeListener);
            }
        }
        nu();
        x();
    }

    public void tt() {
        a();
        this.f15018n = null;
        yp();
    }

    public void uj() {
        a();
    }

    public void ve() {
        n();
    }

    public void c(String str) {
        tt ttVarC = tt.c(this.f15014c, str);
        if (ttVarC != null && ttVarC.ve()) {
            if (this.tt == ttVarC) {
                return;
            }
            u();
            yp();
            this.tt = ttVarC;
            if (!this.f15013a || this.f15018n == null) {
                return;
            }
            t();
            boolean z10 = this.sp;
            this.sp = false;
            c(z10 || sp());
            return;
        }
        if (this.tt != null) {
            u();
            yp();
            this.tt = null;
        }
    }

    public boolean c() {
        return this.tt != null;
    }

    public void c(View view) {
        if (this.f15018n == view) {
            return;
        }
        tt();
        this.f15018n = view;
        if (view == null || this.tt == null || !z()) {
            return;
        }
        da();
        if (this.f15018n.getWindowToken() != null) {
            n();
        }
    }

    private void c(boolean z10) {
        if (this.sp == z10) {
            return;
        }
        this.sp = z10;
        if (z10) {
            i();
            n nVar = this.ve;
            if (nVar != null) {
                nVar.uj();
            }
            com.byazt.hn.c cVar = this.uj;
            if (cVar != null) {
                cVar.c();
                return;
            }
            return;
        }
        com.byazt.hn.c cVar2 = this.uj;
        if (cVar2 != null) {
            cVar2.tt();
        }
        n nVar2 = this.ve;
        if (nVar2 != null) {
            nVar2.n();
        }
    }

    private static Activity c(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            Context baseContext = ((ContextWrapper) context).getBaseContext();
            if (baseContext == context) {
                return null;
            }
            context = baseContext;
        }
        return null;
    }
}
