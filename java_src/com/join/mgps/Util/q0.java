package com.join.mgps.Util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import com.kwad.library.solder.lib.ext.PluginError;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public class q0 {
    private static final String A = "FloatBallPrefs";
    private static final String B = "lastX";
    private static final String C = "lastY";
    private static final String D = "isHalfShow";
    private static final long E = 2000;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final String f49948z = "FloatBallManager";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<Context> f49949a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WindowManager f49950b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WindowManager.LayoutParams f49951c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WindowManager.LayoutParams f49952d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f49953e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f49954f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private SharedPreferences f49955g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f49956h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f49957i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f49958j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f49959k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private d f49960l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f49963o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f49964p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f49965q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f49966r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f49967s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f49968t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private c f49969u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Handler f49970v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private PrefDef_ f49971w;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f49961m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f49962n = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f49972x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    Runnable f49973y = new b();

    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            return q0.this.l(event);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (q0.this.f49954f == null || q0.this.f49954f.getParent() == null) {
                return;
            }
            q0.this.f49950b.removeView(q0.this.f49954f);
        }
    }

    private class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (q0.this.f49961m || q0.this.f49962n) {
                return;
            }
            q0.this.t();
        }

        /* synthetic */ c(q0 q0Var, a aVar) {
            this();
        }
    }

    public interface d {
        void a();
    }

    public q0(Context context) {
        WeakReference<Context> weakReference = new WeakReference<>(context);
        this.f49949a = weakReference;
        if (weakReference.get().getApplicationContext() == null) {
            return;
        }
        this.f49958j = (int) context.getResources().getDimension(R.dimen.wdp120);
        this.f49950b = (WindowManager) context.getSystemService("window");
        this.f49955g = context.getSharedPreferences(A, 0);
        this.f49970v = new Handler();
        this.f49971w = new PrefDef_(context);
        this.f49969u = new c(this, null);
        p();
        n();
        o();
        s();
    }

    private void g() {
        WindowManager.LayoutParams layoutParams = this.f49951c;
        int i10 = layoutParams.x;
        if (i10 == 0) {
            layoutParams.x = (-this.f49958j) / 2;
        } else {
            int i11 = this.f49956h;
            int i12 = this.f49958j;
            if (i10 == i11 - i12) {
                layoutParams.x = i11 - (i12 / 2);
            } else {
                int i13 = layoutParams.y;
                if (i13 == 0) {
                    layoutParams.y = (-i12) / 2;
                } else {
                    int i14 = this.f49957i;
                    if (i13 == i14 - i12) {
                        layoutParams.y = i14 - (i12 / 2);
                    }
                }
            }
        }
        this.f49962n = true;
        x();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("应用半显示位置: x=");
        sb2.append(this.f49951c.x);
        sb2.append(", y=");
        sb2.append(this.f49951c.y);
    }

    private Context getContext() {
        WeakReference<Context> weakReference = this.f49949a;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private void h() {
        WindowManager.LayoutParams layoutParams = this.f49951c;
        int i10 = layoutParams.x;
        int i11 = this.f49956h;
        int i12 = this.f49958j;
        int i13 = i11 - (i10 + i12);
        int i14 = layoutParams.y;
        int iMin = Math.min(Math.min(i10, i13), Math.min(i14, this.f49957i - (i12 + i14)));
        if (iMin == i10) {
            this.f49951c.x = 0;
        } else if (iMin == i13) {
            this.f49951c.x = this.f49956h - this.f49958j;
        } else if (iMin == i14) {
            this.f49951c.y = 0;
        } else {
            this.f49951c.y = this.f49957i - this.f49958j;
        }
        x();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("吸附到最近边缘: x=");
        sb2.append(this.f49951c.x);
        sb2.append(", y=");
        sb2.append(this.f49951c.y);
    }

    private int i(float dpValue) {
        if (getContext() == null) {
            return 0;
        }
        return (int) ((dpValue * getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void k() {
        d dVar = this.f49960l;
        if (dVar != null) {
            dVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean l(MotionEvent event) {
        int action = event.getAction();
        if (action == 0) {
            this.f49961m = false;
            this.f49963o = event.getRawX();
            this.f49964p = event.getRawY();
            WindowManager.LayoutParams layoutParams = this.f49951c;
            this.f49965q = layoutParams.x;
            this.f49966r = layoutParams.y;
            this.f49970v.removeCallbacks(this.f49969u);
            if (this.f49962n) {
                r();
            }
            if (this.f49972x) {
                this.f49970v.removeCallbacks(this.f49973y);
                this.f49973y.run();
                this.f49972x = false;
            }
            return true;
        }
        if (action == 1) {
            if (this.f49961m) {
                h();
                t();
            } else {
                k();
            }
            this.f49970v.postDelayed(this.f49969u, E);
            this.f49961m = false;
            return true;
        }
        if (action != 2) {
            return false;
        }
        float rawX = event.getRawX() - this.f49963o;
        float rawY = event.getRawY() - this.f49964p;
        if (Math.abs(rawX) > 5.0f || Math.abs(rawY) > 5.0f) {
            this.f49961m = true;
            WindowManager.LayoutParams layoutParams2 = this.f49951c;
            layoutParams2.x = (int) (this.f49965q + rawX);
            layoutParams2.y = (int) (this.f49966r + rawY);
            x();
        }
        return true;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void n() {
        Context context = getContext();
        if (context == null) {
            return;
        }
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_cloud_float_queue_view, (ViewGroup) null, false);
        this.f49953e = viewInflate;
        viewInflate.setOnTouchListener(new a());
    }

    private void o() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f49951c = layoutParams;
        layoutParams.type = Build.VERSION.SDK_INT >= 26 ? 1000 : PluginError.ERROR_UPD_CAPACITY;
        layoutParams.flags = 67109384;
        layoutParams.gravity = 8388659;
        layoutParams.format = -3;
        int i10 = this.f49958j;
        layoutParams.width = i10;
        layoutParams.height = i10;
    }

    @SuppressLint({"InternalInsetResource"})
    private void p() {
        Context context = getContext();
        if (context == null) {
            return;
        }
        this.f49956h = this.f49950b.getDefaultDisplay().getWidth();
        this.f49957i = this.f49950b.getDefaultDisplay().getHeight();
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            this.f49959k = getContext().getResources().getDimensionPixelSize(identifier);
        } else {
            this.f49959k = 0;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("屏幕尺寸初始化: width=");
        sb2.append(this.f49956h);
        sb2.append(", height=");
        sb2.append(this.f49957i);
        sb2.append(", 状态栏高度=");
        sb2.append(this.f49959k);
    }

    private void r() {
        if (this.f49962n) {
            WindowManager.LayoutParams layoutParams = this.f49951c;
            int i10 = layoutParams.x;
            int i11 = this.f49958j;
            if (i10 == (-i11) / 2) {
                layoutParams.x = 0;
            } else {
                int i12 = this.f49956h;
                if (i10 == i12 - (i11 / 2)) {
                    layoutParams.x = i12 - i11;
                } else {
                    int i13 = layoutParams.y;
                    if (i13 == (-i11) / 2) {
                        layoutParams.y = 0;
                    } else {
                        int i14 = this.f49957i;
                        if (i13 == i14 - (i11 / 2)) {
                            layoutParams.y = i14 - i11;
                        }
                    }
                }
            }
            this.f49962n = false;
            x();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("恢复完全显示位置: x=");
            sb2.append(this.f49951c.x);
            sb2.append(", y=");
            sb2.append(this.f49951c.y);
        }
    }

    private void s() {
        this.f49967s = this.f49955g.getInt(B, this.f49956h - this.f49958j);
        this.f49968t = this.f49955g.getInt(C, this.f49957i / 2);
        this.f49962n = this.f49955g.getBoolean(D, false);
        WindowManager.LayoutParams layoutParams = this.f49951c;
        layoutParams.x = this.f49967s;
        layoutParams.y = this.f49968t - this.f49959k;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("恢复上次位置: x=");
        sb2.append(this.f49967s);
        sb2.append(", y=");
        sb2.append(this.f49968t);
        sb2.append(", 半显示状态=");
        sb2.append(this.f49962n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        int i10 = this.f49951c.y + this.f49959k;
        SharedPreferences.Editor editorEdit = this.f49955g.edit();
        editorEdit.putInt(B, this.f49951c.x);
        editorEdit.putInt(C, i10);
        editorEdit.putBoolean(D, this.f49962n);
        editorEdit.apply();
        this.f49967s = this.f49951c.x;
        this.f49968t = i10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("保存当前位置: x=");
        sb2.append(this.f49951c.x);
        sb2.append(", y=");
        sb2.append(i10);
        sb2.append(", 半显示状态=");
        sb2.append(this.f49962n);
    }

    private void x() {
        View view;
        Context context = getContext();
        if (this.f49950b == null || (view = this.f49953e) == null || context == null) {
            return;
        }
        try {
            if (view.getParent() == null) {
                this.f49950b.addView(this.f49953e, this.f49951c);
            } else {
                this.f49950b.updateViewLayout(this.f49953e, this.f49951c);
            }
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("更新悬浮球位置失败: ");
            sb2.append(e10.getMessage());
        }
    }

    public View j() {
        return this.f49953e;
    }

    public void m() {
        WindowManager windowManager;
        WindowManager windowManager2;
        try {
            Handler handler = this.f49970v;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            View view = this.f49953e;
            if (view != null && view.getParent() != null && (windowManager2 = this.f49950b) != null) {
                windowManager2.removeView(this.f49953e);
            }
            View view2 = this.f49954f;
            if (view2 == null || view2.getParent() == null || (windowManager = this.f49950b) == null) {
                return;
            }
            windowManager.removeView(this.f49954f);
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("隐藏悬浮球失败: ");
            sb2.append(e10.getMessage());
        }
    }

    public void q() {
        this.f49949a.clear();
        this.f49949a = null;
        this.f49950b = null;
        this.f49953e = null;
        this.f49970v = null;
    }

    public void u(d listener) {
        this.f49960l = listener;
    }

    public void v(Activity activity) {
        this.f49951c.token = activity.getWindow().getDecorView().getApplicationWindowToken();
        WindowManager.LayoutParams layoutParams = this.f49951c;
        int i10 = layoutParams.x;
        int i11 = layoutParams.y;
        p();
        int i12 = this.f49956h;
        if (i10 > i12 / 4) {
            this.f49951c.x = i12 - this.f49958j;
        } else if (i12 > this.f49957i) {
            this.f49951c.x = this.f49959k + 5;
        } else {
            this.f49951c.x = 0;
        }
        this.f49951c.y = this.f49957i / 2;
        x();
        w(activity);
    }

    public void w(Activity activity) {
        View view;
        if (this.f49971w.hasTipCloudBall().d().booleanValue()) {
            return;
        }
        this.f49971w.hasTipCloudBall().g(Boolean.TRUE);
        if (this.f49954f == null) {
            this.f49954f = View.inflate(this.f49949a.get(), R.layout.layout_cloud_float_queue_tip, null);
            this.f49952d = new WindowManager.LayoutParams();
        }
        int dimension = (int) this.f49949a.get().getResources().getDimension(R.dimen.wdp54);
        int dimension2 = (int) this.f49949a.get().getResources().getDimension(R.dimen.wdp369);
        this.f49952d.token = activity.getWindow().getDecorView().getApplicationWindowToken();
        WindowManager.LayoutParams layoutParams = this.f49952d;
        layoutParams.type = Build.VERSION.SDK_INT >= 26 ? 1000 : PluginError.ERROR_UPD_CAPACITY;
        layoutParams.flags = 67109384;
        layoutParams.gravity = 8388659;
        layoutParams.format = -3;
        layoutParams.width = dimension2;
        layoutParams.height = dimension;
        WindowManager.LayoutParams layoutParams2 = this.f49951c;
        int i10 = layoutParams2.x - dimension2;
        int i11 = this.f49958j;
        layoutParams.x = i10 + ((i11 / 5) * 4);
        layoutParams.y = layoutParams2.y + i11 + i(5.0f);
        if (this.f49950b == null || (view = this.f49954f) == null) {
            return;
        }
        try {
            if (view.getParent() == null) {
                this.f49950b.addView(this.f49954f, this.f49952d);
            } else {
                this.f49950b.updateViewLayout(this.f49954f, this.f49952d);
            }
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("更新悬浮球位置失败: ");
            sb2.append(e10.getMessage());
        }
        this.f49972x = true;
        this.f49970v.postDelayed(this.f49973y, BaseCloudFileManager.ACK_TIMEOUT);
    }
}
