package com.mob.tools.utils;

import com.mob.tools.proguard.PublicMemberKeeper;

/* JADX INFO: loaded from: classes2.dex */
public class FileLocker implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.fly.tools.utils.FileLocker f75544a = new cn.fly.tools.utils.FileLocker();

    public synchronized boolean lock(boolean z10) {
        return this.f75544a.lock(z10);
    }

    public synchronized void release() {
        this.f75544a.release();
    }

    public synchronized void setLockFile(String str) {
        this.f75544a.setLockFile(str);
    }

    public synchronized void unlock() {
        this.f75544a.unlock();
    }

    public synchronized boolean lock(boolean z10, long j10, long j11) {
        return this.f75544a.lock(z10, j10, j11);
    }

    public synchronized void lock(Runnable runnable, boolean z10) {
        this.f75544a.lock(runnable, z10);
    }
}
