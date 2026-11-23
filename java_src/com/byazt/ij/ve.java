package com.byazt.ij;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1432, 54})
public class ve implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.nk.x f15375a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f15376c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f15377i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f15378n;
    public int sp;
    public float tt;
    public float uj;
    public float ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f15379x;

    public ve(com.byazt.nk.x xVar) {
        this(xVar, 5);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.byazt.nk.x xVar;
        com.byazt.nk.x xVar2;
        com.byazt.nk.x xVar3;
        if (this.f15377i) {
            return true;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f15376c = motionEvent.getX();
            this.tt = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                this.uj = motionEvent.getX();
                this.ve = motionEvent.getY();
                if (Math.abs(this.uj - this.f15376c) > 10.0f) {
                    this.f15378n = true;
                }
                if (Math.abs(this.uj - this.f15376c) > 8.0f || Math.abs(this.ve - this.tt) > 8.0f) {
                    this.f15379x = false;
                }
                int iTt = com.byazt.or.x.tt(com.byazt.sr.uj.getContext(), Math.abs(this.uj - this.f15376c));
                if (this.uj > this.f15376c && iTt > this.sp && (xVar3 = this.f15375a) != null) {
                    xVar3.c();
                    this.f15377i = true;
                }
            }
        } else {
            if (!this.f15378n && !this.f15379x) {
                return false;
            }
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            int iTt2 = com.byazt.or.x.tt(com.byazt.sr.uj.getContext(), Math.abs(this.uj - this.f15376c));
            if (this.uj > this.f15376c && iTt2 > this.sp && (xVar2 = this.f15375a) != null) {
                xVar2.c();
                this.f15377i = true;
            }
            float fAbs = Math.abs(x10 - this.f15376c);
            float fAbs2 = Math.abs(y10 - this.tt);
            if ((fAbs < 8.0f || fAbs2 < 8.0f) && (xVar = this.f15375a) != null) {
                xVar.tt();
                this.f15377i = true;
            }
        }
        return true;
    }

    public ve(com.byazt.nk.x xVar, int i10) {
        this.sp = 5;
        this.f15379x = true;
        this.f15375a = xVar;
        if (i10 > 0) {
            this.sp = i10;
        }
    }
}
