package com.haima.hmcp.utils;

import android.util.Log;
import com.haima.hmcp.countly.CountlyUtil;
import java.io.InputStream;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes5.dex */
public class ClientThread extends Thread {
    public static final int PACKET_SIZE_KILOBYTES = 1024;
    private static final String TAG = "ClientThread";
    private URLConnection con;
    private ThreadProgressTracker tracker;
    private volatile boolean toExit = false;
    private long totalDownloadTime = 0;
    private long totalDownloadLen = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f34088b = new byte[1024];

    public ClientThread(URLConnection uRLConnection, ThreadProgressTracker threadProgressTracker) {
        this.con = uRLConnection;
        this.tracker = threadProgressTracker;
    }

    public long getTotalDownloadLen() {
        return this.totalDownloadLen;
    }

    public long getTotalDownloadTime() {
        return this.totalDownloadTime;
    }

    public void requestExit() {
        this.toExit = true;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String name = Thread.currentThread().getName();
        InputStream inputStream = null;
        try {
            try {
                InputStream inputStream2 = this.con.getInputStream();
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    while (true) {
                        int i10 = inputStream2.read(this.f34088b);
                        if (i10 == -1) {
                            break;
                        }
                        this.totalDownloadLen += (long) i10;
                        if (this.toExit) {
                            LogUtils.d(TAG, "speed test->" + name + " downloading stop");
                            break;
                        }
                    }
                    this.totalDownloadTime += System.currentTimeMillis() - jCurrentTimeMillis;
                    LogUtils.i(TAG, "speed test->" + name + " speed: use " + this.totalDownloadTime + "ms to download: " + this.totalDownloadLen);
                    this.tracker.notifyDone();
                } catch (Exception e10) {
                    CountlyUtil.recordErrorEvent("ClientThread::read::" + Log.getStackTraceString(e10));
                    e10.printStackTrace();
                }
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (Exception unused) {
                    }
                }
            } catch (Exception e11) {
                CountlyUtil.recordErrorEvent("ClientThread::getInputStream::" + Log.getStackTraceString(e11));
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    inputStream.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }
}
