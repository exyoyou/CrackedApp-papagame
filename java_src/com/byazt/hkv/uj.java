package com.byazt.hkv;

import android.content.Context;
import android.graphics.Point;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.byazt.ete.da;
import com.byazt.ete.gr;
import com.byazt.ogz.i;
import com.byazt.omf.gt;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 19, 15})
public abstract class uj implements View.OnClickListener, View.OnTouchListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static float f14951c = 0.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f14952i = 8;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static long f14953n;
    public static float tt;
    public static float uj;
    public static float ve;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f14954a;
    public da sp = new da();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final com.byazt.zo.uj f14955x = new com.byazt.zo.uj();

    @com.byazt.zqa.c(c = {0, 1, 19, 123})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14957c;
        public double tt;
        public long uj;
        public double ve;

        public c(int i10, double d10, double d11, long j10) {
            this.f14957c = i10;
            this.tt = d10;
            this.ve = d11;
            this.uj = j10;
        }
    }

    static {
        try {
            if (ViewConfiguration.get(gt.getContext()) != null) {
                f14952i = ViewConfiguration.get(gt.getContext()).getScaledTouchSlop();
            }
        } catch (Exception unused) {
        }
    }

    public uj(Context context) {
        if (context == null) {
            this.f14954a = gt.getContext();
        } else {
            this.f14954a = context;
        }
    }

    public abstract void c(View view, da daVar);

    public void c(gr grVar) {
    }

    public void n(int i10) {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (i.c()) {
            c(view, this.sp);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(final View view, MotionEvent motionEvent) {
        int i10;
        this.sp.ve(motionEvent.getDeviceId());
        this.sp.tt(motionEvent.getToolType(0));
        this.sp.uj(motionEvent.getSource());
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.sp.n((int) motionEvent.getRawX());
            this.sp.a((int) motionEvent.getRawY());
            this.sp.c(motionEvent.getRawX());
            this.sp.tt(motionEvent.getRawY());
            this.sp.c(System.currentTimeMillis());
            this.sp.tt(motionEvent.getToolType(0));
            this.sp.ve(motionEvent.getDeviceId());
            this.sp.uj(motionEvent.getSource());
            f14953n = System.currentTimeMillis();
            this.sp.tt(true);
            com.byazt.aas.gr.c(motionEvent);
            i10 = 0;
        } else if (actionMasked != 1) {
            i10 = 2;
            if (actionMasked == 2) {
                ve += Math.abs(motionEvent.getX() - f14951c);
                uj += Math.abs(motionEvent.getY() - tt);
                f14951c = motionEvent.getX();
                tt = motionEvent.getY();
                long jCurrentTimeMillis = System.currentTimeMillis() - f14953n;
                this.sp.ve(motionEvent.getRawX());
                this.sp.uj(motionEvent.getRawY());
                if (Math.abs(this.sp.my() - this.sp.sl()) >= f14952i || Math.abs(this.sp.gt() - this.sp.t()) >= f14952i) {
                    this.sp.tt(false);
                }
                if (jCurrentTimeMillis > 200) {
                    float f10 = ve;
                    int i11 = f14952i;
                    if (f10 > i11 || tt > i11) {
                        i10 = 1;
                    }
                }
            } else if (actionMasked != 3) {
                i10 = -1;
            } else {
                if (com.byazt.gd.c.c(view) && com.byazt.gd.c.tt(view)) {
                    view.post(new Runnable() { // from class: com.byazt.hkv.uj.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (view.isShown()) {
                                uj ujVar = uj.this;
                                ujVar.c(view, ujVar.sp);
                            }
                        }
                    });
                    return true;
                }
                i10 = 4;
            }
        } else {
            this.sp.ve(motionEvent.getRawX());
            this.sp.uj(motionEvent.getRawY());
            if (Math.abs(this.sp.my() - this.sp.sl()) >= f14952i || Math.abs(this.sp.gt() - this.sp.t()) >= f14952i) {
                this.sp.tt(false);
            }
            this.sp.tt(System.currentTimeMillis());
            Context context = this.f14954a;
            if (context == null) {
                context = gt.getContext();
            }
            com.byazt.zo.tt ttVar = (com.byazt.zo.tt) c(com.byazt.zo.tt.class);
            if (ttVar != null) {
                ttVar.c(this.sp);
            }
            if (com.byazt.gd.c.c(view)) {
                if (com.byazt.gd.c.c(view, this.sp.my(), this.sp.gt(), this.sp.sl(), this.sp.t())) {
                    return false;
                }
                if (com.byazt.gd.c.tt(view)) {
                    c(view, this.sp);
                }
                return true;
            }
            if (ttVar != null) {
                Point point = new Point((int) this.sp.my(), (int) this.sp.gt());
                if (view != null && !ttVar.c(view, context) && ttVar.c((View) view.getParent(), point)) {
                    return true;
                }
            }
            i10 = 3;
        }
        this.sp.u().put(motionEvent.getActionMasked(), new c(i10, motionEvent.getSize(), motionEvent.getPressure(), System.currentTimeMillis()));
        return false;
    }

    public void uj() {
    }

    public void ve() {
    }

    public <T extends com.byazt.zo.c> T c(Class<T> cls) {
        return (T) this.f14955x.c(cls);
    }
}
