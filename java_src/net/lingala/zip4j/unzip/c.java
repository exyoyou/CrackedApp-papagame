package net.lingala.zip4j.unzip;

import java.io.File;
import java.util.ArrayList;
import net.lingala.zip4j.exception.ZipException;
import pc.h;
import pc.k;
import pc.o;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private o f94669a;

    public c(o oVar) throws ZipException {
        if (oVar == null) {
            throw new ZipException("ZipModel is null");
        }
        this.f94669a = oVar;
    }

    private long c(ArrayList arrayList) throws ZipException {
        if (arrayList == null) {
            throw new ZipException("fileHeaders is null, cannot calculate total work");
        }
        long jE = 0;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            h hVar = (h) arrayList.get(i10);
            jE += (hVar.A() == null || hVar.A().f() <= 0) ? hVar.e() : hVar.A().a();
        }
        return jE;
    }

    private void d(h hVar, String str, String str2) throws ZipException {
        if (hVar == null || !net.lingala.zip4j.util.h.A(str)) {
            throw new ZipException("Cannot check output directory structure...one of the parameters was null");
        }
        String strP = hVar.p();
        if (!net.lingala.zip4j.util.h.A(str2)) {
            str2 = strP;
        }
        if (net.lingala.zip4j.util.h.A(str2)) {
            StringBuffer stringBuffer = new StringBuffer(String.valueOf(str));
            stringBuffer.append(str2);
            try {
                File file = new File(new File(stringBuffer.toString()).getParent());
                if (file.exists()) {
                    return;
                }
                file.mkdirs();
            } catch (Exception e10) {
                throw new ZipException(e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(ArrayList arrayList, k kVar, qc.a aVar, String str) throws ZipException {
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            i((h) arrayList.get(i10), str, kVar, null, aVar);
            if (aVar.m()) {
                aVar.setResult(3);
                aVar.u(0);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(h hVar, String str, k kVar, String str2, qc.a aVar) throws ZipException {
        if (hVar == null) {
            throw new ZipException("fileHeader is null");
        }
        try {
            aVar.r(hVar.p());
            String str3 = net.lingala.zip4j.util.e.E0;
            if (!str.endsWith(str3)) {
                StringBuffer stringBuffer = new StringBuffer(str);
                stringBuffer.append(str3);
                str = stringBuffer.toString();
            }
            if (!hVar.C()) {
                d(hVar, str, str2);
                try {
                    new d(this.f94669a, hVar).t(aVar, str, str2, kVar);
                    return;
                } catch (Exception e10) {
                    aVar.b(e10);
                    throw new ZipException(e10);
                }
            }
            try {
                String strP = hVar.p();
                if (net.lingala.zip4j.util.h.A(strP)) {
                    StringBuffer stringBuffer2 = new StringBuffer(String.valueOf(str));
                    stringBuffer2.append(strP);
                    File file = new File(stringBuffer2.toString());
                    if (file.exists()) {
                        return;
                    }
                    file.mkdirs();
                }
            } catch (Exception e11) {
                aVar.b(e11);
                throw new ZipException(e11);
            }
        } catch (ZipException e12) {
            aVar.b(e12);
            throw e12;
        } catch (Exception e13) {
            aVar.b(e13);
            throw new ZipException(e13);
        }
    }

    public void e(k kVar, String str, qc.a aVar, boolean z10) throws ZipException {
        pc.c cVarB = this.f94669a.b();
        if (cVarB == null || cVarB.b() == null) {
            throw new ZipException("invalid central directory in zipModel");
        }
        ArrayList arrayListB = cVarB.b();
        aVar.p(1);
        aVar.v(c(arrayListB));
        aVar.u(1);
        if (z10) {
            new a(this, net.lingala.zip4j.util.e.G0, arrayListB, kVar, aVar, str).start();
        } else {
            h(arrayListB, kVar, aVar, str);
        }
    }

    public void f(h hVar, String str, k kVar, String str2, qc.a aVar, boolean z10) throws ZipException {
        if (hVar == null) {
            throw new ZipException("fileHeader is null");
        }
        aVar.p(1);
        aVar.v(hVar.e());
        aVar.u(1);
        aVar.t(0);
        aVar.r(hVar.p());
        if (z10) {
            new b(this, net.lingala.zip4j.util.e.G0, hVar, str, kVar, str2, aVar).start();
        } else {
            i(hVar, str, kVar, str2, aVar);
            aVar.c();
        }
    }

    public net.lingala.zip4j.io.h g(h hVar) throws ZipException {
        return new d(this.f94669a, hVar).k();
    }
}
