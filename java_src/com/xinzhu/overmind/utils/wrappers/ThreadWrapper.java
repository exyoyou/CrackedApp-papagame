package com.xinzhu.overmind.utils.wrappers;

import android.os.Looper;

/* JADX INFO: loaded from: classes8.dex */
public class ThreadWrapper {
    public static boolean isMainThread() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }
}
