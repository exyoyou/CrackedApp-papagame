package mc;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.io.g;
import net.lingala.zip4j.util.f;
import pc.h;
import pc.i;
import pc.l;
import pc.m;
import pc.o;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f94233a = 50;

    private byte[] a(List list) throws ZipException {
        if (list == null) {
            throw new ZipException("input byte array list is null, cannot conver to byte array");
        }
        if (list.size() <= 0) {
            return null;
        }
        byte[] bArr = new byte[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            bArr[i10] = Byte.parseByte((String) list.get(i10));
        }
        return bArr;
    }

    private void b(byte[] bArr, List list) throws ZipException {
        if (list == null || bArr == null) {
            throw new ZipException("one of the input parameters is null, cannot copy byte array to array list");
        }
        for (byte b10 : bArr) {
            list.add(Byte.toString(b10));
        }
    }

    private int c(ArrayList arrayList, int i10) throws ZipException {
        if (arrayList == null) {
            throw new ZipException("file headers are null, cannot calculate number of entries on this disk");
        }
        int i11 = 0;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            if (((h) arrayList.get(i12)).i() == i10) {
                i11++;
            }
        }
        return i11;
    }

    private void f(o oVar, OutputStream outputStream) throws ZipException {
        int iB;
        try {
            if (outputStream instanceof g) {
                oVar.f().p(((g) outputStream).d());
                iB = ((g) outputStream).b();
            } else {
                iB = 0;
            }
            if (oVar.q()) {
                if (oVar.l() == null) {
                    oVar.D(new m());
                }
                if (oVar.k() == null) {
                    oVar.C(new l());
                }
                oVar.k().e(iB);
                oVar.k().h(iB + 1);
            }
            oVar.f().n(iB);
            oVar.f().o(iB);
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    private void g(g gVar, i iVar, long j10, long j11, byte[] bArr, boolean z10) throws ZipException {
        if (gVar == null) {
            throw new ZipException("invalid output stream, cannot update compressed size for local file header");
        }
        try {
            if (!iVar.w()) {
                gVar.seek(j10 + j11);
                gVar.write(bArr);
            } else {
                if (bArr.length != 8) {
                    throw new ZipException("attempting to write a non 8-byte compressed size block for a zip64 file");
                }
                long jK = j10 + j11 + 4 + 4 + 2 + 2 + ((long) iVar.k()) + 2 + 2 + 8;
                if (j11 == 22) {
                    jK += 8;
                }
                gVar.seek(jK);
                gVar.write(bArr);
            }
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    private int i(o oVar, OutputStream outputStream, List list) throws ZipException {
        if (oVar == null || outputStream == null) {
            throw new ZipException("input parameters is null, cannot write central directory");
        }
        if (oVar.b() == null || oVar.b().b() == null || oVar.b().b().size() <= 0) {
            return 0;
        }
        int iL = 0;
        for (int i10 = 0; i10 < oVar.b().b().size(); i10++) {
            iL += l(oVar, (h) oVar.b().b().get(i10), outputStream, list);
        }
        return iL;
    }

    private void j(o oVar, OutputStream outputStream, int i10, long j10, List list) throws ZipException {
        if (oVar == null || outputStream == null) {
            throw new ZipException("zip model or output stream is null, cannot write end of central directory record");
        }
        try {
            byte[] bArr = new byte[2];
            byte[] bArr2 = new byte[4];
            byte[] bArr3 = new byte[8];
            f.l(bArr2, 0, (int) oVar.f().g());
            b(bArr2, list);
            f.n(bArr, 0, (short) oVar.f().d());
            b(bArr, list);
            f.n(bArr, 0, (short) oVar.f().e());
            b(bArr, list);
            if (oVar.b() == null || oVar.b().b() == null) {
                throw new ZipException("invalid central directory/file headers, cannot write end of central directory record");
            }
            int size = oVar.b().b().size();
            f.n(bArr, 0, (short) (oVar.p() ? c(oVar.b().b(), oVar.f().d()) : size));
            b(bArr, list);
            f.n(bArr, 0, (short) size);
            b(bArr, list);
            f.l(bArr2, 0, i10);
            b(bArr2, list);
            if (j10 > 4294967295L) {
                f.m(bArr3, 0, 4294967295L);
                System.arraycopy(bArr3, 0, bArr2, 0, 4);
                b(bArr2, list);
            } else {
                f.m(bArr3, 0, j10);
                System.arraycopy(bArr3, 0, bArr2, 0, 4);
                b(bArr2, list);
            }
            int iC = oVar.f().a() != null ? oVar.f().c() : 0;
            f.n(bArr, 0, (short) iC);
            b(bArr, list);
            if (iC > 0) {
                b(oVar.f().b(), list);
            }
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
    }

    private int l(o oVar, h hVar, OutputStream outputStream, List list) throws ZipException {
        boolean z10;
        boolean z11;
        int i10;
        int iN;
        if (hVar == null || outputStream == null) {
            throw new ZipException("input parameters is null, cannot write local file header");
        }
        try {
            byte[] bArr = new byte[2];
            byte[] bArr2 = new byte[4];
            byte[] bArr3 = new byte[8];
            byte[] bArr4 = new byte[2];
            byte[] bArr5 = new byte[4];
            f.l(bArr2, 0, hVar.w());
            b(bArr2, list);
            f.n(bArr, 0, (short) hVar.y());
            b(bArr, list);
            f.n(bArr, 0, (short) hVar.z());
            b(bArr, list);
            b(hVar.r(), list);
            f.n(bArr, 0, (short) hVar.f());
            b(bArr, list);
            f.l(bArr2, 0, hVar.t());
            b(bArr2, list);
            f.l(bArr2, 0, (int) hVar.g());
            b(bArr2, list);
            if (hVar.e() >= 4294967295L || hVar.x() + 50 >= 4294967295L) {
                f.m(bArr3, 0, 4294967295L);
                System.arraycopy(bArr3, 0, bArr2, 0, 4);
                b(bArr2, list);
                b(bArr2, list);
                z10 = true;
            } else {
                f.m(bArr3, 0, hVar.e());
                System.arraycopy(bArr3, 0, bArr2, 0, 4);
                b(bArr2, list);
                f.m(bArr3, 0, hVar.x());
                System.arraycopy(bArr3, 0, bArr2, 0, 4);
                b(bArr2, list);
                z10 = false;
            }
            f.n(bArr, 0, (short) hVar.q());
            b(bArr, list);
            byte[] bArr6 = new byte[4];
            if (hVar.u() > 4294967295L) {
                f.m(bArr3, 0, 4294967295L);
                System.arraycopy(bArr3, 0, bArr6, 0, 4);
                z11 = true;
            } else {
                f.m(bArr3, 0, hVar.u());
                System.arraycopy(bArr3, 0, bArr6, 0, 4);
                z11 = false;
            }
            if (z10 || z11) {
                i10 = z10 ? 20 : 4;
                if (z11) {
                    i10 += 8;
                }
            } else {
                i10 = 0;
            }
            if (hVar.d() != null) {
                i10 += 11;
            }
            f.n(bArr, 0, (short) i10);
            b(bArr, list);
            b(bArr4, list);
            f.n(bArr, 0, (short) hVar.i());
            b(bArr, list);
            b(bArr4, list);
            if (hVar.k() != null) {
                b(hVar.k(), list);
            } else {
                b(bArr5, list);
            }
            b(bArr6, list);
            if (net.lingala.zip4j.util.h.A(oVar.g())) {
                byte[] bytes = hVar.p().getBytes(oVar.g());
                b(bytes, list);
                iN = bytes.length;
            } else {
                b(net.lingala.zip4j.util.h.g(hVar.p()), list);
                iN = net.lingala.zip4j.util.h.n(hVar.p());
            }
            int i11 = 46 + iN;
            if (z10 || z11) {
                oVar.E(true);
                f.n(bArr, 0, (short) 1);
                b(bArr, list);
                int i12 = i11 + 2;
                int i13 = z10 ? 16 : 0;
                if (z11) {
                    i13 += 8;
                }
                f.n(bArr, 0, (short) i13);
                b(bArr, list);
                i11 = i12 + 2;
                if (z10) {
                    f.m(bArr3, 0, hVar.x());
                    b(bArr3, list);
                    f.m(bArr3, 0, hVar.e());
                    b(bArr3, list);
                    i11 = i11 + 8 + 8;
                }
                if (z11) {
                    f.m(bArr3, 0, hVar.u());
                    b(bArr3, list);
                    i11 += 8;
                }
            }
            if (hVar.d() == null) {
                return i11;
            }
            pc.a aVarD = hVar.d();
            f.n(bArr, 0, (short) aVarD.d());
            b(bArr, list);
            f.n(bArr, 0, (short) aVarD.c());
            b(bArr, list);
            f.n(bArr, 0, (short) aVarD.f());
            b(bArr, list);
            b(aVarD.e().getBytes(), list);
            b(new byte[]{(byte) aVarD.a()}, list);
            f.n(bArr, 0, (short) aVarD.b());
            b(bArr, list);
            return i11 + 11;
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
    }

    private void n(o oVar, OutputStream outputStream, List list) throws ZipException {
        if (oVar == null || outputStream == null) {
            throw new ZipException("zip model or output stream is null, cannot write zip64 end of central directory locator");
        }
        try {
            byte[] bArr = new byte[4];
            byte[] bArr2 = new byte[8];
            f.l(bArr, 0, 117853008);
            b(bArr, list);
            f.l(bArr, 0, oVar.k().a());
            b(bArr, list);
            f.m(bArr2, 0, oVar.k().b());
            b(bArr2, list);
            f.l(bArr, 0, oVar.k().d());
            b(bArr, list);
        } catch (ZipException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private void o(o oVar, OutputStream outputStream, int i10, long j10, List list) throws ZipException {
        int i11;
        if (oVar == null || outputStream == null) {
            throw new ZipException("zip model or output stream is null, cannot write zip64 end of central directory record");
        }
        try {
            byte[] bArr = new byte[2];
            byte[] bArr2 = new byte[2];
            byte[] bArr3 = new byte[4];
            byte[] bArr4 = new byte[8];
            f.l(bArr3, 0, 101075792);
            b(bArr3, list);
            f.m(bArr4, 0, 44L);
            b(bArr4, list);
            if (oVar.b() == null || oVar.b().b() == null || oVar.b().b().size() <= 0) {
                b(bArr2, list);
                b(bArr2, list);
            } else {
                f.n(bArr, 0, (short) ((h) oVar.b().b().get(0)).y());
                b(bArr, list);
                f.n(bArr, 0, (short) ((h) oVar.b().b().get(0)).z());
                b(bArr, list);
            }
            f.l(bArr3, 0, oVar.f().d());
            b(bArr3, list);
            f.l(bArr3, 0, oVar.f().e());
            b(bArr3, list);
            if (oVar.b() == null || oVar.b().b() == null) {
                throw new ZipException("invalid central directory/file headers, cannot write end of central directory record");
            }
            int size = oVar.b().b().size();
            if (oVar.p()) {
                c(oVar.b().b(), oVar.f().d());
                i11 = 0;
            } else {
                i11 = size;
            }
            f.m(bArr4, 0, i11);
            b(bArr4, list);
            f.m(bArr4, 0, size);
            b(bArr4, list);
            f.m(bArr4, 0, i10);
            b(bArr4, list);
            f.m(bArr4, 0, j10);
            b(bArr4, list);
        } catch (ZipException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private void p(o oVar, OutputStream outputStream, byte[] bArr) throws ZipException {
        if (bArr == null) {
            throw new ZipException("invalid buff to write as zip headers");
        }
        try {
            if ((outputStream instanceof g) && ((g) outputStream).a(bArr.length)) {
                d(oVar, outputStream);
            } else {
                outputStream.write(bArr);
            }
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    public void d(o oVar, OutputStream outputStream) throws ZipException {
        if (oVar == null || outputStream == null) {
            throw new ZipException("input parameters is null, cannot finalize zip file");
        }
        try {
            f(oVar, outputStream);
            long jF = oVar.f().f();
            ArrayList arrayList = new ArrayList();
            int i10 = i(oVar, outputStream, arrayList);
            if (oVar.q()) {
                if (oVar.l() == null) {
                    oVar.D(new m());
                }
                if (oVar.k() == null) {
                    oVar.C(new l());
                }
                oVar.k().f(((long) i10) + jF);
                if (outputStream instanceof g) {
                    oVar.k().e(((g) outputStream).b());
                    oVar.k().h(((g) outputStream).b() + 1);
                } else {
                    oVar.k().e(0);
                    oVar.k().h(1);
                }
                o(oVar, outputStream, i10, jF, arrayList);
                n(oVar, outputStream, arrayList);
            }
            j(oVar, outputStream, i10, jF, arrayList);
            p(oVar, outputStream, a(arrayList));
        } catch (ZipException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    public void e(o oVar, OutputStream outputStream) throws ZipException {
        if (oVar == null || outputStream == null) {
            throw new ZipException("input parameters is null, cannot finalize zip file without validations");
        }
        try {
            ArrayList arrayList = new ArrayList();
            long jF = oVar.f().f();
            int i10 = i(oVar, outputStream, arrayList);
            if (oVar.q()) {
                if (oVar.l() == null) {
                    oVar.D(new m());
                }
                if (oVar.k() == null) {
                    oVar.C(new l());
                }
                oVar.k().f(((long) i10) + jF);
                o(oVar, outputStream, i10, jF, arrayList);
                n(oVar, outputStream, arrayList);
            }
            j(oVar, outputStream, i10, jF, arrayList);
            p(oVar, outputStream, a(arrayList));
        } catch (ZipException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    public void h(i iVar, long j10, int i10, o oVar, byte[] bArr, int i11, g gVar) throws ZipException {
        g gVar2;
        boolean z10;
        String string;
        if (iVar == null || j10 < 0 || oVar == null) {
            throw new ZipException("invalid input parameters, cannot update local file header");
        }
        try {
            if (i11 != gVar.b()) {
                File file = new File(oVar.m());
                String parent = file.getParent();
                String strZ = net.lingala.zip4j.util.h.z(file.getName());
                StringBuffer stringBuffer = new StringBuffer(String.valueOf(parent));
                stringBuffer.append(System.getProperty("file.separator"));
                String string2 = stringBuffer.toString();
                if (i11 < 9) {
                    StringBuffer stringBuffer2 = new StringBuffer(String.valueOf(string2));
                    stringBuffer2.append(strZ);
                    stringBuffer2.append(".z0");
                    stringBuffer2.append(i11 + 1);
                    string = stringBuffer2.toString();
                } else {
                    StringBuffer stringBuffer3 = new StringBuffer(String.valueOf(string2));
                    stringBuffer3.append(strZ);
                    stringBuffer3.append(".z");
                    stringBuffer3.append(i11 + 1);
                    string = stringBuffer3.toString();
                }
                gVar2 = new g(new File(string));
                z10 = true;
            } else {
                gVar2 = gVar;
                z10 = false;
            }
            long jD = gVar2.d();
            if (i10 == 14) {
                gVar2.seek(j10 + ((long) i10));
                gVar2.write(bArr);
            } else if (i10 == 18 || i10 == 22) {
                g(gVar2, iVar, j10, i10, bArr, oVar.q());
            }
            if (z10) {
                gVar2.close();
            } else {
                gVar.seek(jD);
            }
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
    }

    public int k(i iVar, OutputStream outputStream) throws ZipException, IOException {
        if (iVar == null || outputStream == null) {
            throw new ZipException("input parameters is null, cannot write extended local header");
        }
        ArrayList arrayList = new ArrayList();
        byte[] bArr = new byte[4];
        f.l(bArr, 0, 134695760);
        b(bArr, arrayList);
        f.l(bArr, 0, (int) iVar.d());
        b(bArr, arrayList);
        long jB = iVar.b();
        if (jB >= 2147483647L) {
            jB = 2147483647L;
        }
        f.l(bArr, 0, (int) jB);
        b(bArr, arrayList);
        long jQ = iVar.q();
        f.l(bArr, 0, (int) (jQ < 2147483647L ? jQ : 2147483647L));
        b(bArr, arrayList);
        byte[] bArrA = a(arrayList);
        outputStream.write(bArrA);
        return bArrA.length;
    }

    public int m(o oVar, i iVar, OutputStream outputStream) throws ZipException {
        boolean z10;
        if (iVar == null) {
            throw new ZipException("input parameters are null, cannot write local file header");
        }
        try {
            ArrayList arrayList = new ArrayList();
            byte[] bArr = new byte[2];
            byte[] bArr2 = new byte[4];
            byte[] bArr3 = new byte[8];
            byte[] bArr4 = new byte[8];
            f.l(bArr2, 0, iVar.p());
            b(bArr2, arrayList);
            f.n(bArr, 0, (short) iVar.r());
            b(bArr, arrayList);
            b(iVar.l(), arrayList);
            f.n(bArr, 0, (short) iVar.c());
            b(bArr, arrayList);
            f.l(bArr2, 0, iVar.m());
            b(bArr2, arrayList);
            f.l(bArr2, 0, (int) iVar.d());
            b(bArr2, arrayList);
            if (iVar.q() + 50 >= 4294967295L) {
                f.m(bArr3, 0, 4294967295L);
                System.arraycopy(bArr3, 0, bArr2, 0, 4);
                b(bArr2, arrayList);
                b(bArr2, arrayList);
                oVar.E(true);
                iVar.S(true);
                z10 = true;
            } else {
                f.m(bArr3, 0, iVar.b());
                System.arraycopy(bArr3, 0, bArr2, 0, 4);
                b(bArr2, arrayList);
                f.m(bArr3, 0, iVar.q());
                System.arraycopy(bArr3, 0, bArr2, 0, 4);
                b(bArr2, arrayList);
                iVar.S(false);
                z10 = false;
            }
            f.n(bArr, 0, (short) iVar.k());
            b(bArr, arrayList);
            int i10 = z10 ? 20 : 0;
            if (iVar.a() != null) {
                i10 += 11;
            }
            f.n(bArr, 0, (short) i10);
            b(bArr, arrayList);
            if (net.lingala.zip4j.util.h.A(oVar.g())) {
                b(iVar.j().getBytes(oVar.g()), arrayList);
            } else {
                b(net.lingala.zip4j.util.h.g(iVar.j()), arrayList);
            }
            if (z10) {
                f.n(bArr, 0, (short) 1);
                b(bArr, arrayList);
                f.n(bArr, 0, (short) 16);
                b(bArr, arrayList);
                f.m(bArr3, 0, iVar.q());
                b(bArr3, arrayList);
                b(bArr4, arrayList);
            }
            if (iVar.a() != null) {
                pc.a aVarA = iVar.a();
                f.n(bArr, 0, (short) aVarA.d());
                b(bArr, arrayList);
                f.n(bArr, 0, (short) aVarA.c());
                b(bArr, arrayList);
                f.n(bArr, 0, (short) aVarA.f());
                b(bArr, arrayList);
                b(aVarA.e().getBytes(), arrayList);
                b(new byte[]{(byte) aVarA.a()}, arrayList);
                f.n(bArr, 0, (short) aVarA.b());
                b(bArr, arrayList);
            }
            byte[] bArrA = a(arrayList);
            outputStream.write(bArrA);
            return bArrA.length;
        } catch (ZipException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }
}
