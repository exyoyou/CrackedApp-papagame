package com.byazt.ji;

import android.content.Context;
import android.view.MotionEvent;
import com.byazt.pm.sl;
import com.byazt.pm.yp;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 222, 46})
public class n extends tt {
    public float sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f15830t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f15831u;
    public yp yp;

    public n(Context context) {
        super(context);
    }

    @Override // com.byazt.ji.tt
    public boolean c(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return false;
        }
        MotionEvent motionEvent = (MotionEvent) objArr[0];
        yp ypVar = this.yp;
        return ypVar != null ? ypVar.c(this.tt, motionEvent, this.f15833c, this) : c(this.tt, motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0049  */
    /* JADX WARN: Code duplicated, block: B:23:0x004d  */
    /* JADX WARN: Code duplicated, block: B:25:0x0054  */
    public boolean c(com.byazt.xj.ve veVar, MotionEvent motionEvent) {
        float rawX;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.sl = motionEvent.getRawX();
            this.f15830t = motionEvent.getRawY();
        } else if (action == 1) {
            if (this.f15831u) {
                this.f15831u = false;
                this.sl = 0.0f;
                this.f15830t = 0.0f;
                return false;
            }
            rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            if (Math.abs(rawX - this.sl) >= 15.0f && Math.abs(rawY - this.f15830t) < 15.0f) {
                sl slVar = this.f15833c;
                if (slVar != null) {
                    slVar.c(veVar, this.f15832a, this.ve.tt(), this.ve);
                    this.sl = 0.0f;
                    this.f15830t = 0.0f;
                    return true;
                }
            } else {
                this.f15831u = false;
                return false;
            }
        } else if (action == 2) {
            float rawX2 = motionEvent.getRawX();
            float rawY2 = motionEvent.getRawY();
            if (Math.abs(rawX2 - this.sl) >= 15.0f || Math.abs(rawY2 - this.f15830t) >= 15.0f) {
                this.f15831u = true;
            }
        } else if (action == 3) {
            this.f15831u = false;
            float rawX3 = motionEvent.getRawX();
            if (motionEvent.getRawY() != 0.0f || rawX3 != 0.0f) {
                if (this.f15831u) {
                    this.f15831u = false;
                    this.sl = 0.0f;
                    this.f15830t = 0.0f;
                    return false;
                }
                rawX = motionEvent.getRawX();
                float rawY3 = motionEvent.getRawY();
                if (Math.abs(rawX - this.sl) >= 15.0f) {
                }
                this.f15831u = false;
                return false;
            }
        }
        return true;
    }

    public void c(yp ypVar) {
        this.yp = ypVar;
    }
}
