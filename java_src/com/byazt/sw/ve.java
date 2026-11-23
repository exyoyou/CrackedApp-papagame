package com.byazt.sw;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import com.byazt.nr.da;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 868, 54})
public class ve implements Handler.Callback {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Handler f19931c;

    @com.byazt.zqa.c(c = {0, 1, 868, 24})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final ve f19932c = new ve();
    }

    public static ve c() {
        return c.f19932c;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NonNull Message message) {
        ((Runnable) message.obj).run();
        return false;
    }

    private ve() {
        this.f19931c = new Handler(da.c().getLooper(), this);
    }

    public void c(Runnable runnable) {
        Message messageObtain = Message.obtain();
        messageObtain.obj = runnable;
        this.f19931c.sendMessage(messageObtain);
    }

    public void c(Runnable runnable, long j10) {
        this.f19931c.postDelayed(runnable, j10);
    }
}
