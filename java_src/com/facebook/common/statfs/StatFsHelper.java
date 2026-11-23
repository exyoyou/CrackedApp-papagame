package com.facebook.common.statfs;

import android.annotation.SuppressLint;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import com.facebook.common.internal.n;
import com.facebook.infer.annotation.Nullsafe;
import java.io.File;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;
import org.aspectj.lang.c;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.STRICT)
public class StatFsHelper {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f26922h = 400;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final long f26923i = 419430400;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f26924j = 100;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final long f26925k = 104857600;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final long f26926l = 1048576000;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static StatFsHelper f26927m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final long f26928n = TimeUnit.MINUTES.toMillis(2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private volatile File f26930b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private volatile File f26932d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy(c.f95154k)
    private long f26933e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private volatile StatFs f26929a = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private volatile StatFs f26931c = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f26935g = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lock f26934f = new ReentrantLock();

    public enum StorageType {
        INTERNAL,
        EXTERNAL
    }

    protected StatFsHelper() {
    }

    protected static StatFs a(String path) {
        return new StatFs(path);
    }

    private void b() {
        if (this.f26935g) {
            return;
        }
        this.f26934f.lock();
        try {
            if (!this.f26935g) {
                this.f26930b = Environment.getDataDirectory();
                this.f26932d = Environment.getExternalStorageDirectory();
                m();
                this.f26935g = true;
            }
        } finally {
            this.f26934f.unlock();
        }
    }

    public static synchronized StatFsHelper e() {
        if (f26927m == null) {
            f26927m = new StatFsHelper();
        }
        return f26927m;
    }

    private void j() {
        if (this.f26934f.tryLock()) {
            try {
                if (SystemClock.uptimeMillis() - this.f26933e > f26928n) {
                    m();
                }
            } finally {
                this.f26934f.unlock();
            }
        }
    }

    @GuardedBy(c.f95154k)
    private void m() {
        this.f26929a = n(this.f26929a, this.f26930b);
        this.f26931c = n(this.f26931c, this.f26932d);
        this.f26933e = SystemClock.uptimeMillis();
    }

    @Nullable
    private StatFs n(@Nullable StatFs statfs, @Nullable File dir) {
        StatFs statFs = null;
        if (dir == null || !dir.exists()) {
            return null;
        }
        try {
            if (statfs == null) {
                statfs = a(dir.getAbsolutePath());
            } else {
                statfs.restat(dir.getAbsolutePath());
            }
            statFs = statfs;
            return statFs;
        } catch (IllegalArgumentException unused) {
            return statFs;
        } catch (Throwable th) {
            throw n.d(th);
        }
    }

    @SuppressLint({"DeprecatedMethod"})
    public long c(StorageType storageType) {
        b();
        j();
        StatFs statFs = storageType == StorageType.INTERNAL ? this.f26929a : this.f26931c;
        if (statFs != null) {
            return statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong();
        }
        return 0L;
    }

    @SuppressLint({"DeprecatedMethod"})
    public long d(StorageType storageType) {
        b();
        j();
        StatFs statFs = storageType == StorageType.INTERNAL ? this.f26929a : this.f26931c;
        if (statFs != null) {
            return statFs.getBlockSizeLong() * statFs.getFreeBlocksLong();
        }
        return -1L;
    }

    @SuppressLint({"DeprecatedMethod"})
    public long f(StorageType storageType) {
        b();
        j();
        StatFs statFs = storageType == StorageType.INTERNAL ? this.f26929a : this.f26931c;
        if (statFs != null) {
            return statFs.getBlockSizeLong() * statFs.getBlockCountLong();
        }
        return -1L;
    }

    public boolean g() {
        return c(StorageType.INTERNAL) > f26926l;
    }

    public boolean h() {
        return c(StorageType.INTERNAL) < f26923i;
    }

    public boolean i() {
        return c(StorageType.INTERNAL) < 104857600;
    }

    public void k() {
        if (this.f26934f.tryLock()) {
            try {
                b();
                m();
            } finally {
                this.f26934f.unlock();
            }
        }
    }

    public boolean l(StorageType storageType, long freeSpaceThreshold) {
        b();
        long jC = c(storageType);
        return jC <= 0 || jC < freeSpaceThreshold;
    }
}
