package com.byazt.ij;

import android.view.MotionEvent;
import android.view.View;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1432, 46})
public class n implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f15354a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f15356i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f15357n;
    public com.byazt.nk.x sp;
    public float uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f15358x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<Integer, Float> f15355c = new HashMap();
    public Map<Integer, Float> tt = new HashMap();
    public Map<Integer, Boolean> ve = new HashMap();

    public n(com.byazt.nk.x xVar, int i10, boolean z10) {
        this.sp = xVar;
        this.f15358x = i10;
        this.f15356i = z10;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x006b  */
    /* JADX WARN: Code duplicated, block: B:42:0x00d2  */
    private boolean c(MotionEvent motionEvent) {
        Boolean bool;
        com.byazt.nk.x xVar;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        int pointerId = motionEvent.getPointerId(actionIndex);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                bool = this.ve.get(Integer.valueOf(pointerId));
                if (bool != null || !bool.booleanValue()) {
                    c(pointerId);
                    return false;
                }
                Float f10 = this.f15355c.get(Integer.valueOf(pointerId));
                Float f11 = this.tt.get(Integer.valueOf(pointerId));
                if (f10 != null && f11 != null) {
                    int iTt = com.byazt.or.x.tt(com.byazt.sr.uj.getContext(), Math.abs(f11.floatValue() - f10.floatValue()));
                    if (f11.floatValue() - f10.floatValue() < 0.0f && iTt > this.f15358x && (xVar = this.sp) != null) {
                        xVar.c();
                    }
                }
                c(pointerId);
            } else if (actionMasked == 2) {
                for (int i10 = 0; i10 < motionEvent.getPointerCount(); i10++) {
                    int pointerId2 = motionEvent.getPointerId(i10);
                    float y10 = motionEvent.getY(i10);
                    Float f12 = this.f15355c.get(Integer.valueOf(pointerId2));
                    if (f12 != null) {
                        this.tt.put(Integer.valueOf(pointerId2), Float.valueOf(y10));
                        if (Math.abs(y10 - f12.floatValue()) > 10.0f) {
                            this.ve.put(Integer.valueOf(pointerId2), Boolean.TRUE);
                        }
                    }
                }
            } else if (actionMasked == 3) {
                c();
            } else if (actionMasked == 5) {
                this.f15355c.put(Integer.valueOf(pointerId), Float.valueOf(motionEvent.getY(actionIndex)));
                this.ve.put(Integer.valueOf(pointerId), Boolean.FALSE);
            } else if (actionMasked == 6) {
                bool = this.ve.get(Integer.valueOf(pointerId));
                if (bool != null) {
                }
                c(pointerId);
                return false;
            }
        } else {
            this.f15355c.put(Integer.valueOf(pointerId), Float.valueOf(motionEvent.getY(actionIndex)));
            this.ve.put(Integer.valueOf(pointerId), Boolean.FALSE);
        }
        return true;
    }

    private boolean tt(MotionEvent motionEvent) {
        com.byazt.nk.x xVar;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.uj = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float y10 = motionEvent.getY();
                this.f15357n = y10;
                if (Math.abs(y10 - this.uj) > 10.0f) {
                    this.f15354a = true;
                }
            }
        } else {
            if (!this.f15354a) {
                return false;
            }
            int iTt = com.byazt.or.x.tt(com.byazt.sr.uj.getContext(), Math.abs(this.f15357n - this.uj));
            if (this.f15357n - this.uj < 0.0f && iTt > this.f15358x && (xVar = this.sp) != null) {
                xVar.c();
                this.uj = 0.0f;
                this.f15357n = 0.0f;
                this.f15354a = false;
            }
        }
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f15356i ? c(motionEvent) : tt(motionEvent);
    }

    private void c(int i10) {
        this.f15355c.remove(Integer.valueOf(i10));
        this.tt.remove(Integer.valueOf(i10));
        this.ve.remove(Integer.valueOf(i10));
    }

    private void c() {
        this.f15355c.clear();
        this.tt.clear();
        this.ve.clear();
    }
}
