package com.byazt.ij;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1432, 15})
public class uj implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f15369a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f15370c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f15371da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.nk.x f15372i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f15373n = true;
    public boolean sl;
    public float sp;
    public float tt;
    public float uj;
    public float ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f15374x;

    public uj(com.byazt.nk.x xVar, int i10, boolean z10) {
        this.f15372i = xVar;
        this.f15371da = i10;
        this.sl = z10;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.byazt.nk.x xVar;
        com.byazt.nk.x xVar2;
        com.byazt.nk.x xVar3;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f15370c = motionEvent.getX();
            this.tt = motionEvent.getY();
            this.f15369a = motionEvent.getY();
            this.f15373n = true;
        } else if (action != 1) {
            if (action == 2) {
                float y10 = motionEvent.getY();
                this.sp = y10;
                if (Math.abs(y10 - this.f15369a) > 10.0f) {
                    this.f15374x = true;
                }
                this.uj = motionEvent.getX();
                this.ve = motionEvent.getY();
                if (Math.abs(this.uj - this.f15370c) > 8.0f || Math.abs(this.ve - this.tt) > 8.0f) {
                    this.f15373n = false;
                }
            }
        } else {
            if (!this.f15374x && !this.f15373n) {
                return false;
            }
            if (this.sl || (xVar3 = this.f15372i) == null) {
                int iTt = com.byazt.or.x.tt(com.byazt.sr.uj.getContext(), Math.abs(this.sp - this.f15369a));
                if (this.sp - this.f15369a < 0.0f && iTt > this.f15371da && (xVar2 = this.f15372i) != null) {
                    xVar2.c();
                } else if (this.f15373n && (xVar = this.f15372i) != null) {
                    xVar.c();
                }
            } else {
                xVar3.c();
            }
        }
        return true;
    }
}
