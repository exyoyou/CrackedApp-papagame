package cn.fly.tools.utils;

import cn.fly.tools.proguard.EverythingKeeper;

/* JADX INFO: loaded from: classes7.dex */
public interface IExecutor extends EverythingKeeper {
    <T extends ExecutorDispatcher.SafeRunnable> void executeDelayed(T t10, long j10);

    <T extends ExecutorDispatcher.SafeRunnable> void executeDuctile(T t10);

    <T extends ExecutorDispatcher.SafeRunnable> void executeImmediately(T t10);

    <T extends ExecutorDispatcher.SafeRunnable> void executeSerial(T t10);
}
