package cn.fly.tools.utils;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.commons.C1293r;
import cn.fly.commons.u;
import cn.fly.commons.v;
import cn.fly.tools.FlyLog;
import cn.fly.tools.log.NLog;
import cn.fly.tools.proguard.EverythingKeeper;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.mgps.Util.o0;
import com.kuaishou.weapon.p0.t;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes7.dex */
public class FlyPersistence {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f2141h = Process.myPid();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Set<String> f2142i = Collections.newSetFromMap(new ConcurrentHashMap());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MobPersistenceFile f2143a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile ScheduledExecutorService f2144b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, i> f2145c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ReentrantReadWriteLock f2146d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ReentrantReadWriteLock.WriteLock f2147e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ReentrantReadWriteLock.ReadLock f2148f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final f f2149g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ConcurrentHashMap<String, byte[]> f2150j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final AtomicBoolean f2151k;

    private static final class KVEntry<T> implements EverythingKeeper, Serializable {
        private static final long serialVersionUID = -1538971823189206429L;
        private String key;
        private T value;

        public KVEntry(String str, T t10) {
            this.key = str;
            this.value = t10;
        }

        public String getKey() {
            return this.key;
        }

        public T getValue() {
            return this.value;
        }

        public void setKey(String str) {
            this.key = str;
        }

        public void setValue(T t10) {
            this.value = t10;
        }
    }

    private static class MobPersistenceFile {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ReentrantReadWriteLock f2154a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ReentrantReadWriteLock.WriteLock f2155b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ReentrantReadWriteLock.ReadLock f2156c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private File f2157d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private volatile RandomAccessFile f2158e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private volatile long f2159f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private volatile LinkedList<a> f2160g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private volatile HashMap<g, a> f2161h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final Context f2162i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final String f2163j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final File f2164k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final f f2165l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final h f2166m;

        private static class MpfBrokenException extends IOException {
            public MpfBrokenException(String str) {
                super(str);
            }

            public MpfBrokenException(String str, Throwable th) {
                super(str, th);
            }
        }

        private static class a implements Comparable<a> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private int f2186a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private byte f2187b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private byte[] f2188c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private long f2189d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private long f2190e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private long f2191f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private long f2192g;

            public a(int i10) {
                this.f2186a = i10;
                this.f2192g = (((long) i10) * 41) + 1024;
            }

            public boolean e() {
                return d() != 0 && d() <= System.currentTimeMillis();
            }

            public void f() {
                this.f2187b = (byte) 1;
                this.f2188c = null;
                this.f2191f = -1L;
                this.f2189d = 0L;
                this.f2190e = 0L;
            }

            public long b() {
                return this.f2189d;
            }

            public long c() {
                return this.f2190e;
            }

