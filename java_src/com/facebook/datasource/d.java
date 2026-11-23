package com.facebook.datasource;

import com.facebook.common.internal.l;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class d {

    /* JADX INFO: Add missing generic type declarations: [T] */
    static class a<T> implements l<com.facebook.datasource.c<T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Throwable f26970a;

        a(final Throwable val$failure) {
            this.f26970a = val$failure;
        }

        @Override // com.facebook.common.internal.l
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.facebook.datasource.c<T> get() {
            return d.c(this.f26970a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    static class b<T> implements e<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ C0560d f26971a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CountDownLatch f26972b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ C0560d f26973c;

        b(final C0560d val$pendingException, final CountDownLatch val$latch, final C0560d val$resultHolder) {
            this.f26971a = val$pendingException;
            this.f26972b = val$latch;
            this.f26973c = val$resultHolder;
        }

        @Override // com.facebook.datasource.e
        public void a(com.facebook.datasource.c<T> dataSource) {
            this.f26972b.countDown();
        }

        @Override // com.facebook.datasource.e
        public void b(com.facebook.datasource.c<T> dataSource) {
        }

        @Override // com.facebook.datasource.e
        public void c(com.facebook.datasource.c<T> cVar) {
            try {
                this.f26973c.f26974a = (T) cVar.b();
            } finally {
                this.f26972b.countDown();
            }
        }

        @Override // com.facebook.datasource.e
        public void d(com.facebook.datasource.c<T> dataSource) {
            if (dataSource.f()) {
                try {
                    this.f26971a.f26974a = dataSource.getResult();
                } finally {
                    this.f26972b.countDown();
                }
            }
        }
    }

    static class c implements Executor {
        c() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable command) {
            command.run();
        }
    }

    private d() {
    }

    public static <T> l<com.facebook.datasource.c<T>> a(final Throwable failure) {
        return new a(failure);
    }

    public static <T> com.facebook.datasource.c<T> b(T result) {
        i iVarU = i.u();
        iVarU.setResult(result);
        return iVarU;
    }

    public static <T> com.facebook.datasource.c<T> c(Throwable failure) {
        i iVarU = i.u();
        iVarU.n(failure);
        return iVarU;
    }

    @Nullable
    public static <T> T d(com.facebook.datasource.c<T> cVar) throws Throwable {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        a aVar = null;
        C0560d c0560d = new C0560d(aVar);
        C0560d c0560d2 = new C0560d(aVar);
        cVar.c(new b(c0560d, countDownLatch, c0560d2), new c());
        countDownLatch.await();
        T t10 = c0560d2.f26974a;
        if (t10 == null) {
            return c0560d.f26974a;
        }
        throw ((Throwable) t10);
    }

    /* JADX INFO: renamed from: com.facebook.datasource.d$d, reason: collision with other inner class name */
    private static class C0560d<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        public T f26974a;

        private C0560d() {
            this.f26974a = null;
        }

        /* synthetic */ C0560d(a aVar) {
            this();
        }
    }
}
