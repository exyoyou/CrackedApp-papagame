package cn.fly.tcp.f;

import cn.fly.tools.FlyLog;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f1658a = new c();

    private c() {
    }

    public static c a() {
        return f1658a;
    }

    public void b(String str) {
        FlyLog.getInstance().d("[TP]" + str, new Object[0]);
    }

    public void a(String str) {
        FlyLog.getInstance().d("[TP]" + str, new Object[0]);
    }

    public void a(Throwable th) {
        FlyLog.getInstance().d(th, "%s", "[TP]");
    }

    public void a(String str, Throwable th) {
        FlyLog.getInstance().d(th, "%s", "[TP]" + str);
    }
}
