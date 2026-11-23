package cn.fly.tools.utils;

import cn.fly.tools.FlyLog;
import cn.fly.tools.proguard.PublicMemberKeeper;

/* JADX INFO: loaded from: classes7.dex */
public class FlyPools implements PublicMemberKeeper {

    public interface Pool<T> extends PublicMemberKeeper {
        T acquire();

        boolean release(T t10);
    }

    public static class SimplePool<T> implements Pool<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object[] f2220a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f2221b;

        public SimplePool(int i10) {
            if (i10 <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.f2220a = new Object[i10];
        }

        private boolean a(T t10) {
            for (int i10 = 0; i10 < this.f2221b; i10++) {
                if (this.f2220a[i10] == t10) {
                    return true;
                }
            }
            return false;
        }

        @Override // cn.fly.tools.utils.FlyPools.Pool
        public T acquire() {
            int i10 = this.f2221b;
            if (i10 > 0) {
                int i11 = i10 - 1;
                try {
                    Object[] objArr = this.f2220a;
                    T t10 = (T) objArr[i11];
                    objArr[i11] = null;
                    this.f2221b = i10 - 1;
                    return t10;
                } catch (Throwable th) {
                    FlyLog.getInstance().d(th);
                }
            }
            return null;
        }

        @Override // cn.fly.tools.utils.FlyPools.Pool
        public boolean release(T t10) {
            if (a(t10)) {
                throw new IllegalStateException("Already in the pool!");
            }
            int i10 = this.f2221b;
            Object[] objArr = this.f2220a;
            if (i10 >= objArr.length) {
                return false;
            }
            objArr[i10] = t10;
            this.f2221b = i10 + 1;
            return true;
        }
    }

    protected FlyPools() {
    }

    public static class SynchronizedPool<T> extends SimplePool<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f2222a;

        public SynchronizedPool(int i10, Object obj) {
            super(i10);
            this.f2222a = obj;
        }

        @Override // cn.fly.tools.utils.FlyPools.SimplePool, cn.fly.tools.utils.FlyPools.Pool
        public T acquire() {
            T t10;
            synchronized (this.f2222a) {
                t10 = (T) super.acquire();
            }
            return t10;
        }

        @Override // cn.fly.tools.utils.FlyPools.SimplePool, cn.fly.tools.utils.FlyPools.Pool
        public boolean release(T t10) {
            boolean zRelease;
            synchronized (this.f2222a) {
                zRelease = super.release(t10);
            }
            return zRelease;
        }

        public SynchronizedPool(int i10) {
            this(i10, new Object());
        }
    }
}
