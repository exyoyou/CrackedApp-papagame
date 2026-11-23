package com.byazt.dq;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.byazt.sz.m;
import com.byazt.sz.rh;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1212, 54})
public class ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f13070a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f13071c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f13072n;
    public float tt;
    public Context uj;
    public m ve;

    public ve(Context context, m mVar) {
        this.uj = context;
        this.ve = mVar;
        this.f13070a = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public boolean c(rh rhVar, com.byazt.xj.ve veVar, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f13071c = motionEvent.getX();
            this.tt = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float x10 = motionEvent.getX();
                float y10 = motionEvent.getY();
                if (Math.abs(x10 - this.f13071c) >= this.f13070a || Math.abs(y10 - this.tt) >= this.f13070a) {
                    this.f13072n = true;
                }
            } else if (action == 3) {
                this.f13072n = false;
            }
        } else {
            if (this.f13072n) {
                this.f13072n = false;
                return false;
            }
            float x11 = motionEvent.getX();
            float y11 = motionEvent.getY();
            if (Math.abs(x11 - this.f13071c) >= this.f13070a || Math.abs(y11 - this.tt) >= this.f13070a) {
                this.f13072n = false;
            } else if (rhVar != null) {
                rhVar.c(this.ve, veVar, veVar);
                return true;
            }
        }
        return true;
    }
}
