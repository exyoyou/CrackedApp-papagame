package cn.fly.tools.utils;

import android.os.SystemClock;
import android.text.TextUtils;
import cn.fly.commons.C1293r;
import cn.fly.tools.FlyLog;
import cn.fly.tools.proguard.PublicMemberKeeper;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;

/* JADX INFO: loaded from: classes7.dex */
public class FileLocker implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RandomAccessFile f2137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FileLock f2138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private FileChannel f2139c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f2140d = false;

    private boolean a(boolean z10) throws Throwable {
        FileChannel fileChannel = this.f2139c;
        if (fileChannel == null || !fileChannel.isOpen()) {
            return false;
        }
        FileLock fileLockLock = z10 ? this.f2139c.lock() : this.f2139c.tryLock();
        this.f2138b = fileLockLock;
        return fileLockLock != null;
    }

    public synchronized boolean lock(boolean z10) {
        return lock(z10, z10 ? 1000L : 500L, 16L);
    }

    public synchronized boolean prepareLockFile(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        release();
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(str, cn.fly.commons.o.a("002Ddjfg"));
            this.f2137a = randomAccessFile;
            this.f2139c = randomAccessFile.getChannel();
            this.f2140d = false;
            return true;
        } catch (Throwable th) {
            a();
            FlyLog.getInstance().w(th);
            return false;
        }
    }

    public synchronized void release() {
        if (this.f2140d && this.f2137a == null && this.f2139c == null && this.f2138b == null) {
            return;
        }
        try {
            unlock();
            a();
            this.f2140d = true;
        } catch (Throwable th) {
            a();
            this.f2140d = true;
            throw th;
        }
    }

    public synchronized void setLockFile(String str) {
        prepareLockFile(str);
    }

    public synchronized void unlock() {
        FileLock fileLock = this.f2138b;
        if (fileLock == null) {
            return;
        }
        try {
            fileLock.release();
        } catch (Throwable th) {
            try {
                FlyLog.getInstance().w(th);
            } catch (Throwable th2) {
                this.f2138b = null;
                throw th2;
            }
        }
        this.f2138b = null;
    }

    public synchronized boolean lock(boolean z10, long j10, long j11) {
        FileChannel fileChannel;
        boolean zA;
        if (this.f2140d) {
            return false;
        }
        if (this.f2137a == null || (fileChannel = this.f2139c) == null || !fileChannel.isOpen()) {
            a();
            return false;
        }
        try {
            return a(z10);
        } catch (Throwable th) {
            if (j10 <= 0 || !(th instanceof OverlappingFileLockException)) {
                FlyLog.getInstance().w(th);
            } else {
                long jElapsedRealtime = SystemClock.elapsedRealtime() + j10;
                while (true) {
                    if (j10 <= 0 || this.f2140d) {
                        zA = false;
                        break;
                    }
                    try {
                        Thread.sleep(j11);
                    } catch (Throwable unused) {
                    }
                    try {
                        j10 = jElapsedRealtime - SystemClock.elapsedRealtime();
                        zA = a(z10);
                        break;
                    } catch (Throwable th2) {
                        if (!(th2 instanceof OverlappingFileLockException)) {
                            FlyLog.getInstance().w(th);
                            j10 = -1;
                        } else if (j10 <= 0) {
                            FlyLog.getInstance().w("OverlappingFileLockException or IOExcept timeout");
                        }
                    }
                }
                if (j10 > 0) {
                    return zA;
                }
            }
            FileLock fileLock = this.f2138b;
            if (fileLock != null) {
                try {
                    fileLock.release();
                } catch (Throwable unused2) {
                }
                this.f2138b = null;
            }
            a();
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a() {
        try {
            C1293r.a(this.f2137a);
        } catch (Throwable th) {
            try {
                FlyLog.getInstance().w(th);
            } finally {
                this.f2139c = null;
                this.f2137a = null;
            }
        }
    }

    public synchronized void lock(Runnable runnable, boolean z10) {
        if (runnable != null) {
            if (lock(z10)) {
                runnable.run();
            }
        }
    }
}
