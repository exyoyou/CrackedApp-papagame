package cn.fly.commons;

import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.FileLocker;
import cn.fly.tools.utils.ResHelper;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes7.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile z f1497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f1498b = new a();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final File f1499a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private volatile byte[] f1500b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ReentrantReadWriteLock f1501c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Map<String, Object> f1502d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private volatile boolean f1503e;

        private Map<String, Object> c() {
            final Map<String, Object>[] mapArr = {null};
            v.a(v.a(v.f1440n), new u() { // from class: cn.fly.commons.z.a.2
                @Override // cn.fly.commons.u
                public boolean a(FileLocker fileLocker) {
                    try {
                        mapArr[0] = (Map) C1293r.a(a.this.f1499a, a.this.b());
                    } catch (Throwable th) {
                        FlyLog.getInstance().d(th);
                    }
                    return false;
                }
            });
            return mapArr[0];
        }

        private a() {
            Map<String, Object> mapC;
            this.f1501c = new ReentrantReadWriteLock();
            this.f1502d = new HashMap();
            this.f1503e = false;
            File dataCacheFile = ResHelper.getDataCacheFile(FlySDK.getContext(), n.a("0053bj1hh0bafd"));
            this.f1499a = dataCacheFile;
            if (!dataCacheFile.exists() || dataCacheFile.length() <= 0 || (mapC = c()) == null || mapC.isEmpty()) {
                return;
            }
            this.f1502d.putAll(mapC);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte[] b() {
            if (this.f1500b == null) {
                try {
                    this.f1500b = n.a("016Abh.bc'babi7bFbaddLb2bachfdfchdfjfg").getBytes("UTF-8");
                } catch (Throwable unused) {
                }
            }
            return this.f1500b;
        }

        public a a(String str, Object obj) {
            this.f1501c.writeLock().lock();
            try {
                this.f1502d.put(str, obj);
                this.f1503e = true;
                return this;
            } finally {
                this.f1501c.writeLock().unlock();
            }
        }

        public <T> T b(String str, T t10) {
            this.f1501c.readLock().lock();
            try {
                return (T) ResHelper.forceCast(this.f1502d.get(str), t10);
            } finally {
                this.f1501c.readLock().unlock();
            }
        }

        public boolean a() {
            this.f1501c.writeLock().lock();
            try {
                if (this.f1503e) {
                    a(this.f1502d);
                }
                this.f1501c.writeLock().unlock();
                return true;
            } catch (Throwable unused) {
                this.f1501c.writeLock().unlock();
                return false;
            }
        }

        private void a(final Map<String, Object> map) throws IOException {
            v.a(v.a(v.f1440n), new u() { // from class: cn.fly.commons.z.a.1
                @Override // cn.fly.commons.u
                public boolean a(FileLocker fileLocker) {
                    C1293r.a(a.this.f1499a, a.this.b(), map);
                    a.this.f1503e = false;
                    return false;
                }
            });
        }
    }

    private z() {
    }

    public static z a() {
        if (f1497a == null) {
            synchronized (z.class) {
                if (f1497a == null) {
                    f1497a = new z();
                }
            }
        }
        return f1497a;
    }

    public int b() {
        a aVar = this.f1498b;
        String str = ae.f1065e;
        int iIntValue = ((Integer) aVar.b(str, -1)).intValue();
        if (iIntValue == -1 && (iIntValue = ae.b().b(str, -1)) != -1) {
            a(iIntValue);
        }
        return iIntValue;
    }

    public int c(int i10) {
        int iIntValue = ((Integer) this.f1498b.b("key_wt_tms", Integer.valueOf(i10))).intValue();
        if (iIntValue != i10) {
            return iIntValue;
        }
        int iC = ae.b().c(i10);
        if (iC != i10) {
            this.f1498b.a("key_wt_tms", Integer.valueOf(iC)).a();
        }
        return iC;
    }

    public z d(int i10) {
        this.f1498b.a("key_wt_dys", Integer.valueOf(Math.min(10000, i10)));
        return this;
    }

    public z e(int i10) {
        this.f1498b.a("key_lch_tms", Integer.valueOf(Math.min(10000, i10)));
        return this;
    }

    public long f() {
        long jCurrentTimeMillis = System.currentTimeMillis() - ((Long) b("key_cvi", Long.valueOf(System.currentTimeMillis()))).longValue();
        if (jCurrentTimeMillis > 1000) {
            return jCurrentTimeMillis / 1000;
        }
        return 0L;
    }

    public boolean g() {
        if (((Boolean) this.f1498b.b("keyR_drt_lch", Boolean.FALSE)).booleanValue()) {
            return true;
        }
        boolean zK = ae.b().k();
        if (zK) {
            this.f1498b.a("keyR_drt_lch", Boolean.TRUE).a();
        }
        return zK;
    }

    public boolean h() {
        return this.f1498b.a();
    }

    public long d() {
        if (!DH.SyncMtd.isAut()) {
            return System.currentTimeMillis();
        }
        long jLongValue = ((Long) this.f1498b.b("key_fst_lnch_tm", 0L)).longValue();
        if (jLongValue > 0) {
            return jLongValue;
        }
        long jS = ae.b().s();
        if (jS > 0) {
            a(jS).h();
        } else {
            jS = ae.b().i();
            if (jS > 0) {
                a(jS).h();
            }
        }
        if (jS == 0) {
            a(System.currentTimeMillis()).h();
        }
        return jS;
    }

    public int e() {
        int iIntValue = ((Integer) this.f1498b.b("key_lch_tms", Integer.MIN_VALUE)).intValue();
        if (iIntValue != Integer.MIN_VALUE) {
            return iIntValue;
        }
        int iJ = ae.b().j();
        e(iJ);
        return iJ;
    }

    public int b(int i10) {
        int iIntValue = ((Integer) this.f1498b.b("key_wt_dys", Integer.valueOf(i10))).intValue();
        if (iIntValue != i10) {
            return iIntValue;
        }
        int iB = ae.b().b(i10);
        if (iB != i10) {
            this.f1498b.a("key_wt_dys", Integer.valueOf(iB)).a();
        }
        return iB;
    }

    public void c() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!TextUtils.equals((String) this.f1498b.b("key_acv", FlySDK.SDK_VERSION_NAME), DH.SyncMtd.getAppVersionName())) {
                a("key_acv", DH.SyncMtd.getAppVersionName()).a("key_cvi", Long.valueOf(System.currentTimeMillis())).h();
            } else if (jCurrentTimeMillis == ((Long) this.f1498b.b("key_cvi", Long.valueOf(jCurrentTimeMillis))).longValue()) {
                a("key_cvi", Long.valueOf(System.currentTimeMillis())).h();
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    public void a(int i10) {
        this.f1498b.a(ae.f1065e, Integer.valueOf(i10)).a();
    }

    public <T> T b(String str, T t10) {
        return (T) this.f1498b.b(str, t10);
    }

    public z a(long j10) {
        if (DH.SyncMtd.isAut()) {
            this.f1498b.a("key_fst_lnch_tm", Long.valueOf(j10));
        }
        return this;
    }

    public z a(boolean z10) {
        this.f1498b.a("keyR_drt_lch", Boolean.valueOf(z10));
        return this;
    }

    public z a(String str, Object obj) {
        this.f1498b.a(str, obj);
        return this;
    }
}
