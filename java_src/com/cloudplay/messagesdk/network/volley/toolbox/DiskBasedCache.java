package com.cloudplay.messagesdk.network.volley.toolbox;

import android.os.SystemClock;
import android.text.TextUtils;
import com.cloudplay.messagesdk.network.volley.Cache;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class DiskBasedCache implements Cache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, a> f24064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f24065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final FileSupplier f24066c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f24067d;

    public interface FileSupplier {
        File get();
    }

    public DiskBasedCache(FileSupplier fileSupplier, int i10) {
        this.f24064a = new LinkedHashMap(16, 0.75f, true);
        this.f24065b = 0L;
        this.f24066c = fileSupplier;
        this.f24067d = i10;
    }

    private String b(String str) {
        int length = str.length() / 2;
        return String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode());
    }

    private void c(String str) {
        a aVarRemove = this.f24064a.remove(str);
        if (aVarRemove != null) {
            this.f24065b -= aVarRemove.f24068a;
        }
    }

    public File a(String str) {
        return new File(this.f24066c.get(), b(str));
    }

    @Override // com.cloudplay.messagesdk.network.volley.Cache
    public synchronized void clear() {
        File[] fileArrListFiles = this.f24066c.get().listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                file.delete();
            }
        }
        this.f24064a.clear();
        this.f24065b = 0L;
        com.cloudplay.messagesdk.network.volley.g.b("Cache cleared.", new Object[0]);
    }

    @Override // com.cloudplay.messagesdk.network.volley.Cache
    public synchronized Cache.a get(String str) {
        a aVar = this.f24064a.get(str);
        if (aVar == null) {
            return null;
        }
        File fileA = a(str);
        try {
            b bVar = new b(new BufferedInputStream(a(fileA)), fileA.length());
            try {
                a aVarA = a.a(bVar);
                if (TextUtils.equals(str, aVarA.f24069b)) {
                    Cache.a aVarA2 = aVar.a(a(bVar, bVar.a()));
                    bVar.close();
                    return aVarA2;
                }
                com.cloudplay.messagesdk.network.volley.g.b("%s: key=%s, found=%s", fileA.getAbsolutePath(), str, aVarA.f24069b);
                c(str);
                bVar.close();
                return null;
            } catch (Throwable th) {
                bVar.close();
                throw th;
            }
        } catch (IOException e10) {
            com.cloudplay.messagesdk.network.volley.g.b("%s: %s", fileA.getAbsolutePath(), e10.toString());
            remove(str);
            return null;
        }
    }

    @Override // com.cloudplay.messagesdk.network.volley.Cache
    public synchronized void initialize() {
        File file = this.f24066c.get();
        if (!file.exists()) {
            if (!file.mkdirs()) {
                com.cloudplay.messagesdk.network.volley.g.c("Unable to create cache dir %s", file.getAbsolutePath());
            }
            return;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            try {
                long length = file2.length();
                b bVar = new b(new BufferedInputStream(a(file2)), length);
                try {
                    a aVarA = a.a(bVar);
                    aVarA.f24068a = length;
                    a(aVarA.f24069b, aVarA);
                    bVar.close();
                } catch (Throwable th) {
                    bVar.close();
                    throw th;
                }
            } catch (IOException unused) {
                file2.delete();
            }
        }
    }

    @Override // com.cloudplay.messagesdk.network.volley.Cache
    public synchronized void invalidate(String str, boolean z10) {
        Cache.a aVar = get(str);
        if (aVar != null) {
            aVar.f23977f = 0L;
            if (z10) {
                aVar.f23976e = 0L;
            }
            put(str, aVar);
        }
    }

    @Override // com.cloudplay.messagesdk.network.volley.Cache
    public synchronized void put(String str, Cache.a aVar) {
        long j10 = this.f24065b;
        byte[] bArr = aVar.f23972a;
        long length = j10 + ((long) bArr.length);
        int i10 = this.f24067d;
        if (length > i10 && bArr.length > i10 * 0.9f) {
            return;
        }
        File fileA = a(str);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(b(fileA));
            a aVar2 = new a(str, aVar);
            if (!aVar2.a(bufferedOutputStream)) {
                bufferedOutputStream.close();
                com.cloudplay.messagesdk.network.volley.g.b("Failed to write header for %s", fileA.getAbsolutePath());
                throw new IOException();
            }
            bufferedOutputStream.write(aVar.f23972a);
            bufferedOutputStream.close();
            aVar2.f24068a = fileA.length();
            a(str, aVar2);
            b();
        } catch (IOException unused) {
            if (!fileA.delete()) {
                com.cloudplay.messagesdk.network.volley.g.b("Could not clean up file %s", fileA.getAbsolutePath());
            }
            a();
        }
    }

    @Override // com.cloudplay.messagesdk.network.volley.Cache
    public synchronized void remove(String str) {
        boolean zDelete = a(str).delete();
        c(str);
        if (!zDelete) {
            com.cloudplay.messagesdk.network.volley.g.b("Could not delete cache entry for key=%s, filename=%s", str, b(str));
        }
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f24068a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f24069b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f24070c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final long f24071d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final long f24072e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final long f24073f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final long f24074g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final List<com.cloudplay.messagesdk.network.volley.d> f24075h;

        private a(String str, String str2, long j10, long j11, long j12, long j13, List<com.cloudplay.messagesdk.network.volley.d> list) {
            this.f24069b = str;
            this.f24070c = "".equals(str2) ? null : str2;
            this.f24071d = j10;
            this.f24072e = j11;
            this.f24073f = j12;
            this.f24074g = j13;
            this.f24075h = list;
        }

        private static List<com.cloudplay.messagesdk.network.volley.d> a(Cache.a aVar) {
            List<com.cloudplay.messagesdk.network.volley.d> list = aVar.f23979h;
            return list != null ? list : f.a(aVar.f23978g);
        }

        static a a(b bVar) throws IOException {
            if (DiskBasedCache.b((InputStream) bVar) == 538247942) {
                return new a(DiskBasedCache.b(bVar), DiskBasedCache.b(bVar), DiskBasedCache.c(bVar), DiskBasedCache.c(bVar), DiskBasedCache.c(bVar), DiskBasedCache.c(bVar), DiskBasedCache.a(bVar));
            }
            throw new IOException();
        }

        a(String str, Cache.a aVar) {
            this(str, aVar.f23973b, aVar.f23974c, aVar.f23975d, aVar.f23976e, aVar.f23977f, a(aVar));
        }

        Cache.a a(byte[] bArr) {
            Cache.a aVar = new Cache.a();
            aVar.f23972a = bArr;
            aVar.f23973b = this.f24070c;
            aVar.f23974c = this.f24071d;
            aVar.f23975d = this.f24072e;
            aVar.f23976e = this.f24073f;
            aVar.f23977f = this.f24074g;
            aVar.f23978g = f.a(this.f24075h);
            aVar.f23979h = Collections.unmodifiableList(this.f24075h);
            return aVar;
        }

        boolean a(OutputStream outputStream) {
            try {
                DiskBasedCache.a(outputStream, 538247942);
                DiskBasedCache.a(outputStream, this.f24069b);
                String str = this.f24070c;
                if (str == null) {
                    str = "";
                }
                DiskBasedCache.a(outputStream, str);
                DiskBasedCache.a(outputStream, this.f24071d);
                DiskBasedCache.a(outputStream, this.f24072e);
                DiskBasedCache.a(outputStream, this.f24073f);
                DiskBasedCache.a(outputStream, this.f24074g);
                DiskBasedCache.a(this.f24075h, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e10) {
                com.cloudplay.messagesdk.network.volley.g.b("%s", e10.toString());
                return false;
            }
        }
    }

    static class b extends FilterInputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f24076a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f24077b;

        b(InputStream inputStream, long j10) {
            super(inputStream);
            this.f24076a = j10;
        }

        long a() {
            return this.f24076a - this.f24077b;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int i10 = super.read();
            if (i10 != -1) {
                this.f24077b++;
            }
            return i10;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            int i12 = super.read(bArr, i10, i11);
            if (i12 != -1) {
                this.f24077b += (long) i12;
            }
            return i12;
        }
    }

    private void a() {
        if (this.f24066c.get().exists()) {
            return;
        }
        com.cloudplay.messagesdk.network.volley.g.b("Re-initializing cache after external clearing.", new Object[0]);
        this.f24064a.clear();
        this.f24065b = 0L;
        initialize();
    }

    static long c(InputStream inputStream) throws IOException {
        return ((((long) a(inputStream)) & 255) << 0) | 0 | ((((long) a(inputStream)) & 255) << 8) | ((((long) a(inputStream)) & 255) << 16) | ((((long) a(inputStream)) & 255) << 24) | ((((long) a(inputStream)) & 255) << 32) | ((((long) a(inputStream)) & 255) << 40) | ((((long) a(inputStream)) & 255) << 48) | ((255 & ((long) a(inputStream))) << 56);
    }

    private void b() {
        if (this.f24065b < this.f24067d) {
            return;
        }
        if (com.cloudplay.messagesdk.network.volley.g.f24051b) {
            com.cloudplay.messagesdk.network.volley.g.d("Pruning old cache entries.", new Object[0]);
        }
        long j10 = this.f24065b;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Iterator<Map.Entry<String, a>> it2 = this.f24064a.entrySet().iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            a value = it2.next().getValue();
            if (a(value.f24069b).delete()) {
                this.f24065b -= value.f24068a;
            } else {
                String str = value.f24069b;
                com.cloudplay.messagesdk.network.volley.g.b("Could not delete cache entry for key=%s, filename=%s", str, b(str));
            }
            it2.remove();
            i10++;
            if (this.f24065b < this.f24067d * 0.9f) {
                break;
            }
        }
        if (com.cloudplay.messagesdk.network.volley.g.f24051b) {
            com.cloudplay.messagesdk.network.volley.g.d("pruned %d files, %d bytes, %d ms", Integer.valueOf(i10), Long.valueOf(this.f24065b - j10), Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime));
        }
    }

    public DiskBasedCache(FileSupplier fileSupplier) {
        this(fileSupplier, 5242880);
    }

    private void a(String str, a aVar) {
        if (!this.f24064a.containsKey(str)) {
            this.f24065b += aVar.f24068a;
        } else {
            this.f24065b += aVar.f24068a - this.f24064a.get(str).f24068a;
        }
        this.f24064a.put(str, aVar);
    }

    static byte[] a(b bVar, long j10) throws IOException {
        long jA = bVar.a();
        if (j10 >= 0 && j10 <= jA) {
            int i10 = (int) j10;
            if (i10 == j10) {
                byte[] bArr = new byte[i10];
                new DataInputStream(bVar).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j10 + ", maxLength=" + jA);
    }

    InputStream a(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }

    private static int a(InputStream inputStream) throws IOException {
        int i10 = inputStream.read();
        if (i10 != -1) {
            return i10;
        }
        throw new EOFException();
    }

    static void a(OutputStream outputStream, int i10) throws IOException {
        outputStream.write((i10 >> 0) & 255);
        outputStream.write((i10 >> 8) & 255);
        outputStream.write((i10 >> 16) & 255);
        outputStream.write((i10 >> 24) & 255);
    }

    static void a(OutputStream outputStream, long j10) throws IOException {
        outputStream.write((byte) (j10 >>> 0));
        outputStream.write((byte) (j10 >>> 8));
        outputStream.write((byte) (j10 >>> 16));
        outputStream.write((byte) (j10 >>> 24));
        outputStream.write((byte) (j10 >>> 32));
        outputStream.write((byte) (j10 >>> 40));
        outputStream.write((byte) (j10 >>> 48));
        outputStream.write((byte) (j10 >>> 56));
    }

    OutputStream b(File file) throws FileNotFoundException {
        return new FileOutputStream(file);
    }

    static int b(InputStream inputStream) throws IOException {
        return (a(inputStream) << 24) | (a(inputStream) << 0) | 0 | (a(inputStream) << 8) | (a(inputStream) << 16);
    }

    static String b(b bVar) throws IOException {
        return new String(a(bVar, c(bVar)), "UTF-8");
    }

    static void a(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    static void a(List<com.cloudplay.messagesdk.network.volley.d> list, OutputStream outputStream) throws IOException {
        if (list != null) {
            a(outputStream, list.size());
            for (com.cloudplay.messagesdk.network.volley.d dVar : list) {
                a(outputStream, dVar.a());
                a(outputStream, dVar.b());
            }
            return;
        }
        a(outputStream, 0);
    }

    static List<com.cloudplay.messagesdk.network.volley.d> a(b bVar) throws IOException {
        int iB = b((InputStream) bVar);
        if (iB >= 0) {
            List<com.cloudplay.messagesdk.network.volley.d> listEmptyList = iB == 0 ? Collections.emptyList() : new ArrayList<>();
            for (int i10 = 0; i10 < iB; i10++) {
                listEmptyList.add(new com.cloudplay.messagesdk.network.volley.d(b(bVar).intern(), b(bVar).intern()));
            }
            return listEmptyList;
        }
        throw new IOException("readHeaderList size=" + iB);
    }
}
