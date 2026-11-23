package mc;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.util.e;
import net.lingala.zip4j.util.h;
import pc.k;
import pc.o;
import pc.p;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f94234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f94235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private o f94236c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f94237d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private qc.a f94238e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f94239f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f94240g;

    public c(String str) throws ZipException {
        this(new File(str));
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0054 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private void J() throws Throwable {
        RandomAccessFile randomAccessFile;
        Throwable th;
        FileNotFoundException e10;
        if (!h.c(this.f94234a)) {
            throw new ZipException("zip file does not exist");
        }
        if (!h.d(this.f94234a)) {
            throw new ZipException("no read access for the input zip file");
        }
        if (this.f94235b != 2) {
            throw new ZipException("Invalid mode");
        }
        try {
            randomAccessFile = new RandomAccessFile(new File(this.f94234a), "r");
            try {
                try {
                    if (this.f94236c == null) {
                        o oVarD = new a(randomAccessFile).d(this.f94240g);
                        this.f94236c = oVarD;
                        if (oVarD != null) {
                            oVarD.F(this.f94234a);
                        }
                    }
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused) {
                    }
                } catch (FileNotFoundException e11) {
                    e10 = e11;
                    throw new ZipException(e10);
                }
            } catch (Throwable th2) {
                th = th2;
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e12) {
            randomAccessFile = null;
            e10 = e12;
        } catch (Throwable th3) {
            randomAccessFile = null;
            th = th3;
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            throw th;
        }
    }

    private void d(File file, p pVar, boolean z10) throws Throwable {
        g();
        o oVar = this.f94236c;
        if (oVar == null) {
            throw new ZipException("internal error: zip model is null");
        }
        if (z10 && oVar.p()) {
            throw new ZipException("This is a split archive. Zip file format does not allow updating split/spanned files");
        }
        new net.lingala.zip4j.zip.b(this.f94236c).c(file, pVar, this.f94238e, this.f94239f);
    }

    private void g() throws Throwable {
        if (this.f94236c == null) {
            if (h.c(this.f94234a)) {
                J();
            } else {
                h();
            }
        }
    }

    private void h() {
        o oVar = new o();
        this.f94236c = oVar;
        oVar.F(this.f94234a);
        this.f94236c.w(this.f94240g);
    }

    public List A() throws Throwable {
        J();
        o oVar = this.f94236c;
        if (oVar == null || oVar.b() == null) {
            return null;
        }
        return this.f94236c.b().b();
    }

    public net.lingala.zip4j.io.h B(pc.h hVar) throws Throwable {
        if (hVar == null) {
            throw new ZipException("FileHeader is null, cannot get InputStream");
        }
        g();
        o oVar = this.f94236c;
        if (oVar != null) {
            return new net.lingala.zip4j.unzip.c(oVar).g(hVar);
        }
        throw new ZipException("zip model is null, cannot get inputstream");
    }

    public qc.a C() {
        return this.f94238e;
    }

    public ArrayList D() throws Throwable {
        g();
        return h.y(this.f94236c);
    }

    public boolean E() throws Throwable {
        if (this.f94236c == null) {
            J();
            if (this.f94236c == null) {
                throw new ZipException("Zip Model is null");
            }
        }
        if (this.f94236c.b() == null || this.f94236c.b().b() == null) {
            throw new ZipException("invalid zip file");
        }
        ArrayList arrayListB = this.f94236c.b().b();
        for (int i10 = 0; i10 < arrayListB.size(); i10++) {
            pc.h hVar = (pc.h) arrayListB.get(i10);
            if (hVar != null && hVar.D()) {
                this.f94237d = true;
                break;
            }
        }
        return this.f94237d;
    }

    public boolean F() {
        return this.f94239f;
    }

    public boolean G() throws Throwable {
        if (this.f94236c == null) {
            J();
            if (this.f94236c == null) {
                throw new ZipException("Zip Model is null");
            }
        }
        return this.f94236c.p();
    }

    public boolean H() throws Throwable {
        try {
            J();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public void I(File file) throws Throwable {
        if (file == null) {
            throw new ZipException("outputZipFile is null, cannot merge split files");
        }
        if (file.exists()) {
            throw new ZipException("output Zip File already exists");
        }
        g();
        if (this.f94236c == null) {
            throw new ZipException("zip model is null, corrupt zip file?");
        }
        net.lingala.zip4j.util.c cVar = new net.lingala.zip4j.util.c();
        cVar.h(this.f94236c, this.f94238e);
        cVar.k(this.f94236c, file, this.f94238e, this.f94239f);
    }

    public void K(String str) throws Throwable {
        if (!h.A(str)) {
            throw new ZipException("file name is empty or null, cannot remove file");
        }
        if (this.f94236c == null && h.c(this.f94234a)) {
            J();
        }
        if (this.f94236c.p()) {
            throw new ZipException("Zip file format does not allow updating split/spanned files");
        }
        pc.h hVarP = h.p(this.f94236c, str);
        if (hVarP != null) {
            L(hVarP);
        } else {
            StringBuffer stringBuffer = new StringBuffer("could not find file header for file: ");
            stringBuffer.append(str);
            throw new ZipException(stringBuffer.toString());
        }
    }

    public void L(pc.h hVar) throws Throwable {
        if (hVar == null) {
            throw new ZipException("file header is null, cannot remove file");
        }
        if (this.f94236c == null && h.c(this.f94234a)) {
            J();
        }
        if (this.f94236c.p()) {
            throw new ZipException("Zip file format does not allow updating split/spanned files");
        }
        net.lingala.zip4j.util.c cVar = new net.lingala.zip4j.util.c();
        cVar.i(this.f94236c, hVar, this.f94238e);
        cVar.m(this.f94236c, hVar, this.f94238e, this.f94239f);
    }

    public void M(String str) throws Throwable {
        if (str == null) {
            throw new ZipException("input comment is null, cannot update zip file");
        }
        if (!h.c(this.f94234a)) {
            throw new ZipException("zip file does not exist, cannot set comment for zip file");
        }
        J();
        o oVar = this.f94236c;
        if (oVar == null) {
            throw new ZipException("zipModel is null, cannot update zip file");
        }
        if (oVar.f() == null) {
            throw new ZipException("end of central directory is null, cannot set comment");
        }
        new net.lingala.zip4j.util.c().o(this.f94236c, str);
    }

    public void N(String str) throws ZipException {
        if (!h.A(str)) {
            throw new ZipException("null or empty charset name");
        }
        if (h.B(str)) {
            this.f94240g = str;
        } else {
            StringBuffer stringBuffer = new StringBuffer("unsupported charset: ");
            stringBuffer.append(str);
            throw new ZipException(stringBuffer.toString());
        }
    }

    public void O(String str) throws Throwable {
        if (!h.A(str)) {
            throw null;
        }
        P(str.toCharArray());
    }

    public void P(char[] cArr) throws Throwable {
        if (this.f94236c == null) {
            J();
            if (this.f94236c == null) {
                throw new ZipException("Zip Model is null");
            }
        }
        if (this.f94236c.b() == null || this.f94236c.b().b() == null) {
            throw new ZipException("invalid zip file");
        }
        for (int i10 = 0; i10 < this.f94236c.b().b().size(); i10++) {
            if (this.f94236c.b().b().get(i10) != null && ((pc.h) this.f94236c.b().b().get(i10)).D()) {
                ((pc.h) this.f94236c.b().b().get(i10)).b0(cArr);
            }
        }
    }

    public void Q(boolean z10) {
        this.f94239f = z10;
    }

    public void a(File file, p pVar) throws Throwable {
        ArrayList arrayList = new ArrayList();
        arrayList.add(file);
        b(arrayList, pVar);
    }

    public void b(ArrayList arrayList, p pVar) throws Throwable {
        g();
        if (this.f94236c == null) {
            throw new ZipException("internal error: zip model is null");
        }
        if (arrayList == null) {
            throw new ZipException("input file ArrayList is null, cannot add files");
        }
        if (!h.a(arrayList, 1)) {
            throw new ZipException("One or more elements in the input ArrayList is not of type File");
        }
        if (pVar == null) {
            throw new ZipException("input parameters are null, cannot add files to zip");
        }
        if (this.f94238e.j() == 1) {
            throw new ZipException("invalid operation - Zip4j is in busy state");
        }
        if (h.c(this.f94234a) && this.f94236c.p()) {
            throw new ZipException("Zip file already exists. Zip file format does not allow updating split/spanned files");
        }
        new net.lingala.zip4j.zip.b(this.f94236c).b(arrayList, pVar, this.f94238e, this.f94239f);
    }

    public void c(File file, p pVar) throws Throwable {
        if (file == null) {
            throw new ZipException("input path is null, cannot add folder to zip file");
        }
        if (pVar == null) {
            throw new ZipException("input parameters are null, cannot add folder to zip file");
        }
        d(file, pVar, true);
    }

    public void e(String str, p pVar) throws Throwable {
        if (!h.A(str)) {
            throw new ZipException("input path is null or empty, cannot add folder to zip file");
        }
        c(new File(str), pVar);
    }

    public void f(InputStream inputStream, p pVar) throws Throwable {
        if (inputStream == null) {
            throw new ZipException("inputstream is null, cannot add file to zip");
        }
        if (pVar == null) {
            throw new ZipException("zip parameters are null");
        }
        Q(false);
        g();
        if (this.f94236c == null) {
            throw new ZipException("internal error: zip model is null");
        }
        if (h.c(this.f94234a) && this.f94236c.p()) {
            throw new ZipException("Zip file already exists. Zip file format does not allow updating split/spanned files");
        }
        new net.lingala.zip4j.zip.b(this.f94236c).d(inputStream, pVar);
    }

    public void i(File file, p pVar) throws Throwable {
        ArrayList arrayList = new ArrayList();
        arrayList.add(file);
        l(arrayList, pVar, false, -1L);
    }

    public void j(File file, p pVar, boolean z10, long j10) throws Throwable {
        ArrayList arrayList = new ArrayList();
        arrayList.add(file);
        l(arrayList, pVar, z10, j10);
    }

    public void k(ArrayList arrayList, p pVar) throws Throwable {
        l(arrayList, pVar, false, -1L);
    }

    public void l(ArrayList arrayList, p pVar, boolean z10, long j10) throws Throwable {
        if (!h.A(this.f94234a)) {
            throw new ZipException("zip file path is empty");
        }
        if (h.c(this.f94234a)) {
            StringBuffer stringBuffer = new StringBuffer("zip file: ");
            stringBuffer.append(this.f94234a);
            stringBuffer.append(" already exists. To add files to existing zip file use addFile method");
            throw new ZipException(stringBuffer.toString());
        }
        if (arrayList == null) {
            throw new ZipException("input file ArrayList is null, cannot create zip file");
        }
        if (!h.a(arrayList, 1)) {
            throw new ZipException("One or more elements in the input ArrayList is not of type File");
        }
        h();
        this.f94236c.z(z10);
        this.f94236c.A(j10);
        b(arrayList, pVar);
    }

    public void m(File file, p pVar, boolean z10, long j10) throws Throwable {
        if (file == null) {
            throw new ZipException("folderToAdd is null, cannot create zip file from folder");
        }
        if (pVar == null) {
            throw new ZipException("input parameters are null, cannot create zip file from folder");
        }
        if (h.c(this.f94234a)) {
            StringBuffer stringBuffer = new StringBuffer("zip file: ");
            stringBuffer.append(this.f94234a);
            stringBuffer.append(" already exists. To add files to existing zip file use addFolder method");
            throw new ZipException(stringBuffer.toString());
        }
        h();
        this.f94236c.z(z10);
        if (z10) {
            this.f94236c.A(j10);
        }
        d(file, pVar, false);
    }

    public void n(String str, p pVar, boolean z10, long j10) throws Throwable {
        if (!h.A(str)) {
            throw new ZipException("folderToAdd is empty or null, cannot create Zip File from folder");
        }
        m(new File(str), pVar, z10, j10);
    }

    public void o(String str) throws Throwable {
        p(str, null);
    }

    public void p(String str, k kVar) throws Throwable {
        if (!h.A(str)) {
            throw new ZipException("output path is null or invalid");
        }
        if (!h.f(str)) {
            throw new ZipException("invalid output path");
        }
        if (this.f94236c == null) {
            J();
        }
        if (this.f94236c == null) {
            throw new ZipException("Internal error occurred when extracting zip file");
        }
        if (this.f94238e.j() == 1) {
            throw new ZipException("invalid operation - Zip4j is in busy state");
        }
        new net.lingala.zip4j.unzip.c(this.f94236c).e(kVar, str, this.f94238e, this.f94239f);
    }

    public void q(String str, String str2) throws Throwable {
        r(str, str2, null);
    }

    public void r(String str, String str2, k kVar) throws Throwable {
        s(str, str2, kVar, null);
    }

    public void s(String str, String str2, k kVar, String str3) throws Throwable {
        if (!h.A(str)) {
            throw new ZipException("file to extract is null or empty, cannot extract file");
        }
        if (!h.A(str2)) {
            throw new ZipException("destination string path is empty or null, cannot extract file");
        }
        J();
        pc.h hVarP = h.p(this.f94236c, str);
        if (hVarP == null) {
            throw new ZipException("file header not found for given file name, cannot extract file");
        }
        if (this.f94238e.j() == 1) {
            throw new ZipException("invalid operation - Zip4j is in busy state");
        }
        hVarP.a(this.f94236c, str2, kVar, str3, this.f94238e, this.f94239f);
    }

    public void t(pc.h hVar, String str) throws Throwable {
        u(hVar, str, null);
    }

    public void u(pc.h hVar, String str, k kVar) throws Throwable {
        v(hVar, str, kVar, null);
    }

    public void v(pc.h hVar, String str, k kVar, String str2) throws Throwable {
        if (hVar == null) {
            throw new ZipException("input file header is null, cannot extract file");
        }
        if (!h.A(str)) {
            throw new ZipException("destination path is empty or null, cannot extract file");
        }
        J();
        if (this.f94238e.j() == 1) {
            throw new ZipException("invalid operation - Zip4j is in busy state");
        }
        hVar.a(this.f94236c, str, kVar, str2, this.f94238e, this.f94239f);
    }

    public String w() throws ZipException {
        return x(null);
    }

    public String x(String str) throws Throwable {
        if (str == null) {
            str = e.C0;
            if (!h.B(e.C0)) {
                str = e.D0;
            }
        }
        if (!h.c(this.f94234a)) {
            throw new ZipException("zip file does not exist, cannot read comment");
        }
        g();
        o oVar = this.f94236c;
        if (oVar == null) {
            throw new ZipException("zip model is null, cannot read comment");
        }
        if (oVar.f() == null) {
            throw new ZipException("end of central directory record is null, cannot read comment");
        }
        if (this.f94236c.f().b() == null || this.f94236c.f().b().length <= 0) {
            return null;
        }
        try {
            return new String(this.f94236c.f().b(), str);
        } catch (UnsupportedEncodingException e10) {
            throw new ZipException(e10);
        }
    }

    public File y() {
        return new File(this.f94234a);
    }

    public pc.h z(String str) throws Throwable {
        if (!h.A(str)) {
            throw new ZipException("input file name is emtpy or null, cannot get FileHeader");
        }
        J();
        o oVar = this.f94236c;
        if (oVar == null || oVar.b() == null) {
            return null;
        }
        return h.p(this.f94236c, str);
    }

    public c(File file) throws ZipException {
        if (file == null) {
            throw new ZipException("Input zip file parameter is not null", 1);
        }
        this.f94234a = file.getPath();
        this.f94235b = 2;
        this.f94238e = new qc.a();
        this.f94239f = false;
    }
}
