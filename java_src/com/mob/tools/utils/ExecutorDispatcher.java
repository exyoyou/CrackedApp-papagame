package com.mob.tools.utils;

import com.mob.tools.proguard.PublicMemberKeeper;

/* JADX INFO: loaded from: classes2.dex */
public final class ExecutorDispatcher implements PublicMemberKeeper, a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile ExecutorDispatcher f75543a;

    public static abstract class SafeRunnable extends cn.fly.tools.utils.ExecutorDispatcher.SafeRunnable {
    }

    public static a getInstance() {
        if (f75543a == null) {
            synchronized (ExecutorDispatcher.class) {
                if (f75543a == null) {
                    f75543a = new ExecutorDispatcher();
                }
            }
        }
        return f75543a;
    }

    @Override // com.mob.tools.utils.a
    public <T extends SafeRunnable> void executeDelayed(T t10, long j10) {
        cn.fly.tools.utils.ExecutorDispatcher.getInstance().executeDelayed(t10, j10);
    }

    @Override // com.mob.tools.utils.a
    public <T extends SafeRunnable> void executeDuctile(T t10) {
        cn.fly.tools.utils.ExecutorDispatcher.getInstance().executeDuctile(t10);
    }

    @Override // com.mob.tools.utils.a
    public <T extends SafeRunnable> void executeImmediately(T t10) {
        cn.fly.tools.utils.ExecutorDispatcher.getInstance().executeImmediately(t10);
    }

    @Override // com.mob.tools.utils.a
    public <T extends SafeRunnable> void executeSerial(T t10) {
        cn.fly.tools.utils.ExecutorDispatcher.getInstance().executeSerial(t10);
    }
}
