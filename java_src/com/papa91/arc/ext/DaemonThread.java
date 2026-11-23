package com.papa91.arc.ext;

/* JADX INFO: loaded from: classes2.dex */
public class DaemonThread extends Thread {
    public DaemonThread(String str) {
        super(str);
        setDaemon(true);
    }

    public DaemonThread(Runnable runnable, String str) {
        super(runnable, str);
        setDaemon(true);
    }
}
