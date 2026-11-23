package net.lingala.zip4j.io;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.zip.CRC32;
import net.lingala.zip4j.exception.ZipException;
import pc.o;
import pc.p;

/* JADX INFO: loaded from: classes.dex */
public class c extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected OutputStream f94619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private File f94620c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected pc.h f94621d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected pc.i f94622e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private net.lingala.zip4j.crypto.d f94623f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected p f94624g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected o f94625h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f94626i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected CRC32 f94627j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f94628k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private byte[] f94629l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f94630m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f94631n;

    public c(OutputStream outputStream, o oVar) {
        this.f94619b = outputStream;
        p(oVar);
        this.f94627j = new CRC32();
        this.f94626i = 0L;
        this.f94628k = 0L;
        this.f94629l = new byte[16];
        this.f94630m = 0;
        this.f94631n = 0L;
    }

    private void d() throws ZipException {
        String strX;
        int i10;
        pc.h hVar = new pc.h();
        this.f94621d = hVar;
        hVar.c0(33639248);
        this.f94621d.e0(20);
        this.f94621d.f0(20);
        if (this.f94624g.l() && this.f94624g.f() == 99) {
            this.f94621d.H(99);
            this.f94621d.F(i(this.f94624g));
        } else {
            this.f94621d.H(this.f94624g.d());
        }
        if (this.f94624g.l()) {
            this.f94621d.N(true);
            this.f94621d.O(this.f94624g.f());
        }
        if (this.f94624g.p()) {
            this.f94621d.Z((int) net.lingala.zip4j.util.h.D(System.currentTimeMillis()));
            if (!net.lingala.zip4j.util.h.A(this.f94624g.g())) {
                throw new ZipException("fileNameInZip is null or empty");
            }
            strX = this.f94624g.g();
        } else {
            this.f94621d.Z((int) net.lingala.zip4j.util.h.D(net.lingala.zip4j.util.h.w(this.f94620c, this.f94624g.k())));
            this.f94621d.d0(this.f94620c.length());
            strX = net.lingala.zip4j.util.h.x(this.f94620c.getAbsolutePath(), this.f94624g.i(), this.f94624g.e());
        }
        if (!net.lingala.zip4j.util.h.A(strX)) {
            throw new ZipException("fileName is null or empty. unable to create file header");
        }
        this.f94621d.U(strX);
        if (net.lingala.zip4j.util.h.A(this.f94625h.g())) {
            this.f94621d.V(net.lingala.zip4j.util.h.o(strX, this.f94625h.g()));
        } else {
            this.f94621d.V(net.lingala.zip4j.util.h.n(strX));
        }
        OutputStream outputStream = this.f94619b;
        if (outputStream instanceof g) {
            this.f94621d.M(((g) outputStream).b());
        } else {
            this.f94621d.M(0);
        }
        byte[] bArr = new byte[4];
        bArr[0] = (byte) (!this.f94624g.p() ? k(this.f94620c) : 0);
        this.f94621d.P(bArr);
        if (this.f94624g.p()) {
            this.f94621d.L(strX.endsWith(net.lingala.zip4j.util.e.F0) || strX.endsWith("\\"));
        } else {
            this.f94621d.L(this.f94620c.isDirectory());
        }
        if (this.f94621d.C()) {
            this.f94621d.G(0L);
            this.f94621d.d0(0L);
        } else if (!this.f94624g.p()) {
            long jR = net.lingala.zip4j.util.h.r(this.f94620c);
            if (this.f94624g.d() != 0) {
                this.f94621d.G(0L);
            } else if (this.f94624g.f() == 0) {
                this.f94621d.G(12 + jR);
            } else if (this.f94624g.f() == 99) {
                int iA = this.f94624g.a();
                if (iA == 1) {
                    i10 = 8;
                } else {
                    if (iA != 3) {
                        throw new ZipException("invalid aes key strength, cannot determine key sizes");
                    }
                    i10 = 16;
                }
                this.f94621d.G(((long) i10) + jR + 10 + 2);
            } else {
                this.f94621d.G(0L);
            }
            this.f94621d.d0(jR);
        }
        if (this.f94624g.l() && this.f94624g.f() == 0) {
            this.f94621d.I(this.f94624g.j());
        }
        byte[] bArr2 = new byte[2];
        bArr2[0] = net.lingala.zip4j.util.f.a(j(this.f94621d.D(), this.f94624g.d()));
        boolean zA = net.lingala.zip4j.util.h.A(this.f94625h.g());
        if (!(zA && this.f94625h.g().equalsIgnoreCase(net.lingala.zip4j.util.e.A0)) && (zA || !net.lingala.zip4j.util.h.i(this.f94621d.p()).equals(net.lingala.zip4j.util.e.A0))) {
            bArr2[1] = 0;
        } else {
            bArr2[1] = 8;
        }
        this.f94621d.X(bArr2);
    }

    private void e() throws ZipException {
        if (this.f94621d == null) {
            throw new ZipException("file header is null, cannot create local file header");
        }
        pc.i iVar = new pc.i();
        this.f94622e = iVar;
        iVar.P(67324752);
        this.f94622e.R(this.f94621d.z());
        this.f94622e.z(this.f94621d.f());
        this.f94622e.M(this.f94621d.t());
        this.f94622e.Q(this.f94621d.x());
        this.f94622e.J(this.f94621d.q());
        this.f94622e.I(this.f94621d.p());
        this.f94622e.D(this.f94621d.D());
        this.f94622e.E(this.f94621d.j());
        this.f94622e.x(this.f94621d.d());
        this.f94622e.A(this.f94621d.g());
        this.f94622e.y(this.f94621d.e());
        this.f94622e.L((byte[]) this.f94621d.r().clone());
    }

    private void g(byte[] bArr, int i10, int i11) throws IOException {
        net.lingala.zip4j.crypto.d dVar = this.f94623f;
        if (dVar != null) {
            try {
                dVar.a(bArr, i10, i11);
            } catch (ZipException e10) {
                throw new IOException(e10.getMessage());
            }
        }
        this.f94619b.write(bArr, i10, i11);
        long j10 = i11;
        this.f94626i += j10;
        this.f94628k += j10;
    }

    private pc.a i(p pVar) throws ZipException {
        if (pVar == null) {
            throw new ZipException("zip parameters are null, cannot generate AES Extra Data record");
        }
        pc.a aVar = new pc.a();
        aVar.j(39169L);
        aVar.i(7);
        aVar.k("AE");
        aVar.l(2);
        if (pVar.a() == 1) {
            aVar.g(1);
        } else {
            if (pVar.a() != 3) {
                throw new ZipException("invalid AES key strength, cannot generate AES Extra data record");
            }
            aVar.g(3);
        }
        aVar.h(pVar.d());
        return aVar;
    }

    private int[] j(boolean z10, int i10) {
        int[] iArr = new int[8];
        if (z10) {
            iArr[0] = 1;
        } else {
            iArr[0] = 0;
        }
        if (i10 != 8) {
            iArr[1] = 0;
            iArr[2] = 0;
        }
        iArr[3] = 1;
        return iArr;
    }

    private int k(File file) throws ZipException {
        if (file == null) {
            throw new ZipException("input file is null, cannot get file attributes");
        }
        if (!file.exists()) {
            return 0;
        }
        if (file.isDirectory()) {
            return file.isHidden() ? 18 : 16;
        }
        if (!file.canWrite() && file.isHidden()) {
            return 3;
        }
        if (file.canWrite()) {
            return file.isHidden() ? 2 : 0;
        }
        return 1;
    }

    private void o() throws ZipException {
        if (!this.f94624g.l()) {
            this.f94623f = null;
            return;
        }
        int iF = this.f94624g.f();
        if (iF == 0) {
            this.f94623f = new net.lingala.zip4j.crypto.f(this.f94624g.h(), (this.f94622e.m() & 65535) << 16);
        } else {
            if (iF != 99) {
                throw new ZipException("invalid encprytion method");
            }
            this.f94623f = new net.lingala.zip4j.crypto.b(this.f94624g.h(), this.f94624g.a());
        }
    }

    private void p(o oVar) {
        if (oVar == null) {
            this.f94625h = new o();
        } else {
            this.f94625h = oVar;
        }
        if (this.f94625h.f() == null) {
            this.f94625h.v(new pc.f());
        }
        if (this.f94625h.b() == null) {
            this.f94625h.s(new pc.c());
        }
        if (this.f94625h.b().b() == null) {
            this.f94625h.b().d(new ArrayList());
        }
        if (this.f94625h.h() == null) {
            this.f94625h.x(new ArrayList());
        }
        OutputStream outputStream = this.f94619b;
        if ((outputStream instanceof g) && ((g) outputStream).h()) {
            this.f94625h.z(true);
            this.f94625h.A(((g) this.f94619b).e());
        }
        this.f94625h.f().q(net.lingala.zip4j.util.e.f94691d);
    }

    public void b() throws ZipException, IOException {
        int i10 = this.f94630m;
        if (i10 != 0) {
            g(this.f94629l, 0, i10);
            this.f94630m = 0;
        }
        if (this.f94624g.l() && this.f94624g.f() == 99) {
            net.lingala.zip4j.crypto.d dVar = this.f94623f;
            if (!(dVar instanceof net.lingala.zip4j.crypto.b)) {
                throw new ZipException("invalid encrypter for AES encrypted file");
            }
            this.f94619b.write(((net.lingala.zip4j.crypto.b) dVar).f());
            this.f94628k += 10;
            this.f94626i += 10;
        }
        this.f94621d.G(this.f94628k);
        this.f94622e.y(this.f94628k);
        if (this.f94624g.p()) {
            this.f94621d.d0(this.f94631n);
            long jQ = this.f94622e.q();
            long j10 = this.f94631n;
            if (jQ != j10) {
                this.f94622e.Q(j10);
            }
        }
        long value = this.f94627j.getValue();
        if (this.f94621d.D() && this.f94621d.j() == 99) {
            value = 0;
        }
        if (this.f94624g.l() && this.f94624g.f() == 99) {
            this.f94621d.I(0L);
            this.f94622e.A(0L);
        } else {
            this.f94621d.I(value);
            this.f94622e.A(value);
        }
        this.f94625h.h().add(this.f94622e);
        this.f94625h.b().b().add(this.f94621d);
        this.f94626i += (long) new mc.b().k(this.f94622e, this.f94619b);
        this.f94627j.reset();
        this.f94628k = 0L;
        this.f94623f = null;
        this.f94631n = 0L;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        OutputStream outputStream = this.f94619b;
        if (outputStream != null) {
            outputStream.close();
        }
    }

    public void f(int i10) {
        if (i10 <= 0) {
            return;
        }
        long j10 = i10;
        long j11 = this.f94628k;
        if (j10 <= j11) {
            this.f94628k = j11 - j10;
        }
    }

    public void h() throws ZipException, IOException {
        this.f94625h.f().p(this.f94626i);
        new mc.b().d(this.f94625h, this.f94619b);
    }

    public File l() {
        return this.f94620c;
    }

    public void q(File file, p pVar) throws ZipException {
        if (!pVar.p() && file == null) {
            throw new ZipException("input file is null");
        }
        if (!pVar.p() && !net.lingala.zip4j.util.h.b(file)) {
            throw new ZipException("input file does not exist");
        }
        try {
            this.f94620c = file;
            this.f94624g = (p) pVar.clone();
            if (pVar.p()) {
                if (!net.lingala.zip4j.util.h.A(this.f94624g.g())) {
                    throw new ZipException("file name is empty for external stream");
                }
                if (this.f94624g.g().endsWith(net.lingala.zip4j.util.e.F0) || this.f94624g.g().endsWith("\\")) {
                    this.f94624g.u(false);
                    this.f94624g.v(-1);
                    this.f94624g.s(0);
                }
            } else if (this.f94620c.isDirectory()) {
                this.f94624g.u(false);
                this.f94624g.v(-1);
                this.f94624g.s(0);
            }
            d();
            e();
            if (this.f94625h.p() && (this.f94625h.b() == null || this.f94625h.b().b() == null || this.f94625h.b().b().size() == 0)) {
                byte[] bArr = new byte[4];
                net.lingala.zip4j.util.f.l(bArr, 0, 134695760);
                this.f94619b.write(bArr);
                this.f94626i += 4;
            }
            OutputStream outputStream = this.f94619b;
            if (!(outputStream instanceof g)) {
                long j10 = this.f94626i;
                if (j10 == 4) {
                    this.f94621d.a0(4L);
                } else {
                    this.f94621d.a0(j10);
                }
            } else if (this.f94626i == 4) {
                this.f94621d.a0(4L);
            } else {
                this.f94621d.a0(((g) outputStream).d());
            }
            this.f94626i += (long) new mc.b().m(this.f94625h, this.f94622e, this.f94619b);
            if (this.f94624g.l()) {
                o();
                if (this.f94623f != null) {
                    if (pVar.f() == 0) {
                        byte[] bArrE = ((net.lingala.zip4j.crypto.f) this.f94623f).e();
                        this.f94619b.write(bArrE);
                        this.f94626i += (long) bArrE.length;
                        this.f94628k += (long) bArrE.length;
                    } else if (pVar.f() == 99) {
                        byte[] bArrH = ((net.lingala.zip4j.crypto.b) this.f94623f).h();
                        byte[] bArrE2 = ((net.lingala.zip4j.crypto.b) this.f94623f).e();
                        this.f94619b.write(bArrH);
                        this.f94619b.write(bArrE2);
                        this.f94626i += (long) (bArrH.length + bArrE2.length);
                        this.f94628k += (long) (bArrH.length + bArrE2.length);
                    }
                }
            }
            this.f94627j.reset();
        } catch (CloneNotSupportedException e10) {
            throw new ZipException(e10);
        } catch (ZipException e11) {
            throw e11;
        } catch (Exception e12) {
            throw new ZipException(e12);
        }
    }

    public void s(File file) {
        this.f94620c = file;
    }

    protected void t(int i10) {
        if (i10 > 0) {
            this.f94631n += (long) i10;
        }
    }

    @Override // net.lingala.zip4j.io.b, java.io.OutputStream
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        bArr.getClass();
        if (bArr.length == 0) {
            return;
        }
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (i11 == 0) {
            return;
        }
        if (this.f94624g.l() && this.f94624g.f() == 99) {
            int i13 = this.f94630m;
            if (i13 != 0) {
                if (i11 >= 16 - i13) {
                    System.arraycopy(bArr, i10, this.f94629l, i13, 16 - i13);
                    byte[] bArr2 = this.f94629l;
                    g(bArr2, 0, bArr2.length);
                    i10 = 16 - this.f94630m;
                    i11 -= i10;
                    this.f94630m = 0;
                } else {
                    System.arraycopy(bArr, i10, this.f94629l, i13, i11);
                    this.f94630m += i11;
                    return;
                }
            }
            if (i11 != 0 && (i12 = i11 % 16) != 0) {
                System.arraycopy(bArr, (i11 + i10) - i12, this.f94629l, 0, i12);
                this.f94630m = i12;
                i11 -= i12;
            }
        }
        if (i11 != 0) {
            g(bArr, i10, i11);
        }
    }
}
