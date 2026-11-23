package org.greenrobot.eventbus.util;

import java.lang.reflect.Constructor;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes10.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f95342a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Constructor<?> f95343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final org.greenrobot.eventbus.c f95344c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f95345d;

    /* JADX INFO: renamed from: org.greenrobot.eventbus.util.b$b, reason: collision with other inner class name */
    public static class C1226b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Executor f95346a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Class<?> f95347b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private org.greenrobot.eventbus.c f95348c;

        public b a() {
            return b(null);
        }

        public b b(Object obj) {
            if (this.f95348c == null) {
                this.f95348c = org.greenrobot.eventbus.c.f();
            }
            if (this.f95346a == null) {
                this.f95346a = Executors.newCachedThreadPool();
            }
            if (this.f95347b == null) {
                this.f95347b = e.class;
            }
            return new b(this.f95346a, this.f95348c, this.f95347b, obj);
        }

        public C1226b c(org.greenrobot.eventbus.c cVar) {
            this.f95348c = cVar;
            return this;
        }

        public C1226b d(Class<?> cls) {
            this.f95347b = cls;
            return this;
        }

        public C1226b e(Executor executor) {
            this.f95346a = executor;
            return this;
        }

        private C1226b() {
        }
    }

    public interface c {
        void run() throws Exception;
    }

    public static C1226b b() {
        return new C1226b();
    }

    public static b c() {
        return new C1226b().a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(c cVar) {
        try {
            cVar.run();
        } catch (Exception e10) {
            try {
                Object objNewInstance = this.f95343b.newInstance(e10);
                if (objNewInstance instanceof d) {
                    ((d) objNewInstance).a(this.f95345d);
                }
                this.f95344c.q(objNewInstance);
            } catch (Exception e11) {
                this.f95344c.h().b(Level.SEVERE, "Original exception:", e10);
                throw new RuntimeException("Could not create failure event", e11);
            }
        }
    }

    public void d(final c cVar) {
        this.f95342a.execute(new Runnable() { // from class: org.greenrobot.eventbus.util.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f95340b.e(cVar);
            }
        });
    }

    private b(Executor executor, org.greenrobot.eventbus.c cVar, Class<?> cls, Object obj) {
        this.f95342a = executor;
        this.f95344c = cVar;
        this.f95345d = obj;
        try {
            this.f95343b = cls.getConstructor(Throwable.class);
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException("Failure event class must have a constructor with one parameter of type Throwable", e10);
        }
    }
}
