package com.facebook.datasource;

import com.facebook.common.internal.l;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
public class g<T> implements l<c<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<l<c<T>>> f26981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f26982b;

    @ThreadSafe
    private class a extends AbstractDataSource<T> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @GuardedBy("IncreasingQualityDataSource.this")
        @Nullable
        private ArrayList<c<T>> f26983i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        @GuardedBy("IncreasingQualityDataSource.this")
        private int f26984j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f26985k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private AtomicInteger f26986l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        @Nullable
        private Throwable f26987m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        @Nullable
        private Map<String, Object> f26988n;

        /* JADX INFO: renamed from: com.facebook.datasource.g$a$a, reason: collision with other inner class name */
        private class C0561a implements e<T> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private int f26990a;

            public C0561a(int index) {
                this.f26990a = index;
            }

            @Override // com.facebook.datasource.e
            public void a(c<T> dataSource) {
            }

            @Override // com.facebook.datasource.e
            public void b(c<T> dataSource) {
                if (this.f26990a == 0) {
                    a.this.q(dataSource.getProgress());
                }
            }

            @Override // com.facebook.datasource.e
            public void c(c<T> dataSource) {
                a.this.D(this.f26990a, dataSource);
            }

            @Override // com.facebook.datasource.e
            public void d(c<T> dataSource) {
                if (dataSource.hasResult()) {
                    a.this.E(this.f26990a, dataSource);
                } else if (dataSource.f()) {
                    a.this.D(this.f26990a, dataSource);
                }
            }
        }

        public a() {
            if (g.this.f26982b) {
                return;
            }
            x();
        }

        @Nullable
        private synchronized c<T> A() {
            return z(this.f26984j);
        }

        private void B() {
            Throwable th;
            if (this.f26986l.incrementAndGet() != this.f26985k || (th = this.f26987m) == null) {
                return;
            }
            o(th, this.f26988n);
        }

        private void C(int index, c<T> dataSource, boolean isFinished) {
            synchronized (this) {
                int i10 = this.f26984j;
                if (dataSource == z(index) && index != this.f26984j) {
                    if (A() == null || (isFinished && index < this.f26984j)) {
                        this.f26984j = index;
                    } else {
                        index = i10;
                    }
                    while (i10 > index) {
                        w(y(i10));
                        i10--;
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void D(int index, c<T> dataSource) {
            w(F(index, dataSource));
            if (index == 0) {
                this.f26987m = dataSource.b();
                this.f26988n = dataSource.getExtras();
            }
            B();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void E(int index, c<T> dataSource) {
            C(index, dataSource, dataSource.f());
            if (dataSource == A()) {
                setResult(null, index == 0 && dataSource.f(), dataSource.getExtras());
            }
            B();
        }

        @Nullable
        private synchronized c<T> F(int i10, c<T> dataSource) {
            if (dataSource == A()) {
                return null;
            }
            if (dataSource != z(i10)) {
                return dataSource;
            }
            return y(i10);
        }

        private void w(c<T> dataSource) {
            if (dataSource != null) {
                dataSource.close();
            }
        }

        private void x() {
            if (this.f26986l != null) {
                return;
            }
            synchronized (this) {
                if (this.f26986l == null) {
                    this.f26986l = new AtomicInteger(0);
                    int size = g.this.f26981a.size();
                    this.f26985k = size;
                    this.f26984j = size;
                    this.f26983i = new ArrayList<>(size);
                    for (int i10 = 0; i10 < size; i10++) {
                        c<T> cVar = (c) ((l) g.this.f26981a.get(i10)).get();
                        this.f26983i.add(cVar);
                        cVar.c(new C0561a(i10), com.facebook.common.executors.a.a());
                        if (cVar.hasResult()) {
                            break;
                        }
                    }
                }
            }
        }

        @Nullable
        private synchronized c<T> y(int i10) {
            c<T> cVar;
            ArrayList<c<T>> arrayList = this.f26983i;
            cVar = null;
            if (arrayList != null && i10 < arrayList.size()) {
                cVar = this.f26983i.set(i10, null);
            }
            return cVar;
        }

        @Nullable
        private synchronized c<T> z(int i10) {
            ArrayList<c<T>> arrayList;
            arrayList = this.f26983i;
            return (arrayList == null || i10 >= arrayList.size()) ? null : this.f26983i.get(i10);
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        public boolean close() {
            if (g.this.f26982b) {
                x();
            }
            synchronized (this) {
                if (!super.close()) {
                    return false;
                }
                ArrayList<c<T>> arrayList = this.f26983i;
                this.f26983i = null;
                if (arrayList == null) {
                    return true;
                }
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    w(arrayList.get(i10));
                }
                return true;
            }
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        @Nullable
        public synchronized T getResult() {
            c<T> cVarA;
            if (g.this.f26982b) {
                x();
            }
            cVarA = A();
            return cVarA != null ? cVarA.getResult() : null;
        }

        @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
        public synchronized boolean hasResult() {
            c<T> cVarA;
            if (g.this.f26982b) {
                x();
            }
            cVarA = A();
            return cVarA != null && cVarA.hasResult();
        }
    }

    private g(List<l<c<T>>> dataSourceSuppliers, boolean dataSourceLazy) {
        com.facebook.common.internal.i.e(!dataSourceSuppliers.isEmpty(), "List of suppliers is empty!");
        this.f26981a = dataSourceSuppliers;
        this.f26982b = dataSourceLazy;
    }

    public static <T> g<T> c(List<l<c<T>>> dataSourceSuppliers) {
        return d(dataSourceSuppliers, false);
    }

    public static <T> g<T> d(List<l<c<T>>> dataSourceSuppliers, boolean dataSourceLazy) {
        return new g<>(dataSourceSuppliers, dataSourceLazy);
    }

    @Override // com.facebook.common.internal.l
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public c<T> get() {
        return new a();
    }

    public boolean equals(@Nullable Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof g) {
            return com.facebook.common.internal.h.a(this.f26981a, ((g) other).f26981a);
        }
        return false;
    }

    public int hashCode() {
        return this.f26981a.hashCode();
    }

    public String toString() {
        return com.facebook.common.internal.h.e(this).f("list", this.f26981a).toString();
    }
}
