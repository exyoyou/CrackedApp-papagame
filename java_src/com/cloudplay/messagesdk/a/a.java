package com.cloudplay.messagesdk.a;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<String, C0517a> f23680a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ScheduledExecutorService f23681b = Executors.newSingleThreadScheduledExecutor();

    /* JADX INFO: renamed from: com.cloudplay.messagesdk.a.a$a, reason: collision with other inner class name */
    private static class C0517a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Object f23682a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Future f23683b;

        public C0517a(Object obj, Future future) {
            this.f23682a = obj;
            this.f23683b = future;
        }

        public Future a() {
            return this.f23683b;
        }

        public Object b() {
            return this.f23682a;
        }
    }

    public static synchronized void a(final String str, Object obj, long j10) {
        b(str);
        if (j10 > 0) {
            f23680a.put(str, new C0517a(obj, f23681b.schedule(new Runnable() { // from class: com.cloudplay.messagesdk.a.k
                @Override // java.lang.Runnable
                public final void run() {
                    a.a(str);
                }
            }, j10, TimeUnit.MILLISECONDS)));
        } else {
            f23680a.put(str, new C0517a(obj, null));
        }
    }

    public static synchronized Object b(String str) {
        C0517a c0517aRemove = f23680a.remove(str);
        if (c0517aRemove == null) {
            return null;
        }
        Future futureA = c0517aRemove.a();
        if (futureA != null) {
            futureA.cancel(true);
        }
        return c0517aRemove.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str) {
        synchronized (a.class) {
            f23680a.remove(str);
        }
    }
}
