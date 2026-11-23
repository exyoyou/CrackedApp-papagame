package com.sigmob.sdk.archives.tar;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class b extends com.sigmob.sdk.archives.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f78721b = 256;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f78722c = 8192;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final d f78723a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f78724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f78725e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f78726f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private byte[] f78727g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a f78728h;

    public b(InputStream is) {
        this(is, d.f78732b, 512);
    }

    private byte[] h() throws IOException {
        if (this.f78724d) {
            return null;
        }
        byte[] bArrD = this.f78723a.d();
        if (bArrD == null || this.f78723a.a(bArrD)) {
            this.f78724d = true;
        }
        if (this.f78724d) {
            return null;
        }
        return bArrD;
    }

    private void i() throws IOException {
        int i10;
        int i11;
        InputStreamReader inputStreamReader = new InputStreamReader(this, "UTF-8") { // from class: com.sigmob.sdk.archives.tar.b.1
            @Override // java.io.InputStreamReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }
        };
        HashMap map = new HashMap();
        do {
            int i12 = 0;
            int i13 = 0;
            while (true) {
                try {
                    i10 = inputStreamReader.read();
                    if (i10 == -1) {
                        break;
                    }
                    i12++;
                    if (i10 == 32) {
                        StringBuffer stringBuffer = new StringBuffer();
                        while (true) {
                            i11 = inputStreamReader.read();
                            if (i11 == -1) {
                                break;
                            }
                            i12++;
                            if (i11 == 61) {
                                String string = stringBuffer.toString();
                                int i14 = i13 - i12;
                                char[] cArr = new char[i14];
                                int i15 = inputStreamReader.read(cArr);
                                if (i15 == i14) {
                                    map.put(string, new String(cArr, 0, i14 - 1));
                                    break;
                                }
                                throw new IOException("Failed to read Paxheader. Expected " + i14 + " chars, read " + i15);
                            }
                            stringBuffer.append((char) i11);
                        }
                        i10 = i11;
                        break;
                    }
                    i13 = (i13 * 10) + (i10 - 48);
                } catch (Throwable th) {
                    inputStreamReader.close();
                    throw th;
                }
            }
        } while (i10 != -1);
        inputStreamReader.close();
        a();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if ("path".equals(str)) {
                this.f78728h.a(str2);
            } else if ("linkpath".equals(str)) {
                this.f78728h.b(str2);
            } else if ("gid".equals(str)) {
                this.f78728h.c(Integer.parseInt(str2));
            } else if ("gname".equals(str)) {
                this.f78728h.d(str2);
            } else if ("uid".equals(str)) {
                this.f78728h.b(Integer.parseInt(str2));
            } else if ("uname".equals(str)) {
                this.f78728h.c(str2);
            } else if ("size".equals(str)) {
                this.f78728h.b(Long.parseLong(str2));
            }
        }
    }

    private void j() throws IOException {
        byte[] bArrH;
        if (this.f78728h.m()) {
            do {
                bArrH = h();
                if (this.f78724d) {
                    this.f78728h = null;
                    return;
                }
            } while (new c(bArrH).a());
        }
    }

    @Override // com.sigmob.sdk.archives.c
    public com.sigmob.sdk.archives.a a() throws IOException {
        return e();
    }

    @Override // java.io.InputStream
    public int available() {
        long j10 = this.f78725e;
        long j11 = this.f78726f;
        if (j10 - j11 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) (j10 - j11);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f78723a.h();
    }

    public int d() {
        return this.f78723a.b();
    }

    public a e() throws IOException {
        if (this.f78724d) {
            return null;
        }
        if (this.f78728h != null) {
            long j10 = this.f78725e;
            long jSkip = this.f78726f;
            while (true) {
                j10 -= jSkip;
                if (j10 <= 0) {
                    this.f78727g = null;
                    break;
                }
                jSkip = skip(j10);
                if (jSkip <= 0) {
                    throw new RuntimeException("failed to skip current tar entry");
                }
            }
        }
        byte[] bArrH = h();
        if (this.f78724d) {
            this.f78728h = null;
            return null;
        }
        a aVar = new a(bArrH);
        this.f78728h = aVar;
        this.f78726f = 0L;
        this.f78725e = aVar.b();
        if (this.f78728h.p()) {
            StringBuffer stringBuffer = new StringBuffer();
            byte[] bArr = new byte[256];
            while (true) {
                int i10 = read(bArr);
                if (i10 < 0) {
                    break;
                }
                stringBuffer.append(new String(bArr, 0, i10));
            }
            a();
            if (this.f78728h == null) {
                return null;
            }
            if (stringBuffer.length() > 0 && stringBuffer.charAt(stringBuffer.length() - 1) == 0) {
                stringBuffer.deleteCharAt(stringBuffer.length() - 1);
            }
            this.f78728h.a(stringBuffer.toString());
        }
        if (this.f78728h.q()) {
            i();
        }
        if (this.f78728h.o()) {
            j();
        }
        return this.f78728h;
    }

    protected final a f() {
        return this.f78728h;
    }

    protected final boolean g() {
        return this.f78724d;
    }

    @Override // java.io.InputStream
    public int read(byte[] buf, int offset, int numToRead) throws IOException {
        int i10;
        long j10 = this.f78726f;
        long j11 = this.f78725e;
        if (j10 >= j11) {
            return -1;
        }
        if (((long) numToRead) + j10 > j11) {
            numToRead = (int) (j11 - j10);
        }
        byte[] bArr = this.f78727g;
        if (bArr != null) {
            int length = numToRead > bArr.length ? bArr.length : numToRead;
            System.arraycopy(bArr, 0, buf, offset, length);
            byte[] bArr2 = this.f78727g;
            if (length >= bArr2.length) {
                this.f78727g = null;
            } else {
                int length2 = bArr2.length - length;
                byte[] bArr3 = new byte[length2];
                System.arraycopy(bArr2, length, bArr3, 0, length2);
                this.f78727g = bArr3;
            }
            i10 = length + 0;
            numToRead -= length;
            offset += length;
        } else {
            i10 = 0;
        }
        while (numToRead > 0) {
            byte[] bArrD = this.f78723a.d();
            if (bArrD == null) {
                throw new IOException("unexpected EOF with " + numToRead + " bytes unread. Occured at byte: " + c());
            }
            a(bArrD.length);
            int length3 = bArrD.length;
            if (length3 > numToRead) {
                System.arraycopy(bArrD, 0, buf, offset, numToRead);
                int i11 = length3 - numToRead;
                byte[] bArr4 = new byte[i11];
                this.f78727g = bArr4;
                System.arraycopy(bArrD, numToRead, bArr4, 0, i11);
                length3 = numToRead;
            } else {
                System.arraycopy(bArrD, 0, buf, offset, length3);
            }
            i10 += length3;
            numToRead -= length3;
            offset += length3;
        }
        this.f78726f += (long) i10;
        return i10;
    }

    @Override // java.io.InputStream
    public synchronized void reset() {
    }

    @Override // java.io.InputStream
    public long skip(long numToSkip) throws IOException {
        byte[] bArr = new byte[8192];
        long j10 = numToSkip;
        while (j10 > 0) {
            long j11 = 8192;
            if (j10 <= j11) {
                j11 = j10;
            }
            int i10 = read(bArr, 0, (int) j11);
            if (i10 == -1) {
                break;
            }
            j10 -= (long) i10;
        }
        return numToSkip - j10;
    }

    public b(InputStream is, int blockSize) {
        this(is, blockSize, 512);
    }

    protected final void a(a e10) {
        this.f78728h = e10;
    }

    public b(InputStream is, int blockSize, int recordSize) {
        this.f78723a = new d(is, blockSize, recordSize);
        this.f78727g = null;
        this.f78724d = false;
    }

    protected final void a(boolean b10) {
        this.f78724d = b10;
    }

    @Override // com.sigmob.sdk.archives.c
    public boolean a(com.sigmob.sdk.archives.a ae) {
        if (ae instanceof a) {
            return !((a) ae).o();
        }
        return false;
    }

    public static boolean a(byte[] signature, int length) {
        if (length < 265) {
            return false;
        }
        if (com.sigmob.sdk.archives.utils.a.a("ustar\u0000", signature, 257, 6) && com.sigmob.sdk.archives.utils.a.a(e.V, signature, 263, 2)) {
            return true;
        }
        if (com.sigmob.sdk.archives.utils.a.a(e.W, signature, 257, 6) && (com.sigmob.sdk.archives.utils.a.a(e.X, signature, 263, 2) || com.sigmob.sdk.archives.utils.a.a(e.Y, signature, 263, 2))) {
            return true;
        }
        return com.sigmob.sdk.archives.utils.a.a("ustar\u0000", signature, 257, 6) && com.sigmob.sdk.archives.utils.a.a(e.f78742aa, signature, 263, 2);
    }
}
