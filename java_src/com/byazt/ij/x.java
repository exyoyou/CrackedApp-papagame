package com.byazt.ij;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1432, 71})
public class x implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f15380a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.nk.x f15381c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f15382n;
    public float sp;
    public final boolean tt;
    public float uj;
    public final int ve = 10;

    public x(com.byazt.nk.x xVar, boolean z10) {
        this.f15381c = xVar;
        this.tt = z10;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.byazt.nk.x xVar;
        com.byazt.nk.x xVar2;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.uj = motionEvent.getX();
            this.f15382n = motionEvent.getY();
            new StringBuilder(", mStartY: ").append(this.f15382n);
        } else if (action == 1) {
            this.f15380a = motionEvent.getX();
            this.sp = motionEvent.getY();
            new StringBuilder(", mEndY: ").append(this.sp);
            if (this.tt || (xVar2 = this.f15381c) == null) {
                float f10 = this.f15380a - this.uj;
                float f11 = this.sp - this.f15382n;
                if (com.byazt.or.x.tt(com.byazt.sr.uj.getContext(), Math.abs((float) Math.sqrt((f10 * f10) + (f11 * f11)))) > 10.0f && (xVar = this.f15381c) != null) {
                    xVar.c();
                }
            } else {
                xVar2.c();
            }
        }
        return true;
    }
}
