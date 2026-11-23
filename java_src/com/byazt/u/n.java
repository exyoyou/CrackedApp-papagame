package com.byazt.u;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes7.dex */
@com.byazt.zqa.c(c = {0, 1, 67, 46})
public final class n implements Handler.Callback {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Handler f20495c = new Handler(c.f20496c, this);

    @com.byazt.zqa.c(c = {0, 1, 67, 151})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Looper f20496c;

        static {
            HandlerThread handlerThread = new HandlerThread("DownloadWatchDog");
            handlerThread.start();
            f20496c = handlerThread.getLooper();
        }
    }

    public interface tt {
        long c();
    }

    public static Looper c() {
        return c.f20496c;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NonNull Message message) {
        if (message.what != 0) {
            return true;
        }
        try {
            tt ttVar = (tt) message.obj;
            long jC = ttVar.c();
            if (jC <= 0) {
                return true;
            }
            c(ttVar, jC);
            return true;
        } catch (Throwable th) {
            m.c(th);
            return true;
        }
    }

    public void tt() {
        Handler handler = this.f20495c;
        if (handler == null) {
            return;
        }
        this.f20495c = null;
        handler.removeCallbacksAndMessages(null);
    }

    public void c(tt ttVar, long j10) {
        Handler handler = this.f20495c;
        if (handler == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 0;
        messageObtain.obj = ttVar;
        handler.sendMessageDelayed(messageObtain, j10);
    }
}
