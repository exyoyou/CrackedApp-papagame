package com.mob.tools.utils;

import com.mob.tools.MobLog;
import com.mob.tools.proguard.PublicMemberKeeper;

/* JADX INFO: loaded from: classes2.dex */
public final class MobPools implements PublicMemberKeeper {

    public interface Pool<T> extends PublicMemberKeeper {
        T acquire();

        boolean release(T t10);
    }

    public static class SimplePool<T> implements Pool<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object[] f75545a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f75546b;

        public SimplePool(int i10) {
            if (i10 <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.f75545a = new Object[i10];
        }

        private boolean a(T t10) {
            for (int i10 = 0; i10 < this.f75546b; i10++) {
                if (this.f75545a[i10] == t10) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.mob.tools.utils.MobPools.Pool
        public T acquire() {
            int i10 = this.f75546b;
            if (i10 > 0) {
                int i11 = i10 - 1;
                try {
                    Object[] objArr = this.f75545a;
                    T t10 = (T) objArr[i11];
                    objArr[i11] = null;
                    this.f75546b = i10 - 1;
                    return t10;
                } catch (Throwable th) {
                    MobLog.getInstance().d(th);
                }
            }
            return null;
        }

        @Override // com.mob.tools.utils.MobPools.Pool
        public boolean release(T t10) {
            if (a(t10)) {
                throw new IllegalStateException("Already in the pool!");
            }
            int i10 = this.f75546b;
            Object[] objArr = this.f75545a;
            if (i10 >= objArr.length) {
                return false;
            }
            objArr[i10] = t10;
            this.f75546b = i10 + 1;
            return true;
        }
    }

    private MobPools() {
    }

    public static class SynchronizedPool<T> extends SimplePool<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f75547a;

        public SynchronizedPool(int i10, Object obj) {
            super(i10);
            this.f75547a = obj;
        }

        @Override // com.mob.tools.utils.MobPools.SimplePool, com.mob.tools.utils.MobPools.Pool
        public T acquire() {
            T t10;
            synchronized (this.f75547a) {
                t10 = (T) super.acquire();
            }
            return t10;
        }

        @Override // com.mob.tools.utils.MobPools.SimplePool, com.mob.tools.utils.MobPools.Pool
        public boolean release(T t10) {
            boolean zRelease;
            synchronized (this.f75547a) {
                zRelease = super.release(t10);
            }
            return zRelease;
        }

        public SynchronizedPool(int i10) {
            this(i10, new Object());
        }
    }
}
