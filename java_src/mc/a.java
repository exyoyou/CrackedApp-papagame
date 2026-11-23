package mc;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.util.e;
import net.lingala.zip4j.util.f;
import okhttp3.internal.ws.WebSocketProtocol;
import pc.g;
import pc.h;
import pc.i;
import pc.l;
import pc.m;
import pc.n;
import pc.o;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RandomAccessFile f94231a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private o f94232b;

    public a(RandomAccessFile randomAccessFile) {
        this.f94231a = randomAccessFile;
    }

    private byte[] a(byte[] bArr) throws ZipException {
        if (bArr == null) {
            throw new ZipException("input parameter is null, cannot expand to 8 bytes");
        }
        if (bArr.length == 4) {
            return new byte[]{bArr[0], bArr[1], bArr[2], bArr[3], 0, 0, 0, 0};
        }
        throw new ZipException("invalid byte length, cannot expand to 8 bytes");
    }

    private pc.a b(ArrayList arrayList) throws ZipException {
        if (arrayList == null) {
            return null;
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            g gVar = (g) arrayList.get(i10);
            if (gVar != null && gVar.b() == 39169) {
                if (gVar.a() == null) {
                    throw new ZipException("corrput AES extra data records");
                }
                pc.a aVar = new pc.a();
                aVar.j(39169L);
                aVar.i(gVar.c());
                byte[] bArrA = gVar.a();
                aVar.l(f.i(bArrA, 0));
                byte[] bArr = new byte[2];
                System.arraycopy(bArrA, 2, bArr, 0, 2);
                aVar.k(new String(bArr));
                aVar.g(bArrA[4] & 255);
                aVar.h(f.i(bArrA, 5));
                return aVar;
            }
        }
        return null;
    }

    private void e(h hVar) throws ZipException {
        pc.a aVarB;
        if (hVar == null) {
            throw new ZipException("file header is null in reading Zip64 Extended Info");
        }
        if (hVar.l() == null || hVar.l().size() <= 0 || (aVarB = b(hVar.l())) == null) {
            return;
        }
        hVar.F(aVarB);
        hVar.O(99);
    }

    private void f(i iVar) throws ZipException {
        pc.a aVarB;
        if (iVar == null) {
            throw new ZipException("file header is null in reading Zip64 Extended Info");
        }
        if (iVar.g() == null || iVar.g().size() <= 0 || (aVarB = b(iVar.g())) == null) {
            return;
        }
        iVar.x(aVarB);
        iVar.E(99);
    }

    private void g(h hVar) throws ZipException {
        if (this.f94231a == null) {
            throw new ZipException("invalid file handler when trying to read extra data record");
        }
        if (hVar == null) {
            throw new ZipException("file header is null");
        }
        int iM = hVar.m();
        if (iM <= 0) {
            return;
        }
        hVar.Q(m(iM));
    }

    private void h(i iVar) throws ZipException {
        if (this.f94231a == null) {
            throw new ZipException("invalid file handler when trying to read extra data record");
        }
        if (iVar == null) {
            throw new ZipException("file header is null");
        }
        int i10 = iVar.i();
        if (i10 <= 0) {
            return;
        }
        iVar.F(m(i10));
    }

    private void i(h hVar) throws ZipException {
        n nVarR;
        if (hVar == null) {
            throw new ZipException("file header is null in reading Zip64 Extended Info");
        }
        if (hVar.l() == null || hVar.l().size() <= 0 || (nVarR = r(hVar.l(), hVar.x(), hVar.e(), hVar.u(), hVar.i())) == null) {
            return;
        }
        hVar.g0(nVarR);
        if (nVarR.f() != -1) {
            hVar.d0(nVarR.f());
        }
        if (nVarR.a() != -1) {
            hVar.G(nVarR.a());
        }
        if (nVarR.d() != -1) {
            hVar.a0(nVarR.d());
        }
        if (nVarR.b() != -1) {
            hVar.M(nVarR.b());
        }
    }

    private void j(i iVar) throws ZipException {
        n nVarR;
        if (iVar == null) {
            throw new ZipException("file header is null in reading Zip64 Extended Info");
        }
        if (iVar.g() == null || iVar.g().size() <= 0 || (nVarR = r(iVar.g(), iVar.q(), iVar.b(), -1L, -1)) == null) {
            return;
        }
        iVar.T(nVarR);
        if (nVarR.f() != -1) {
            iVar.Q(nVarR.f());
        }
        if (nVarR.a() != -1) {
            iVar.y(nVarR.a());
        }
    }

    private pc.c k() throws ZipException {
        if (this.f94231a == null) {
            throw new ZipException("random access file was null", 3);
        }
        if (this.f94232b.f() == null) {
            throw new ZipException("EndCentralRecord was null, maybe a corrupt zip file");
        }
        try {
            pc.c cVar = new pc.c();
            ArrayList arrayList = new ArrayList();
            pc.f fVarF = this.f94232b.f();
            long jF = fVarF.f();
            int i10 = fVarF.i();
            if (this.f94232b.q()) {
                jF = this.f94232b.l().d();
                i10 = (int) this.f94232b.l().h();
            }
            this.f94231a.seek(jF);
            byte[] bArr = new byte[4];
            byte[] bArr2 = new byte[2];
            for (int i11 = 0; i11 < i10; i11++) {
                h hVar = new h();
                n(this.f94231a, bArr);
                int iE = f.e(bArr, 0);
                boolean z10 = true;
                if (iE != e.f94689c) {
                    StringBuffer stringBuffer = new StringBuffer("Expected central directory entry not found (#");
                    stringBuffer.append(i11 + 1);
                    stringBuffer.append(")");
                    throw new ZipException(stringBuffer.toString());
                }
                hVar.c0(iE);
                n(this.f94231a, bArr2);
                hVar.e0(f.i(bArr2, 0));
                n(this.f94231a, bArr2);
                hVar.f0(f.i(bArr2, 0));
                n(this.f94231a, bArr2);
                hVar.W((f.i(bArr2, 0) & 2048) != 0);
                byte b10 = bArr2[0];
                if ((b10 & 1) != 0) {
                    hVar.N(true);
                }
                hVar.X((byte[]) bArr2.clone());
                hVar.K((b10 >> 3) == 1);
                n(this.f94231a, bArr2);
                hVar.H(f.i(bArr2, 0));
                n(this.f94231a, bArr);
                hVar.Z(f.e(bArr, 0));
                n(this.f94231a, bArr);
                hVar.I(f.e(bArr, 0));
                hVar.J((byte[]) bArr.clone());
                n(this.f94231a, bArr);
                hVar.G(f.g(a(bArr), 0));
                n(this.f94231a, bArr);
                hVar.d0(f.g(a(bArr), 0));
                n(this.f94231a, bArr2);
                int i12 = f.i(bArr2, 0);
                hVar.V(i12);
                n(this.f94231a, bArr2);
                hVar.R(f.i(bArr2, 0));
                n(this.f94231a, bArr2);
                int i13 = f.i(bArr2, 0);
                hVar.S(new String(bArr2));
                n(this.f94231a, bArr2);
                hVar.M(f.i(bArr2, 0));
                n(this.f94231a, bArr2);
                hVar.Y((byte[]) bArr2.clone());
                n(this.f94231a, bArr);
                hVar.P((byte[]) bArr.clone());
                n(this.f94231a, bArr);
                hVar.a0(f.g(a(bArr), 0) & 4294967295L);
                if (i12 > 0) {
                    byte[] bArr3 = new byte[i12];
                    n(this.f94231a, bArr3);
                    String str = net.lingala.zip4j.util.h.A(this.f94232b.g()) ? new String(bArr3, this.f94232b.g()) : net.lingala.zip4j.util.h.h(bArr3, hVar.E());
                    if (str == null) {
                        throw new ZipException("fileName is null when reading central directory");
                    }
                    StringBuffer stringBuffer2 = new StringBuffer(":");
                    stringBuffer2.append(System.getProperty("file.separator"));
                    if (str.indexOf(stringBuffer2.toString()) >= 0) {
                        StringBuffer stringBuffer3 = new StringBuffer(":");
                        stringBuffer3.append(System.getProperty("file.separator"));
                        str = str.substring(str.indexOf(stringBuffer3.toString()) + 2);
                    }
                    hVar.U(str);
                    if (!str.endsWith(e.F0) && !str.endsWith("\\")) {
                        z10 = false;
                    }
                    hVar.L(z10);
                } else {
                    hVar.U(null);
                }
                g(hVar);
                i(hVar);
                e(hVar);
                if (i13 > 0) {
                    byte[] bArr4 = new byte[i13];
                    n(this.f94231a, bArr4);
                    hVar.S(new String(bArr4));
                }
                arrayList.add(hVar);
            }
            cVar.d(arrayList);
            pc.e eVar = new pc.e();
            n(this.f94231a, bArr);
            int iE2 = f.e(bArr, 0);
            if (iE2 != e.f94693e) {
                return cVar;
            }
            eVar.d(iE2);
            n(this.f94231a, bArr2);
            int i14 = f.i(bArr2, 0);
            eVar.f(i14);
            if (i14 > 0) {
                byte[] bArr5 = new byte[i14];
                n(this.f94231a, bArr5);
                eVar.e(new String(bArr5));
            }
            return cVar;
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    private pc.f l() throws ZipException {
        RandomAccessFile randomAccessFile = this.f94231a;
        if (randomAccessFile == null) {
            throw new ZipException("random access file was null", 3);
        }
        try {
            byte[] bArr = new byte[4];
            long length = randomAccessFile.length() - 22;
            pc.f fVar = new pc.f();
            int i10 = 0;
            while (true) {
                long j10 = length - 1;
                this.f94231a.seek(length);
                i10++;
                if (f.f(this.f94231a, bArr) == e.f94691d || i10 > 3000) {
                    break;
                    break;
                }
                length = j10;
            }
            if (f.e(bArr, 0) != e.f94691d) {
                throw new ZipException("zip headers not found. probably not a zip file");
            }
            byte[] bArr2 = new byte[4];
            byte[] bArr3 = new byte[2];
            fVar.q(e.f94691d);
            n(this.f94231a, bArr3);
            fVar.n(f.i(bArr3, 0));
            n(this.f94231a, bArr3);
            fVar.o(f.i(bArr3, 0));
            n(this.f94231a, bArr3);
            fVar.t(f.i(bArr3, 0));
            n(this.f94231a, bArr3);
            fVar.s(f.i(bArr3, 0));
            n(this.f94231a, bArr2);
            fVar.r(f.e(bArr2, 0));
            n(this.f94231a, bArr2);
            fVar.p(f.g(a(bArr2), 0));
            n(this.f94231a, bArr3);
            int i11 = f.i(bArr3, 0);
            fVar.m(i11);
            if (i11 > 0) {
                byte[] bArr4 = new byte[i11];
                n(this.f94231a, bArr4);
                fVar.k(new String(bArr4));
                fVar.l(bArr4);
            } else {
                fVar.k(null);
            }
            if (fVar.d() > 0) {
                this.f94232b.z(true);
            } else {
                this.f94232b.z(false);
            }
            return fVar;
        } catch (IOException e10) {
            throw new ZipException("Probably not a zip file or a corrupted zip file", e10, 4);
        }
    }

    private ArrayList m(int i10) throws ZipException {
        if (i10 <= 0) {
            return null;
        }
        try {
            byte[] bArr = new byte[i10];
            this.f94231a.read(bArr);
            ArrayList arrayList = new ArrayList();
            int i11 = 0;
            while (i11 < i10) {
                g gVar = new g();
                gVar.e(f.i(bArr, i11));
                int i12 = i11 + 2;
                int i13 = f.i(bArr, i12);
                if (i13 + 2 > i10) {
                    i13 = f.h(bArr, i12);
                    if (i13 + 2 > i10) {
                        break;
                    }
                }
                gVar.f(i13);
                int i14 = i12 + 2;
                if (i13 > 0) {
                    byte[] bArr2 = new byte[i13];
                    System.arraycopy(bArr, i14, bArr2, 0, i13);
                    gVar.d(bArr2);
                }
                i11 = i14 + i13;
                arrayList.add(gVar);
            }
            if (arrayList.size() > 0) {
                return arrayList;
            }
            return null;
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    private byte[] n(RandomAccessFile randomAccessFile, byte[] bArr) throws ZipException {
        try {
            if (randomAccessFile.read(bArr, 0, bArr.length) != -1) {
                return bArr;
            }
            throw new ZipException("unexpected end of file when reading short buff");
        } catch (IOException e10) {
            throw new ZipException("IOException when reading short buff", e10);
        }
    }

    private l p() throws ZipException {
        if (this.f94231a == null) {
            throw new ZipException("invalid file handler when trying to read Zip64EndCentralDirLocator");
        }
        try {
            l lVar = new l();
            s();
            byte[] bArr = new byte[4];
            byte[] bArr2 = new byte[8];
            n(this.f94231a, bArr);
            long jE = f.e(bArr, 0);
            if (jE != e.f94699h) {
                this.f94232b.E(false);
                return null;
            }
            this.f94232b.E(true);
            lVar.g(jE);
            n(this.f94231a, bArr);
            lVar.e(f.e(bArr, 0));
            n(this.f94231a, bArr2);
            lVar.f(f.g(bArr2, 0));
            n(this.f94231a, bArr);
            lVar.h(f.e(bArr, 0));
            return lVar;
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
    }

    private m q() throws ZipException {
        if (this.f94232b.k() == null) {
            throw new ZipException("invalid zip64 end of central directory locator");
        }
        long jB = this.f94232b.k().b();
        if (jB < 0) {
            throw new ZipException("invalid offset for start of end of central directory record");
        }
        try {
            this.f94231a.seek(jB);
            m mVar = new m();
            byte[] bArr = new byte[2];
            byte[] bArr2 = new byte[4];
            byte[] bArr3 = new byte[8];
            n(this.f94231a, bArr2);
            long jE = f.e(bArr2, 0);
            if (jE != e.f94701i) {
                throw new ZipException("invalid signature for zip64 end of central directory record");
            }
            mVar.p(jE);
            n(this.f94231a, bArr3);
            mVar.r(f.g(bArr3, 0));
            n(this.f94231a, bArr);
            mVar.u(f.i(bArr, 0));
            n(this.f94231a, bArr);
            mVar.v(f.i(bArr, 0));
            n(this.f94231a, bArr2);
            mVar.m(f.e(bArr2, 0));
            n(this.f94231a, bArr2);
            mVar.n(f.e(bArr2, 0));
            n(this.f94231a, bArr3);
            mVar.t(f.g(bArr3, 0));
            n(this.f94231a, bArr3);
            mVar.s(f.g(bArr3, 0));
            n(this.f94231a, bArr3);
            mVar.q(f.g(bArr3, 0));
            n(this.f94231a, bArr3);
            mVar.o(f.g(bArr3, 0));
            long jG = mVar.g() - 44;
            if (jG > 0) {
                byte[] bArr4 = new byte[(int) jG];
                n(this.f94231a, bArr4);
                mVar.l(bArr4);
            }
            return mVar;
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    private n r(ArrayList arrayList, long j10, long j11, long j12, int i10) throws ZipException {
        int i11;
        boolean z10;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            g gVar = (g) arrayList.get(i12);
            if (gVar != null && gVar.b() == 1) {
                n nVar = new n();
                byte[] bArrA = gVar.a();
                if (gVar.c() <= 0) {
                    return null;
                }
                byte[] bArr = new byte[8];
                byte[] bArr2 = new byte[4];
                boolean z11 = true;
                if ((j10 & WebSocketProtocol.PAYLOAD_SHORT_MAX) != WebSocketProtocol.PAYLOAD_SHORT_MAX || gVar.c() <= 0) {
                    i11 = 0;
                    z10 = false;
                } else {
                    System.arraycopy(bArrA, 0, bArr, 0, 8);
                    nVar.l(f.g(bArr, 0));
                    i11 = 8;
                    z10 = true;
                }
                if ((j11 & WebSocketProtocol.PAYLOAD_SHORT_MAX) == WebSocketProtocol.PAYLOAD_SHORT_MAX && i11 < gVar.c()) {
                    System.arraycopy(bArrA, i11, bArr, 0, 8);
                    nVar.g(f.g(bArr, 0));
                    i11 += 8;
                    z10 = true;
                }
                if ((j12 & WebSocketProtocol.PAYLOAD_SHORT_MAX) == WebSocketProtocol.PAYLOAD_SHORT_MAX && i11 < gVar.c()) {
                    System.arraycopy(bArrA, i11, bArr, 0, 8);
                    nVar.j(f.g(bArr, 0));
                    i11 += 8;
                    z10 = true;
                }
                if ((i10 & 65535) != 65535 || i11 >= gVar.c()) {
                    z11 = z10;
                } else {
                    System.arraycopy(bArrA, i11, bArr2, 0, 4);
                    nVar.h(f.e(bArr2, 0));
                }
                if (z11) {
                    return nVar;
                }
                return null;
            }
        }
        return null;
    }

    private void s() throws ZipException {
        try {
            byte[] bArr = new byte[4];
            long length = this.f94231a.length() - 22;
            while (true) {
                long j10 = length - 1;
                this.f94231a.seek(length);
                if (f.f(this.f94231a, bArr) == e.f94691d) {
                    RandomAccessFile randomAccessFile = this.f94231a;
                    randomAccessFile.seek(((((randomAccessFile.getFilePointer() - 4) - 4) - 8) - 4) - 4);
                    return;
                }
                length = j10;
            }
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    public o c() throws ZipException {
        return d(null);
    }

    public o d(String str) throws ZipException {
        o oVar = new o();
        this.f94232b = oVar;
        oVar.w(str);
        this.f94232b.v(l());
        this.f94232b.C(p());
        if (this.f94232b.q()) {
            this.f94232b.D(q());
            if (this.f94232b.l() == null || this.f94232b.l().b() <= 0) {
                this.f94232b.z(false);
            } else {
                this.f94232b.z(true);
            }
        }
        this.f94232b.s(k());
        return this.f94232b;
    }

    public i o(h hVar) throws ZipException {
        if (hVar == null || this.f94231a == null) {
            throw new ZipException("invalid read parameters for local header");
        }
        long jU = hVar.u();
        if (hVar.A() != null && hVar.A().d() > 0) {
            jU = hVar.u();
        }
        if (jU < 0) {
            throw new ZipException("invalid local header offset");
        }
        try {
            this.f94231a.seek(jU);
            i iVar = new i();
            byte[] bArr = new byte[2];
            byte[] bArr2 = new byte[4];
            n(this.f94231a, bArr2);
            int iE = f.e(bArr2, 0);
            if (iE != e.f94685a) {
                StringBuffer stringBuffer = new StringBuffer("invalid local header signature for file: ");
                stringBuffer.append(hVar.p());
                throw new ZipException(stringBuffer.toString());
            }
            iVar.P(iE);
            n(this.f94231a, bArr);
            iVar.R(f.i(bArr, 0));
            n(this.f94231a, bArr);
            iVar.K((f.i(bArr, 0) & 2048) != 0);
            byte b10 = bArr[0];
            if ((b10 & 1) != 0) {
                iVar.D(true);
            }
            iVar.L(bArr);
            String binaryString = Integer.toBinaryString(b10);
            if (binaryString.length() >= 4) {
                iVar.C(binaryString.charAt(3) == '1');
            }
            n(this.f94231a, bArr);
            iVar.z(f.i(bArr, 0));
            n(this.f94231a, bArr2);
            iVar.M(f.e(bArr2, 0));
            n(this.f94231a, bArr2);
            iVar.A(f.e(bArr2, 0));
            iVar.B((byte[]) bArr2.clone());
            n(this.f94231a, bArr2);
            iVar.y(f.g(a(bArr2), 0));
            n(this.f94231a, bArr2);
            iVar.Q(f.g(a(bArr2), 0));
            n(this.f94231a, bArr);
            int i10 = f.i(bArr, 0);
            iVar.J(i10);
            n(this.f94231a, bArr);
            int i11 = f.i(bArr, 0);
            iVar.H(i11);
            int i12 = 30;
            if (i10 > 0) {
                byte[] bArr3 = new byte[i10];
                n(this.f94231a, bArr3);
                String strH = net.lingala.zip4j.util.h.h(bArr3, iVar.v());
                if (strH == null) {
                    throw new ZipException("file name is null, cannot assign file name to local file header");
                }
                StringBuffer stringBuffer2 = new StringBuffer(":");
                stringBuffer2.append(System.getProperty("file.separator"));
                if (strH.indexOf(stringBuffer2.toString()) >= 0) {
                    StringBuffer stringBuffer3 = new StringBuffer(":");
                    stringBuffer3.append(System.getProperty("file.separator"));
                    strH = strH.substring(strH.indexOf(stringBuffer3.toString()) + 2);
                }
                iVar.I(strH);
                i12 = 30 + i10;
            } else {
                iVar.I(null);
            }
            h(iVar);
            iVar.N(jU + ((long) (i12 + i11)));
            iVar.O(hVar.v());
            j(iVar);
            f(iVar);
            if (iVar.u() && iVar.f() != 99) {
                if ((b10 & 64) == 64) {
                    iVar.E(1);
                } else {
                    iVar.E(0);
                }
            }
            if (iVar.d() <= 0) {
                iVar.A(hVar.g());
                iVar.B(hVar.h());
            }
            if (iVar.b() <= 0) {
                iVar.y(hVar.e());
            }
            if (iVar.q() <= 0) {
                iVar.Q(hVar.x());
            }
            return iVar;
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }
}
