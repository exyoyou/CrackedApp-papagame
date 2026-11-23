package net.lingala.zip4j.util;

import com.join.mgps.Util.o0;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import net.lingala.zip4j.exception.ZipException;
import pc.o;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private long b(o oVar) throws ZipException {
        String string;
        long jR = 0;
        if (oVar.p()) {
            int iD = oVar.f().d();
            String strM = oVar.m();
            for (int i10 = 0; i10 <= iD; i10++) {
                if (oVar.f().d() == 0) {
                    string = oVar.m();
                } else {
                    StringBuffer stringBuffer = new StringBuffer(String.valueOf(strM.substring(0, strM.lastIndexOf(o0.f49827a))));
                    stringBuffer.append(".z0");
                    stringBuffer.append(1);
                    string = stringBuffer.toString();
                }
                jR += h.r(new File(string));
            }
        }
        return jR;
    }

    private long c(o oVar, pc.h hVar) throws ZipException {
        return h.r(new File(oVar.m())) - hVar.e();
    }

    private void d(RandomAccessFile randomAccessFile, OutputStream outputStream, long j10, long j11, qc.a aVar) throws ZipException {
        if (randomAccessFile == null || outputStream == null) {
            throw new ZipException("input or output stream is null, cannot copy file");
        }
        long j12 = 0;
        if (j10 < 0) {
            throw new ZipException("starting offset is negative, cannot copy file");
        }
        if (j11 < 0) {
            throw new ZipException("end offset is negative, cannot copy file");
        }
        if (j10 > j11) {
            throw new ZipException("start offset is greater than end offset, cannot copy file");
        }
        if (j10 == j11) {
            return;
        }
        if (aVar.m()) {
            aVar.setResult(3);
            aVar.u(0);
            return;
        }
        try {
            randomAccessFile.seek(j10);
            long j13 = j11 - j10;
            byte[] bArr = j13 < 4096 ? new byte[(int) j13] : new byte[4096];
            while (true) {
                int i10 = randomAccessFile.read(bArr);
                if (i10 == -1) {
                    return;
                }
                outputStream.write(bArr, 0, i10);
                long j14 = i10;
                aVar.w(j14);
                if (aVar.m()) {
                    aVar.setResult(3);
                    return;
                }
                j12 += j14;
                if (j12 == j13) {
                    return;
                }
                if (((long) bArr.length) + j12 > j13) {
                    bArr = new byte[(int) (j13 - j12)];
                }
            }
        } catch (IOException e10) {
            throw new ZipException(e10);
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private RandomAccessFile e(o oVar, String str) throws ZipException {
        if (oVar == null || !h.A(oVar.m())) {
            throw new ZipException("input parameter is null in getFilePointer, cannot create file handler to remove file");
        }
        try {
            return new RandomAccessFile(new File(oVar.m()), str);
        } catch (FileNotFoundException e10) {
            throw new ZipException(e10);
        }
    }

    private RandomAccessFile f(o oVar, int i10) throws ZipException {
        String string;
        if (oVar == null) {
            throw new ZipException("zip model is null, cannot create split file handler");
        }
        if (i10 < 0) {
            throw new ZipException("invlaid part number, cannot create split file handler");
        }
        try {
            String strM = oVar.m();
            if (i10 == oVar.f().d()) {
                string = oVar.m();
            } else if (i10 >= 9) {
                StringBuffer stringBuffer = new StringBuffer(String.valueOf(strM.substring(0, strM.lastIndexOf(o0.f49827a))));
                stringBuffer.append(".z");
                stringBuffer.append(i10 + 1);
                string = stringBuffer.toString();
            } else {
                StringBuffer stringBuffer2 = new StringBuffer(String.valueOf(strM.substring(0, strM.lastIndexOf(o0.f49827a))));
                stringBuffer2.append(".z0");
                stringBuffer2.append(i10 + 1);
                string = stringBuffer2.toString();
            }
            File file = new File(string);
            if (h.b(file)) {
                return new RandomAccessFile(file, "r");
            }
            StringBuffer stringBuffer3 = new StringBuffer("split file does not exist: ");
            stringBuffer3.append(string);
            throw new ZipException(stringBuffer3.toString());
        } catch (FileNotFoundException e10) {
            throw new ZipException(e10);
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:105:0x0156 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:0x014f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:134:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a6  */
    public void g(o oVar, File file, qc.a aVar) throws Throwable {
        RandomAccessFile randomAccessFileF;
        long j10;
        int i10;
        boolean z10;
        c cVar = this;
        if (oVar == null) {
            ZipException zipException = new ZipException("one of the input parameters is null, cannot merge split zip file");
            aVar.b(zipException);
            throw zipException;
        }
        if (!oVar.p()) {
            ZipException zipException2 = new ZipException("archive not a split zip file");
            aVar.b(zipException2);
            throw zipException2;
        }
        ArrayList arrayList = new ArrayList();
        OutputStream outputStream = null;
        RandomAccessFile randomAccessFile = null;
        outputStream = null;
        try {
            try {
                int iD = oVar.f().d();
                if (iD <= 0) {
                    throw new ZipException("corrupt zip model, archive not a split zip file");
                }
                OutputStream outputStreamL = cVar.l(file);
                long j11 = 0;
                long jLongValue = 0;
                boolean z11 = false;
                int i11 = 0;
                while (i11 <= iD) {
                    try {
                        randomAccessFileF = cVar.f(oVar, i11);
                        try {
                            Long l10 = new Long(randomAccessFileF.length());
                            if (i11 == 0) {
                                try {
                                    if (oVar.b() == null || oVar.b().b() == null || oVar.b().b().size() <= 0) {
                                        j10 = jLongValue;
                                    } else {
                                        byte[] bArr = new byte[4];
                                        randomAccessFileF.seek(j11);
                                        randomAccessFileF.read(bArr);
                                        j10 = jLongValue;
                                        if (f.e(bArr, 0) == 134695760) {
                                            i10 = 4;
                                            z10 = true;
                                        }
                                    }
                                    z10 = z11;
                                    i10 = 0;
                                } catch (IOException e10) {
                                    e = e10;
                                    aVar.b(e);
                                    throw new ZipException(e);
                                } catch (Exception e11) {
                                    e = e11;
                                    aVar.b(e);
                                    throw new ZipException(e);
                                } catch (Throwable th) {
                                    th = th;
                                    outputStream = outputStreamL;
                                    if (outputStream != null) {
                                        try {
                                            outputStream.close();
                                        } catch (IOException unused) {
                                        }
                                    }
                                    if (randomAccessFileF != null) {
                                        throw th;
                                    }
                                    try {
                                        randomAccessFileF.close();
                                        throw th;
                                    } catch (IOException unused2) {
                                        throw th;
                                    }
                                }
                            } else {
                                j10 = jLongValue;
                                z10 = z11;
                                i10 = 0;
                            }
                            if (i11 == iD) {
                                l10 = new Long(oVar.f().f());
                            }
                            Long l11 = l10;
                            long j12 = i10;
                            int i12 = i11;
                            try {
                                try {
                                    d(randomAccessFileF, outputStreamL, j12, l11.longValue(), aVar);
                                    jLongValue = j10 + (l11.longValue() - j12);
                                    if (aVar.m()) {
                                        aVar.setResult(3);
                                        aVar.u(0);
                                        if (outputStreamL != null) {
                                            try {
                                                outputStreamL.close();
                                            } catch (IOException unused3) {
                                            }
                                        }
                                        try {
                                            randomAccessFileF.close();
                                            return;
                                        } catch (IOException unused4) {
                                            return;
                                        }
                                    }
                                    arrayList.add(l11);
                                    try {
                                        randomAccessFileF.close();
                                    } catch (IOException unused5) {
                                    }
                                    i11 = i12 + 1;
                                    j11 = 0;
                                    cVar = this;
                                    z11 = z10;
                                    randomAccessFile = randomAccessFileF;
                                } catch (IOException e12) {
                                    e = e12;
                                    aVar.b(e);
                                    throw new ZipException(e);
                                }
                            } catch (Exception e13) {
                                e = e13;
                                aVar.b(e);
                                throw new ZipException(e);
                            } catch (Throwable th2) {
                                th = th2;
                                outputStream = outputStreamL;
                                randomAccessFileF = randomAccessFileF;
                                if (outputStream != null) {
                                    outputStream.close();
                                }
                                if (randomAccessFileF != null) {
                                    throw th;
                                }
                                randomAccessFileF.close();
                                throw th;
                            }
                        } catch (IOException e14) {
                            e = e14;
                        } catch (Exception e15) {
                            e = e15;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } catch (IOException e16) {
                        e = e16;
                    } catch (Exception e17) {
                        e = e17;
                    } catch (Throwable th4) {
                        th = th4;
                        randomAccessFileF = randomAccessFile;
                    }
                }
                o oVar2 = (o) oVar.clone();
                oVar2.f().p(jLongValue);
                cVar.t(oVar2, arrayList, z11);
                new mc.b().e(oVar2, outputStreamL);
                aVar.c();
                if (outputStreamL != null) {
                    try {
                        outputStreamL.close();
                    } catch (IOException unused6) {
                    }
                }
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused7) {
                    }
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (IOException e18) {
            e = e18;
        } catch (Exception e19) {
            e = e19;
        } catch (Throwable th6) {
            th = th6;
            randomAccessFileF = null;
        }
    }

    private OutputStream l(File file) throws ZipException {
        if (file == null) {
            throw new ZipException("outFile is null, cannot create outputstream");
        }
        try {
            return new FileOutputStream(file);
        } catch (FileNotFoundException e10) {
            throw new ZipException(e10);
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private void n(File file, String str) throws ZipException {
        if (!file.delete()) {
            throw new ZipException("cannot delete old zip file");
        }
        if (!new File(str).renameTo(file)) {
            throw new ZipException("cannot rename modified zip file");
        }
    }

    private void p(o oVar) throws ZipException {
        try {
            if (oVar == null) {
                throw new ZipException("zip model is null - cannot update end of central directory for split zip model");
            }
            if (oVar.b() == null) {
                throw new ZipException("corrupt zip model - getCentralDirectory, cannot update split zip model");
            }
            oVar.f().n(0);
            oVar.f().o(0);
            oVar.f().s(oVar.b().b().size());
            oVar.f().t(oVar.b().b().size());
        } catch (ZipException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private void q(o oVar, ArrayList arrayList, boolean z10) throws ZipException {
        try {
            if (oVar.b() == null) {
                throw new ZipException("corrupt zip model - getCentralDirectory, cannot update split zip model");
            }
            int size = oVar.b().b().size();
            int i10 = z10 ? 4 : 0;
            for (int i11 = 0; i11 < size; i11++) {
                long jLongValue = 0;
                for (int i12 = 0; i12 < ((pc.h) oVar.b().b().get(i11)).i(); i12++) {
                    jLongValue += ((Long) arrayList.get(i12)).longValue();
                }
                ((pc.h) oVar.b().b().get(i11)).a0((((pc.h) oVar.b().b().get(i11)).u() + jLongValue) - ((long) i10));
                ((pc.h) oVar.b().b().get(i11)).M(0);
            }
        } catch (ZipException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new ZipException(e11);
        }
    }

    private void r(o oVar, ArrayList arrayList) throws ZipException {
        if (oVar == null) {
            throw new ZipException("zip model is null, cannot update split Zip64 end of central directory locator");
        }
        if (oVar.k() == null) {
            return;
        }
        oVar.k().e(0);
        long jLongValue = 0;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            jLongValue += ((Long) arrayList.get(i10)).longValue();
        }
        oVar.k().f(oVar.k().b() + jLongValue);
        oVar.k().h(1);
    }

    private void s(o oVar, ArrayList arrayList) throws ZipException {
        if (oVar == null) {
            throw new ZipException("zip model is null, cannot update split Zip64 end of central directory record");
        }
        if (oVar.l() == null) {
            return;
        }
        oVar.l().m(0);
        oVar.l().n(0);
        oVar.l().t(oVar.f().i());
        long jLongValue = 0;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            jLongValue += ((Long) arrayList.get(i10)).longValue();
        }
        oVar.l().o(oVar.l().d() + jLongValue);
    }

    private void t(o oVar, ArrayList arrayList, boolean z10) throws ZipException {
        if (oVar == null) {
            throw new ZipException("zip model is null, cannot update split zip model");
        }
        oVar.z(false);
        q(oVar, arrayList, z10);
        p(oVar);
        if (oVar.q()) {
            r(oVar, arrayList);
            s(oVar, arrayList);
        }
    }

    public void h(o oVar, qc.a aVar) throws ZipException {
        if (oVar == null) {
            throw new ZipException("zip model is null, cannot calculate total work for merge op");
        }
        aVar.p(4);
        aVar.r(oVar.m());
        aVar.v(b(oVar));
        aVar.u(1);
    }

    public void i(o oVar, pc.h hVar, qc.a aVar) throws ZipException {
        if (oVar == null || hVar == null || aVar == null) {
            throw new ZipException("one of the input parameters is null, cannot calculate total work");
        }
        aVar.p(2);
        aVar.r(hVar.p());
        aVar.v(c(oVar, hVar));
        aVar.u(1);
    }

    /* JADX WARN: Code duplicated, block: B:242:0x0433 A[Catch: IOException -> 0x0437, TRY_LEAVE, TryCatch #29 {IOException -> 0x0437, blocks: (B:240:0x042e, B:242:0x0433), top: B:253:0x042e }] */
    /* JADX WARN: Code duplicated, block: B:247:0x043f  */
    /* JADX WARN: Code duplicated, block: B:248:0x0443  */
    /* JADX WARN: Code duplicated, block: B:253:0x042e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 14, insn: 0x0429: MOVE (r2 I:??[OBJECT, ARRAY]) = (r14 I:??[OBJECT, ARRAY]) (LINE:1066), block:B:237:0x0429 */
    /* JADX WARN: Type inference failed for: r14v28 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v33 */
    /* JADX WARN: Type inference failed for: r14v34 */
    /* JADX WARN: Type inference failed for: r14v36 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r14v52 */
    /* JADX WARN: Type inference failed for: r14v54 */
    /* JADX WARN: Type inference failed for: r14v56 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v69 */
    /* JADX WARN: Type inference failed for: r14v71 */
    /* JADX WARN: Type inference failed for: r1v0, types: [pc.h] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v43 */
    /* JADX WARN: Type inference failed for: r1v50 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v62, types: [mc.b] */
    /* JADX WARN: Type inference failed for: r1v63 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r1v76 */
    /* JADX WARN: Type inference failed for: r1v77 */
    /* JADX WARN: Type inference failed for: r1v78 */
    /* JADX WARN: Type inference failed for: r1v79 */
    /* JADX WARN: Type inference failed for: r1v80 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34, types: [mc.a] */
    /* JADX WARN: Type inference failed for: r2v35, types: [pc.i] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v53 */
    /* JADX WARN: Type inference failed for: r2v54 */
    /* JADX WARN: Type inference failed for: r2v55 */
    /* JADX WARN: Type inference failed for: r2v56 */
    /* JADX WARN: Type inference failed for: r2v57 */
    /* JADX WARN: Type inference failed for: r2v58 */
    /* JADX WARN: Type inference failed for: r2v66, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v67 */
    /* JADX WARN: Type inference failed for: r2v73 */
    /* JADX WARN: Type inference failed for: r2v74 */
    /* JADX WARN: Type inference failed for: r2v75 */
    /* JADX WARN: Type inference failed for: r2v76 */
    /* JADX WARN: Type inference failed for: r2v77 */
    /* JADX WARN: Type inference failed for: r2v78 */
    /* JADX WARN: Type inference failed for: r2v79 */
    /* JADX WARN: Type inference failed for: r2v80 */
    /* JADX WARN: Type inference failed for: r2v81 */
    /* JADX WARN: Type inference failed for: r32v0, types: [net.lingala.zip4j.util.c] */
    /* JADX WARN: Type inference failed for: r34v0, types: [pc.h] */
    /* JADX WARN: Type inference failed for: r34v1 */
    /* JADX WARN: Type inference failed for: r34v10 */
    /* JADX WARN: Type inference failed for: r34v11 */
    /* JADX WARN: Type inference failed for: r34v12 */
    /* JADX WARN: Type inference failed for: r34v13 */
    /* JADX WARN: Type inference failed for: r34v14 */
    /* JADX WARN: Type inference failed for: r34v15, types: [java.io.OutputStream, net.lingala.zip4j.io.g] */
    /* JADX WARN: Type inference failed for: r34v16 */
    /* JADX WARN: Type inference failed for: r34v17 */
    /* JADX WARN: Type inference failed for: r34v18, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r34v19 */
    /* JADX WARN: Type inference failed for: r34v2 */
    /* JADX WARN: Type inference failed for: r34v20 */
    /* JADX WARN: Type inference failed for: r34v21 */
    /* JADX WARN: Type inference failed for: r34v3 */
    /* JADX WARN: Type inference failed for: r34v4 */
    /* JADX WARN: Type inference failed for: r34v5 */
    /* JADX WARN: Type inference failed for: r34v6 */
    /* JADX WARN: Type inference failed for: r34v7 */
    /* JADX WARN: Type inference failed for: r34v8 */
    /* JADX WARN: Type inference failed for: r34v9 */
    public HashMap j(o oVar, pc.h hVar, qc.a aVar) throws Throwable {
        String str;
        Object obj;
        ?? r10;
        File file;
        File file2;
        ?? r14;
        ?? r11;
        ?? r12;
        ?? r13;
        String str2;
        File file3;
        net.lingala.zip4j.io.g gVar;
        RandomAccessFile randomAccessFile;
        ?? O;
        ?? r15;
        ?? r16;
        RandomAccessFile randomAccessFile2;
        long jU;
        long jD;
        File file4;
        ?? r34;
        ?? r17 = hVar;
        if (r17 == 0 || oVar == null) {
            throw new ZipException("input parameters is null in maintain zip file, cannot remove file from archive");
        }
        HashMap map = new HashMap();
        boolean z10 = false;
        try {
            try {
                int iV = h.v(oVar, hVar);
                try {
                    if (iV < 0) {
                        throw new ZipException("file header not found in zip model, cannot remove file");
                    }
                    if (oVar.p()) {
                        throw new ZipException("This is a split archive. Zip file format does not allow updating split/spanned files");
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    StringBuffer stringBuffer = new StringBuffer(String.valueOf(oVar.m()));
                    stringBuffer.append(jCurrentTimeMillis % 1000);
                    String string = stringBuffer.toString();
                    try {
                        File file5 = new File(string);
                        String string2 = string;
                        while (file5.exists()) {
                            try {
                                try {
                                    str2 = string2;
                                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                                    StringBuffer stringBuffer2 = new StringBuffer(String.valueOf(oVar.m()));
                                    stringBuffer2.append(jCurrentTimeMillis2 % 1000);
                                    string2 = stringBuffer2.toString();
                                    try {
                                        file5 = new File(string2);
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
                                        file3 = null;
                                        gVar = null;
                                        randomAccessFile = null;
                                        str = string2;
                                        r13 = file3;
                                        r12 = gVar;
                                        r14 = randomAccessFile;
                                        if (r14 != 0) {
                                            try {
                                                r14.close();
                                            } catch (IOException unused) {
                                                throw new ZipException("cannot close input stream or output stream when trying to delete a file from zip file");
                                            }
                                        }
                                        if (r12 != 0) {
                                            r12.close();
                                        }
                                        if (z10) {
                                            n(r13, str);
                                        } else {
                                            new File(str).delete();
                                        }
                                        throw th;
                                    }
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
                                    File file6 = file5;
                                    file = file6;
                                    str = str2;
                                    file2 = file6;
                                    r14 = file;
                                    r13 = file2;
                                    r12 = file;
                                    if (r14 != 0) {
                                        r14.close();
                                    }
                                    if (r12 != 0) {
                                        r12.close();
                                    }
                                    if (z10) {
                                        n(r13, str);
                                    } else {
                                        new File(str).delete();
                                    }
                                    throw th;
                                }
                            } catch (ZipException e14) {
                                e = e14;
                                str2 = string2;
                                file5 = null;
                            } catch (Exception e15) {
                                e = e15;
                                str2 = string2;
                                file5 = null;
                            } catch (Throwable th3) {
                                th = th3;
                                str2 = string2;
                                file5 = null;
                            }
                        }
                        try {
                            net.lingala.zip4j.io.g gVar2 = new net.lingala.zip4j.io.g(new File(string2));
                            try {
                                File file7 = new File(oVar.m());
                                try {
                                    RandomAccessFile randomAccessFileE = e(oVar, "r");
                                    try {
                                        O = new mc.a(randomAccessFileE).o(r17);
                                        try {
                                            if (O == 0) {
                                                throw new ZipException("invalid local file header, cannot remove file from archive");
                                            }
                                            long jU2 = hVar.u();
                                            if (hVar.A() != null) {
                                                try {
                                                    if (hVar.A().d() != -1) {
                                                        jU2 = hVar.A().d();
                                                    }
                                                } catch (ZipException e16) {
                                                    e = e16;
                                                } catch (Exception e17) {
                                                    e = e17;
                                                    aVar.b(e);
                                                    throw new ZipException(e);
                                                } catch (Throwable th4) {
                                                    th = th4;
                                                    randomAccessFile = randomAccessFileE;
                                                    gVar = gVar2;
                                                    file3 = file7;
                                                    str = string2;
                                                    r13 = file3;
                                                    r12 = gVar;
                                                    r14 = randomAccessFile;
                                                }
                                            }
                                            long j10 = jU2;
                                            long jF = oVar.f().f();
                                            if (oVar.q() && oVar.l() != null) {
                                                jF = oVar.l().d();
                                            }
                                            long j11 = jF;
                                            ArrayList arrayListB = oVar.b().b();
                                            if (iV == arrayListB.size() - 1) {
                                                jD = j11 - 1;
                                            } else {
                                                pc.h hVar2 = (pc.h) arrayListB.get(iV + 1);
                                                if (hVar2 != null) {
                                                    jU = hVar2.u() - 1;
                                                    if (hVar2.A() != null && hVar2.A().d() != -1) {
                                                        jD = hVar2.A().d() - 1;
                                                    }
                                                    if (r14 != 0) {
                                                        r14.close();
                                                    }
                                                    if (r12 != 0) {
                                                        r12.close();
                                                    }
                                                    if (z10) {
                                                        n(r13, str);
                                                    } else {
                                                        new File(str).delete();
                                                    }
                                                    throw th;
                                                }
                                                jU = -1;
                                                if (j10 >= 0 || jU < 0) {
                                                    throw new ZipException("invalid offset for start and end of local file, cannot remove file");
                                                }
                                                try {
                                                    if (iV == 0) {
                                                        try {
                                                            if (oVar.b().b().size() > 1) {
                                                                randomAccessFile2 = randomAccessFileE;
                                                                hVar = gVar2;
                                                                file4 = file7;
                                                                str2 = string2;
                                                                d(randomAccessFileE, gVar2, jU + 1, j11, aVar);
                                                            } else {
                                                                randomAccessFile2 = randomAccessFileE;
                                                                hVar = gVar2;
                                                                file4 = file7;
                                                                str2 = string2;
                                                            }
                                                        } catch (ZipException e18) {
                                                            e = e18;
                                                            hVar = gVar2;
                                                            file4 = file7;
                                                            str2 = string2;
                                                            aVar.b(e);
                                                            throw e;
                                                        } catch (Exception e19) {
                                                            e = e19;
                                                            hVar = gVar2;
                                                            file4 = file7;
                                                            str2 = string2;
                                                            aVar.b(e);
                                                            throw new ZipException(e);
                                                        } catch (Throwable th5) {
                                                            th = th5;
                                                            randomAccessFile2 = randomAccessFileE;
                                                            hVar = gVar2;
                                                            file4 = file7;
                                                            str2 = string2;
                                                            r12 = hVar;
                                                            str = str2;
                                                            r14 = randomAccessFile2;
                                                            r13 = file4;
                                                        }
                                                    } else {
                                                        randomAccessFile2 = randomAccessFileE;
                                                        r34 = gVar2;
                                                        file4 = file7;
                                                        str2 = string2;
                                                        try {
                                                            if (iV == arrayListB.size() - 1) {
                                                                d(randomAccessFile2, r34, 0L, j10, aVar);
                                                                hVar = r34;
                                                            } else {
                                                                d(randomAccessFile2, r34, 0L, j10, aVar);
                                                                d(randomAccessFile2, r34, jU + 1, j11, aVar);
                                                                hVar = r34;
                                                            }
                                                        } catch (ZipException e20) {
                                                            e = e20;
                                                            O = r34;
                                                            r16 = O;
                                                            aVar.b(e);
                                                            throw e;
                                                        } catch (Exception e21) {
                                                            e = e21;
                                                            O = r34;
                                                            r15 = O;
                                                            aVar.b(e);
                                                            throw new ZipException(e);
                                                        } catch (Throwable th6) {
                                                            th = th6;
                                                            O = r34;
                                                            r17 = file4;
                                                            str = str2;
                                                            r11 = r17;
                                                            r10 = O;
                                                            r14 = randomAccessFile2;
                                                            r13 = r11;
                                                            r12 = r10;
                                                            if (r14 != 0) {
                                                                r14.close();
                                                            }
                                                            if (r12 != 0) {
                                                                r12.close();
                                                            }
                                                            if (z10) {
                                                                n(r13, str);
                                                            } else {
                                                                new File(str).delete();
                                                            }
                                                            throw th;
                                                        }
                                                    }
                                                    if (aVar.m()) {
                                                        aVar.setResult(3);
                                                        aVar.u(0);
                                                        if (randomAccessFile2 != null) {
                                                            try {
                                                                randomAccessFile2.close();
                                                            } catch (IOException unused2) {
                                                                throw new ZipException("cannot close input stream or output stream when trying to delete a file from zip file");
                                                            }
                                                        }
                                                        hVar.close();
                                                        new File(str2).delete();
                                                        return null;
                                                    }
                                                    oVar.f().p(hVar.d());
                                                    oVar.f().s(oVar.f().i() - 1);
                                                    oVar.f().t(oVar.f().j() - 1);
                                                    oVar.b().b().remove(iV);
                                                    r34 = hVar;
                                                    while (iV < oVar.b().b().size()) {
                                                        ?? r18 = r34;
                                                        File file8 = file4;
                                                        long jU3 = ((pc.h) oVar.b().b().get(iV)).u();
                                                        if (((pc.h) oVar.b().b().get(iV)).A() != null && ((pc.h) oVar.b().b().get(iV)).A().d() != -1) {
                                                            jU3 = ((pc.h) oVar.b().b().get(iV)).A().d();
                                                        }
                                                        ((pc.h) oVar.b().b().get(iV)).a0((jU3 - (jU - j10)) - 1);
                                                        iV++;
                                                        file4 = file8;
                                                        r34 = r18;
                                                    }
                                                    O = r34;
                                                    try {
                                                        new mc.b().d(oVar, O);
                                                        try {
                                                            map.put(e.f94686a0, Long.toString(oVar.f().f()));
                                                            if (randomAccessFile2 != null) {
                                                                try {
                                                                    randomAccessFile2.close();
                                                                } catch (IOException unused3) {
                                                                    throw new ZipException("cannot close input stream or output stream when trying to delete a file from zip file");
                                                                }
                                                            }
                                                            O.close();
                                                            n(file4, str2);
                                                            return map;
                                                        } catch (ZipException e22) {
                                                            e = e22;
                                                            r16 = O;
                                                            aVar.b(e);
                                                            throw e;
                                                        } catch (Exception e23) {
                                                            e = e23;
                                                            r15 = O;
                                                            aVar.b(e);
                                                            throw new ZipException(e);
                                                        } catch (Throwable th7) {
                                                            th = th7;
                                                            r13 = file4;
                                                            str = str2;
                                                            r14 = randomAccessFile2;
                                                            z10 = true;
                                                            r12 = O;
                                                        }
                                                    } catch (ZipException e24) {
                                                        e = e24;
                                                        r16 = O;
                                                        aVar.b(e);
                                                        throw e;
                                                    } catch (Exception e25) {
                                                        e = e25;
                                                        r15 = O;
                                                        aVar.b(e);
                                                        throw new ZipException(e);
                                                    } catch (Throwable th8) {
                                                        th = th8;
                                                        r17 = file4;
                                                        str = str2;
                                                        r11 = r17;
                                                        r10 = O;
                                                        r14 = randomAccessFile2;
                                                        r13 = r11;
                                                        r12 = r10;
                                                    }
                                                } catch (ZipException e26) {
                                                    e = e26;
                                                } catch (Exception e27) {
                                                    e = e27;
                                                } catch (Throwable th9) {
                                                    th = th9;
                                                }
                                            }
                                            jU = jD;
                                            if (j10 >= 0) {
                                            }
                                            throw new ZipException("invalid offset for start and end of local file, cannot remove file");
                                        } catch (ZipException e28) {
                                            e = e28;
                                        } catch (Exception e29) {
                                            e = e29;
                                        } catch (Throwable th10) {
                                            th = th10;
                                        }
                                    } catch (ZipException e30) {
                                        e = e30;
                                        O = gVar2;
                                        str2 = string2;
                                    } catch (Exception e31) {
                                        e = e31;
                                        O = gVar2;
                                        str2 = string2;
                                    } catch (Throwable th11) {
                                        th = th11;
                                        randomAccessFile2 = randomAccessFileE;
                                        O = gVar2;
                                        r17 = file7;
                                        str2 = string2;
                                    }
                                } catch (ZipException e32) {
                                    e = e32;
                                    O = gVar2;
                                    str2 = string2;
                                } catch (Exception e33) {
                                    e = e33;
                                    O = gVar2;
                                    str2 = string2;
                                } catch (Throwable th12) {
                                    th = th12;
                                    r12 = gVar2;
                                    r13 = file7;
                                    r14 = 0;
                                    str = string2;
                                }
                            } catch (ZipException e34) {
                                e = e34;
                                O = gVar2;
                                str2 = string2;
                            } catch (Exception e35) {
                                e = e35;
                                O = gVar2;
                                str2 = string2;
                            } catch (Throwable th13) {
                                th = th13;
                                r12 = gVar2;
                                r13 = 0;
                                str = string2;
                                r14 = 0;
                            }
                        } catch (FileNotFoundException e36) {
                            str2 = string2;
                            file5 = null;
                            throw new ZipException(e36);
                        }
                    } catch (ZipException e37) {
                        e = e37;
                    } catch (Exception e38) {
                        e = e38;
                    } catch (Throwable th14) {
                        th = th14;
                        r13 = 0;
                        r14 = 0;
                        str = string;
                        r12 = 0;
                    }
                } catch (ZipException e39) {
                    e = e39;
                } catch (Exception e40) {
                    e = e40;
                    aVar.b(e);
                    throw new ZipException(e);
                } catch (Throwable th15) {
                    th = th15;
                    File file9 = null;
                    file = file9;
                    file2 = file9;
                    r14 = file;
                    r13 = file2;
                    r12 = file;
                    if (r14 != 0) {
                        r14.close();
                    }
                    if (r12 != 0) {
                        r12.close();
                    }
                    if (z10) {
                        n(r13, str);
                    } else {
                        new File(str).delete();
                    }
                    throw th;
                }
            } catch (Throwable th16) {
                th = th16;
                r10 = obj;
                r11 = r17;
            }
        } catch (ZipException e41) {
            e = e41;
        } catch (Exception e42) {
            e = e42;
        } catch (Throwable th17) {
            th = th17;
            str = null;
        }
        aVar.b(e);
        throw e;
    }

    public void k(o oVar, File file, qc.a aVar, boolean z10) throws Throwable {
        if (z10) {
            new b(this, e.G0, oVar, file, aVar).start();
        } else {
            g(oVar, file, aVar);
        }
    }

    public HashMap m(o oVar, pc.h hVar, qc.a aVar, boolean z10) throws Throwable {
        if (z10) {
            new a(this, e.G0, oVar, hVar, aVar).start();
            return null;
        }
        HashMap mapJ = j(oVar, hVar, aVar);
        aVar.c();
        return mapJ;
    }

    public void o(o oVar, String str) throws Throwable {
        if (str == null) {
            throw new ZipException("comment is null, cannot update Zip file with comment");
        }
        if (oVar == null) {
            throw new ZipException("zipModel is null, cannot update Zip file with comment");
        }
        byte[] bytes = str.getBytes();
        int length = str.length();
        if (h.B(e.C0)) {
            try {
                String str2 = new String(str.getBytes(e.C0), e.C0);
                byte[] bytes2 = str2.getBytes(e.C0);
                length = str2.length();
                str = str2;
                bytes = bytes2;
            } catch (UnsupportedEncodingException unused) {
                bytes = str.getBytes();
                length = str.length();
            }
        }
        if (length > 65535) {
            throw new ZipException("comment length exceeds maximum length");
        }
        oVar.f().k(str);
        oVar.f().l(bytes);
        oVar.f().m(length);
        net.lingala.zip4j.io.g gVar = null;
        try {
            try {
                mc.b bVar = new mc.b();
                net.lingala.zip4j.io.g gVar2 = new net.lingala.zip4j.io.g(oVar.m());
                try {
                    if (oVar.q()) {
                        gVar2.seek(oVar.l().d());
                    } else {
                        gVar2.seek(oVar.f().f());
                    }
                    bVar.e(oVar, gVar2);
                    try {
                        gVar2.close();
                    } catch (IOException unused2) {
                    }
                } catch (FileNotFoundException e10) {
                    e = e10;
                    throw new ZipException(e);
                } catch (IOException e11) {
                    e = e11;
                    throw new ZipException(e);
                } catch (Throwable th) {
                    th = th;
                    gVar = gVar2;
                    if (gVar != null) {
                        try {
                            gVar.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e12) {
            e = e12;
        } catch (IOException e13) {
            e = e13;
        }
    }
}
