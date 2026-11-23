package com.facebook.imagepipeline.datasource;

import com.facebook.common.internal.i;
import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.AbstractDataSource;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class f<T> extends AbstractDataSource<List<CloseableReference<T>>> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.facebook.datasource.c<CloseableReference<T>>[] f27992i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @GuardedBy("this")
    private int f27993j = 0;

    private class b implements com.facebook.datasource.e<CloseableReference<T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @GuardedBy("InternalDataSubscriber.this")
        boolean f27994a;

        private b() {
            this.f27994a = false;
        }

        private synchronized boolean e() {
            if (this.f27994a) {
                return false;
            }
            this.f27994a = true;
            return true;
        }

        @Override // com.facebook.datasource.e
        public void a(com.facebook.datasource.c<CloseableReference<T>> dataSource) {
            f.this.B();
        }

        @Override // com.facebook.datasource.e
        public void b(com.facebook.datasource.c<CloseableReference<T>> dataSource) {
            f.this.E();
        }

        @Override // com.facebook.datasource.e
        public void c(com.facebook.datasource.c<CloseableReference<T>> dataSource) {
            f.this.C(dataSource);
        }

        @Override // com.facebook.datasource.e
        public void d(com.facebook.datasource.c<CloseableReference<T>> dataSource) {
            if (dataSource.f() && e()) {
                f.this.D();
            }
        }
    }

    protected f(com.facebook.datasource.c<CloseableReference<T>>[] dataSources) {
        this.f27992i = dataSources;
    }

    private synchronized boolean A() {
        int i10;
        i10 = this.f27993j + 1;
        this.f27993j = i10;
        return i10 == this.f27992i.length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        n(new CancellationException());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(com.facebook.datasource.c<CloseableReference<T>> dataSource) {
        Throwable thB = dataSource.b();
        if (thB == null) {
            thB = new Throwable("Unknown failure cause");
        }
        n(thB);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        if (A()) {
            setResult(null, true, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        float progress = 0.0f;
        for (com.facebook.datasource.c<CloseableReference<T>> cVar : this.f27992i) {
            progress += cVar.getProgress();
        }
        q(progress / this.f27992i.length);
    }

    public static <T> f<T> y(com.facebook.datasource.c<CloseableReference<T>>... dataSources) {
        i.i(dataSources);
        i.o(dataSources.length > 0);
        f<T> fVar = new f<>(dataSources);
        for (com.facebook.datasource.c<CloseableReference<T>> cVar : dataSources) {
            if (cVar != null) {
                cVar.c(new b(), com.facebook.common.executors.a.a());
            }
        }
        return fVar;
    }

    @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
    public boolean close() {
        if (!super.close()) {
            return false;
        }
        for (com.facebook.datasource.c<CloseableReference<T>> cVar : this.f27992i) {
            cVar.close();
        }
        return true;
    }

    @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
    public synchronized boolean hasResult() {
        return !isClosed() && this.f27993j == this.f27992i.length;
    }

    @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
    @Nullable
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public synchronized List<CloseableReference<T>> getResult() {
        if (!hasResult()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this.f27992i.length);
        for (com.facebook.datasource.c<CloseableReference<T>> cVar : this.f27992i) {
            arrayList.add(cVar.getResult());
        }
        return arrayList;
    }
}
