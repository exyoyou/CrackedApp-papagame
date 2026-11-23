package com.byazt.tv;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 239, 91})
public class sp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Handler f20448a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f20449c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f20450n;
    public int tt;
    public Object uj;
    public int ve;

    private sp(int i10, int i11, int i12, Object obj, long j10, Handler handler) {
        this.f20449c = i10;
        this.tt = i11;
        this.ve = i12;
        this.uj = obj;
        this.f20450n = j10;
        this.f20448a = handler;
    }

    public static sp c(Message message) {
        return new sp(message.what, message.arg1, message.arg2, message.obj, tt(message), message.getTarget());
    }

    private static long tt(Message message) {
        if (message == null) {
            return 0L;
        }
        return Math.max(message.getWhen() - SystemClock.uptimeMillis(), 0L);
    }

    public static Message c(Handler handler, sp spVar) {
        Handler handler2 = spVar.f20448a;
        return handler2 != null ? handler2.obtainMessage(spVar.f20449c, spVar.tt, spVar.ve, spVar.uj) : handler.obtainMessage(spVar.f20449c, spVar.tt, spVar.ve, spVar.uj);
    }

    public static long c(sp spVar) {
        return spVar.f20450n;
    }
}
