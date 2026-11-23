package com.mob.tools.utils;

/* JADX INFO: loaded from: classes2.dex */
public interface a {
    <T extends ExecutorDispatcher.SafeRunnable> void executeDelayed(T t10, long j10);

    <T extends ExecutorDispatcher.SafeRunnable> void executeDuctile(T t10);

    <T extends ExecutorDispatcher.SafeRunnable> void executeImmediately(T t10);

    <T extends ExecutorDispatcher.SafeRunnable> void executeSerial(T t10);
}
