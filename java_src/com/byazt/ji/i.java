package com.byazt.ji;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import com.byazt.pm.sl;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 222, 42})
public class i extends tt implements com.byazt.cd.i.c {
    public int sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f15828t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Handler f15829u;

    public i(Context context) {
        super(context);
        this.sl = 500;
        this.f15829u = new com.byazt.cd.i(Looper.getMainLooper(), this);
    }

    @Override // com.byazt.ji.tt
    public boolean c(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return false;
        }
        MotionEvent motionEvent = (MotionEvent) objArr[0];
        Object obj = this.f15836n.get("delay");
        if (obj == null) {
            this.sl = 500;
        } else {
            this.sl = com.byazt.cd.ve.c(String.valueOf(obj), 500);
        }
        return c(this.tt, motionEvent);
    }

    private boolean c(com.byazt.xj.ve veVar, MotionEvent motionEvent) {
        sl slVar;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f15829u.sendEmptyMessageDelayed(1102, this.sl);
        } else {
            if (action == 1) {
                if (this.f15828t && (slVar = this.f15833c) != null) {
                    slVar.c(this.tt, this.f15832a, this.ve.tt(), this.ve);
                    this.f15828t = false;
                    Handler handler = this.f15829u;
                    if (handler != null) {
                        handler.removeMessages(1102);
                    }
                    return true;
                }
                Handler handler2 = this.f15829u;
                if (handler2 != null) {
                    handler2.removeMessages(1102);
                }
                this.f15828t = false;
                return false;
            }
            if (action == 3) {
                Handler handler3 = this.f15829u;
                if (handler3 != null) {
                    handler3.removeMessages(1102);
                }
                this.f15828t = false;
            }
        }
        return true;
    }

    @Override // com.byazt.cd.i.c
    public void c(Message message) {
        if (message.what != 1102) {
            return;
        }
        this.f15828t = true;
        Handler handler = this.f15829u;
        if (handler != null) {
            handler.removeMessages(1102);
        }
    }
}
