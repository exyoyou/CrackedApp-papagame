package com.byazt.ij;

import android.view.MotionEvent;
import android.view.View;
import com.byazt.nk.InteractViewContainer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1432, 13})
public class tt implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.nk.x f15366a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f15367c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public InteractViewContainer f15368n;
    public float tt;
    public boolean uj;
    public long ve;

    public tt(InteractViewContainer interactViewContainer, com.byazt.nk.x xVar) {
        this.f15368n = interactViewContainer;
        this.f15366a = xVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.ve = System.currentTimeMillis();
            this.f15367c = motionEvent.getX();
            this.tt = motionEvent.getY();
            this.f15368n.n();
        } else if (action != 1) {
            if (action == 2) {
                float x10 = motionEvent.getX();
                float y10 = motionEvent.getY();
                if (Math.abs(x10 - this.f15367c) >= com.byazt.or.x.c(com.byazt.sr.uj.getContext(), 10.0f) || Math.abs(y10 - this.tt) >= com.byazt.or.x.c(com.byazt.sr.uj.getContext(), 10.0f)) {
                    this.uj = true;
                    this.f15368n.a();
                }
            }
        } else {
            if (this.uj) {
                return false;
            }
            if (System.currentTimeMillis() - this.ve >= 1500) {
                com.byazt.nk.x xVar = this.f15366a;
                if (xVar != null) {
                    xVar.c();
                }
            } else {
                this.f15368n.a();
            }
        }
        return true;
    }
}
