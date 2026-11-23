package com.byazt.dq;

import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1212, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f13054c = "GesThrough_";
    public List<MotionEvent> tt = new ArrayList();
    public Set<String> ve = Collections.synchronizedSet(new HashSet());

    public void c(com.byazt.xj.ve veVar, MotionEvent motionEvent) {
        if (veVar == null || motionEvent == null || this.tt == null) {
            return;
        }
        c(veVar.i(), veVar.eo(), motionEvent);
    }

    public void c(View view, String str, MotionEvent motionEvent) {
        if (view == null || motionEvent == null || this.tt == null) {
            return;
        }
        this.f13054c = "GesThrough_".concat(String.valueOf(str));
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i10 = iArr[0];
        int i11 = iArr[1];
        if (motionEvent.getAction() == 0) {
            c();
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(i10, i11);
        this.tt.add(motionEventObtain);
    }

    public boolean c(MotionEvent motionEvent) {
        if (motionEvent == null || this.ve == null) {
            return false;
        }
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        return this.ve.contains(motionEvent.getDownTime() + "_" + pointerId);
    }

    public void c(com.byazt.xj.ve veVar) {
        if (this.tt.isEmpty() || this.ve == null || veVar == null || veVar.i() == null || veVar.i().getRootView() == null) {
            return;
        }
        c(veVar.i());
    }

    public void c(View view) {
        if (this.tt.isEmpty() || this.ve == null || view == null || view.getRootView() == null) {
            return;
        }
        final View rootView = view.getRootView();
        this.tt.size();
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.byazt.dq.c.1
            @Override // java.lang.Runnable
            public void run() {
                for (MotionEvent motionEvent : c.this.tt) {
                    if (motionEvent != null) {
                        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                        c.this.ve.add(motionEvent.getDownTime() + "_" + pointerId);
                        rootView.dispatchTouchEvent(motionEvent);
                        motionEvent.recycle();
                    }
                }
                c.this.c();
            }
        }, 300L);
    }

    public void c() {
        List<MotionEvent> list = this.tt;
        if (list != null) {
            list.clear();
        }
    }
}
