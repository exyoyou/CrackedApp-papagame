package net.lingala.zip4j.util;

import com.join.mgps.Util.o0;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;
import net.lingala.zip4j.exception.ZipException;
import pc.o;

/* JADX INFO: loaded from: classes.dex */
public class h {
    public static boolean A(String str) {
        return str != null && str.trim().length() > 0;
    }

    public static boolean B(String str) throws ZipException {
        if (!A(str)) {
            throw new ZipException("charset is null or empty, cannot check if it is supported");
        }
        try {
            new String("a".getBytes(), str);
            return true;
        } catch (UnsupportedEncodingException unused) {
            return false;
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
    }

    public static boolean C() {
        return System.getProperty("os.name").toLowerCase().indexOf("win") >= 0;
    }

    public static long D(long j10) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j10);
        int i10 = calendar.get(1);
        if (i10 < 1980) {
            return 2162688L;
        }
        return (calendar.get(13) >> 1) | ((i10 - 1980) << 25) | ((calendar.get(2) + 1) << 21) | (calendar.get(5) << 16) | (calendar.get(11) << 11) | (calendar.get(12) << 5);
    }

    public static void E(File file) throws ZipException {
    }

    public static void F(File file) throws ZipException {
    }

    public static void G(File file) throws ZipException {
        if (file == null) {
            throw new ZipException("input file is null. cannot set read only file attribute");
        }
        if (file.exists()) {
            file.setReadOnly();
        }
    }

    public static void H(File file) throws ZipException {
    }

    public static boolean a(ArrayList arrayList, int i10) throws ZipException {
        if (arrayList == null) {
            throw new ZipException("input arraylist is null, cannot check types");
        }
        if (arrayList.size() <= 0) {
            return true;
        }
        boolean z10 = false;
        if (i10 == 1) {
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                if (!(arrayList.get(i11) instanceof File)) {
                    z10 = true;
                    break;
                }
            }
        } else if (i10 == 2) {
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                if (!(arrayList.get(i12) instanceof String)) {
                    z10 = true;
                    break;
                }
            }
        }
        return !z10;
    }

    public static boolean b(File file) throws ZipException {
        if (file != null) {
            return file.exists();
        }
        throw new ZipException("cannot check if file exists: input file is null");
    }

    public static boolean c(String str) throws ZipException {
        if (A(str)) {
            return b(new File(str));
        }
        throw new ZipException("path is null");
    }

    public static boolean d(String str) throws ZipException {
        if (!A(str)) {
            throw new ZipException("path is null");
        }
        if (c(str)) {
            try {
                return new File(str).canRead();
            } catch (Exception unused) {
                throw new ZipException("cannot read zip file");
            }
        }
        StringBuffer stringBuffer = new StringBuffer("file does not exist: ");
        stringBuffer.append(str);
        throw new ZipException(stringBuffer.toString());
    }

    public static boolean e(String str) throws ZipException {
        if (!A(str)) {
            throw new ZipException("path is null");
        }
        if (c(str)) {
            try {
                return new File(str).canWrite();
            } catch (Exception unused) {
                throw new ZipException("cannot read zip file");
            }
        }
        StringBuffer stringBuffer = new StringBuffer("file does not exist: ");
        stringBuffer.append(str);
        throw new ZipException(stringBuffer.toString());
    }

    public static boolean f(String str) throws ZipException {
        if (!A(str)) {
            throw new ZipException(new NullPointerException("output path is null"));
        }
        File file = new File(str);
        if (file.exists()) {
            if (!file.isDirectory()) {
                throw new ZipException("output folder is not valid");
            }
            if (file.canWrite()) {
                return true;
            }
            throw new ZipException("no write access to output folder");
        }
        try {
            file.mkdirs();
            if (!file.isDirectory()) {
                throw new ZipException("output folder is not valid");
            }
            if (file.canWrite()) {
                return true;
            }
            throw new ZipException("no write access to destination folder");
        } catch (Exception unused) {
            throw new ZipException("Cannot create destination folder");
        }
    }

    public static byte[] g(String str) throws ZipException {
        try {
            String strI = i(str);
            if (strI.equals(e.B0)) {
                return str.getBytes(e.B0);
            }
            return strI.equals(e.A0) ? str.getBytes(e.A0) : str.getBytes();
        } catch (UnsupportedEncodingException unused) {
            return str.getBytes();
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
    }

    public static String h(byte[] bArr, boolean z10) {
        if (!z10) {
            return m(bArr);
        }
        try {
            return new String(bArr, e.A0);
        } catch (UnsupportedEncodingException unused) {
            return new String(bArr);
        }
    }

    public static String i(String str) throws ZipException {
        if (str == null) {
            throw new ZipException("input string is null, cannot detect charset");
        }
        try {
            if (str.equals(new String(str.getBytes(e.B0), e.B0))) {
                return e.B0;
            }
            return str.equals(new String(str.getBytes(e.A0), e.A0)) ? e.A0 : e.D0;
        } catch (UnsupportedEncodingException unused) {
            return e.D0;
        } catch (Exception unused2) {
            return e.D0;
        }
    }

    public static long j(int i10) {
        int i11 = (i10 & 31) * 2;
        int i12 = (i10 >> 5) & 63;
        int i13 = (i10 >> 11) & 31;
        int i14 = (i10 >> 16) & 31;
        int i15 = ((i10 >> 21) & 15) - 1;
        int i16 = ((i10 >> 25) & 127) + 1980;
        Calendar calendar = Calendar.getInstance();
        calendar.set(i16, i15, i14, i13, i12, i11);
        calendar.set(14, 0);
        return calendar.getTime().getTime();
    }

    public static String k(String str) throws ZipException {
        if (A(str)) {
            return new File(str).getAbsolutePath();
        }
        throw new ZipException("filePath is null or empty, cannot get absolute file path");
    }

    public static long[] l() {
        return new long[]{e.f94685a, 134695760, e.f94689c, e.f94691d, e.f94693e, e.f94695f, 134695760, e.f94699h, e.f94701i, 1, 39169};
    }

    public static String m(byte[] bArr) {
        try {
            return new String(bArr, e.B0);
        } catch (UnsupportedEncodingException unused) {
            return new String(bArr);
        }
    }

    public static int n(String str) throws ZipException {
        if (A(str)) {
            return o(str, i(str));
        }
        throw new ZipException("input string is null, cannot calculate encoded String length");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.nio.Buffer] */
    public static int o(String str, String str2) throws ZipException {
        if (!A(str)) {
            throw new ZipException("input string is null, cannot calculate encoded String length");
        }
        if (!A(str2)) {
            throw new ZipException("encoding is not defined, cannot calculate string length");
        }
        try {
            if (str2.equals(e.B0)) {
                str = ByteBuffer.wrap(str.getBytes(e.B0));
            } else {
                str = str2.equals(e.A0) ? ByteBuffer.wrap(str.getBytes(e.A0)) : ByteBuffer.wrap(str.getBytes(str2));
            }
        } catch (UnsupportedEncodingException unused) {
            str = ByteBuffer.wrap(str.getBytes());
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
        return str.limit();
    }

    public static pc.h p(o oVar, String str) throws ZipException {
        if (oVar == null) {
            StringBuffer stringBuffer = new StringBuffer("zip model is null, cannot determine file header for fileName: ");
            stringBuffer.append(str);
            throw new ZipException(stringBuffer.toString());
        }
        if (!A(str)) {
            StringBuffer stringBuffer2 = new StringBuffer("file name is null, cannot determine file header for fileName: ");
            stringBuffer2.append(str);
            throw new ZipException(stringBuffer2.toString());
        }
        pc.h hVarQ = q(oVar, str);
        if (hVarQ != null) {
            return hVarQ;
        }
        String strReplaceAll = str.replaceAll("\\\\", e.F0);
        pc.h hVarQ2 = q(oVar, strReplaceAll);
        return hVarQ2 == null ? q(oVar, strReplaceAll.replaceAll(e.F0, "\\\\")) : hVarQ2;
    }

    public static pc.h q(o oVar, String str) throws ZipException {
        if (oVar == null) {
            StringBuffer stringBuffer = new StringBuffer("zip model is null, cannot determine file header with exact match for fileName: ");
            stringBuffer.append(str);
            throw new ZipException(stringBuffer.toString());
        }
        if (!A(str)) {
            StringBuffer stringBuffer2 = new StringBuffer("file name is null, cannot determine file header with exact match for fileName: ");
            stringBuffer2.append(str);
            throw new ZipException(stringBuffer2.toString());
        }
        if (oVar.b() == null) {
            StringBuffer stringBuffer3 = new StringBuffer("central directory is null, cannot determine file header with exact match for fileName: ");
            stringBuffer3.append(str);
            throw new ZipException(stringBuffer3.toString());
        }
        if (oVar.b().b() == null) {
            StringBuffer stringBuffer4 = new StringBuffer("file Headers are null, cannot determine file header with exact match for fileName: ");
            stringBuffer4.append(str);
            throw new ZipException(stringBuffer4.toString());
        }
        if (oVar.b().b().size() <= 0) {
            return null;
        }
        ArrayList arrayListB = oVar.b().b();
        for (int i10 = 0; i10 < arrayListB.size(); i10++) {
            pc.h hVar = (pc.h) arrayListB.get(i10);
            String strP = hVar.p();
            if (A(strP) && str.equalsIgnoreCase(strP)) {
                return hVar;
            }
        }
        return null;
    }

    public static long r(File file) throws ZipException {
        if (file == null) {
            throw new ZipException("input file is null, cannot calculate file length");
        }
        if (file.isDirectory()) {
            return -1L;
        }
        return file.length();
    }

    public static long s(String str) throws ZipException {
        if (A(str)) {
            return r(new File(str));
        }
        throw new ZipException("invalid file name");
    }

    public static String t(File file) throws ZipException {
        if (file == null) {
            throw new ZipException("input file is null, cannot get file name");
        }
        if (file.isDirectory()) {
            return null;
        }
        return file.getName();
    }

    public static ArrayList u(File file, boolean z10) throws ZipException {
        if (file == null) {
            throw new ZipException("input path is null, cannot read files in the directory");
        }
        ArrayList arrayList = new ArrayList();
        List listAsList = Arrays.asList(file.listFiles());
        if (!file.canRead()) {
            return arrayList;
        }
        for (int i10 = 0; i10 < listAsList.size(); i10++) {
            File file2 = (File) listAsList.get(i10);
            if (file2.isHidden() && !z10) {
                return arrayList;
            }
            arrayList.add(file2);
            if (file2.isDirectory()) {
                arrayList.addAll(u(file2, z10));
            }
        }
        return arrayList;
    }

    public static int v(o oVar, pc.h hVar) throws ZipException {
        if (oVar == null || hVar == null) {
            throw new ZipException("input parameters is null, cannot determine index of file header");
        }
        if (oVar.b() == null) {
            throw new ZipException("central directory is null, ccannot determine index of file header");
        }
        if (oVar.b().b() == null) {
            throw new ZipException("file Headers are null, cannot determine index of file header");
        }
        if (oVar.b().b().size() <= 0) {
            return -1;
        }
        String strP = hVar.p();
        if (!A(strP)) {
            throw new ZipException("file name in file header is empty or null, cannot determine index of file header");
        }
        ArrayList arrayListB = oVar.b().b();
        for (int i10 = 0; i10 < arrayListB.size(); i10++) {
            String strP2 = ((pc.h) arrayListB.get(i10)).p();
            if (A(strP2) && strP.equalsIgnoreCase(strP2)) {
                return i10;
            }
        }
        return -1;
    }

    public static long w(File file, TimeZone timeZone) throws ZipException {
        if (file == null) {
            throw new ZipException("input file is null, cannot read last modified file time");
        }
        if (file.exists()) {
            return file.lastModified();
        }
        throw new ZipException("input file does not exist, cannot read last modified file time");
    }

    public static String x(String str, String str2, String str3) throws ZipException {
        String strT;
        if (!A(str)) {
            throw new ZipException("input file path/name is empty, cannot calculate relative file name");
        }
        if (A(str3)) {
            String path = new File(str3).getPath();
            String str4 = e.E0;
            if (!path.endsWith(str4)) {
                StringBuffer stringBuffer = new StringBuffer(path);
                stringBuffer.append(str4);
                path = stringBuffer.toString();
            }
            String strSubstring = str.substring(path.length());
            if (strSubstring.startsWith(System.getProperty("file.separator"))) {
                strSubstring = strSubstring.substring(1);
            }
            File file = new File(str);
            if (file.isDirectory()) {
                StringBuffer stringBuffer2 = new StringBuffer(String.valueOf(strSubstring.replaceAll("\\\\", e.F0)));
                stringBuffer2.append(e.F0);
                strT = stringBuffer2.toString();
            } else {
                StringBuffer stringBuffer3 = new StringBuffer(String.valueOf(strSubstring.substring(0, strSubstring.lastIndexOf(file.getName())).replaceAll("\\\\", e.F0)));
                stringBuffer3.append(file.getName());
                strT = stringBuffer3.toString();
            }
        } else {
            File file2 = new File(str);
            if (file2.isDirectory()) {
                StringBuffer stringBuffer4 = new StringBuffer(String.valueOf(file2.getName()));
                stringBuffer4.append(e.F0);
                strT = stringBuffer4.toString();
            } else {
                strT = t(new File(str));
            }
        }
        if (A(str2)) {
            StringBuffer stringBuffer5 = new StringBuffer(String.valueOf(str2));
            stringBuffer5.append(strT);
            strT = stringBuffer5.toString();
        }
        if (A(strT)) {
            return strT;
        }
        throw new ZipException("Error determining file name");
    }

    public static ArrayList y(o oVar) throws ZipException {
        if (oVar == null) {
            throw new ZipException("cannot get split zip files: zipmodel is null");
        }
        if (oVar.f() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        String strM = oVar.m();
        String name = new File(strM).getName();
        if (!A(strM)) {
            throw new ZipException("cannot get split zip files: zipfile is null");
        }
        if (!oVar.p()) {
            arrayList.add(strM);
            return arrayList;
        }
        int iD = oVar.f().d();
        if (iD == 0) {
            arrayList.add(strM);
            return arrayList;
        }
        int i10 = 0;
        while (i10 <= iD) {
            if (i10 == iD) {
                arrayList.add(oVar.m());
            } else {
                String str = i10 > 9 ? ".z" : ".z0";
                StringBuffer stringBuffer = new StringBuffer(String.valueOf(name.indexOf(o0.f49827a) >= 0 ? strM.substring(0, strM.lastIndexOf(o0.f49827a)) : strM));
                stringBuffer.append(str);
                stringBuffer.append(i10 + 1);
                arrayList.add(stringBuffer.toString());
            }
            i10++;
        }
        return arrayList;
    }

    public static String z(String str) throws ZipException {
        if (!A(str)) {
            throw new ZipException("zip file name is empty or null, cannot determine zip file name");
        }
        if (str.indexOf(System.getProperty("file.separator")) >= 0) {
            str = str.substring(str.lastIndexOf(System.getProperty("file.separator")));
        }
        return str.indexOf(o0.f49827a) > 0 ? str.substring(0, str.lastIndexOf(o0.f49827a)) : str;
    }
}
