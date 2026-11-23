package com.facebook.datasource;

import com.facebook.common.internal.l;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@NotThreadSafe
public class h<T> implements l<c<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<b> f26992a = Collections.newSetFromMap(new WeakHashMap());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private l<c<T>> f26993b = null;

    private static class b<T> extends AbstractDataSource<T> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @GuardedBy("RetainingDataSource.this")
        @Nullable
        private c<T> f26994i;

        private class a implements e<T> {
            private a() {
            }

            @Override // com.facebook.datasource.e
            public void a(c<T> dataSource) {
            }

            @Override // com.facebook.datasource.e
            public void b(c<T> dataSource) {
                b.this.A(dataSource);
            }

            @Override // com.facebook.datasource.e
            public void c(c<T> dataSource) {
                b.this.y();
            }

            @Override // com.facebook.datasource.e
            public void d(c<T> dataSource) {
                if (dataSource.hasResult()) {
                    b.this.z(dataSource);
                } else if (dataSource.f()) {
                    b.this.y();
                }
            }
        }

        private b() {
            this.f26994i = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void A(c<T> dataSource) {
            if (dataSource == this.f26994i) {
                q(dataSource.getProgress());
            }
        }

        private static <T> void x(c<T> dataSource) {
            if (dataSource != null) {
                dataSource.close();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void y() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void z(c<T> dataSource) {
            if (dataSource == this.f26994i) {
                setResult(null, false, dataSource.getExtras());
            }
        }

        public void B(@Nullable l<c<T>> supplier) {
            if (isClosed()) {
                return;
            }
            c<T> cVar = supplier != null ? supplier.get() : null;
            synchronized (this) {
                if (isClosed()) {
                    x(cVar);
                    return;
                }
                c<T> cVar2 = this.f26994i;
                this.f26994i = cVar;
                if (cVar != null) {
                    cVar.c(new a(), com.facebook.common.executors.a.a());
                }
                x(cVar2);
            }
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        public boolean close() {
            synchronized (this) {
                if (!super.close()) {
                    return false;
                }
                c<T> cVar = this.f26994i;
                this.f26994i = null;
                x(cVar);
                return true;
            }
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        public boolean d() {
            return true;
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        @Nullable
        public synchronized T getResult() {
            c<T> cVar;
            cVar = this.f26994i;
            return cVar != null ? cVar.getResult() : null;
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        public synchronized boolean hasResult() {
            c<T> cVar;
            cVar = this.f26994i;
            return cVar != null && cVar.hasResult();
        }
    }

    @Override // com.facebook.common.internal.l
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c<T> get() {
        b bVar = new b();
        bVar.B(this.f26993b);
        this.f26992a.add(bVar);
        return bVar;
    }

    public void b(l<c<T>> supplier) {
        this.f26993b = supplier;
        for (b bVar : this.f26992a) {
            if (!bVar.isClosed()) {
                bVar.B(supplier);
            }
        }
    }
}
