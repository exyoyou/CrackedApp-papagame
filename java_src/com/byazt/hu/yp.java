package com.byazt.hu;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1381, 215})
public class yp extends Handler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<c> f15126c;

    public interface c {
        void c(Message message);
    }

    public yp(Looper looper, c cVar) {
        super(looper);
        this.f15126c = new WeakReference<>(cVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        c cVar = this.f15126c.get();
        if (cVar == null || message == null) {
            return;
        }
        cVar.c(message);
    }
}
