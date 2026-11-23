package cn.com.chinatelecom.account.api.b;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes7.dex */
public abstract class e implements Runnable {
    private static Handler handler = new Handler(Looper.getMainLooper());
    private boolean isCompleted = false;
    private a timeOutTask;
    private long timeout;

    private static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private e f788a;

        public a(e eVar) {
            this.f788a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            e eVar = this.f788a;
            if (eVar != null) {
                eVar.timeout();
            }
        }
    }

    public e() {
    }

    private void checkTimeOut() {
        a aVar = new a(this);
        this.timeOutTask = aVar;
        handler.postDelayed(aVar, this.timeout);
    }

    public boolean isCompleted() {
        return this.isCompleted;
    }

    public void removeTimeoutTask() {
        try {
            a aVar = this.timeOutTask;
            if (aVar != null) {
                handler.removeCallbacks(aVar);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.timeout > 0) {
            checkTimeOut();
        }
        runTask();
    }

    public abstract void runTask();

    public void setCompleted(boolean z10) {
        this.isCompleted = z10;
    }

    public void timeout() {
    }

    public e(long j10) {
        this.timeout = j10;
    }
}