            public long d() {
                return this.f2191f;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void b(long j10) {
                this.f2190e = j10;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void c(long j10) {
                this.f2191f = j10;
            }

            public long a() {
                return this.f2192g;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void a(byte b10) {
                this.f2187b = b10;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void a(byte[] bArr) {
                this.f2188c = bArr;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void a(long j10) {
                this.f2189d = j10;
            }

            public void a(byte b10, byte[] bArr, long j10, long j11) {
                this.f2187b = b10;
                this.f2188c = bArr;
                this.f2190e = j10;
                this.f2191f = j11;
            }

            @Override // java.lang.Comparable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compareTo(a aVar) {
                return Long.compare(b(), aVar.b());
            }
        }

        public MobPersistenceFile(Context context, String str, f fVar) {
            ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
            this.f2154a = reentrantReadWriteLock;
            this.f2155b = reentrantReadWriteLock.writeLock();
            this.f2156c = reentrantReadWriteLock.readLock();
            this.f2162i = context;
            this.f2163j = str;
            this.f2164k = v.a(v.f1434h + str);
            this.f2165l = fVar;
            this.f2166m = new h(60, cn.fly.tools.utils.h.a(context).b("key_lru_min", 307200L), cn.fly.tools.utils.h.a(context).b("key_lru_max", 4194304L), cn.fly.tools.utils.h.a(context).b("key_lru_re", 0.7d), cn.fly.tools.utils.h.a(context).b("key_lru_ie", 0.5d));
            n();
            g();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void l() throws Throwable {
            if (new Random().nextInt(10) < 1) {
                h();
            }
            this.f2159f = System.currentTimeMillis();
            this.f2158e.seek(0L);
            this.f2158e.writeLong(this.f2159f);
        }

        private long m() throws Throwable {
            return e(0L);
        }

        private void n() {
            try {
                cn.fly.commons.c.a(new cn.fly.commons.c.b() { // from class: cn.fly.tools.utils.FlyPersistence.MobPersistenceFile.7
                    @Override // cn.fly.commons.c.b
                    public void a() {
                        MobPersistenceFile.this.f2155b.lock();
                        try {
                            FlyPersistence.d("ol it", MobPersistenceFile.this.f2163j);
                            String str = (String) cn.fly.commons.c.a("mpmj", "307200,4194304,0.7,0.5");
                            long j10 = 307200;
                            long j11 = 4194304;
                            double d10 = 0.7d;
                            double d11 = 0.5d;
                            if (!TextUtils.isEmpty(str)) {
                                String[] strArrSplit = str.split(",", 4);
                                if (strArrSplit.length == 4) {
                                    try {
                                        j10 = Long.parseLong(strArrSplit[0].trim());
                                    } catch (Throwable unused) {
                                    }
                                    try {
                                        j11 = Long.parseLong(strArrSplit[1].trim());
                                    } catch (Throwable unused2) {
                                    }
                                    try {
                                        d10 = Double.parseDouble(strArrSplit[2].trim());
                                    } catch (Throwable unused3) {
                                    }
                                    try {
                                        d11 = Double.parseDouble(strArrSplit[3].trim());
                                    } catch (Throwable unused4) {
                                    }
                                }
                            }
                            MobPersistenceFile.this.f2166m.a(j10, j11, d10, d11);
                            if (j10 > 0 && j11 > 0 && j11 > j10) {
                                cn.fly.tools.utils.h.a(MobPersistenceFile.this.f2162i).a("key_lru_min", j10);
                                cn.fly.tools.utils.h.a(MobPersistenceFile.this.f2162i).a("key_lru_max", j11);
                            }
                            if (d10 > 0.0d && d10 < 1.0d && d11 > 0.0d && d11 < 1.0d && d10 > d11) {
                                cn.fly.tools.utils.h.a(MobPersistenceFile.this.f2162i).a("key_lru_re", d10);
                                cn.fly.tools.utils.h.a(MobPersistenceFile.this.f2162i).a("key_lru_ie", d11);
                            }
                        } catch (Throwable th) {
                            try {
                                FlyPersistence.b(th, MobPersistenceFile.this.a());
                            } finally {
                                MobPersistenceFile.this.f2155b.unlock();
                            }
                        }
                    }
                }, new boolean[0]);
            } catch (Throwable th) {
                FlyPersistence.b(th, a());
            }
        }

        private long d(long j10) throws Throwable {
            return e(j10 + 33);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte[] f(a aVar) throws Throwable {
            long jB = aVar.b();
            long jC = aVar.c();
            long length = this.f2158e.length();
            if (jB < 0 || jC <= 0 || jB + jC > length) {
                throw new IOException("invalid mpf index");
            }
            this.f2158e.seek(jB);
            byte[] bArr = new byte[(int) jC];
            this.f2158e.readFully(bArr);
            return bArr;
        }

        private void g() {
            this.f2155b.lock();
            try {
                FlyPersistence.f2142i.add(this.f2163j);
                v.a(this.f2164k, new u() { // from class: cn.fly.tools.utils.FlyPersistence.MobPersistenceFile.1
                    @Override // cn.fly.commons.u
                    public boolean a(FileLocker fileLocker) {
                        try {
                            if (MobPersistenceFile.this.f2162i == null) {
                                return false;
                            }
                            MobPersistenceFile.this.f2157d = new File(FlyPersistence.a(MobPersistenceFile.this.f2162i), MobPersistenceFile.this.f2163j);
                            if (!MobPersistenceFile.this.f2157d.getParentFile().exists()) {
                                MobPersistenceFile.this.f2157d.getParentFile().mkdirs();
                            }
                            if (MobPersistenceFile.this.f2157d.exists() && MobPersistenceFile.this.f2157d.length() < 43008) {
                                FlyPersistence.c("Del dirty, size: " + MobPersistenceFile.this.f2157d.length() + ", min: 43008", MobPersistenceFile.this.f2163j);
                                MobPersistenceFile.this.f2157d.delete();
                            }
                            if (!MobPersistenceFile.this.f2157d.exists()) {
                                MobPersistenceFile.this.f2157d.createNewFile();
                                MobPersistenceFile.this.f2158e = new RandomAccessFile(MobPersistenceFile.this.f2157d, cn.fly.commons.n.a("002Dbhde"));
                                MobPersistenceFile.this.b(1024);
                                return false;
                            }
                            try {
                                MobPersistenceFile.this.f2158e = new RandomAccessFile(MobPersistenceFile.this.f2157d, cn.fly.commons.n.a("002@bhde"));
                                MobPersistenceFile.this.j();
                                FlyPersistence.d("ava sz " + MobPersistenceFile.this.f2160g.size() + " useds " + MobPersistenceFile.this.f2161h.size(), MobPersistenceFile.this.f2163j);
                                return false;
                            } catch (MpfBrokenException e10) {
                                FlyPersistence.b(e10, MobPersistenceFile.this.f2163j);
                                try {
                                    MobPersistenceFile.this.a(e10);
                                    return false;
                                } catch (Throwable unused) {
                                    return false;
                                }
                            }
                        } catch (Throwable th) {
                            FlyPersistence.b(th, MobPersistenceFile.this.f2163j);
                            return false;
                        }
                    }
                });
            } finally {
                this.f2155b.unlock();
            }
        }

        private void h() throws Throwable {
            long jC;
            FlyPersistence.d(" [trim] try ", this.f2163j);
            long size = (((long) (this.f2161h.size() + this.f2160g.size())) * 41) + 1024;
            long length = this.f2158e.length();
            Iterator<a> it2 = this.f2161h.values().iterator();
            double dC = 0.0d;
            while (it2.hasNext()) {
                dC += it2.next().c();
            }
            long j10 = length - size;
            if (dC / j10 <= 0.5d) {
                long j11 = size;
                for (a aVar : i()) {
                    if (aVar.e()) {
                        e(aVar);
                    } else {
                        if (aVar.b() == j11) {
                            jC = aVar.c();
                        } else if (aVar.b() > j11) {
                            a(aVar, j11);
                            jC = aVar.c();
                        }
                        j11 += jC;
                    }
                }
                this.f2158e.setLength(j11);
                FlyPersistence.d(" [trim] real over  before dataBlockSize " + j10 + " cur " + (j11 - size), this.f2163j);
            }
        }

        private ArrayList<a> i() {
            ArrayList<a> arrayList = new ArrayList<>(this.f2161h.values());
            Collections.sort(arrayList);
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean j() throws Throwable {
            boolean[] zArr = {false};
            long jM = m();
            if (jM != this.f2159f) {
                this.f2155b.lock();
                try {
                    this.f2166m.a();
                    this.f2159f = jM;
                    this.f2160g = new LinkedList<>();
                    this.f2161h = new HashMap<>();
                    int iC = c();
                    for (int i10 = 0; i10 < iC; i10++) {
                        try {
                            a aVar = new a(i10);
                            if (b(aVar) == 1) {
                                this.f2160g.add(aVar);
                            } else {
                                a(aVar);
                                this.f2161h.put(new g(aVar.f2188c), aVar);
                            }
                        } catch (MpfBrokenException e10) {
                            throw e10;
                        } catch (Throwable th) {
                            throw new MpfBrokenException("mpf index block broken", th);
                        }
                    }
                    FlyPersistence.d("update lstt " + this.f2159f + " a " + this.f2160g.size() + " u " + this.f2161h.size(), this.f2163j);
                    zArr[0] = true;
                    this.f2155b.unlock();
                } catch (Throwable th2) {
                    this.f2155b.unlock();
                    throw th2;
                }
            }
            return zArr[0];
        }

        private void k() throws Throwable {
            int iC = c();
            int i10 = iC + 1024;
            FlyPersistence.d("[exp] old " + iC + " new " + i10, this.f2163j);
            long j10 = (((long) i10) * 41) + 1024;
            if ((((long) (this.f2161h.size() + this.f2160g.size())) * 41) + 1024 < j10) {
                for (a aVar : i()) {
                    if (aVar.b() >= j10) {
                        break;
                    }
                    long jB = aVar.b() + aVar.c();
                    if (aVar.e()) {
                        e(aVar);
                    } else {
                        a(aVar, this.f2158e.length());
                    }
                    if (jB >= j10) {
                        break;
                    }
                }
            }
            this.f2158e.seek(j10);
            for (int i11 = iC - 1; i11 < i10; i11++) {
                a aVar2 = new a(i11);
                this.f2160g.add(aVar2);
                a(aVar2.f2192g, (byte) 1);
            }
            FlyPersistence.d("[exp] ovr", this.f2163j);
            a(i10);
        }

        public List<byte[]> e() {
            this.f2155b.lock();
            final ArrayList arrayList = new ArrayList();
            try {
                v.a(this.f2164k, new u() { // from class: cn.fly.tools.utils.FlyPersistence.MobPersistenceFile.5
                    @Override // cn.fly.commons.u
                    public boolean a(FileLocker fileLocker) {
                        try {
                            MobPersistenceFile.this.j();
                            if (MobPersistenceFile.this.f2161h == null) {
                                return false;
                            }
                            Iterator it2 = MobPersistenceFile.this.f2161h.values().iterator();
                            while (it2.hasNext()) {
                                arrayList.add(MobPersistenceFile.this.f((a) it2.next()));
                            }
                            return false;
                        } catch (MpfBrokenException e10) {
                            FlyPersistence.b(e10, MobPersistenceFile.this.f2163j);
                            try {
                                MobPersistenceFile.this.a(e10);
                                return false;
                            } catch (Throwable unused) {
                                return false;
                            }
                        } catch (Throwable th) {
                            FlyPersistence.b(th, MobPersistenceFile.this.a());
                            return false;
                        }
                    }
                });
                return arrayList;
            } finally {
                this.f2155b.unlock();
            }
        }

        private long c(long j10) throws Throwable {
            return e(j10 + 25);
        }

        public boolean d() {
            this.f2155b.lock();
            final boolean[] zArr = new boolean[1];
            try {
                if (!v.a(this.f2164k, new u() { // from class: cn.fly.tools.utils.FlyPersistence.MobPersistenceFile.3
                    @Override // cn.fly.commons.u
                    public boolean a(FileLocker fileLocker) {
                        try {
                            for (a aVar : MobPersistenceFile.this.f2161h.values()) {
                                MobPersistenceFile.this.f2158e.seek(aVar.a());
                                MobPersistenceFile.this.f2158e.writeByte(1);
                                aVar.f();
                            }
                            MobPersistenceFile.this.f2160g.addAll(MobPersistenceFile.this.f2161h.values());
                            MobPersistenceFile.this.f2161h.clear();
                            MobPersistenceFile.this.f2158e.setLength((((long) MobPersistenceFile.this.f2160g.size()) * 41) + 1024);
                            zArr[0] = true;
                            MobPersistenceFile.this.l();
                            FlyPersistence.d("Clear done, new size: ", MobPersistenceFile.this.f2163j);
                        } catch (Throwable th) {
                            FlyPersistence.b(th, MobPersistenceFile.this.f2163j);
                        }
                        return false;
                    }
                })) {
                    zArr[0] = false;
                }
                return zArr[0];
            } finally {
                this.f2155b.unlock();
            }
        }

        public ReentrantReadWriteLock.WriteLock b() {
            return this.f2155b;
        }

        public int c() throws Throwable {
            return f(8L);
        }

        private long b(long j10) throws Throwable {
            return e(j10 + 17);
        }

        private void c(int i10) throws Throwable {
            if (i10 >= 0) {
                int iC = c();
                if (i10 >= iC) {
                    throw new IndexOutOfBoundsException(b(i10, iC));
                }
            } else {
                throw new IllegalArgumentException("index : " + i10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(int i10) throws Throwable {
            this.f2160g = new LinkedList<>();
            this.f2161h = new HashMap<>();
            a(0, i10);
            a(i10);
            this.f2159f = System.currentTimeMillis();
            this.f2158e.seek(0L);
            this.f2158e.writeLong(this.f2159f);
            FlyPersistence.d("new a " + this.f2160g.size() + " u " + this.f2161h.size(), this.f2163j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(a aVar) throws Throwable {
            this.f2155b.lock();
            try {
                e(aVar);
                l();
            } finally {
                this.f2155b.unlock();
            }
        }

        private void e(a aVar) throws Throwable {
            this.f2161h.remove(new g(aVar.f2188c));
            this.f2158e.seek(aVar.a());
            this.f2158e.writeByte(1);
            this.f2160g.add(aVar);
            aVar.f();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean c(a aVar) {
            try {
                byte[] bArr = new byte[41];
                bArr[0] = 0;
                System.arraycopy(aVar.f2188c, 0, bArr, 1, 16);
                a(aVar.f2189d, bArr, 17);
                a(aVar.f2190e, bArr, 25);
                a(aVar.f2191f, bArr, 33);
                this.f2158e.seek(aVar.f2192g);
                this.f2158e.write(bArr);
                return true;
            } catch (Throwable th) {
                FlyPersistence.b(th, this.f2163j);
                return false;
            }
        }

        public void f() {
            this.f2155b.lock();
            try {
                this.f2166m.b();
            } finally {
                this.f2155b.unlock();
            }
        }

        public String a() {
            return this.f2163j;
        }

        public void a(a aVar) throws Throwable {
            c(aVar.f2186a);
            this.f2158e.seek(aVar.a());
            aVar.a(this.f2158e.readByte());
            aVar.a(a(aVar.f2192g));
            aVar.a(b(aVar.f2192g));
            aVar.b(c(aVar.f2192g));
            aVar.c(d(aVar.f2192g));
        }

        private long e(long j10) throws Throwable {
            long length = this.f2158e.length();
            if (j10 >= 0 && 8 + j10 <= length) {
                this.f2158e.seek(j10);
                return this.f2158e.readLong();
            }
            throw new MpfBrokenException("invalid long offset: " + j10 + ", fileLength=" + length);
        }

        private int f(long j10) throws Throwable {
            long length = this.f2158e.length();
            if (j10 >= 0 && 4 + j10 <= length) {
                this.f2158e.seek(j10);
                return this.f2158e.readInt();
            }
            throw new MpfBrokenException("invalid int offset: " + j10 + ", fileLength=" + length);
        }

        public byte b(a aVar) throws Throwable {
            try {
                this.f2158e.seek(aVar.f2192g);
                return this.f2158e.readByte();
            } catch (Throwable th) {
                FlyPersistence.b(th, this.f2163j);
                return (byte) 0;
            }
        }

        private String b(int i10, int i11) {
            return "Index: " + i10 + ", Size: " + i11;
        }

        private byte[] a(long j10) throws Throwable {
            byte[] bArr = new byte[16];
            this.f2158e.seek(j10 + 1);
            this.f2158e.read(bArr, 0, 16);
            return bArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean b(g gVar) {
            try {
                j();
                a aVar = this.f2161h.get(gVar);
                if (aVar != null) {
                    d(aVar);
                }
                this.f2166m.b(gVar);
                return true;
            } catch (MpfBrokenException e10) {
                FlyPersistence.b(e10, this.f2163j);
                try {
                    a(e10);
                } catch (Throwable unused) {
                }
                return false;
            } catch (Throwable th) {
                FlyPersistence.b(th, a());
                return false;
            }
        }

        private void a(a aVar, long j10) throws Throwable {
            byte[] bArr = new byte[(int) aVar.f2190e];
            this.f2158e.seek(aVar.f2189d);
            this.f2158e.readFully(bArr);
            this.f2158e.seek(j10);
            this.f2158e.write(bArr);
            this.f2158e.seek(aVar.f2192g + 17);
            this.f2158e.writeLong(j10);
            aVar.a(j10);
            this.f2161h.put(new g(aVar.f2188c), aVar);
        }

        public void a(int i10) {
            if (i10 > 0) {
                try {
                    this.f2158e.seek(8L);
                    this.f2158e.writeInt(i10);
                    return;
                } catch (Throwable th) {
                    try {
                        FlyPersistence.b(th, this.f2163j);
                        return;
                    } catch (Throwable th2) {
                        FlyPersistence.b(th2, this.f2163j);
                        return;
                    }
                }
            }
            throw new IllegalArgumentException("indexNum : " + i10);
        }

        private void a(int i10, int i11) {
            while (i10 < i11) {
                a aVar = new a(i10);
                this.f2160g.add(aVar);
                a(aVar.f2192g, (byte) 1);
                i10++;
            }
        }

        public void a(long j10, byte b10) {
            try {
                this.f2158e.seek(j10);
                this.f2158e.writeByte(b10);
            } catch (Throwable unused) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(a aVar, i iVar) throws Throwable {
            FileOutputStream fileOutputStream;
            byte[] bArrA = this.f2165l.a(new a(iVar.a(), iVar.c()).b());
            long length = this.f2158e.length();
            BufferedOutputStream bufferedOutputStream = null;
            try {
                fileOutputStream = new FileOutputStream(this.f2158e.getFD());
                try {
                    BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(fileOutputStream);
                    try {
                        this.f2158e.seek(length);
                        bufferedOutputStream2.write(bArrA);
                        bufferedOutputStream2.flush();
                        fileOutputStream.getFD().sync();
                        C1293r.a(bufferedOutputStream2, fileOutputStream);
                        aVar.a((byte) 0, iVar.f2219d, bArrA.length, iVar.f2218c);
                        aVar.f2189d = length;
                        c(aVar);
                    } catch (Throwable th) {
                        th = th;
                        bufferedOutputStream = bufferedOutputStream2;
                        C1293r.a(bufferedOutputStream, fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a a(g gVar) throws Throwable {
            a aVar = this.f2161h.get(gVar);
            if (aVar != null) {
                return aVar;
            }
            if (this.f2160g.isEmpty()) {
                k();
            }
            a aVarRemoveFirst = this.f2160g.removeFirst();
            aVarRemoveFirst.a((byte) 0);
            this.f2161h.put(gVar, aVarRemoveFirst);
            return aVarRemoveFirst;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public List<i> a(final List<i> list) {
            this.f2155b.lock();
            final ArrayList arrayList = new ArrayList();
            try {
                if (!v.a(this.f2164k, new u() { // from class: cn.fly.tools.utils.FlyPersistence.MobPersistenceFile.2
                    @Override // cn.fly.commons.u
                    public boolean a(FileLocker fileLocker) {
                        long j10;
                        FileOutputStream fileOutputStream;
                        try {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            MobPersistenceFile.this.j();
                            boolean z10 = true;
                            if (list.size() > 1) {
                                LinkedList<a> linkedList = new LinkedList();
                                int size = list.size();
                                byte[][] bArr = new byte[size][];
                                int size2 = list.size();
                                int i10 = 0;
                                while (i10 < size2) {
                                    i iVar = (i) list.get(i10);
                                    g gVar = new g(iVar.f2219d);
                                    byte[] bArrA = MobPersistenceFile.this.f2165l.a(new a(iVar.a(), iVar.c()).b());
                                    a aVarA = MobPersistenceFile.this.a(gVar);
                                    aVarA.a((byte) 0, iVar.f2219d, bArrA.length, iVar.f2218c);
                                    MobPersistenceFile.this.f2166m.a(new g(iVar.f()), new c(iVar.f2218c, iVar.f2217b, bArrA.length));
                                    linkedList.add(aVarA);
                                    bArr[i10] = bArrA;
                                    i10++;
                                    jCurrentTimeMillis = jCurrentTimeMillis;
                                }
                                j10 = jCurrentTimeMillis;
                                long length = MobPersistenceFile.this.f2158e.length();
                                BufferedOutputStream bufferedOutputStream = null;
                                try {
                                    fileOutputStream = new FileOutputStream(MobPersistenceFile.this.f2158e.getFD());
                                    try {
                                        BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(fileOutputStream);
                                        try {
                                            MobPersistenceFile.this.f2158e.seek(MobPersistenceFile.this.f2158e.length());
                                            for (int i11 = 0; i11 < size; i11++) {
                                                byte[] bArr2 = bArr[i11];
                                                bufferedOutputStream2.write(bArr2, 0, bArr2.length);
                                            }
                                            bufferedOutputStream2.flush();
                                            fileOutputStream.getFD().sync();
                                            C1293r.a(bufferedOutputStream2, fileOutputStream);
                                        } catch (Throwable th) {
                                            th = th;
                                            bufferedOutputStream = bufferedOutputStream2;
                                            try {
                                                FlyPersistence.b(th, MobPersistenceFile.this.f2163j);
                                                FlyPersistence.c("sta err sz " + list.size(), MobPersistenceFile.this.f2163j);
                                                for (a aVar : linkedList) {
                                                    if (aVar.f2187b == 0) {
                                                        MobPersistenceFile.this.d(aVar);
                                                    }
                                                }
                                                arrayList.addAll(list);
                                                C1293r.a(bufferedOutputStream, fileOutputStream);
                                                z10 = false;
                                            } catch (Throwable th2) {
                                                C1293r.a(bufferedOutputStream, fileOutputStream);
                                                throw th2;
                                            }
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    fileOutputStream = null;
                                }
                                if (z10) {
                                    for (int i12 = 0; i12 < size2; i12++) {
                                        a aVar2 = (a) linkedList.get(i12);
                                        aVar2.f2189d = length;
                                        if (MobPersistenceFile.this.c(aVar2)) {
                                            length += (long) bArr[i12].length;
                                        } else {
                                            MobPersistenceFile.this.d(aVar2);
                                            arrayList.add(list.get(i12));
                                        }
                                    }
                                }
                                linkedList.clear();
                            } else {
                                j10 = jCurrentTimeMillis;
                                i iVar2 = (i) list.get(0);
                                a aVarA2 = MobPersistenceFile.this.a(new g(iVar2.f2219d));
                                try {
                                    MobPersistenceFile.this.a(aVarA2, iVar2);
                                } catch (Throwable th5) {
                                    FlyPersistence.d("set fail " + th5, MobPersistenceFile.this.f2163j);
                                    MobPersistenceFile.this.d(aVarA2);
                                    arrayList.add(iVar2);
                                }
                            }
                            MobPersistenceFile.this.l();
                            FlyPersistence.d(" all cost " + (System.currentTimeMillis() - j10) + " size " + list.size(), MobPersistenceFile.this.f2163j);
                            return false;
                        } catch (MpfBrokenException e10) {
                            FlyPersistence.b(e10, MobPersistenceFile.this.f2163j);
                            try {
                                MobPersistenceFile.this.a(e10);
                                return false;
                            } catch (Throwable unused) {
                                return false;
                            }
                        } catch (Throwable th6) {
                            FlyPersistence.b(th6, MobPersistenceFile.this.f2163j);
                            return false;
                        }
                    }
                })) {
                    arrayList.addAll(list);
                }
                return arrayList;
            } finally {
                this.f2155b.unlock();
            }
        }

        private void a(long j10, byte[] bArr, int i10) {
            for (int i11 = i10 + 7; i11 >= i10; i11--) {
                bArr[i11] = (byte) (255 & j10);
                j10 >>= 8;
            }
        }

        public <T> T a(final g gVar, e<T> eVar) throws Throwable {
            T tA;
            final byte[][] bArr = new byte[1][];
            final long[] jArr = new long[1];
            final int[] iArr = new int[1];
            final Object[] objArr = new Object[1];
            final Throwable[] thArr = new Throwable[1];
            this.f2155b.lock();
            try {
                if (v.a(this.f2164k, new u() { // from class: cn.fly.tools.utils.FlyPersistence.MobPersistenceFile.4
                    @Override // cn.fly.commons.u
                    public boolean a(FileLocker fileLocker) {
                        c cVarA;
                        try {
                            if (!MobPersistenceFile.this.j() && (cVarA = MobPersistenceFile.this.f2166m.a(gVar)) != null && cVarA.f2198b != null) {
                                if (cVarA.a()) {
                                    MobPersistenceFile.this.a(gVar, false);
                                    iArr[0] = 2;
                                } else {
                                    iArr[0] = 4;
                                    objArr[0] = cVarA.f2198b;
                                }
                            }
                            a aVar = (a) MobPersistenceFile.this.f2161h.get(gVar);
                            if (aVar == null) {
                                iArr[0] = 1;
                            } else if (aVar.e()) {
                                MobPersistenceFile.this.d(aVar);
                                iArr[0] = 2;
                            } else {
                                try {
                                    jArr[0] = aVar.f2191f;
                                    bArr[0] = MobPersistenceFile.this.f(aVar);
                                    iArr[0] = 3;
                                } catch (Throwable th) {
                                    thArr[0] = th;
                                    iArr[0] = 5;
                                }
                            }
                        } catch (MpfBrokenException e10) {
                            thArr[0] = e10;
                            iArr[0] = 6;
                        } catch (Throwable th2) {
                            FlyPersistence.b(th2, MobPersistenceFile.this.f2163j);
                        }
                        return false;
                    }
                })) {
                    int i10 = iArr[0];
                    if (i10 == 4) {
                        tA = (T) objArr[0];
                    } else if (i10 == 3) {
                        try {
                            try {
                                tA = eVar.a(a(bArr[0]).a());
                                this.f2166m.a(gVar, new c(Long.valueOf(jArr[0]).longValue(), tA, bArr[0].length));
                            } catch (Throwable th) {
                                FlyPersistence.b(th, this.f2163j);
                                throw new NoValidDataException();
                            }
                        } catch (Throwable th2) {
                            a(gVar, th2, "decBridgeEntry");
                            throw new NoValidDataException();
                        }
                    } else {
                        if (i10 == 5) {
                            a(gVar, thArr[0], "readDataBlock");
                        } else if (i10 == 6) {
                            FlyPersistence.b(thArr[0], this.f2163j);
                            try {
                                a(thArr[0]);
                            } catch (Throwable unused) {
                            }
                        }
                        throw new NoValidDataException();
                    }
                    this.f2155b.unlock();
                    return tA;
                }
                throw new NoValidDataException();
            } catch (Throwable th3) {
                this.f2155b.unlock();
                throw th3;
            }
        }

        public boolean a(final g gVar, boolean z10) {
            this.f2155b.lock();
            final boolean[] zArr = new boolean[1];
            try {
                if (z10) {
                    if (!v.a(this.f2164k, new u() { // from class: cn.fly.tools.utils.FlyPersistence.MobPersistenceFile.6
                        @Override // cn.fly.commons.u
                        public boolean a(FileLocker fileLocker) {
                            zArr[0] = MobPersistenceFile.this.b(gVar);
                            return false;
                        }
                    })) {
                        zArr[0] = false;
                    }
                } else {
                    zArr[0] = b(gVar);
                }
                this.f2155b.unlock();
                return zArr[0];
            } catch (Throwable th) {
                this.f2155b.unlock();
                throw th;
            }
        }

        private void a(g gVar, Throwable th, String str) {
            try {
                FlyPersistence.b(th, this.f2163j);
            } catch (Throwable unused) {
            }
            try {
                FlyPersistence.c("rm broken key, scene: " + str + ", removed: " + a(gVar, true), this.f2163j);
            } catch (Throwable th2) {
                FlyPersistence.b(th2, this.f2163j);
            }
        }

        private <T> a<T> a(byte[] bArr) throws Throwable {
            Object objA = this.f2165l.a(bArr, (Object) null);
            if (objA instanceof KVEntry) {
                KVEntry kVEntry = (KVEntry) objA;
                return new a<>(kVEntry.getKey(), kVEntry.getValue());
            }
            if (objA instanceof HashMap) {
                a<T> aVarA = a.a((HashMap<Byte, Object>) objA);
                if (aVarA != null) {
                    return aVarA;
                }
                throw new IOException("BridgeEntry.fromMap returns null");
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unsupported cac type: ");
            sb2.append(objA == null ? "null" : objA.getClass().getName());
            throw new IOException(sb2.toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Throwable th) throws Throwable {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("reBld mpf, cause: ");
            sb2.append(th == null ? "null" : th.getMessage());
            FlyPersistence.c(sb2.toString(), this.f2163j);
            if (this.f2158e != null) {
                try {
                    this.f2158e.close();
                } catch (Throwable unused) {
                }
            }
            h hVar = this.f2166m;
            if (hVar != null) {
                hVar.a();
            }
            if (this.f2157d.exists() && !this.f2157d.delete()) {
                throw new IOException("delete mpf failed");
            }
            if (this.f2157d.createNewFile()) {
                this.f2158e = new RandomAccessFile(this.f2157d, cn.fly.commons.n.a("0021bhde"));
                b(1024);
                return;
            }
            throw new IOException("create mpf failed");
        }
    }

    public static class NoValidDataException extends Exception {
        public NoValidDataException() {
            this(cn.fly.commons.n.a("019VcebigdbbWbeKbgbagdba-bgb,gdcdbibe:c3ba"));
        }

        public NoValidDataException(String str) {
            super(str);
        }
    }

    public static final class SerializableParcel<T extends Parcelable> implements EverythingKeeper, Serializable {
        private static final long serialVersionUID = -2769878423373647357L;
        private Class<T> clazz;
        private byte[] data;

        public SerializableParcel(Parcelable parcelable) {
            this.clazz = (Class<T>) parcelable.getClass();
            this.data = parcelable2Byte(parcelable);
        }

        private T byte2Parcelable(byte[] bArr, Class<T> cls, T t10) {
            if (bArr != null && bArr.length != 0) {
                try {
                    Parcel parcelObtain = Parcel.obtain();
                    parcelObtain.unmarshall(bArr, 0, bArr.length);
                    parcelObtain.setDataPosition(0);
                    return (T) ((Parcelable.Creator) cls.getDeclaredField(cn.fly.commons.n.a("007Qcbehegdbdaefeh")).get(null)).createFromParcel(parcelObtain);
                } catch (Throwable th) {
                    FlyLog.getInstance().d(th);
                }
            }
            return t10;
        }

        private byte[] parcelable2Byte(Parcelable parcelable) {
            if (parcelable == null) {
                return new byte[0];
            }
            Parcel parcelObtain = Parcel.obtain();
            parcelable.writeToParcel(parcelObtain, 0);
            return parcelObtain.marshall();
        }

        private void setClazz(Class cls) {
            this.clazz = cls;
        }

        private void setData(byte[] bArr) {
            this.data = bArr;
        }

        public Class getClazz() {
            return this.clazz;
        }

        public byte[] getData() {
            return this.data;
        }

        public T getParcel(T t10) {
            return (T) byte2Parcelable(this.data, this.clazz, t10);
        }
    }

    private static final class a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f2193a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private T f2194b;

        public a(String str, T t10) {
            this.f2193a = str;
            this.f2194b = t10;
        }

        public HashMap<Byte, Object> b() {
            HashMap<Byte, Object> map = new HashMap<>();
            map.put((byte) 0, this.f2193a);
            map.put((byte) 1, this.f2194b);
            return map;
        }

        public T a() {
            return this.f2194b;
        }

        public static <T> a<T> a(HashMap<Byte, Object> map) {
            if (map != null) {
                return new a<>((String) map.get((byte) 0), map.get((byte) 1));
            }
            return null;
        }
    }

    public static final class b<T extends Parcelable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Class<T> f2195a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private byte[] f2196b;

        public b(Parcelable parcelable) {
            this.f2195a = (Class<T>) parcelable.getClass();
            this.f2196b = b(parcelable);
        }

        public Class a() {
            return this.f2195a;
        }

        public byte[] b() {
            return this.f2196b;
        }

        public HashMap<Byte, Object> c() {
            HashMap<Byte, Object> map = new HashMap<>();
            map.put((byte) 0, this.f2195a);
            map.put((byte) 1, this.f2196b);
            return map;
        }

        private byte[] b(Parcelable parcelable) {
            if (parcelable == null) {
                return new byte[0];
            }
            Parcel parcelObtain = Parcel.obtain();
            try {
                parcelable.writeToParcel(parcelObtain, 0);
                return parcelObtain.marshall();
            } finally {
                parcelObtain.recycle();
            }
        }

        public T a(T t10) {
            return (T) a(this.f2196b, this.f2195a, t10);
        }

        public static <T extends Parcelable> b<T> a(HashMap<Byte, Object> map) {
            if (map != null) {
                return new b<>((Class) map.get((byte) 0), (byte[]) map.get((byte) 1));
            }
            return null;
        }

        public b(Class<T> cls, byte[] bArr) {
            this.f2195a = cls;
            this.f2196b = bArr;
        }

        private T a(byte[] bArr, Class<T> cls, T t10) {
            if (bArr == null || bArr.length == 0) {
                return t10;
            }
            Parcel parcelObtain = Parcel.obtain();
            try {
                parcelObtain.unmarshall(bArr, 0, bArr.length);
                parcelObtain.setDataPosition(0);
                Field declaredField = cls.getDeclaredField(cn.fly.commons.n.a("007%cbehegdbdaefeh"));
                declaredField.setAccessible(true);
                T tCast = cls.cast(((Parcelable.Creator) declaredField.get(null)).createFromParcel(parcelObtain));
                parcelObtain.recycle();
                return tCast;
            } catch (Throwable th) {
                try {
                    FlyLog.getInstance().d("Failed to convert bytes to Parcelable", th);
                    return t10;
                } finally {
                    parcelObtain.recycle();
                }
            }
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f2197a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Object f2198b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f2199c;

        private c(long j10, Object obj, long j11) {
            this.f2197a = j10;
            this.f2198b = obj;
            this.f2199c = j11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a() {
            long j10 = this.f2197a;
            return j10 != 0 && j10 <= System.currentTimeMillis();
        }
    }

    private class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f2201b;

        private d() {
            this.f2201b = 0;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList;
            Throwable th;
            try {
                try {
                    FlyPersistence.this.f2147e.lock();
                    ArrayList arrayList2 = null;
                    try {
                        if (!FlyPersistence.this.f2145c.isEmpty()) {
                            arrayList = new ArrayList(FlyPersistence.this.f2145c.values());
                            try {
                                FlyPersistence.this.f2145c.clear();
                                if (!arrayList.isEmpty()) {
                                    FlyPersistence.this.f2143a.b().lock();
                                }
                                arrayList2 = arrayList;
                            } catch (Throwable th2) {
                                th = th2;
                                try {
                                    FlyPersistence.b(th, FlyPersistence.this.f2143a.f2163j);
                                    try {
                                        FlyPersistence.this.f2147e.unlock();
                                    } catch (Throwable th3) {
                                        FlyPersistence.b(th3, FlyPersistence.this.f2143a.f2163j);
                                    }
                                    arrayList2 = arrayList;
                                } catch (Throwable th4) {
                                    try {
                                        FlyPersistence.this.f2147e.unlock();
                                    } catch (Throwable th5) {
                                        FlyPersistence.b(th5, FlyPersistence.this.f2143a.f2163j);
                                    }
                                    throw th4;
                                }
                            }
                        }
                        try {
                            FlyPersistence.this.f2147e.unlock();
                        } catch (Throwable th6) {
                            FlyPersistence.b(th6, FlyPersistence.this.f2143a.f2163j);
                        }
                    } catch (Throwable th7) {
                        arrayList = null;
                        th = th7;
                    }
                    if (arrayList2 != null && !arrayList2.isEmpty()) {
                        try {
                            List<i> listA = FlyPersistence.this.f2143a.a(arrayList2);
                            if (!listA.isEmpty()) {
                                FlyPersistence.this.f2147e.lock();
                                try {
                                    for (i iVar : listA) {
                                        FlyPersistence.this.f2145c.put(iVar.f2216a, iVar);
                                    }
                                    FlyPersistence.this.f2147e.unlock();
                                } catch (Throwable th8) {
                                    FlyPersistence.this.f2147e.unlock();
                                    throw th8;
                                }
                            }
                            FlyPersistence.this.f2143a.b().unlock();
                        } catch (Throwable th9) {
                            FlyPersistence.this.f2143a.b().unlock();
                            throw th9;
                        }
                    }
                    try {
                        int i10 = this.f2201b + 1;
                        this.f2201b = i10;
                        if (i10 >= 10) {
                            this.f2201b = 0;
                            FlyPersistence.this.f2143a.f();
                        }
                    } catch (Throwable th10) {
                        this.f2201b = 0;
                        FlyPersistence.b(th10, FlyPersistence.this.f2143a.f2163j);
                    }
                    FlyPersistence.this.a(this);
                } catch (Throwable th11) {
                    try {
                        FlyPersistence.b(th11, FlyPersistence.this.f2143a.f2163j);
                        FlyPersistence.this.a(this);
                    } catch (Throwable th12) {
                        try {
                            FlyPersistence.this.a(this);
                        } catch (Throwable th13) {
                            FlyPersistence.b(th13, FlyPersistence.this.f2143a.f2163j);
                        }
                        throw th12;
                    }
                }
            } catch (Throwable th14) {
                FlyPersistence.b(th14, FlyPersistence.this.f2143a.f2163j);
            }
        }
    }

    public static class e<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f2202a;

        public e(String str) {
            this.f2202a = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public T a(Object obj) {
            return obj;
        }

        public String a() {
            return this.f2202a;
        }
    }

    private static final class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private byte[] f2203a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f2204b;

        private static Object b(byte[] bArr) throws Throwable {
            ByteArrayInputStream byteArrayInputStream;
            Throwable th;
            ObjectInputStream objectInputStream;
            try {
                byteArrayInputStream = new ByteArrayInputStream(bArr);
                try {
                    objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        Object object = objectInputStream.readObject();
                        C1293r.a(objectInputStream, byteArrayInputStream);
                        return object;
                    } catch (Throwable th2) {
                        th = th2;
                        C1293r.a(objectInputStream, byteArrayInputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    objectInputStream = null;
                }
            } catch (Throwable th4) {
                byteArrayInputStream = null;
                th = th4;
                objectInputStream = null;
            }
        }

        private f(String str) {
            if (TextUtils.isEmpty(str)) {
                this.f2204b = false;
                return;
            }
            this.f2204b = true;
            try {
                this.f2203a = str.getBytes("utf-8");
            } catch (Throwable unused) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Object a(byte[] bArr, Object obj) {
            try {
                return a(bArr);
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
                return obj;
            }
        }

        private Object a(byte[] bArr) throws Throwable {
            if (bArr == null || bArr.length == 0) {
                return null;
            }
            if (this.f2204b) {
                if (bArr.length % 16 == 0) {
                    try {
                        return b(Data.paddingDecode(this.f2203a, bArr));
                    } catch (Throwable unused) {
                        FlyPersistence.d("decode fail ", "ENCIPER");
                        return b(bArr);
                    }
                }
                return b(bArr);
            }
            return b(bArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte[] a(Object obj) throws Throwable {
            ByteArrayOutputStream byteArrayOutputStream;
            if (obj == null) {
                return new byte[0];
            }
            ObjectOutputStream objectOutputStream = null;
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                    try {
                        objectOutputStream2.writeObject(obj);
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        if (!this.f2204b) {
                            C1293r.a(objectOutputStream2, byteArrayOutputStream);
                            return byteArray;
                        }
                        byte[] bArrAES128Encode = Data.AES128Encode(this.f2203a, byteArray);
                        C1293r.a(objectOutputStream2, byteArrayOutputStream);
                        return bArrAES128Encode;
                    } catch (Throwable th) {
                        th = th;
                        objectOutputStream = objectOutputStream2;
                        C1293r.a(objectOutputStream, byteArrayOutputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                byteArrayOutputStream = null;
            }
        }
    }

    private static final class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final byte[] f2205a;

        public g(byte[] bArr) {
            this.f2205a = bArr;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || g.class != obj.getClass()) {
                return false;
            }
            return Arrays.equals(this.f2205a, ((g) obj).f2205a);
        }

        public int hashCode() {
            return Arrays.hashCode(this.f2205a);
        }
    }

    private static final class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f2206a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private volatile LinkedHashMap<g, c> f2207b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private volatile AtomicLong f2208c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f2209d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f2210e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final AtomicLong f2211f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private double f2212g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private double f2213h;

        private h(int i10, long j10, long j11, double d10, double d11) {
            this.f2211f = new AtomicLong(0L);
            this.f2206a = i10;
            this.f2208c = new AtomicLong(j11);
            this.f2210e = j10;
            this.f2209d = j11;
            this.f2212g = d10;
            this.f2213h = d11;
            this.f2207b = new LinkedHashMap<g, c>(i10, 0.75f, true) { // from class: cn.fly.tools.utils.FlyPersistence.h.1
                @Override // java.util.LinkedHashMap
                protected boolean removeEldestEntry(Map.Entry<g, c> entry) {
                    boolean z10 = size() > h.this.f2206a;
                    if (z10) {
                        h.this.f2211f.addAndGet(-entry.getValue().f2199c);
                    }
                    return z10;
                }
            };
        }

        private void c() {
            while (this.f2211f.get() > this.f2208c.get() && !this.f2207b.isEmpty()) {
                try {
                    Iterator<Map.Entry<g, c>> it2 = this.f2207b.entrySet().iterator();
                    if (it2.hasNext()) {
                        Map.Entry<g, c> next = it2.next();
                        if (next != null && next.getValue() != null) {
                            this.f2211f.addAndGet(-next.getValue().f2199c);
                        }
                        it2.remove();
                    }
                } catch (Throwable th) {
                    FlyPersistence.b(th, "LRU");
                    return;
                }
            }
            FlyPersistence.d("max: " + this.f2208c.get() + " used: " + this.f2211f.get(), "LRU");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(g gVar) {
            c cVarRemove = this.f2207b.remove(gVar);
            if (cVarRemove != null) {
                this.f2211f.addAndGet(-cVarRemove.f2199c);
            }
        }

        private boolean b(long j10, long j11, double d10, double d11) {
            if (j10 <= 0) {
                j10 = this.f2209d;
            }
            if (j11 <= 0) {
                j11 = this.f2210e;
            }
            if (j11 < j10) {
                j10 = this.f2209d;
                j11 = this.f2210e;
            }
            if (d10 <= 0.0d || d10 >= 1.0d) {
                d10 = this.f2212g;
            }
            if (d11 <= 0.0d || d11 >= 1.0d) {
                d11 = this.f2213h;
            }
            if (d10 < d11) {
                d10 = this.f2212g;
                d11 = this.f2213h;
            }
            return (this.f2209d == j10 && this.f2210e == j11 && this.f2212g == d10 && this.f2213h == d11) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public c a(g gVar) {
            return this.f2207b.get(gVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(g gVar, c cVar) {
            this.f2211f.addAndGet(cVar.f2199c);
            c cVarPut = this.f2207b.put(gVar, cVar);
            if (cVarPut != null) {
                this.f2211f.addAndGet(-cVarPut.f2199c);
            }
            c();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            this.f2207b.clear();
            this.f2211f.set(0L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(long j10, long j11, double d10, double d11) {
            if (b(j10, j11, d10, d11)) {
                this.f2209d = j10;
                this.f2210e = j11;
                this.f2212g = d10;
                this.f2213h = d11;
                b();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            try {
                DH.requester(FlySDK.getContext()).getRuntimeMemory(true).request(new DH.DHResponder() { // from class: cn.fly.tools.utils.FlyPersistence.h.2
                    @Override // cn.fly.tools.utils.DH.DHResponder
                    public void onResponse(DH.DHResponse dHResponse) throws Throwable {
                        try {
                            long j10 = h.this.f2208c.get();
                            HashMap<String, Long> runtimeMemory = dHResponse == null ? null : dHResponse.getRuntimeMemory();
                            if (runtimeMemory == null) {
                                return;
                            }
                            Long l10 = runtimeMemory.get(cn.fly.commons.n.a("005g4bi1gbe"));
                            Long l11 = runtimeMemory.get(cn.fly.commons.n.a("003Fbd0bDcg"));
                            Long l12 = runtimeMemory.get(cn.fly.commons.n.a("004^cdbh8dd"));
                            if (l10 != null && l11 != null && l12 != null) {
                                long jLongValue = l10.longValue();
                                long jLongValue2 = l11.longValue();
                                long jLongValue3 = l12.longValue();
                                if (jLongValue2 > 0 && jLongValue > 0 && jLongValue3 > 0) {
                                    double d10 = (jLongValue - jLongValue3) / jLongValue2;
                                    if (d10 > h.this.f2212g && h.this.f2208c.get() != h.this.f2209d) {
                                        j10 = h.this.f2209d;
                                        FlyPersistence.c("lim max to " + h.this.f2209d, "LRU");
                                    } else if (d10 < h.this.f2213h && h.this.f2208c.get() != h.this.f2210e) {
                                        j10 = h.this.f2210e;
                                        FlyPersistence.d("add max to " + h.this.f2210e, "LRU");
                                    }
                                    if (j10 != h.this.f2208c.get()) {
                                        h.this.a(j10);
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            FlyPersistence.b(th, "LRU");
                        }
                    }
                });
            } catch (Throwable th) {
                FlyPersistence.b(th, "LRU");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(long j10) {
            this.f2208c.set(j10);
            if (this.f2211f.get() > j10) {
                c();
            }
        }
    }

    public static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f2216a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Object f2217b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f2218c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private byte[] f2219d;

        public i(String str, Object obj, long j10) {
            this.f2216a = str;
            this.f2217b = obj;
            this.f2218c = j10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte[] f() {
            return this.f2219d;
        }

        public Object b() {
            return this.f2217b;
        }

        public Object c() {
            return this.f2217b;
        }

        public long d() {
            return this.f2218c;
        }

        public boolean e() {
            return d() != 0 && d() <= System.currentTimeMillis();
        }

        public String a() {
            return this.f2216a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(byte[] bArr) {
            this.f2219d = bArr;
        }
    }

    public FlyPersistence(Context context, String str, String str2) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f2146d = reentrantReadWriteLock;
        this.f2147e = reentrantReadWriteLock.writeLock();
        this.f2148f = reentrantReadWriteLock.readLock();
        this.f2150j = new ConcurrentHashMap<>();
        this.f2151k = new AtomicBoolean(false);
        f fVar = new f(str2);
        this.f2149g = fVar;
        this.f2143a = new MobPersistenceFile(context, str, fVar);
        this.f2144b = b(str);
        a(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(String str, String str2) {
        a(str, false, str2);
    }

    private ScheduledExecutorService b(final String str) {
        if (str != null && str.startsWith(o0.f49827a) && str.length() > 1) {
            str = str.substring(1);
        }
        return Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: cn.fly.tools.utils.FlyPersistence.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "M-PL-MP-" + str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(String str, String str2) {
        a(str, true, str2);
    }

    private byte[] c(String str) {
        if (!TextUtils.isEmpty(str)) {
            byte[] bArr = this.f2150j.get(str);
            if (bArr != null) {
                return bArr;
            }
            byte[] bArrRawMD5 = Data.rawMD5(str);
            byte[] bArrPutIfAbsent = this.f2150j.putIfAbsent(str, bArrRawMD5);
            return bArrPutIfAbsent != null ? bArrPutIfAbsent : bArrRawMD5;
        }
        throw new IllegalArgumentException("Key: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Runnable runnable) {
        if (this.f2151k.compareAndSet(false, true)) {
            try {
                ScheduledExecutorService scheduledExecutorService = this.f2144b;
                if (scheduledExecutorService == null || scheduledExecutorService.isShutdown() || scheduledExecutorService.isTerminated()) {
                    synchronized (this) {
                        scheduledExecutorService = this.f2144b;
                        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown() || scheduledExecutorService.isTerminated()) {
                            this.f2144b = b(this.f2143a.f2163j);
                            scheduledExecutorService = this.f2144b;
                        }
                    }
                }
                scheduledExecutorService.schedule(runnable, BaseCloudFileManager.ACK_TIMEOUT, TimeUnit.MILLISECONDS);
            } catch (Throwable th) {
                try {
                    b(th, this.f2143a.f2163j);
                    synchronized (this) {
                        try {
                            if (this.f2144b != null) {
                                this.f2144b.shutdown();
                                if (!this.f2144b.awaitTermination(5L, TimeUnit.SECONDS)) {
                                    this.f2144b.shutdownNow();
                                }
                            }
                        } catch (Throwable unused) {
                        }
                        try {
                            this.f2144b = b(this.f2143a.f2163j);
                            this.f2144b.schedule(runnable, BaseCloudFileManager.ACK_TIMEOUT, TimeUnit.MILLISECONDS);
                        } catch (Throwable th2) {
                            b(th2, this.f2143a.f2163j);
                        }
                    }
                } catch (Throwable th3) {
                    this.f2151k.set(false);
                    throw th3;
                }
            }
            this.f2151k.set(false);
        }
    }

    public static boolean b(Context context, String str) {
        String str2;
        boolean zDelete;
        if (f2142i.contains(str)) {
            str2 = "oped";
            zDelete = false;
        } else {
            File file = new File(a(context), str);
            if (file.exists()) {
                zDelete = file.delete();
                str2 = zDelete ? "succ" : "fail";
            } else {
                zDelete = true;
                str2 = "not exist";
            }
        }
        FlyLog.getInstance().d("[CKCMP] try del mpf '" + str + "': " + str2, new Object[0]);
        return zDelete;
    }

    public HashMap<String, Object> b() {
        a aVarA;
        Object objA;
        Map map;
        List arrayList;
        HashMap map2 = new HashMap();
        this.f2148f.lock();
        try {
            if (!this.f2145c.isEmpty()) {
                Iterator<Map.Entry<String, i>> it2 = this.f2145c.entrySet().iterator();
                while (it2.hasNext()) {
                    i value = it2.next().getValue();
                    if (!value.e()) {
                        map2.put(value.a(), value.b());
                    }
                }
            }
        } catch (Throwable th) {
            try {
                b(th, this.f2143a.f2163j);
            } catch (Throwable th2) {
                this.f2148f.unlock();
                throw th2;
            }
        }
        this.f2148f.unlock();
        HashMap<String, Object> map3 = new HashMap<>();
        HashMap map4 = new HashMap();
        List<byte[]> listE = this.f2143a.e();
        if (listE.size() > 0) {
            Iterator<byte[]> it3 = listE.iterator();
            while (it3.hasNext()) {
                Object objA2 = this.f2149g.a(it3.next(), (Object) null);
                if (objA2 instanceof KVEntry) {
                    KVEntry kVEntry = (KVEntry) objA2;
                    aVarA = new a(kVEntry.getKey(), kVEntry.getValue());
                } else {
                    aVarA = a.a((HashMap<Byte, Object>) objA2);
                }
                Object objA3 = aVarA.a();
                if (objA3 != null) {
                    try {
                        objA = ((b) objA3).a((Parcelable) null);
                    } catch (Throwable unused) {
                        objA = null;
                    }
                } else {
                    objA = null;
                }
                if (objA3 != null && objA == null) {
                    try {
                        b[] bVarArr = (b[]) objA3;
                        if (bVarArr.length > 0) {
                            Parcelable[] parcelableArr = (Parcelable[]) Array.newInstance((Class<?>) bVarArr[0].a(), bVarArr.length);
                            for (int i10 = 0; i10 < parcelableArr.length; i10++) {
                                parcelableArr[i10] = bVarArr[i10].a((Parcelable) null);
                            }
                            objA = parcelableArr;
                        }
                    } catch (Throwable unused2) {
                    }
                }
                if (objA3 != null && objA == null) {
                    try {
                        List list = (List) objA3;
                        if (!list.isEmpty()) {
                            if (!(list instanceof ArrayList) && (list instanceof LinkedList)) {
                                arrayList = new LinkedList();
                            } else {
                                arrayList = new ArrayList();
                            }
                            Iterator it4 = list.iterator();
                            while (it4.hasNext()) {
                                arrayList.add(((b) it4.next()).a((Parcelable) null));
                            }
                            objA = arrayList;
                        }
                    } catch (Throwable unused3) {
                    }
                }
                if (objA3 != null && objA == null) {
                    try {
                        Map map5 = (Map) objA3;
                        if (!map5.isEmpty()) {
                            if (map5 instanceof HashMap) {
                                map = new HashMap();
                            } else if (map5 instanceof Hashtable) {
                                map = new Hashtable();
                            } else if (map5 instanceof TreeMap) {
                                map = new TreeMap();
                            } else {
                                map = new HashMap();
                            }
                            for (Map.Entry entry : map5.entrySet()) {
                                map.put(entry.getKey(), ((b) entry.getValue()).a((Parcelable) null));
                            }
                            objA = map;
                        }
                    } catch (Throwable unused4) {
                    }
                }
                if (objA != null) {
                    objA3 = objA;
                }
                map4.put(aVarA.f2193a, objA3);
            }
        }
        map3.putAll(map4);
        map3.putAll(map2);
        d("GetA done: " + map3.size(), this.f2143a.f2163j);
        return map3;
    }

    public static boolean a(Context context, String str) {
        File file = new File(a(context), str);
        return file.exists() && file.length() > 0;
    }

    public static File a(Context context) {
        return new File(context.getFilesDir(), cn.fly.commons.n.a("004Wej d1bhdg"));
    }

    public void a(i iVar) {
        if (iVar != null) {
            String strA = iVar.a();
            long jD = iVar.d();
            if (!TextUtils.isEmpty(strA) && jD >= 0) {
                iVar.a(c(strA));
                this.f2147e.lock();
                try {
                    this.f2145c.put(strA, iVar);
                } catch (Throwable th) {
                    try {
                        b(th, this.f2143a.f2163j);
                    } finally {
                        this.f2147e.unlock();
                    }
                }
                return;
            }
            throw new IllegalArgumentException("Key: " + strA + ", expAt: " + jD);
        }
        throw new IllegalArgumentException("dataEntry is null");
    }

    public boolean a(String str) {
        if (!TextUtils.isEmpty(str)) {
            byte[] bArrC = c(str);
            boolean[] zArr = {false};
            String[] strArr = {com.xinzhu.overmind.server.os.f.TAG};
            this.f2147e.lock();
            try {
                if (!this.f2145c.isEmpty() && this.f2145c.containsKey(str)) {
                    this.f2145c.remove(str);
                    zArr[0] = true;
                    strArr[0] = t.f74888m;
                }
            } catch (Throwable th) {
                try {
                    b(th, this.f2143a.f2163j);
                } catch (Throwable th2) {
                    this.f2147e.unlock();
                    throw th2;
                }
            }
            this.f2147e.unlock();
            zArr[0] = this.f2143a.a(new g(bArrC), true);
            d("rmv: " + str + ", from: " + strArr[0] + ", succ is " + zArr[0], this.f2143a.f2163j);
            return zArr[0];
        }
        throw new IllegalArgumentException("Key: " + str);
    }

    public boolean a() {
        d("cln", this.f2143a.f2163j);
        this.f2147e.lock();
        try {
            if (!this.f2145c.isEmpty()) {
                this.f2145c.clear();
            }
        } catch (Throwable th) {
            try {
                b(th, this.f2143a.f2163j);
            } finally {
                this.f2147e.unlock();
            }
        }
        return this.f2143a.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Throwable th, String str) {
        a(th, true, str);
    }

    public <T> T a(e<T> eVar) throws NoValidDataException {
        if (eVar != null) {
            String strA = eVar.a();
            if (!TextUtils.isEmpty(strA)) {
                this.f2148f.lock();
                boolean z10 = false;
                try {
                    i iVar = this.f2145c.get(strA);
                    if (iVar != null) {
                        if (!iVar.e()) {
                            T t10 = (T) iVar.b();
                            this.f2148f.unlock();
                            return t10;
                        }
                        z10 = true;
                    }
                } catch (Throwable th) {
                    try {
                        b(th, this.f2143a.f2163j);
                    } catch (Throwable th2) {
                        this.f2148f.unlock();
                        throw th2;
                    }
                }
                this.f2148f.unlock();
                if (z10) {
                    this.f2147e.lock();
                    try {
                        try {
                            i iVar2 = this.f2145c.get(strA);
                            if (iVar2 != null && iVar2.e()) {
                                this.f2145c.remove(strA);
                                d("Get done, exp-m: " + strA, this.f2143a.f2163j);
                            }
                            throw new NoValidDataException();
                        } catch (Throwable th3) {
                            this.f2147e.unlock();
                            throw th3;
                        }
                    } catch (NoValidDataException e10) {
                        throw e10;
                    } catch (Throwable th4) {
                        b(th4, this.f2143a.f2163j);
                        this.f2147e.unlock();
                    }
                }
                try {
                    return (T) this.f2143a.a(new g(c(strA)), eVar);
                } catch (Throwable unused) {
                    throw new NoValidDataException();
                }
            }
            throw new IllegalArgumentException("Key: " + strA);
        }
        throw new IllegalArgumentException("deserializer is null");
    }

    private static void a(Throwable th, boolean z10, String str) {
        if (z10) {
            try {
                String str2 = "[MPF][" + f2141h + "]";
                if (str != null) {
                    str2 = str2 + "[" + str + "]";
                }
                NLog flyLog = FlyLog.getInstance();
                if (flyLog != null) {
                    flyLog.d(th, str2, new Object[0]);
                }
            } catch (Throwable unused) {
            }
        }
    }

    private static void a(String str, boolean z10, String str2) {
        if (z10) {
            try {
                String str3 = "[MPF][" + f2141h + "]";
                if (str2 != null) {
                    str3 = str3 + "[" + str2 + "]";
                }
                String str4 = str3 + str;
                NLog flyLog = FlyLog.getInstance();
                if (flyLog != null) {
                    flyLog.d(str4, new Object[0]);
                }
            } catch (Throwable unused) {
            }
        }
    }
}
