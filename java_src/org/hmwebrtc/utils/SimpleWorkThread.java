package org.hmwebrtc.utils;

import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes10.dex */
public class SimpleWorkThread {
    private AtomicBoolean mExitFlag;
    private Thread mThread;
    private final String mThreadName;
    private final long mTimeoutMs;
    private Work mWork;
    private final String TAG = "SimpleWorkThread";
    private final Object mSignal = new Object();

    public interface Work {
        void done();
    }

    public SimpleWorkThread(String str, long j10) {
        if (TextUtils.isEmpty(str)) {
            str = "SimpleWorkThread_" + hashCode();
        }
        this.mThreadName = str;
        this.mTimeoutMs = j10;
        this.mExitFlag = new AtomicBoolean(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OnExitThread() {
        Work work = this.mWork;
        if (work != null) {
            work.done();
        }
    }

    private void createTread() {
        Thread thread = new Thread(this.mThreadName) { // from class: org.hmwebrtc.utils.SimpleWorkThread.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                while (!SimpleWorkThread.this.mExitFlag.get()) {
                    try {
                        synchronized (SimpleWorkThread.this.mSignal) {
                            try {
                                if (SimpleWorkThread.this.mTimeoutMs > 0) {
                                    SimpleWorkThread.this.mSignal.wait(SimpleWorkThread.this.mTimeoutMs);
                                } else {
                                    SimpleWorkThread.this.mSignal.wait();
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        SimpleWorkThread.this.done();
                    } catch (Exception e10) {
                        e10.toString();
                    }
                }
                SimpleWorkThread.this.OnExitThread();
            }
        };
        this.mThread = thread;
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void done() {
        Work work = this.mWork;
        if (work != null) {
            work.done();
        }
    }

    public void setEvent() {
        try {
            synchronized (this.mSignal) {
                this.mSignal.notify();
            }
        } catch (Exception e10) {
            e10.toString();
        }
    }

    public void start(Work work) {
        if (this.mExitFlag.get()) {
            this.mWork = work;
            this.mExitFlag.set(false);
            createTread();
        }
    }

    public void stop() {
        try {
            this.mExitFlag.set(true);
            Thread thread = this.mThread;
            if (thread != null) {
                thread.stop();
            }
            this.mThread = null;
        } catch (Exception e10) {
            e10.toString();
        }
    }
}
