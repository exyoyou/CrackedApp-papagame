package com.byazt.sgn;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import com.byazt.aas.pf;
import com.byazt.omf.gt;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 211, 215})
public class yp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f19756a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f19757c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f19760n;
    public boolean sl;
    public int sp;
    public float uj;
    public boolean tt = false;
    public boolean ve = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f19761x = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f19759i = false;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final View.OnTouchListener f19758da = new View.OnTouchListener() { // from class: com.byazt.sgn.yp.1
        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (yp.this.f19757c.z()) {
                return yp.this.tt || !yp.this.ve;
            }
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            int action = motionEvent.getAction();
            if (action == 0) {
                yp ypVar = yp.this;
                ypVar.sl = ypVar.c(motionEvent);
                yp.this.uj = x10;
                yp.this.f19760n = y10;
                yp.this.f19756a = (int) x10;
                yp.this.sp = (int) y10;
                yp.this.f19761x = true;
                if (yp.this.f19757c != null && yp.this.ve && !yp.this.tt) {
                    yp.this.f19757c.c(view, true);
                }
            } else if (action == 1) {
                if (Math.abs(x10 - yp.this.f19756a) > 20.0f || Math.abs(y10 - yp.this.sp) > 20.0f) {
                    yp.this.f19761x = false;
                }
                if (!yp.this.tt) {
                    yp.this.f19761x = true;
                }
                yp.this.f19759i = false;
                yp.this.uj = 0.0f;
                yp.this.f19760n = 0.0f;
                yp.this.f19756a = 0;
                if (yp.this.f19757c != null) {
                    yp.this.f19757c.c(view, yp.this.f19761x);
                }
                yp.this.sl = false;
            } else if (action != 2) {
                if (action == 3) {
                    yp.this.sl = false;
                }
            } else if (yp.this.tt && !yp.this.sl) {
                float f10 = x10 - yp.this.uj;
                float f11 = y10 - yp.this.f19760n;
                float fAbs = Math.abs(f10);
                float fAbs2 = Math.abs(f11);
                if (!yp.this.f19759i) {
                    if (fAbs <= 20.0f && fAbs2 <= 20.0f) {
                        return true;
                    }
                    yp.this.f19759i = true;
                }
                if (yp.this.f19757c != null) {
                    yp.this.f19757c.yp();
                }
                yp.this.uj = x10;
                yp.this.f19760n = y10;
            }
            return yp.this.tt || !yp.this.ve;
        }
    };

    public interface c {
        void c(View view, boolean z10);

        void yp();

        boolean z();
    }

    public yp(c cVar) {
        this.f19757c = cVar;
    }

    public void c(View view) {
        if (view != null) {
            view.setOnTouchListener(this.f19758da);
        }
    }

    public void c(boolean z10) {
        this.ve = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 0) {
            return false;
        }
        int iUj = pf.uj(gt.getContext().getApplicationContext());
        int iN = pf.n(gt.getContext().getApplicationContext());
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        float f10 = iUj;
        if (rawX <= f10 * 0.01f || rawX >= f10 * 0.99f) {
            return true;
        }
        float f11 = iN;
        return rawY <= 0.01f * f11 || rawY >= f11 * 0.99f;
    }
}
