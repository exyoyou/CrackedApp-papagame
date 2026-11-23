package com.byazt.ji;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import com.byazt.pm.sl;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 222, 72})
public class da extends tt implements com.byazt.cd.i.c {
    public int sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Handler f15827t;

    public da(Context context) {
        super(context);
        this.sl = 500;
        this.f15827t = new com.byazt.cd.i(Looper.getMainLooper(), this);
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
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f15827t.sendEmptyMessageDelayed(1101, this.sl);
            return false;
        }
        if (action != 1 && action != 3) {
            return false;
        }
        this.f15827t.removeMessages(1101);
        return false;
    }

    @Override // com.byazt.cd.i.c
    public void c(Message message) {
        if (message.what != 1101) {
            return;
        }
        sl slVar = this.f15833c;
        if (slVar != null) {
            slVar.c(this.tt, this.f15832a, this.ve.tt(), this.ve);
        }
        Handler handler = this.f15827t;
        if (handler != null) {
            handler.removeMessages(1101);
        }
    }
}
