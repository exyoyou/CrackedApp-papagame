package org.greenrobot.eventbus;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes10.dex */
public interface f {

    public static class a {
        public static f a() {
            return cd.a.a() ? cd.a.b().f550a : new c();
        }
    }

    public static class b implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final Logger f95292a;

        public b(String str) {
            this.f95292a = Logger.getLogger(str);
        }

        @Override // org.greenrobot.eventbus.f
        public void a(Level level, String str) {
            this.f95292a.log(level, str);
        }

        @Override // org.greenrobot.eventbus.f
        public void b(Level level, String str, Throwable th) {
            this.f95292a.log(level, str, th);
        }
    }

    public static class c implements f {
        @Override // org.greenrobot.eventbus.f
        public void a(Level level, String str) {
            System.out.println("[" + level + "] " + str);
        }

        @Override // org.greenrobot.eventbus.f
        public void b(Level level, String str, Throwable th) {
            System.out.println("[" + level + "] " + str);
            th.printStackTrace(System.out);
        }
    }

    void a(Level level, String str);

    void b(Level level, String str, Throwable th);
}
