package com.xuanyu.stickyheader;

/* JADX INFO: loaded from: classes8.dex */
public final class d {

    public interface a<T> {
        T acquire();

        boolean release(T instance);
    }

    public static class b<T> implements a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object[] f90172a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f90173b;

        public b(int maxPoolSize) {
            if (maxPoolSize <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.f90172a = new Object[maxPoolSize];
        }

        private boolean a(T instance) {
            for (int i10 = 0; i10 < this.f90173b; i10++) {
                if (this.f90172a[i10] == instance) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.xuanyu.stickyheader.d.a
        public T acquire() {
            int i10 = this.f90173b;
            if (i10 <= 0) {
                return null;
            }
            int i11 = i10 - 1;
            Object[] objArr = this.f90172a;
            T t10 = (T) objArr[i11];
            objArr[i11] = null;
            this.f90173b = i10 - 1;
            return t10;
        }

        @Override // com.xuanyu.stickyheader.d.a
        public boolean release(T instance) {
            if (a(instance)) {
                throw new IllegalStateException("Already in the pool!");
            }
            int i10 = this.f90173b;
            Object[] objArr = this.f90172a;
            if (i10 >= objArr.length) {
                return false;
            }
            objArr[i10] = instance;
            this.f90173b = i10 + 1;
            return true;
        }
    }

    private d() {
    }

    public static class c<T> extends b<T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Object f90174c;

        public c(int maxPoolSize, Object lock) {
            super(maxPoolSize);
            this.f90174c = lock;
        }

        @Override // com.xuanyu.stickyheader.d.b, com.xuanyu.stickyheader.d.a
        public T acquire() {
            T t10;
            synchronized (this.f90174c) {
                t10 = (T) super.acquire();
            }
            return t10;
        }

        @Override // com.xuanyu.stickyheader.d.b, com.xuanyu.stickyheader.d.a
        public boolean release(T element) {
            boolean zRelease;
            synchronized (this.f90174c) {
                zRelease = super.release(element);
            }
            return zRelease;
        }

        public c(int maxPoolSize) {
            this(maxPoolSize, new Object());
        }
    }
}
