package cn.fly.tools.utils;

import cn.fly.tools.FlyLog;

/* JADX INFO: loaded from: classes7.dex */
public abstract class i implements Runnable {
    protected abstract void a() throws Throwable;

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }
}
