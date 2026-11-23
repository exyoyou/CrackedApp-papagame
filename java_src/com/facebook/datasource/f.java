package com.facebook.datasource;

import com.facebook.common.internal.l;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
public class f<T> implements l<c<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<l<c<T>>> f26975a;

    @ThreadSafe
    private class b extends AbstractDataSource<T> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f26976i = 0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        @Nullable
        private c<T> f26977j = null;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        @Nullable
        private c<T> f26978k = null;

        private class a implements e<T> {
            private a() {
            }

            @Override // com.facebook.datasource.e
            public void a(c<T> dataSource) {
            }

            @Override // com.facebook.datasource.e
            public void b(c<T> dataSource) {
                b.this.q(Math.max(b.this.getProgress(), dataSource.getProgress()));
            }

            @Override // com.facebook.datasource.e
            public void c(c<T> dataSource) {
                b.this.B(dataSource);
            }

            @Override // com.facebook.datasource.e
            public void d(c<T> dataSource) {
                if (dataSource.hasResult()) {
                    b.this.C(dataSource);
                } else if (dataSource.f()) {
                    b.this.B(dataSource);
                }
            }
        }

        public b() {
            if (E()) {
                return;
            }
            n(new RuntimeException("No data source supplier or supplier returned null."));
        }

        private void A(c<T> dataSource, boolean isFinished) {
            c<T> cVar;
            synchronized (this) {
                if (dataSource == this.f26977j && dataSource != (cVar = this.f26978k)) {
                    if (cVar == null || isFinished) {
                        this.f26978k = dataSource;
                    } else {
                        cVar = null;
                    }
                    x(cVar);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void B(c<T> dataSource) {
            if (w(dataSource)) {
                if (dataSource != y()) {
                    x(dataSource);
                }
                if (E()) {
                    return;
                }
                o(dataSource.b(), dataSource.getExtras());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void C(c<T> dataSource) {
            A(dataSource, dataSource.f());
            if (dataSource == y()) {
                setResult(null, dataSource.f(), dataSource.getExtras());
            }
        }

        private synchronized boolean D(c<T> dataSource) {
            if (isClosed()) {
                return false;
            }
            this.f26977j = dataSource;
            return true;
        }

        private boolean E() {
            l<c<T>> lVarZ = z();
            c<T> cVar = lVarZ != null ? lVarZ.get() : null;
            if (!D(cVar) || cVar == null) {
                x(cVar);
                return false;
            }
            cVar.c(new a(), com.facebook.common.executors.a.a());
            return true;
        }

        private synchronized boolean w(c<T> dataSource) {
            if (!isClosed() && dataSource == this.f26977j) {
                this.f26977j = null;
                return true;
            }
            return false;
        }

        private void x(@Nullable c<T> dataSource) {
            if (dataSource != null) {
                dataSource.close();
            }
        }

        @Nullable
        private synchronized c<T> y() {
            return this.f26978k;
        }

        @Nullable
        private synchronized l<c<T>> z() {
            if (isClosed() || this.f26976i >= f.this.f26975a.size()) {
                return null;
            }
            List list = f.this.f26975a;
            int i10 = this.f26976i;
            this.f26976i = i10 + 1;
            return (l) list.get(i10);
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        public boolean close() {
            synchronized (this) {
                if (!super.close()) {
                    return false;
                }
                c<T> cVar = this.f26977j;
                this.f26977j = null;
                c<T> cVar2 = this.f26978k;
                this.f26978k = null;
                x(cVar2);
                x(cVar);
                return true;
            }
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        @Nullable
        public synchronized T getResult() {
            c<T> cVarY;
            cVarY = y();
            return cVarY != null ? cVarY.getResult() : null;
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        public synchronized boolean hasResult() {
            c<T> cVarY;
            cVarY = y();
            return cVarY != null && cVarY.hasResult();
        }
    }

    private f(List<l<c<T>>> dataSourceSuppliers) {
        com.facebook.common.internal.i.e(!dataSourceSuppliers.isEmpty(), "List of suppliers is empty!");
        this.f26975a = dataSourceSuppliers;
    }

    public static <T> f<T> b(List<l<c<T>>> dataSourceSuppliers) {
        return new f<>(dataSourceSuppliers);
    }

    @Override // com.facebook.common.internal.l
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public c<T> get() {
        return new b();
    }

    public boolean equals(@Nullable Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof f) {
            return com.facebook.common.internal.h.a(this.f26975a, ((f) other).f26975a);
        }
        return false;
    }

    public int hashCode() {
        return this.f26975a.hashCode();
    }

    public String toString() {
        return com.facebook.common.internal.h.e(this).f("list", this.f26975a).toString();
    }
}
