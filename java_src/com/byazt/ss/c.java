package com.byazt.ss;

import com.byazt.nr.m;
import com.join.mgps.Util.o0;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.regex.Pattern;
import x.a;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 951, 20})
public final class c implements Closeable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f19859c = Pattern.compile("[a-z0-9_-]{1,120}");
    public static final OutputStream ve = new OutputStream() { // from class: com.byazt.ss.c.2
        @Override // java.io.OutputStream
        public void write(int i10) throws IOException {
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f19860a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final int f19861da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f19862i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final File f19864n;
    public final File sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Writer f19865t;
    public final ExecutorService tt;
    public final File uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f19867x;
    public int yp;
    public long sl = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final LinkedHashMap<String, tt> f19866u = new LinkedHashMap<>(0, 0.75f, true);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f19868z = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f19863m = 0;
    public final Callable<Void> nu = new Callable<Void>() { // from class: com.byazt.ss.c.1
        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (c.this) {
                if (c.this.f19865t == null) {
                    return null;
                }
                c.this.sp();
                if (c.this.n()) {
                    c.this.uj();
                    c.this.yp = 0;
                }
                return null;
            }
        }
    };

    /* JADX INFO: renamed from: com.byazt.ss.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 951, 44})
    public final class C0431c {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f19871n;
        public final tt tt;
        public boolean uj;
        public final boolean[] ve;

        /* JADX INFO: renamed from: com.byazt.ss.c$c$c, reason: collision with other inner class name */
        @com.byazt.zqa.c(c = {0, 1, 951, 810})
        private final class C0432c extends FilterOutputStream {
            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    C0431c.this.uj = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    C0431c.this.uj = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i10) {
                try {
                    ((FilterOutputStream) this).out.write(i10);
                } catch (IOException unused) {
                    C0431c.this.uj = true;
                }
            }

            private C0432c(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i10, int i11) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i10, i11);
                } catch (IOException unused) {
                    C0431c.this.uj = true;
                }
            }
        }

        private C0431c(tt ttVar) {
            this.tt = ttVar;
            this.ve = ttVar.uj ? null : new boolean[c.this.f19861da];
        }

        public void tt() throws IOException {
            c.this.c(this, false);
        }

        public OutputStream c(int i10) throws IOException {
            FileOutputStream fileOutputStream;
            C0432c c0432c;
            if (i10 < 0 || i10 >= c.this.f19861da) {
                throw new IllegalArgumentException("Expected index " + i10 + " to be greater than 0 and less than the maximum value count of " + c.this.f19861da);
            }
            synchronized (c.this) {
                if (this.tt.f19875n == this) {
                    if (!this.tt.uj) {
                        this.ve[i10] = true;
                    }
                    File fileTt = this.tt.tt(i10);
                    try {
                        fileOutputStream = new FileOutputStream(fileTt);
                    } catch (FileNotFoundException unused) {
                        c.this.uj.mkdirs();
                        try {
                            fileOutputStream = new FileOutputStream(fileTt);
                        } catch (FileNotFoundException unused2) {
                            return c.ve;
                        }
                    }
                    c0432c = new C0432c(fileOutputStream);
                } else {
                    throw new IllegalStateException();
                }
            }
            return c0432c;
        }

        public void c() throws IOException {
            if (this.uj) {
                c.this.c(this, false);
                c.this.ve(this.tt.tt);
            } else {
                c.this.c(this, true);
            }
            this.f19871n = true;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 951, 175})
    private final class tt {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f19873a;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public C0431c f19875n;
        public final String tt;
        public boolean uj;
        public final long[] ve;

        private tt(String str) {
            this.tt = str;
            this.ve = new long[c.this.f19861da];
        }

        private IOException tt(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File tt(int i10) {
            return new File(c.this.uj, this.tt + o0.f49827a + i10 + ".tmp");
        }

        public String c() throws IOException {
            StringBuilder sb2 = new StringBuilder();
            for (long j10 : this.ve) {
                sb2.append(' ');
                sb2.append(j10);
            }
            return sb2.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(String[] strArr) throws IOException {
            if (strArr.length == c.this.f19861da) {
                for (int i10 = 0; i10 < strArr.length; i10++) {
                    try {
                        this.ve[i10] = Long.parseLong(strArr[i10]);
                    } catch (NumberFormatException unused) {
                        throw tt(strArr);
                    }
                }
                return;
            }
            throw tt(strArr);
        }

        public File c(int i10) {
            return new File(c.this.uj, this.tt + o0.f49827a + i10);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 951, 132})
    public final class ve implements Closeable {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final long[] f19877n;
        public final String tt;
        public final InputStream[] uj;
        public final long ve;

        public InputStream c(int i10) {
            return this.uj[i10];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.uj) {
                com.byazt.as.tt.c(inputStream);
            }
        }

        private ve(String str, long j10, InputStream[] inputStreamArr, long[] jArr) {
            this.tt = str;
            this.ve = j10;
            this.uj = inputStreamArr;
            this.f19877n = jArr;
        }
    }

    private c(File file, int i10, int i11, long j10, ExecutorService executorService) {
        this.uj = file;
        this.f19867x = i10;
        this.f19864n = new File(file, "journal");
        this.f19860a = new File(file, "journal.tmp");
        this.sp = new File(file, "journal.bkp");
        this.f19861da = i11;
        this.f19862i = j10;
        this.tt = executorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sp() throws IOException {
        long j10 = this.f19862i;
        long j11 = this.f19868z;
        if (j11 >= 0) {
            j10 = j11;
        }
        while (this.sl > j10) {
            ve(this.f19866u.entrySet().iterator().next().getKey());
        }
        this.f19868z = -1L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.f19865t == null) {
            return;
        }
        for (tt ttVar : new ArrayList(this.f19866u.values())) {
            if (ttVar.f19875n != null) {
                ttVar.f19875n.tt();
            }
        }
        sp();
        this.f19865t.close();
        this.f19865t = null;
    }

    public void delete() throws IOException {
        close();
        uj.c(this.uj);
    }

    private void a() {
        if (this.f19865t == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n() {
        int i10 = this.yp;
        return i10 >= 2000 && i10 >= this.f19866u.size();
    }

    private void tt() throws IOException {
        com.byazt.ss.ve veVar = new com.byazt.ss.ve(new FileInputStream(this.f19864n), uj.f19879c);
        try {
            String strC = veVar.c();
            String strC2 = veVar.c();
            String strC3 = veVar.c();
            String strC4 = veVar.c();
            String strC5 = veVar.c();
            if (!"libcore.io.DiskLruCache".equals(strC) || !"1".equals(strC2) || !Integer.toString(this.f19867x).equals(strC3) || !Integer.toString(this.f19861da).equals(strC4) || !"".equals(strC5)) {
                throw new IOException("unexpected journal header: [" + strC + ", " + strC2 + ", " + strC4 + ", " + strC5 + "]");
            }
            int i10 = 0;
            while (true) {
                try {
                    uj(veVar.c());
                    i10++;
                } catch (EOFException unused) {
                    this.yp = i10 - this.f19866u.size();
                    if (veVar.tt()) {
                        uj();
                    } else {
                        this.f19865t = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f19864n, true), uj.f19879c));
                    }
                    com.byazt.as.tt.c(veVar);
                    return;
                }
            }
        } catch (Throwable th) {
            com.byazt.as.tt.c(veVar);
            throw th;
        }
    }

    private void uj(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
        int i10 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i10);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i10);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                this.f19866u.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i10, iIndexOf2);
        }
        tt ttVar = this.f19866u.get(strSubstring);
        if (ttVar == null) {
            ttVar = new tt(strSubstring);
            this.f19866u.put(strSubstring, ttVar);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            ttVar.uj = true;
            ttVar.f19875n = null;
            ttVar.c(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
            ttVar.f19875n = new C0431c(ttVar);
        } else if (iIndexOf2 != -1 || iIndexOf != 4 || !str.startsWith("READ")) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
    }

    private void ve() throws IOException {
        c(this.f19860a);
        Iterator<tt> it2 = this.f19866u.values().iterator();
        while (it2.hasNext()) {
            tt next = it2.next();
            int i10 = 0;
            if (next.f19875n == null) {
                while (i10 < this.f19861da) {
                    this.sl += next.ve[i10];
                    i10++;
                }
            } else {
                next.f19875n = null;
                while (i10 < this.f19861da) {
                    c(next.c(i10));
                    c(next.tt(i10));
                    i10++;
                }
                it2.remove();
            }
        }
    }

    public static c c(File file, int i10, int i11, long j10, ExecutorService executorService) throws IOException {
        if (j10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i11 > 0) {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    c(file2, file3, false);
                }
            }
            c cVar = new c(file, i10, i11, j10, executorService);
            if (cVar.f19864n.exists()) {
                try {
                    cVar.tt();
                    cVar.ve();
                    return cVar;
                } catch (IOException e10) {
                    m.tt("DiskLruCache ", file + " is corrupt: " + e10.getMessage() + ", removing");
                    cVar.delete();
                }
            }
            file.mkdirs();
            c cVar2 = new c(file, i10, i11, j10, executorService);
            cVar2.uj();
            return cVar2;
        }
        throw new IllegalArgumentException("valueCount <= 0");
    }

    private void n(String str) {
        if (f19859c.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + a.f97579g);
    }

    public synchronized boolean ve(String str) throws IOException {
        a();
        n(str);
        tt ttVar = this.f19866u.get(str);
        if (ttVar != null && ttVar.f19875n == null) {
            for (int i10 = 0; i10 < this.f19861da; i10++) {
                File fileC = ttVar.c(i10);
                if (fileC.exists() && !fileC.delete()) {
                    throw new IOException("failed to delete ".concat(String.valueOf(fileC)));
                }
                this.sl -= ttVar.ve[i10];
                ttVar.ve[i10] = 0;
            }
            this.yp++;
            this.f19865t.append((CharSequence) ("REMOVE " + str + '\n'));
            this.f19866u.remove(str);
            if (n()) {
                this.tt.submit(this.nu);
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void uj() throws IOException {
        Writer writer = this.f19865t;
        if (writer != null) {
            writer.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f19860a), uj.f19879c));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f19867x));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f19861da));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (tt ttVar : this.f19866u.values()) {
                if (ttVar.f19875n != null) {
                    bufferedWriter.write("DIRTY " + ttVar.tt + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + ttVar.tt + ttVar.c() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f19864n.exists()) {
                c(this.f19864n, this.sp, true);
            }
            c(this.f19860a, this.f19864n, false);
            this.sp.delete();
            this.f19865t = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f19864n, true), uj.f19879c));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    public C0431c tt(String str) throws IOException {
        return c(str, -1L);
    }

    private static void c(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void c(File file, File file2, boolean z10) throws IOException {
        if (z10) {
            c(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public synchronized ve c(String str) throws IOException {
        InputStream inputStream;
        a();
        n(str);
        tt ttVar = this.f19866u.get(str);
        if (ttVar == null) {
            return null;
        }
        if (!ttVar.uj) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.f19861da];
        for (int i10 = 0; i10 < this.f19861da; i10++) {
            try {
                inputStreamArr[i10] = new FileInputStream(ttVar.c(i10));
            } catch (FileNotFoundException unused) {
                for (int i11 = 0; i11 < this.f19861da && (inputStream = inputStreamArr[i11]) != null; i11++) {
                    com.byazt.as.tt.c(inputStream);
                }
                return null;
            }
        }
        this.yp++;
        this.f19865t.append((CharSequence) ("READ " + str + '\n'));
        if (n()) {
            this.tt.submit(this.nu);
        }
        return new ve(str, ttVar.f19873a, inputStreamArr, ttVar.ve);
    }

    private synchronized C0431c c(String str, long j10) throws IOException {
        a();
        n(str);
        tt ttVar = this.f19866u.get(str);
        if (j10 != -1 && (ttVar == null || ttVar.f19873a != j10)) {
            return null;
        }
        if (ttVar != null) {
            if (ttVar.f19875n != null) {
                return null;
            }
        } else {
            ttVar = new tt(str);
            this.f19866u.put(str, ttVar);
        }
        C0431c c0431c = new C0431c(ttVar);
        ttVar.f19875n = c0431c;
        this.f19865t.write("DIRTY " + str + '\n');
        this.f19865t.flush();
        return c0431c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c(C0431c c0431c, boolean z10) throws IOException {
        tt ttVar = c0431c.tt;
        if (ttVar.f19875n == c0431c) {
            if (z10 && !ttVar.uj) {
                for (int i10 = 0; i10 < this.f19861da; i10++) {
                    if (c0431c.ve[i10]) {
                        if (!ttVar.tt(i10).exists()) {
                            c0431c.tt();
                            return;
                        }
                    } else {
                        c0431c.tt();
                        throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i10)));
                    }
                }
            }
            for (int i11 = 0; i11 < this.f19861da; i11++) {
                File fileTt = ttVar.tt(i11);
                if (z10) {
                    if (fileTt.exists()) {
                        File fileC = ttVar.c(i11);
                        fileTt.renameTo(fileC);
                        long j10 = ttVar.ve[i11];
                        long length = fileC.length();
                        ttVar.ve[i11] = length;
                        this.sl = (this.sl - j10) + length;
                    }
                } else {
                    c(fileTt);
                }
            }
            this.yp++;
            ttVar.f19875n = null;
            if (!(ttVar.uj | z10)) {
                this.f19866u.remove(ttVar.tt);
                this.f19865t.write("REMOVE " + ttVar.tt + '\n');
            } else {
                ttVar.uj = true;
                this.f19865t.write("CLEAN " + ttVar.tt + ttVar.c() + '\n');
                if (z10) {
                    long j11 = this.f19863m;
                    this.f19863m = 1 + j11;
                    ttVar.f19873a = j11;
                }
            }
            this.f19865t.flush();
            if (this.sl > this.f19862i || n()) {
                this.tt.submit(this.nu);
            }
            return;
        }
        throw new IllegalStateException();
    }

    public synchronized void c() throws IOException {
        a();
        sp();
        this.f19865t.flush();
    }

    public void c(long j10) {
        this.f19868z = j10;
        this.tt.submit(this.nu);
    }
}
