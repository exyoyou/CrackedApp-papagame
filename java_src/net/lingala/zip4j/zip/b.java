package net.lingala.zip4j.zip;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.HashMap;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.io.g;
import net.lingala.zip4j.io.i;
import net.lingala.zip4j.util.c;
import net.lingala.zip4j.util.d;
import net.lingala.zip4j.util.e;
import net.lingala.zip4j.util.h;
import pc.f;
import pc.o;
import pc.p;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private o f94755a;

    public b(o oVar) throws ZipException {
        if (oVar == null) {
            throw new ZipException("zip model is null in ZipEngine constructor");
        }
        this.f94755a = oVar;
    }

    private long e(ArrayList arrayList, p pVar) throws ZipException {
        if (arrayList == null) {
            throw new ZipException("file list is null, cannot calculate total work");
        }
        long jR = 0;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            if ((arrayList.get(i10) instanceof File) && ((File) arrayList.get(i10)).exists()) {
                jR += (pVar.l() && pVar.f() == 0) ? h.r((File) arrayList.get(i10)) * 2 : h.r((File) arrayList.get(i10));
                if (this.f94755a.b() != null && this.f94755a.b().b() != null && this.f94755a.b().b().size() > 0) {
                    pc.h hVarP = h.p(this.f94755a, h.x(((File) arrayList.get(i10)).getAbsolutePath(), pVar.i(), pVar.e()));
                    if (hVarP != null) {
                        jR += h.r(new File(this.f94755a.m())) - hVarP.e();
                    }
                }
            }
        }
        return jR;
    }

    private void f(p pVar) throws ZipException {
        if (pVar == null) {
            throw new ZipException("cannot validate zip parameters");
        }
        if (pVar.d() != 0 && pVar.d() != 8) {
            throw new ZipException("unsupported compression type");
        }
        if (pVar.d() == 8 && pVar.b() < 0 && pVar.b() > 9) {
            throw new ZipException("invalid compression level. compression level dor deflate should be in the range of 0-9");
        }
        if (!pVar.l()) {
            pVar.q(-1);
            pVar.v(-1);
        } else {
            if (pVar.f() != 0 && pVar.f() != 99) {
                throw new ZipException("unsupported encryption method");
            }
            if (pVar.h() == null || pVar.h().length <= 0) {
                throw new ZipException("input password is empty or null");
            }
        }
    }

    private f g() {
        f fVar = new f();
        fVar.q(e.f94691d);
        fVar.n(0);
        fVar.s(0);
        fVar.t(0);
        fVar.p(0L);
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:121:0x0186 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x017f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:145:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v12, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    public void h(ArrayList arrayList, p pVar, qc.a aVar) throws Throwable {
        i iVar;
        ?? fileInputStream;
        ?? r10;
        if (arrayList == null || pVar == null) {
            throw new ZipException("one of the input parameters is null when adding files");
        }
        if (arrayList.size() <= 0) {
            throw new ZipException("no files to add");
        }
        if (this.f94755a.f() == null) {
            this.f94755a.v(g());
        }
        ?? r11 = 0;
        ?? r12 = 0;
        r11 = 0;
        try {
            try {
                f(pVar);
                j(arrayList, pVar, aVar);
                boolean zC = h.c(this.f94755a.m());
                g gVar = new g(new File(this.f94755a.m()), this.f94755a.i());
                iVar = new i(gVar, this.f94755a);
                if (zC) {
                    try {
                        if (this.f94755a.f() == null) {
                            throw new ZipException("invalid end of central directory record");
                        }
                        gVar.seek(this.f94755a.f().f());
                    } catch (ZipException e10) {
                        e = e10;
                        aVar.b(e);
                        throw e;
                    } catch (Exception e11) {
                        e = e11;
                        aVar.b(e);
                        throw new ZipException(e);
                    } catch (Throwable th) {
                        th = th;
                        if (r11 != 0) {
                            try {
                                r11.close();
                            } catch (IOException unused) {
                            }
                        }
                        if (iVar != null) {
                            throw th;
                        }
                        try {
                            iVar.close();
                            throw th;
                        } catch (IOException unused2) {
                            throw th;
                        }
                    }
                }
                byte[] bArr = new byte[4096];
                int i10 = 0;
                while (i10 < arrayList.size()) {
                    if (aVar.m()) {
                        aVar.setResult(3);
                        aVar.u(0);
                        if (r12 != 0) {
                            try {
                                r12.close();
                            } catch (IOException unused3) {
                            }
                        }
                        try {
                            iVar.close();
                            return;
                        } catch (IOException unused4) {
                            return;
                        }
                    }
                    p pVar2 = (p) pVar.clone();
                    aVar.r(((File) arrayList.get(i10)).getAbsolutePath());
                    if (!((File) arrayList.get(i10)).isDirectory()) {
                        if (pVar2.l() && pVar2.f() == 0) {
                            aVar.p(3);
                            pVar2.D((int) d.b(((File) arrayList.get(i10)).getAbsolutePath(), aVar));
                            aVar.p(0);
                            if (aVar.m()) {
                                aVar.setResult(3);
                                aVar.u(0);
                                if (r12 != 0) {
                                    try {
                                        r12.close();
                                    } catch (IOException unused5) {
                                    }
                                }
                                try {
                                    iVar.close();
                                    return;
                                } catch (IOException unused6) {
                                    return;
                                }
                            }
                        }
                        if (h.r((File) arrayList.get(i10)) == 0) {
                            pVar2.s(0);
                        }
                    }
                    iVar.q((File) arrayList.get(i10), pVar2);
                    boolean zIsDirectory = ((File) arrayList.get(i10)).isDirectory();
                    if (zIsDirectory) {
                        iVar.b();
                        r10 = r12;
                        fileInputStream = zIsDirectory;
                    } else {
                        fileInputStream = new FileInputStream((File) arrayList.get(i10));
                        while (true) {
                            int i11 = fileInputStream.read(bArr);
                            if (i11 == -1) {
                                iVar.b();
                                fileInputStream.close();
                                r10 = fileInputStream;
                                fileInputStream = fileInputStream;
                                break;
                            }
                            if (aVar.m()) {
                                aVar.setResult(3);
                                aVar.u(0);
                                try {
                                    fileInputStream.close();
                                } catch (IOException unused7) {
                                }
                                try {
                                    iVar.close();
                                    return;
                                } catch (IOException unused8) {
                                    return;
                                }
                            }
                            iVar.write(bArr, 0, i11);
                            aVar.w(i11);
                        }
                    }
                    try {
                        i10++;
                        r12 = r10;
                    } catch (ZipException e12) {
                        e = e12;
                        aVar.b(e);
                        throw e;
                    } catch (Exception e13) {
                        e = e13;
                        aVar.b(e);
                        throw new ZipException(e);
                    } catch (Throwable th2) {
                        th = th2;
                        r11 = fileInputStream;
                        if (r11 != 0) {
                            r11.close();
                        }
                        if (iVar != null) {
                            throw th;
                        }
                        iVar.close();
                        throw th;
                    }
                }
                iVar.h();
                aVar.c();
                if (r12 != 0) {
                    try {
                        r12.close();
                    } catch (IOException unused9) {
                    }
                }
                try {
                    iVar.close();
                } catch (IOException unused10) {
                }
            } catch (Throwable th3) {
                th = th3;
                iVar = null;
            }
        } catch (ZipException e14) {
            e = e14;
        } catch (Exception e15) {
            e = e15;
        } catch (Throwable th4) {
            th = th4;
            iVar = null;
        }
    }

    private RandomAccessFile i() throws ZipException {
        String strM = this.f94755a.m();
        if (!h.A(strM)) {
            throw new ZipException("invalid output path");
        }
        try {
            File file = new File(strM);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            return new RandomAccessFile(file, e.f94694e0);
        } catch (FileNotFoundException e10) {
            throw new ZipException(e10);
        }
    }

    private void j(ArrayList arrayList, p pVar, qc.a aVar) throws ZipException {
        o oVar = this.f94755a;
        if (oVar == null || oVar.b() == null || this.f94755a.b().b() == null || this.f94755a.b().b().size() <= 0) {
            return;
        }
        RandomAccessFile randomAccessFileI = null;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            try {
                try {
                    pc.h hVarP = h.p(this.f94755a, h.x(((File) arrayList.get(i10)).getAbsolutePath(), pVar.i(), pVar.e()));
                    if (hVarP != null) {
                        if (randomAccessFileI != null) {
                            randomAccessFileI.close();
                            randomAccessFileI = null;
                        }
                        c cVar = new c();
                        aVar.p(2);
                        HashMap mapJ = cVar.j(this.f94755a, hVarP, aVar);
                        if (aVar.m()) {
                            aVar.setResult(3);
                            aVar.u(0);
                            if (randomAccessFileI != null) {
                                try {
                                    randomAccessFileI.close();
                                    return;
                                } catch (IOException unused) {
                                    return;
                                }
                            }
                            return;
                        }
                        aVar.p(0);
                        if (randomAccessFileI == null) {
                            randomAccessFileI = i();
                            if (mapJ != null && mapJ.get(e.f94686a0) != null) {
                                try {
                                    long j10 = Long.parseLong((String) mapJ.get(e.f94686a0));
                                    if (j10 >= 0) {
                                        randomAccessFileI.seek(j10);
                                    }
                                } catch (NumberFormatException unused2) {
                                    throw new ZipException("NumberFormatException while parsing offset central directory. Cannot update already existing file header");
                                } catch (Exception unused3) {
                                    throw new ZipException("Error while parsing offset central directory. Cannot update already existing file header");
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                } catch (Throwable th) {
                    if (randomAccessFileI != null) {
                        try {
                            randomAccessFileI.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e10) {
                throw new ZipException(e10);
            }
        }
        if (randomAccessFileI != null) {
            try {
                randomAccessFileI.close();
            } catch (IOException unused5) {
            }
        }
    }

    public void b(ArrayList arrayList, p pVar, qc.a aVar, boolean z10) throws Throwable {
        if (arrayList == null || pVar == null) {
            throw new ZipException("one of the input parameters is null when adding files");
        }
        if (arrayList.size() <= 0) {
            throw new ZipException("no files to add");
        }
        aVar.p(0);
        aVar.u(1);
        aVar.setResult(1);
        if (!z10) {
            h(arrayList, pVar, aVar);
            return;
        }
        aVar.v(e(arrayList, pVar));
        aVar.r(((File) arrayList.get(0)).getAbsolutePath());
        new a(this, e.G0, arrayList, pVar, aVar).start();
    }

    public void c(File file, p pVar, qc.a aVar, boolean z10) throws Throwable {
        String absolutePath;
        if (file == null || pVar == null) {
            throw new ZipException("one of the input parameters is null, cannot add folder to zip");
        }
        if (!h.c(file.getAbsolutePath())) {
            throw new ZipException("input folder does not exist");
        }
        if (!file.isDirectory()) {
            throw new ZipException("input file is not a folder, user addFileToZip method to add files");
        }
        if (!h.d(file.getAbsolutePath())) {
            StringBuffer stringBuffer = new StringBuffer("cannot read folder: ");
            stringBuffer.append(file.getAbsolutePath());
            throw new ZipException(stringBuffer.toString());
        }
        if (pVar.m()) {
            absolutePath = "";
            if (file.getAbsolutePath() != null) {
                if (file.getAbsoluteFile().getParentFile() != null) {
                    absolutePath = file.getAbsoluteFile().getParentFile().getAbsolutePath();
                }
            } else if (file.getParentFile() != null) {
                absolutePath = file.getParentFile().getAbsolutePath();
            }
        } else {
            absolutePath = file.getAbsolutePath();
        }
        pVar.t(absolutePath);
        ArrayList arrayListU = h.u(file, pVar.o());
        if (pVar.m()) {
            if (arrayListU == null) {
                arrayListU = new ArrayList();
            }
            arrayListU.add(file);
        }
        b(arrayListU, pVar, aVar, z10);
    }

    public void d(InputStream inputStream, p pVar) throws Throwable {
        if (inputStream == null || pVar == null) {
            throw new ZipException("one of the input parameters is null, cannot add stream to zip");
        }
        i iVar = null;
        try {
            try {
                f(pVar);
                boolean zC = h.c(this.f94755a.m());
                g gVar = new g(new File(this.f94755a.m()), this.f94755a.i());
                i iVar2 = new i(gVar, this.f94755a);
                if (zC) {
                    try {
                        if (this.f94755a.f() == null) {
                            throw new ZipException("invalid end of central directory record");
                        }
                        gVar.seek(this.f94755a.f().f());
                    } catch (ZipException e10) {
                        throw e10;
                    } catch (Exception e11) {
                        e = e11;
                        throw new ZipException(e);
                    } catch (Throwable th) {
                        th = th;
                        iVar = iVar2;
                        if (iVar != null) {
                            try {
                                iVar.close();
                            } catch (IOException unused) {
                            }
                        }
                        throw th;
                    }
                }
                byte[] bArr = new byte[4096];
                iVar2.q(null, pVar);
                if (!pVar.g().endsWith(e.F0) && !pVar.g().endsWith("\\")) {
                    while (true) {
                        int i10 = inputStream.read(bArr);
                        if (i10 == -1) {
                            break;
                        } else {
                            iVar2.write(bArr, 0, i10);
                        }
                    }
                }
                iVar2.b();
                iVar2.h();
                try {
                    iVar2.close();
                } catch (IOException unused2) {
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (ZipException e12) {
            throw e12;
        } catch (Exception e13) {
            e = e13;
        }
    }
}
