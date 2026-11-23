package com.byazt.cd;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 43, 42})
public class i extends Handler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WeakReference<c> f12380c;

    public interface c {
        void c(Message message);
    }

    public i(Looper looper, c cVar) {
        super(looper);
        this.f12380c = new WeakReference<>(cVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        c cVar = this.f12380c.get();
        if (cVar == null || message == null) {
            return;
        }
        cVar.c(message);
    }
}
