package com.byazt.umr;

import com.byazt.mk.my;
import com.byazt.mk.rh;
import com.byazt.mk.t;
import external.org.apache.commons.lang3.d;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1046, 15})
public final class uj implements Closeable, Flushable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f20716c = Pattern.compile("[a-z0-9_-]{1,120}");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ boolean f20717u = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap<String, tt> f20718a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f20719da;
    public long gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f20720i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final File f20721m;
    public long my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.mk.uj f20722n;
    public final int nu;
    public final Runnable qy;
    public long rh;
    public final Executor rl;
    public boolean sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f20723t;
    public final com.byazt.hia.c tt;
    public final int uj;
    public final File ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f20724x;
    public final File yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final File f20725z;

    @com.byazt.zqa.c(c = {0, 1, 1046, 1694})
    public final class ve implements Closeable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ uj f20733c;
        public final String tt;
        public final my[] uj;
        public final long ve;

        public c c() throws IOException {
            return this.f20733c.c(this.tt, this.ve);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (my myVar : this.uj) {
                com.byazt.kh.ve.c(myVar);
            }
        }
    }

    private void a() throws IOException {
        com.byazt.mk.n nVarC = t.c(this.tt.c(this.yp));
        try {
            String strM = nVarC.m();
            String strM2 = nVarC.m();
            String strM3 = nVarC.m();
            String strM4 = nVarC.m();
            String strM5 = nVarC.m();
            if (!"libcore.io.DiskLruCache".equals(strM) || !"1".equals(strM2) || !Integer.toString(this.nu).equals(strM3) || !Integer.toString(this.uj).equals(strM4) || !"".equals(strM5)) {
                throw new IOException("unexpected journal header: [" + strM + ", " + strM2 + ", " + strM4 + ", " + strM5 + "]");
            }
            int i10 = 0;
            while (true) {
                try {
                    c(nVarC.m());
                    i10++;
                } catch (EOFException unused) {
                    this.sp = i10 - this.f20718a.size();
                    if (nVarC.n()) {
                        this.f20722n = sp();
                    } else {
                        tt();
                    }
                    com.byazt.kh.ve.c(nVarC);
                    return;
                }
            }
        } catch (Throwable th) {
            com.byazt.kh.ve.c(nVarC);
            throw th;
        }
    }

    private synchronized void i() {
        if (uj()) {
            throw new IllegalStateException("cache is closed");
        }
    }

    private com.byazt.mk.uj sp() throws FileNotFoundException {
        return t.c(new n(this.tt.ve(this.yp)) { // from class: com.byazt.umr.uj.1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static final /* synthetic */ boolean f20726c = true;

            @Override // com.byazt.umr.n
            public void c(IOException iOException) {
                if (!f20726c && !Thread.holdsLock(uj.this)) {
                    throw new AssertionError();
                }
                uj.this.f20724x = true;
            }
        });
    }

    private void x() throws IOException {
        this.tt.delete(this.f20725z);
        Iterator<tt> it2 = this.f20718a.values().iterator();
        while (it2.hasNext()) {
            tt next = it2.next();
            int i10 = 0;
            if (next.f20729a == null) {
                while (i10 < this.uj) {
                    this.my += next.tt[i10];
                    i10++;
                }
            } else {
                next.f20729a = null;
                while (i10 < this.uj) {
                    this.tt.delete(next.ve[i10]);
                    this.tt.delete(next.uj[i10]);
                    i10++;
                }
                it2.remove();
            }
        }
    }

    public synchronized void c() throws IOException {
        if (!f20717u && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (this.f20720i) {
            return;
        }
        if (this.tt.uj(this.f20721m)) {
            if (this.tt.uj(this.yp)) {
                this.tt.delete(this.f20721m);
            } else {
                this.tt.c(this.f20721m, this.yp);
            }
        }
        if (this.tt.uj(this.yp)) {
            try {
                a();
                x();
                this.f20720i = true;
                return;
            } catch (IOException e10) {
                com.byazt.xb.n.tt().c(5, "DiskLruCache " + this.ve + " is corrupt: " + e10.getMessage() + ", removing", e10);
                try {
                    delete();
                    this.f20719da = false;
                    tt();
                    this.f20720i = true;
                } catch (Throwable th) {
                    this.f20719da = false;
                    throw th;
                }
            }
        }
        tt();
        this.f20720i = true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.f20720i && !this.f20719da) {
            for (tt ttVar : (tt[]) this.f20718a.values().toArray(new tt[this.f20718a.size()])) {
                c cVar = ttVar.f20729a;
                if (cVar != null) {
                    cVar.ve();
                }
            }
            n();
            this.f20722n.close();
            this.f20722n = null;
            this.f20719da = true;
            return;
        }
        this.f20719da = true;
    }

    public void delete() throws IOException {
        close();
        this.tt.a(this.ve);
    }

    @Override // java.io.Flushable
    public synchronized void flush() throws IOException {
        if (this.f20720i) {
            i();
            n();
            this.f20722n.flush();
        }
    }

    public void n() throws IOException {
        while (this.my > this.rh) {
            c(this.f20718a.values().iterator().next());
        }
        this.sl = false;
    }

    public synchronized void tt() throws IOException {
        try {
            com.byazt.mk.uj ujVar = this.f20722n;
            if (ujVar != null) {
                ujVar.close();
            }
            com.byazt.mk.uj ujVarC = t.c(this.tt.tt(this.f20725z));
            try {
                ujVarC.tt("libcore.io.DiskLruCache").i(10);
                ujVarC.tt("1").i(10);
                ujVarC.t(this.nu).i(10);
                ujVarC.t(this.uj).i(10);
                ujVarC.i(10);
                for (tt ttVar : this.f20718a.values()) {
                    if (ttVar.f20729a != null) {
                        ujVarC.tt("DIRTY").i(32);
                        ujVarC.tt(ttVar.f20730c);
                        ujVarC.i(10);
                    } else {
                        ujVarC.tt("CLEAN").i(32);
                        ujVarC.tt(ttVar.f20730c);
                        ttVar.c(ujVarC);
                        ujVarC.i(10);
                    }
                }
                ujVarC.close();
                if (this.tt.uj(this.yp)) {
                    this.tt.c(this.yp, this.f20721m);
                }
                this.tt.c(this.f20725z, this.yp);
                this.tt.delete(this.f20721m);
                this.f20722n = sp();
                this.f20724x = false;
                this.f20723t = false;
            } catch (Throwable th) {
                ujVarC.close();
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized boolean uj() {
        return this.f20719da;
    }

    public boolean ve() {
        int i10 = this.sp;
        return i10 >= 2000 && i10 >= this.f20718a.size();
    }

    @com.byazt.zqa.c(c = {0, 1, 1046, 123})
    public final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final tt f20727c;
        public final boolean[] tt;
        public boolean uj;

        public c(tt ttVar) {
            this.f20727c = ttVar;
            this.tt = ttVar.f20731n ? null : new boolean[uj.this.uj];
        }

        public void c() {
            if (this.f20727c.f20729a != this) {
                return;
            }
            int i10 = 0;
            while (true) {
                uj ujVar = uj.this;
                if (i10 >= ujVar.uj) {
                    this.f20727c.f20729a = null;
                    return;
                } else {
                    try {
                        ujVar.tt.delete(this.f20727c.uj[i10]);
                    } catch (IOException unused) {
                    }
                    i10++;
                }
            }
        }

        public void tt() throws IOException {
            synchronized (uj.this) {
                if (this.uj) {
                    throw new IllegalStateException();
                }
                if (this.f20727c.f20729a == this) {
                    uj.this.c(this, true);
                }
                this.uj = true;
            }
        }

        public void ve() throws IOException {
            synchronized (uj.this) {
                if (this.uj) {
                    throw new IllegalStateException();
                }
                if (this.f20727c.f20729a == this) {
                    uj.this.c(this, false);
                }
                this.uj = true;
            }
        }

        public rh c(int i10) {
            synchronized (uj.this) {
                if (!this.uj) {
                    tt ttVar = this.f20727c;
                    if (ttVar.f20729a != this) {
                        return t.c();
                    }
                    if (!ttVar.f20731n) {
                        this.tt[i10] = true;
                    }
                    try {
                        return new n(uj.this.tt.tt(ttVar.uj[i10])) { // from class: com.byazt.umr.uj.c.1
                            @Override // com.byazt.umr.n
                            public void c(IOException iOException) {
                                synchronized (uj.this) {
                                    c.this.c();
                                }
                            }
                        };
                    } catch (FileNotFoundException unused) {
                        return t.c();
                    }
                }
                throw new IllegalStateException();
            }
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 1046, 153})
    private final class tt {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public c f20729a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f20730c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f20731n;
        public long sp;
        public final long[] tt;
        public final File[] uj;
        public final File[] ve;

        public tt(String str) {
            this.f20730c = str;
            int i10 = uj.this.uj;
            this.tt = new long[i10];
            this.ve = new File[i10];
            this.uj = new File[i10];
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append(d.f90941a);
            int length = sb2.length();
            for (int i11 = 0; i11 < uj.this.uj; i11++) {
                sb2.append(i11);
                this.ve[i11] = new File(uj.this.ve, sb2.toString());
                sb2.append(".tmp");
                this.uj[i11] = new File(uj.this.ve, sb2.toString());
                sb2.setLength(length);
            }
        }

        private IOException tt(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public void c(String[] strArr) throws IOException {
            if (strArr.length != uj.this.uj) {
                throw tt(strArr);
            }
            for (int i10 = 0; i10 < strArr.length; i10++) {
                try {
                    this.tt[i10] = Long.parseLong(strArr[i10]);
                } catch (NumberFormatException unused) {
                    throw tt(strArr);
                }
            }
        }

        public void c(com.byazt.mk.uj ujVar) throws IOException {
            for (long j10 : this.tt) {
                ujVar.i(32).t(j10);
            }
        }
    }

    private void c(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf != -1) {
            int i10 = iIndexOf + 1;
            int iIndexOf2 = str.indexOf(32, i10);
            if (iIndexOf2 == -1) {
                strSubstring = str.substring(i10);
                if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                    this.f20718a.remove(strSubstring);
                    return;
                }
            } else {
                strSubstring = str.substring(i10, iIndexOf2);
            }
            tt ttVar = this.f20718a.get(strSubstring);
            if (ttVar == null) {
                ttVar = new tt(strSubstring);
                this.f20718a.put(strSubstring, ttVar);
            }
            if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
                String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
                ttVar.f20731n = true;
                ttVar.f20729a = null;
                ttVar.c(strArrSplit);
                return;
            }
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                ttVar.f20729a = new c(ttVar);
                return;
            } else {
                if (iIndexOf2 != -1 || iIndexOf != 4 || !str.startsWith("READ")) {
                    throw new IOException("unexpected journal line: ".concat(str));
                }
                return;
            }
        }
        throw new IOException("unexpected journal line: ".concat(str));
    }

    private void tt(String str) {
        if (f20716c.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + x.a.f97579g);
    }

    public synchronized c c(String str, long j10) throws IOException {
        c();
        i();
        tt(str);
        tt ttVar = this.f20718a.get(str);
        if (j10 != -1 && (ttVar == null || ttVar.sp != j10)) {
            return null;
        }
        if (ttVar != null && ttVar.f20729a != null) {
            return null;
        }
        if (!this.sl && !this.f20723t) {
            this.f20722n.tt("DIRTY").i(32).tt(str).i(10);
            this.f20722n.flush();
            if (this.f20724x) {
                return null;
            }
            if (ttVar == null) {
                ttVar = new tt(str);
                this.f20718a.put(str, ttVar);
            }
            c cVar = new c(ttVar);
            ttVar.f20729a = cVar;
            return cVar;
        }
        this.rl.execute(this.qy);
        return null;
    }

    public synchronized void c(c cVar, boolean z10) throws IOException {
        tt ttVar = cVar.f20727c;
        if (ttVar.f20729a == cVar) {
            if (z10 && !ttVar.f20731n) {
                for (int i10 = 0; i10 < this.uj; i10++) {
                    if (cVar.tt[i10]) {
                        if (!this.tt.uj(ttVar.uj[i10])) {
                            cVar.ve();
                            return;
                        }
                    } else {
                        cVar.ve();
                        throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i10)));
                    }
                }
            }
            for (int i11 = 0; i11 < this.uj; i11++) {
                File file = ttVar.uj[i11];
                if (z10) {
                    if (this.tt.uj(file)) {
                        File file2 = ttVar.ve[i11];
                        this.tt.c(file, file2);
                        long j10 = ttVar.tt[i11];
                        long jN = this.tt.n(file2);
                        ttVar.tt[i11] = jN;
                        this.my = (this.my - j10) + jN;
                    }
                } else {
                    this.tt.delete(file);
                }
            }
            this.sp++;
            ttVar.f20729a = null;
            if (ttVar.f20731n | z10) {
                ttVar.f20731n = true;
                this.f20722n.tt("CLEAN").i(32);
                this.f20722n.tt(ttVar.f20730c);
                ttVar.c(this.f20722n);
                this.f20722n.i(10);
                if (z10) {
                    long j11 = this.gt;
                    this.gt = 1 + j11;
                    ttVar.sp = j11;
                }
            } else {
                this.f20718a.remove(ttVar.f20730c);
                this.f20722n.tt("REMOVE").i(32);
                this.f20722n.tt(ttVar.f20730c);
                this.f20722n.i(10);
            }
            this.f20722n.flush();
            if (this.my > this.rh || ve()) {
                this.rl.execute(this.qy);
            }
            return;
        }
        throw new IllegalStateException();
    }

    public boolean c(tt ttVar) throws IOException {
        c cVar = ttVar.f20729a;
        if (cVar != null) {
            cVar.c();
        }
        for (int i10 = 0; i10 < this.uj; i10++) {
            this.tt.delete(ttVar.ve[i10]);
            long j10 = this.my;
            long[] jArr = ttVar.tt;
            this.my = j10 - jArr[i10];
            jArr[i10] = 0;
        }
        this.sp++;
        this.f20722n.tt("REMOVE").i(32).tt(ttVar.f20730c).i(10);
        this.f20718a.remove(ttVar.f20730c);
        if (ve()) {
            this.rl.execute(this.qy);
        }
        return true;
    }
}
