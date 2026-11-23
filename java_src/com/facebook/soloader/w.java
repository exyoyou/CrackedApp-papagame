package com.facebook.soloader;

import android.content.Context;
import android.os.Parcel;
import android.os.StrictMode;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class w extends com.facebook.soloader.c {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f29051r = "fb-UnpackingSoSource";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f29052s = "dso_state";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f29053t = "dso_lock";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final String f29054u = "dso_deps";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final String f29055v = "dso_manifest";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final byte f29056w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final byte f29057x = 1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final byte f29058y = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected final Context f29059n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    protected String f29060o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private String[] f29061p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Map<String, Object> f29062q;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ File f29063b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ byte[] f29064c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ c f29065d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ File f29066e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ n f29067f;

        a(File file, byte[] bArr, c cVar, File file2, n nVar) {
            this.f29063b = file;
            this.f29064c = bArr;
            this.f29065d = cVar;
            this.f29066e = file2;
            this.f29067f = nVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(this.f29063b, net.lingala.zip4j.util.e.f94694e0);
                    try {
                        randomAccessFile.write(this.f29064c);
                        randomAccessFile.setLength(randomAccessFile.getFilePointer());
                        randomAccessFile.close();
                        RandomAccessFile randomAccessFile2 = new RandomAccessFile(new File(w.this.f28950j, w.f29055v), net.lingala.zip4j.util.e.f94694e0);
                        try {
                            this.f29065d.b(randomAccessFile2);
                            randomAccessFile2.close();
                            SysUtil.f(w.this.f28950j);
                            w.w(this.f29066e, (byte) 1);
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("releasing dso store lock for ");
                            sb2.append(w.this.f28950j);
                            sb2.append(" (from syncer thread)");
                            this.f29067f.close();
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                try {
                                    randomAccessFile2.close();
                                } catch (Throwable th3) {
                                    th.addSuppressed(th3);
                                }
                                throw th2;
                            }
                        }
                    } catch (Throwable th4) {
                        try {
                            throw th4;
                        } catch (Throwable th5) {
                            try {
                                randomAccessFile.close();
                            } catch (Throwable th6) {
                                th4.addSuppressed(th6);
                            }
                            throw th5;
                        }
                    }
                } catch (Throwable th7) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("releasing dso store lock for ");
                    sb3.append(w.this.f28950j);
                    sb3.append(" (from syncer thread)");
                    this.f29067f.close();
                    throw th7;
                }
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    public static class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f29069b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f29070c;

        public b(String str, String str2) {
            this.f29069b = str;
            this.f29070c = str2;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final b[] f29071a;

        public c(b[] bVarArr) {
            this.f29071a = bVarArr;
        }

        static final c a(DataInput dataInput) throws IOException {
            if (dataInput.readByte() != 1) {
                throw new RuntimeException("wrong dso manifest version");
            }
            int i10 = dataInput.readInt();
            if (i10 < 0) {
                throw new RuntimeException("illegal number of shared libraries");
            }
            b[] bVarArr = new b[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                bVarArr[i11] = new b(dataInput.readUTF(), dataInput.readUTF());
            }
            return new c(bVarArr);
        }

        public final void b(DataOutput dataOutput) throws IOException {
            dataOutput.writeByte(1);
            dataOutput.writeInt(this.f29071a.length);
            int i10 = 0;
            while (true) {
                b[] bVarArr = this.f29071a;
                if (i10 >= bVarArr.length) {
                    return;
                }
                dataOutput.writeUTF(bVarArr[i10].f29069b);
                dataOutput.writeUTF(this.f29071a[i10].f29070c);
                i10++;
            }
        }
    }

    protected static final class d implements Closeable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final b f29072b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final InputStream f29073c;

        public d(b bVar, InputStream inputStream) {
            this.f29072b = bVar;
            this.f29073c = inputStream;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f29073c.close();
        }
    }

    protected static abstract class e implements Closeable {
        protected e() {
        }

        public abstract boolean b();

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        public abstract d d() throws IOException;
    }

    protected static abstract class f implements Closeable {
        protected f() {
        }

        protected abstract c b() throws IOException;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        protected abstract e d() throws IOException;
    }

    protected w(Context context, String str) {
        super(q(context, str), 1);
        this.f29062q = new HashMap();
        this.f29059n = context;
    }

    private void l(b[] bVarArr) throws IOException {
        String[] list = this.f28950j.list();
        if (list == null) {
            throw new IOException("unable to list directory " + this.f28950j);
        }
        for (String str : list) {
            if (!str.equals(f29052s) && !str.equals(f29053t) && !str.equals(f29054u) && !str.equals(f29055v)) {
                boolean z10 = false;
                for (int i10 = 0; !z10 && i10 < bVarArr.length; i10++) {
                    if (bVarArr[i10].f29069b.equals(str)) {
                        z10 = true;
                    }
                }
                if (!z10) {
                    File file = new File(this.f28950j, str);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("deleting unaccounted-for file ");
                    sb2.append(file);
                    SysUtil.c(file);
                }
            }
        }
    }

    private void m(d dVar, byte[] bArr) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("extracting DSO ");
        sb2.append(dVar.f29072b.f29069b);
        try {
            if (!this.f28950j.setWritable(true)) {
                throw new IOException("cannot make directory writable for us: " + this.f28950j);
            }
            n(dVar, bArr);
            if (this.f28950j.setWritable(false)) {
                return;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("error removing ");
            sb3.append(this.f28950j.getCanonicalPath());
            sb3.append(" write permission");
        } catch (Throwable th) {
            if (!this.f28950j.setWritable(false)) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("error removing ");
                sb4.append(this.f28950j.getCanonicalPath());
                sb4.append(" write permission");
            }
            throw th;
        }
    }

    private void n(d dVar, byte[] bArr) throws IOException {
        RandomAccessFile randomAccessFile;
        File file = new File(this.f28950j, dVar.f29072b.f29069b);
        RandomAccessFile randomAccessFile2 = null;
        try {
            try {
                if (file.exists() && !file.setWritable(true)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("error adding write permission to: ");
                    sb2.append(file);
                }
                try {
                    randomAccessFile = new RandomAccessFile(file, net.lingala.zip4j.util.e.f94694e0);
                } catch (IOException unused) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("error overwriting ");
                    sb3.append(file);
                    sb3.append(" trying to delete and start over");
                    SysUtil.c(file);
                    randomAccessFile = new RandomAccessFile(file, net.lingala.zip4j.util.e.f94694e0);
                }
                randomAccessFile2 = randomAccessFile;
                int iAvailable = dVar.f29073c.available();
                if (iAvailable > 1) {
                    SysUtil.d(randomAccessFile2.getFD(), iAvailable);
                }
                SysUtil.a(randomAccessFile2, dVar.f29073c, Integer.MAX_VALUE, bArr);
                randomAccessFile2.setLength(randomAccessFile2.getFilePointer());
                if (!file.setExecutable(true, false)) {
                    throw new IOException("cannot make file executable: " + file);
                }
                if (!file.setWritable(false)) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("error removing ");
                    sb4.append(file);
                    sb4.append(" write permission");
                }
                randomAccessFile2.close();
            } catch (IOException e10) {
                SysUtil.c(file);
                throw e10;
            }
        } catch (Throwable th) {
            if (!file.setWritable(false)) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append("error removing ");
                sb5.append(file);
                sb5.append(" write permission");
            }
            if (randomAccessFile2 != null) {
                randomAccessFile2.close();
            }
            throw th;
        }
    }

    private Object p(String str) {
        Object obj;
        synchronized (this.f29062q) {
            obj = this.f29062q.get(str);
            if (obj == null) {
                obj = new Object();
                this.f29062q.put(str, obj);
            }
        }
        return obj;
    }

    public static File q(Context context, String str) {
        return new File(context.getApplicationInfo().dataDir + net.lingala.zip4j.util.e.F0 + str);
    }

    private boolean t(n nVar, int i10, byte[] bArr) throws IOException {
        byte b10;
        c cVarB;
        File file = new File(this.f28950j, f29052s);
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, net.lingala.zip4j.util.e.f94694e0);
        try {
            b10 = randomAccessFile.readByte();
            if (b10 != 1) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("dso store ");
                sb2.append(this.f28950j);
                sb2.append(" regeneration interrupted: wiping clean");
                b10 = 0;
            }
        } catch (EOFException unused) {
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
        randomAccessFile.close();
        File file2 = new File(this.f28950j, f29054u);
        RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, net.lingala.zip4j.util.e.f94694e0);
        try {
            int length = (int) randomAccessFile2.length();
            byte[] bArr2 = new byte[length];
            if (randomAccessFile2.read(bArr2) != length) {
                b10 = 0;
            }
            if (!Arrays.equals(bArr2, bArr)) {
                b10 = 0;
            }
            if (b10 == 0 || (i10 & 2) != 0) {
                w(file, (byte) 0);
                f fVarR = r();
                try {
                    cVarB = fVarR.b();
                    e eVarD = fVarR.d();
                    try {
                        u(b10, cVarB, eVarD);
                        if (eVarD != null) {
                            eVarD.close();
                        }
                        fVarR.close();
                    } catch (Throwable th4) {
                        try {
                            throw th4;
                        } catch (Throwable th5) {
                            if (eVarD != null) {
                                try {
                                    eVarD.close();
                                } catch (Throwable th6) {
                                    th4.addSuppressed(th6);
                                }
                            }
                            throw th5;
                        }
                    }
                } catch (Throwable th7) {
                    try {
                        throw th7;
                    } catch (Throwable th8) {
                        if (fVarR != null) {
                            try {
                                fVarR.close();
                            } catch (Throwable th9) {
                                th7.addSuppressed(th9);
                            }
                        }
                        throw th8;
                    }
                }
            } else {
                cVarB = null;
            }
            randomAccessFile2.close();
            if (cVarB == null) {
                return false;
            }
            a aVar = new a(file2, bArr, cVarB, file, nVar);
            if ((i10 & 1) != 0) {
                new Thread(aVar, "SoSync:" + this.f28950j.getName()).start();
            } else {
                aVar.run();
            }
            return true;
        } catch (Throwable th10) {
            try {
                throw th10;
            } catch (Throwable th11) {
                try {
                    randomAccessFile2.close();
                } catch (Throwable th12) {
                    th10.addSuppressed(th12);
                }
                throw th11;
            }
        }
    }

    private void u(byte b10, c cVar, e eVar) throws IOException {
        c cVarA;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("regenerating DSO store ");
        sb2.append(getClass().getName());
        RandomAccessFile randomAccessFile = new RandomAccessFile(new File(this.f28950j, f29055v), net.lingala.zip4j.util.e.f94694e0);
        if (b10 == 1) {
            try {
                try {
                    cVarA = c.a(randomAccessFile);
                } catch (Exception unused) {
                    cVarA = null;
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        randomAccessFile.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } else {
            cVarA = null;
        }
        if (cVarA == null) {
            cVarA = new c(new b[0]);
        }
        l(cVar.f29071a);
        byte[] bArr = new byte[32768];
        while (eVar.b()) {
            d dVarD = eVar.d();
            boolean z10 = true;
            int i10 = 0;
            while (z10) {
                try {
                    b[] bVarArr = cVarA.f29071a;
                    if (i10 >= bVarArr.length) {
                        break;
                    }
                    if (bVarArr[i10].f29069b.equals(dVarD.f29072b.f29069b) && cVarA.f29071a[i10].f29070c.equals(dVarD.f29072b.f29070c)) {
                        z10 = false;
                    }
                    i10++;
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        if (dVarD != null) {
                            try {
                                dVarD.close();
                            } catch (Throwable th6) {
                                th4.addSuppressed(th6);
                            }
                        }
                        throw th5;
                    }
                }
            }
            if (z10) {
                m(dVarD, bArr);
            }
            if (dVarD != null) {
                dVarD.close();
            }
        }
        randomAccessFile.close();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Finished regenerating DSO store ");
        sb3.append(getClass().getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void w(File file, byte b10) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, net.lingala.zip4j.util.e.f94694e0);
        try {
            randomAccessFile.seek(0L);
            randomAccessFile.write(b10);
            randomAccessFile.setLength(randomAccessFile.getFilePointer());
            randomAccessFile.getFD().sync();
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    @Override // com.facebook.soloader.u
    public String[] d() {
        String[] strArr = this.f29061p;
        return strArr == null ? super.d() : strArr;
    }

    @Override // com.facebook.soloader.c, com.facebook.soloader.u
    public int e(String str, int i10, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        int iJ;
        synchronized (p(str)) {
            iJ = j(str, i10, this.f28950j, threadPolicy);
        }
        return iJ;
    }

    @Override // com.facebook.soloader.u
    protected void f(int i10) throws IOException {
        SysUtil.k(this.f28950j);
        n nVarA = n.a(new File(this.f28950j, f29053t));
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("locked dso store ");
            sb2.append(this.f28950j);
            if (t(nVarA, i10, o())) {
                nVarA = null;
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("dso store is up-to-date: ");
                sb3.append(this.f28950j);
            }
        } finally {
            if (nVarA != null) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("releasing dso store lock for ");
                sb4.append(this.f28950j);
                nVarA.close();
            } else {
                StringBuilder sb5 = new StringBuilder();
                sb5.append("not releasing dso store lock for ");
                sb5.append(this.f28950j);
                sb5.append(" (syncer thread started)");
            }
        }
    }

    protected byte[] o() throws IOException {
        Parcel parcelObtain = Parcel.obtain();
        f fVarR = r();
        try {
            b[] bVarArr = fVarR.b().f29071a;
            parcelObtain.writeByte((byte) 1);
            parcelObtain.writeInt(bVarArr.length);
            for (int i10 = 0; i10 < bVarArr.length; i10++) {
                parcelObtain.writeString(bVarArr[i10].f29069b);
                parcelObtain.writeString(bVarArr[i10].f29070c);
            }
            fVarR.close();
            byte[] bArrMarshall = parcelObtain.marshall();
            parcelObtain.recycle();
            return bArrMarshall;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (fVarR != null) {
                    try {
                        fVarR.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    protected abstract f r() throws IOException;

    protected synchronized void s(String str) throws IOException {
        synchronized (p(str)) {
            this.f29060o = str;
            f(2);
        }
    }

    public void v(String[] strArr) {
        this.f29061p = strArr;
    }

    protected w(Context context, File file) {
        super(file, 1);
        this.f29062q = new HashMap();
        this.f29059n = context;
    }
}
