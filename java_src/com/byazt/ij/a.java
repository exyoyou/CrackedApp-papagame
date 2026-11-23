package com.byazt.ij;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1432, 34})
public class a implements View.OnTouchListener {
    public static int ve = 10;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f15345c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.nk.x f15346n;
    public float tt;
    public boolean uj;

    public a(com.byazt.nk.x xVar) {
        this.f15346n = xVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f15345c = motionEvent.getX();
            this.tt = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float x10 = motionEvent.getX();
                float y10 = motionEvent.getY();
                if (Math.abs(x10 - this.f15345c) >= ve || Math.abs(y10 - this.tt) >= ve) {
                    this.uj = true;
                }
            } else if (action == 3) {
                this.uj = false;
            }
        } else {
            if (this.uj) {
                this.uj = false;
                return false;
            }
            float x11 = motionEvent.getX();
            float y11 = motionEvent.getY();
            if (Math.abs(x11 - this.f15345c) >= ve || Math.abs(y11 - this.tt) >= ve) {
                this.uj = false;
            } else {
                com.byazt.nk.x xVar = this.f15346n;
                if (xVar != null) {
                    xVar.c();
                }
            }
        }
        return true;
    }
}
