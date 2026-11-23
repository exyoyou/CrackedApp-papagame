package net.lingala.zip4j.unzip;

import com.join.mgps.Util.o0;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.zip.CRC32;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.util.f;
import pc.h;
import pc.i;
import pc.k;
import pc.o;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private o f94670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f94671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f94672c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private i f94673d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private net.lingala.zip4j.crypto.c f94674e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CRC32 f94675f;

    public d(o oVar, h hVar) throws ZipException {
        if (oVar == null || hVar == null) {
            throw new ZipException("Invalid parameters passed to StoreUnzip. One or more of the parameters were null");
        }
        this.f94670a = oVar;
        this.f94671b = hVar;
        this.f94675f = new CRC32();
    }

    private int a(pc.a aVar) throws ZipException {
        if (aVar == null) {
            throw new ZipException("unable to determine salt length: AESExtraDataRecord is null");
        }
        int iA = aVar.a();
        if (iA == 1) {
            return 8;
        }
        if (iA == 2) {
            return 12;
        }
        if (iA == 3) {
            return 16;
        }
        throw new ZipException("unable to determine salt length: invalid aes key strength");
    }

    private boolean c() throws ZipException {
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                RandomAccessFile randomAccessFileD = d();
                if (randomAccessFileD == null) {
                    randomAccessFileD = new RandomAccessFile(new File(this.f94670a.m()), "r");
                }
                i iVarO = new mc.a(randomAccessFileD).o(this.f94671b);
                this.f94673d = iVarO;
                if (iVarO == null) {
                    throw new ZipException("error reading local file header. Is this a valid zip file?");
                }
                if (iVarO.c() != this.f94671b.f()) {
                    try {
                        randomAccessFileD.close();
                        return false;
                    } catch (IOException | Exception unused) {
                        return false;
                    }
                }
                try {
                    randomAccessFileD.close();
                    return true;
                } catch (IOException | Exception unused2) {
                    return true;
                }
            } catch (FileNotFoundException e10) {
                throw new ZipException(e10);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    randomAccessFile.close();
                } catch (IOException | Exception unused3) {
                }
            }
            throw th;
        }
    }

    private RandomAccessFile d() throws ZipException {
        String string;
        if (!this.f94670a.p()) {
            return null;
        }
        int i10 = this.f94671b.i();
        int i11 = i10 + 1;
        this.f94672c = i11;
        String strM = this.f94670a.m();
        if (i10 == this.f94670a.f().d()) {
            string = this.f94670a.m();
        } else if (i10 >= 9) {
            StringBuffer stringBuffer = new StringBuffer(String.valueOf(strM.substring(0, strM.lastIndexOf(o0.f49827a))));
            stringBuffer.append(".z");
            stringBuffer.append(i11);
            string = stringBuffer.toString();
        } else {
            StringBuffer stringBuffer2 = new StringBuffer(String.valueOf(strM.substring(0, strM.lastIndexOf(o0.f49827a))));
            stringBuffer2.append(".z0");
            stringBuffer2.append(i11);
            string = stringBuffer2.toString();
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(string, "r");
            if (this.f94672c == 1) {
                byte[] bArr = new byte[4];
                randomAccessFile.read(bArr);
                if (f.e(bArr, 0) != 134695760) {
                    throw new ZipException("invalid first part split file signature");
                }
            }
            return randomAccessFile;
        } catch (FileNotFoundException e10) {
            throw new ZipException(e10);
        } catch (IOException e11) {
            throw new ZipException(e11);
        }
    }

    private void e(InputStream inputStream, OutputStream outputStream) throws ZipException {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e10) {
                if (net.lingala.zip4j.util.h.A(e10.getMessage()) && e10.getMessage().indexOf(" - Wrong Password?") >= 0) {
                    throw new ZipException(e10.getMessage());
                }
                if (outputStream == null) {
                    return;
                }
            } finally {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException unused) {
                    }
                }
            }
        }
    }

    private RandomAccessFile f(String str) throws ZipException {
        o oVar = this.f94670a;
        if (oVar == null || !net.lingala.zip4j.util.h.A(oVar.m())) {
            throw new ZipException("input parameter is null in getFilePointer");
        }
        try {
            return this.f94670a.p() ? d() : new RandomAccessFile(new File(this.f94670a.m()), str);
        } catch (FileNotFoundException e10) {
            throw new ZipException(e10);
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private byte[] g(RandomAccessFile randomAccessFile) throws ZipException {
        try {
            byte[] bArr = new byte[2];
            randomAccessFile.read(bArr);
            return bArr;
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    private byte[] h(RandomAccessFile randomAccessFile) throws ZipException {
        if (this.f94673d.a() == null) {
            return null;
        }
        try {
            byte[] bArr = new byte[a(this.f94673d.a())];
            randomAccessFile.seek(this.f94673d.n());
            randomAccessFile.read(bArr);
            return bArr;
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    private String m(String str, String str2) throws ZipException {
        if (!net.lingala.zip4j.util.h.A(str2)) {
            str2 = this.f94671b.p();
        }
        StringBuffer stringBuffer = new StringBuffer(String.valueOf(str));
        stringBuffer.append(System.getProperty("file.separator"));
        stringBuffer.append(str2);
        return stringBuffer.toString();
    }

    private FileOutputStream n(String str, String str2) throws ZipException {
        if (!net.lingala.zip4j.util.h.A(str)) {
            throw new ZipException("invalid output path");
        }
        try {
            File file = new File(m(str, str2));
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            if (file.exists()) {
                file.delete();
            }
            return new FileOutputStream(file);
        } catch (FileNotFoundException e10) {
            throw new ZipException(e10);
        }
    }

    private byte[] o(RandomAccessFile randomAccessFile) throws ZipException {
        try {
            byte[] bArr = new byte[12];
            randomAccessFile.seek(this.f94673d.n());
            randomAccessFile.read(bArr, 0, 12);
            return bArr;
        } catch (IOException e10) {
            throw new ZipException(e10);
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private void q(RandomAccessFile randomAccessFile) throws ZipException {
        if (this.f94673d == null) {
            throw new ZipException("local file header is null, cannot initialize input stream");
        }
        try {
            r(randomAccessFile);
        } catch (ZipException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private void r(RandomAccessFile randomAccessFile) throws ZipException {
        i iVar = this.f94673d;
        if (iVar == null) {
            throw new ZipException("local file header is null, cannot init decrypter");
        }
        if (iVar.u()) {
            if (this.f94673d.f() == 0) {
                this.f94674e = new net.lingala.zip4j.crypto.e(this.f94671b, o(randomAccessFile));
            } else {
                if (this.f94673d.f() != 99) {
                    throw new ZipException("unsupported encryption method");
                }
                this.f94674e = new net.lingala.zip4j.crypto.a(this.f94673d, h(randomAccessFile), g(randomAccessFile));
            }
        }
    }

    public void b() throws ZipException {
        h hVar = this.f94671b;
        if (hVar != null) {
            if (hVar.j() != 99) {
                if ((this.f94675f.getValue() & 4294967295L) != this.f94671b.g()) {
                    StringBuffer stringBuffer = new StringBuffer("invalid CRC for file: ");
                    stringBuffer.append(this.f94671b.p());
                    String string = stringBuffer.toString();
                    if (this.f94673d.u() && this.f94673d.f() == 0) {
                        StringBuffer stringBuffer2 = new StringBuffer(String.valueOf(string));
                        stringBuffer2.append(" - Wrong Password?");
                        string = stringBuffer2.toString();
                    }
                    throw new ZipException(string);
                }
                return;
            }
            net.lingala.zip4j.crypto.c cVar = this.f94674e;
            if (cVar == null || !(cVar instanceof net.lingala.zip4j.crypto.a)) {
                return;
            }
            byte[] bArrD = ((net.lingala.zip4j.crypto.a) cVar).d();
            byte[] bArrG = ((net.lingala.zip4j.crypto.a) this.f94674e).g();
            byte[] bArr = new byte[10];
            if (bArrG == null) {
                StringBuffer stringBuffer3 = new StringBuffer("CRC (MAC) check failed for ");
                stringBuffer3.append(this.f94671b.p());
                throw new ZipException(stringBuffer3.toString());
            }
            System.arraycopy(bArrD, 0, bArr, 0, 10);
            if (Arrays.equals(bArr, bArrG)) {
                return;
            }
            StringBuffer stringBuffer4 = new StringBuffer("invalid CRC (MAC) for file: ");
            stringBuffer4.append(this.f94671b.p());
            throw new ZipException(stringBuffer4.toString());
        }
    }

    public net.lingala.zip4j.crypto.c i() {
        return this.f94674e;
    }

    public h j() {
        return this.f94671b;
    }

    public net.lingala.zip4j.io.h k() throws ZipException {
        long jF;
        if (this.f94671b == null) {
            throw new ZipException("file header is null, cannot get inputstream");
        }
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFileF = f("r");
            if (!c()) {
                throw new ZipException("local header and file header do not match");
            }
            q(randomAccessFileF);
            long jB = this.f94673d.b();
            long jN = this.f94673d.n();
            if (this.f94673d.u()) {
                if (this.f94673d.f() == 99) {
                    net.lingala.zip4j.crypto.c cVar = this.f94674e;
                    if (!(cVar instanceof net.lingala.zip4j.crypto.a)) {
                        StringBuffer stringBuffer = new StringBuffer("invalid decryptor when trying to calculate compressed size for AES encrypted file: ");
                        stringBuffer.append(this.f94671b.p());
                        throw new ZipException(stringBuffer.toString());
                    }
                    jB -= (long) ((((net.lingala.zip4j.crypto.a) cVar).f() + ((net.lingala.zip4j.crypto.a) this.f94674e).e()) + 10);
                    jF = ((net.lingala.zip4j.crypto.a) this.f94674e).f() + ((net.lingala.zip4j.crypto.a) this.f94674e).e();
                } else if (this.f94673d.f() == 0) {
                    jF = 12;
                    jB -= 12;
                }
                jN += jF;
            }
            long j10 = jB;
            long j11 = jN;
            int iF = this.f94671b.f();
            if (this.f94671b.j() == 99) {
                if (this.f94671b.d() == null) {
                    StringBuffer stringBuffer2 = new StringBuffer("AESExtraDataRecord does not exist for AES encrypted file: ");
                    stringBuffer2.append(this.f94671b.p());
                    throw new ZipException(stringBuffer2.toString());
                }
                iF = this.f94671b.d().b();
            }
            randomAccessFileF.seek(j11);
            if (iF == 0) {
                return new net.lingala.zip4j.io.h(new net.lingala.zip4j.io.f(randomAccessFileF, j11, j10, this));
            }
            if (iF == 8) {
                return new net.lingala.zip4j.io.h(new net.lingala.zip4j.io.e(randomAccessFileF, j11, j10, this));
            }
            throw new ZipException("compression type not supported");
        } catch (ZipException e10) {
            if (0 != 0) {
                try {
                    randomAccessFile.close();
                } catch (IOException unused) {
                }
            }
            throw e10;
        } catch (Exception e11) {
            if (0 != 0) {
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
            }
            throw new ZipException(e11);
        }
    }

    public i l() {
        return this.f94673d;
    }

    public o p() {
        return this.f94670a;
    }

    public RandomAccessFile s() throws IOException {
        String string;
        String strM = this.f94670a.m();
        if (this.f94672c == this.f94670a.f().d()) {
            string = this.f94670a.m();
        } else if (this.f94672c >= 9) {
            StringBuffer stringBuffer = new StringBuffer(String.valueOf(strM.substring(0, strM.lastIndexOf(o0.f49827a))));
            stringBuffer.append(".z");
            stringBuffer.append(this.f94672c + 1);
            string = stringBuffer.toString();
        } else {
            StringBuffer stringBuffer2 = new StringBuffer(String.valueOf(strM.substring(0, strM.lastIndexOf(o0.f49827a))));
            stringBuffer2.append(".z0");
            stringBuffer2.append(this.f94672c + 1);
            string = stringBuffer2.toString();
        }
        this.f94672c++;
        try {
            if (net.lingala.zip4j.util.h.c(string)) {
                return new RandomAccessFile(string, "r");
            }
            StringBuffer stringBuffer3 = new StringBuffer("zip split file does not exist: ");
            stringBuffer3.append(string);
            throw new IOException(stringBuffer3.toString());
        } catch (ZipException e10) {
            throw new IOException(e10.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [net.lingala.zip4j.unzip.d] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r9v6 */
    public void t(qc.a aVar, String str, String str2, k kVar) throws ZipException {
        if (this.f94670a == null || this.f94671b == null || !net.lingala.zip4j.util.h.A(str)) {
            throw new ZipException("Invalid parameters passed during unzipping file. One or more of the parameters were null");
        }
        net.lingala.zip4j.io.h hVar = null;
        try {
            try {
                byte[] bArr = new byte[4096];
                net.lingala.zip4j.io.h hVarK = k();
                try {
                    FileOutputStream fileOutputStreamN = n(str, str2);
                    do {
                        int i10 = hVarK.read(bArr);
                        if (i10 == -1) {
                            e(hVarK, fileOutputStreamN);
                            e.b(this.f94671b, new File(m(str, str2)), kVar);
                            e(hVarK, fileOutputStreamN);
                            return;
                        }
                        fileOutputStreamN.write(bArr, 0, i10);
                        aVar.w(i10);
                    } while (!aVar.m());
                    aVar.setResult(3);
                    aVar.u(0);
                    e(hVarK, fileOutputStreamN);
                } catch (IOException e10) {
                    e = e10;
                    throw new ZipException(e);
                } catch (Exception e11) {
                    e = e11;
                    throw new ZipException(e);
                } catch (Throwable th) {
                    th = th;
                    str = 0;
                    hVar = hVarK;
                    e(hVar, str);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e12) {
            e = e12;
        } catch (Exception e13) {
            e = e13;
        } catch (Throwable th3) {
            th = th3;
            str = 0;
        }
    }

    public void u(int i10) {
        this.f94675f.update(i10);
    }

    public void v(byte[] bArr, int i10, int i11) {
        if (bArr != null) {
            this.f94675f.update(bArr, i10, i11);
        }
    }
}
