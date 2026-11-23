package com.kuaishou.weapon.p0;

import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes3.dex */
public class r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static r f74844c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Application f74845d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f74849a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f74850e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Random f74846f = new Random();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Map<String, s> f74847g = new ConcurrentHashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Map<String, s> f74848h = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static List<Integer> f74843b = new ArrayList();

    private r() {
    }

    public static r a(Context context, boolean z10) {
        try {
            if (f74844c == null) {
                f74845d = (Application) context.getApplicationContext();
                f74844c = new r();
            }
        } catch (Throwable unused) {
        }
        return f74844c;
    }

    public static boolean e(String str) {
        try {
            File file = new File(str);
            if (file.exists() && !file.isDirectory()) {
                file.delete();
            }
            if (file.exists()) {
                return true;
            }
            file.mkdirs();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean b(String str) {
        s sVar = f74848h.get(str);
        if (sVar == null) {
            return false;
        }
        f74847g.remove(sVar.f74855e);
        f74848h.remove(str);
        dl.c(sVar.f74863m);
        Application application = f74845d;
        if (application == null) {
            return true;
        }
        dl.c(application.getFileStreamPath(sVar.f74853c).getAbsolutePath());
        return true;
    }

    public s c(String str) {
        try {
            return f74847g.get(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public s d(String str) {
        try {
            return f74848h.get(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static r a() {
        return f74844c;
    }

    public boolean a(s sVar, boolean z10) {
        this.f74849a = z10;
        this.f74850e = sVar.f74854d;
        return a(sVar);
    }

    public Map<String, s> b() {
        return f74848h;
    }

    private synchronized boolean a(s sVar) {
        boolean z10;
        if (sVar != null) {
            if (!TextUtils.isEmpty(sVar.f74855e)) {
                s sVar2 = f74847g.get(sVar.f74855e);
                if (sVar2 != null) {
                    if (sVar2.f74854d.equals(sVar.f74854d)) {
                        return true;
                    }
                    a(sVar2.f74855e);
                }
                try {
                    sVar.f74856f = f74845d;
                    if (sVar.f74866p == 1) {
                        try {
                            try {
                                if (!TextUtils.isEmpty(sVar.f74853c) && !TextUtils.isEmpty(sVar.f74855e)) {
                                    sVar.f74863m = f74845d.getFilesDir().getCanonicalPath() + bg.f74501j + sVar.f74851a;
                                    String str = sVar.f74863m + "/dex";
                                    String str2 = sVar.f74863m + "/lib/" + this.f74850e;
                                    dl.c(sVar.f74863m + "/lib");
                                    String str3 = str2 + net.lingala.zip4j.util.e.F0 + f74846f.nextInt();
                                    e(str);
                                    dl.a(str, Boolean.FALSE);
                                    e(str3);
                                    a(sVar, str3, str, false);
                                    f74848h.put(sVar.f74853c, sVar);
                                    f74847g.put(sVar.f74855e, sVar);
                                } else {
                                    throw new RuntimeException("apkPackageName or apkPkgPath is null");
                                }
                            } catch (Throwable unused) {
                                a(sVar.f74855e);
                                z10 = true;
                            }
                        } catch (Throwable unused2) {
                            return false;
                        }
                    }
                    z10 = false;
                    if (sVar.f74866p != 1 || z10) {
                        PackageInfo packageArchiveInfo = sVar.f74868r;
                        if (packageArchiveInfo == null || TextUtils.isEmpty(packageArchiveInfo.packageName) || TextUtils.isEmpty(packageArchiveInfo.versionName)) {
                            packageArchiveInfo = f74845d.getPackageManager().getPackageArchiveInfo(sVar.f74855e, 1);
                        }
                        if (!TextUtils.isEmpty(packageArchiveInfo.packageName) && packageArchiveInfo.packageName.startsWith("com.kuaishou.weapon")) {
                            if (sVar.f74866p != 1 && sVar.f74852b != 1 && !((Boolean) a(sVar.f74860j, sVar.f74855e).first).booleanValue()) {
                                return false;
                            }
                            sVar.f74853c = packageArchiveInfo.packageName;
                            ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
                            sVar.f74865o = applicationInfo.className;
                            sVar.f74854d = packageArchiveInfo.versionName;
                            sVar.f74862l = packageArchiveInfo.activities;
                            sVar.f74867q = applicationInfo.theme;
                            sVar.f74863m = f74845d.getFilesDir().getCanonicalPath() + bg.f74501j + sVar.f74851a;
                            String str4 = sVar.f74863m + "/dex";
                            String str5 = sVar.f74863m + "/lib/" + this.f74850e;
                            dl.c(sVar.f74863m + "/lib");
                            String str6 = str5 + net.lingala.zip4j.util.e.F0 + f74846f.nextInt();
                            e(str4);
                            dl.a(str4, Boolean.FALSE);
                            e(str6);
                            a(sVar, str6, str4, true);
                            f74848h.put(sVar.f74853c, sVar);
                            f74847g.put(sVar.f74855e, sVar);
                            f74843b.add(Integer.valueOf(sVar.f74851a));
                        } else {
                            throw new Exception("weapon package name check failed");
                        }
                    }
                    return true;
                } catch (Throwable unused3) {
                    a(sVar.f74855e);
                    return false;
                }
            }
        }
        return false;
    }

    private Pair<Boolean, String> a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            File file = new File(str2);
            if (!dl.a(file)) {
                return new Pair<>(Boolean.FALSE, "");
            }
            String strA = f.a(file);
            if (TextUtils.isEmpty(strA)) {
                return new Pair<>(Boolean.FALSE, "");
            }
            if (!strA.equalsIgnoreCase(str)) {
                return new Pair<>(Boolean.FALSE, strA);
            }
            return new Pair<>(Boolean.TRUE, "");
        }
        return new Pair<>(Boolean.FALSE, "");
    }

    public boolean a(String str) {
        s sVar = f74847g.get(str);
        if (sVar == null) {
            return false;
        }
        f74847g.remove(str);
        f74848h.remove(sVar.f74853c);
        dl.c(sVar.f74863m);
        Application application = f74845d;
        if (application == null) {
            return true;
        }
        dl.c(application.getFileStreamPath(sVar.f74853c).getAbsolutePath());
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0031  */
    /* JADX WARN: Code duplicated, block: B:148:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:150:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:158:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:160:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:168:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:170:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:172:0x02f9 A[PHI: r11 r17 r18 r21 r22
      0x02f9: PHI (r11v11 ??) = (r11v8 ??), (r11v9 ??), (r11v12 ??), (r11v16 ??) binds: [B:151:0x02bb, B:171:0x02f7, B:161:0x02d9, B:121:0x023c] A[DONT_GENERATE, DONT_INLINE]
      0x02f9: PHI (r17v12 java.io.InputStream) = (r17v9 java.io.InputStream), (r17v10 java.io.InputStream), (r17v13 java.io.InputStream), (r17v20 java.io.InputStream) binds: [B:151:0x02bb, B:171:0x02f7, B:161:0x02d9, B:121:0x023c] A[DONT_GENERATE, DONT_INLINE]
      0x02f9: PHI (r18v9 ??) = (r18v6 ??), (r18v7 ??), (r18v10 ??), (r18v14 ??) binds: [B:151:0x02bb, B:171:0x02f7, B:161:0x02d9, B:121:0x023c] A[DONT_GENERATE, DONT_INLINE]
      0x02f9: PHI (r21v8 ??) = (r21v4 ??), (r21v5 ??), (r21v9 ??), (r21v19 ??) binds: [B:151:0x02bb, B:171:0x02f7, B:161:0x02d9, B:121:0x023c] A[DONT_GENERATE, DONT_INLINE]
      0x02f9: PHI (r22v8 java.lang.String) = (r22v4 java.lang.String), (r22v5 java.lang.String), (r22v9 java.lang.String), (r22v19 java.lang.String) binds: [B:151:0x02bb, B:171:0x02f7, B:161:0x02d9, B:121:0x023c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:175:0x030a  */
    /* JADX WARN: Code duplicated, block: B:178:0x0324 A[Catch: all -> 0x0339, TRY_LEAVE, TryCatch #13 {all -> 0x0339, blocks: (B:176:0x031c, B:178:0x0324), top: B:239:0x031c }] */
    /* JADX WARN: Code duplicated, block: B:183:0x033e  */
    /* JADX WARN: Code duplicated, block: B:184:0x035b  */
    /* JADX WARN: Code duplicated, block: B:187:0x037a A[Catch: all -> 0x0398, TRY_LEAVE, TryCatch #40 {all -> 0x0398, blocks: (B:185:0x0372, B:187:0x037a), top: B:262:0x0372 }] */
    /* JADX WARN: Code duplicated, block: B:190:0x0399  */
    /* JADX WARN: Code duplicated, block: B:193:0x03a1  */
    /* JADX WARN: Code duplicated, block: B:195:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:197:0x03b1  */
    /* JADX WARN: Code duplicated, block: B:205:0x0400 A[Catch: all -> 0x0476, TryCatch #10 {all -> 0x0476, blocks: (B:203:0x03df, B:205:0x0400, B:207:0x040a, B:211:0x0454, B:212:0x0475, B:209:0x0414), top: B:234:0x03df, inners: #35 }] */
    /* JADX WARN: Code duplicated, block: B:207:0x040a A[Catch: all -> 0x0476, TRY_LEAVE, TryCatch #10 {all -> 0x0476, blocks: (B:203:0x03df, B:205:0x0400, B:207:0x040a, B:211:0x0454, B:212:0x0475, B:209:0x0414), top: B:234:0x03df, inners: #35 }] */
    /* JADX WARN: Code duplicated, block: B:213:0x0476 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:217:0x047c  */
    /* JADX WARN: Code duplicated, block: B:219:0x0481  */
    /* JADX WARN: Code duplicated, block: B:221:0x0486  */
    /* JADX WARN: Code duplicated, block: B:262:0x0372 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x023c, code lost:
    
        if (r18 != 0) goto L172;
     */
    /* JADX WARN: Instruction removed from duplicated block: B:175:0x030a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:178:0x0324, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:183:0x033e, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:184:0x035b, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:187:0x037a, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r11v16, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v44 */
    /* JADX WARN: Type inference failed for: r11v45 */
    /* JADX WARN: Type inference failed for: r11v46 */
    /* JADX WARN: Type inference failed for: r11v49 */
    /* JADX WARN: Type inference failed for: r11v50 */
    /* JADX WARN: Type inference failed for: r11v51 */
    /* JADX WARN: Type inference failed for: r11v52 */
    /* JADX WARN: Type inference failed for: r11v8, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r11v9, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r18v10 */
    /* JADX WARN: Type inference failed for: r18v11 */
    /* JADX WARN: Type inference failed for: r18v12 */
    /* JADX WARN: Type inference failed for: r18v13 */
    /* JADX WARN: Type inference failed for: r18v14 */
    /* JADX WARN: Type inference failed for: r18v15 */
    /* JADX WARN: Type inference failed for: r18v16 */
    /* JADX WARN: Type inference failed for: r18v17 */
    /* JADX WARN: Type inference failed for: r18v18 */
    /* JADX WARN: Type inference failed for: r18v19 */
    /* JADX WARN: Type inference failed for: r18v20 */
    /* JADX WARN: Type inference failed for: r18v21 */
    /* JADX WARN: Type inference failed for: r18v22 */
    /* JADX WARN: Type inference failed for: r18v23 */
    /* JADX WARN: Type inference failed for: r18v24 */
    /* JADX WARN: Type inference failed for: r18v25 */
    /* JADX WARN: Type inference failed for: r18v26 */
    /* JADX WARN: Type inference failed for: r18v27 */
    /* JADX WARN: Type inference failed for: r18v28 */
    /* JADX WARN: Type inference failed for: r18v29 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v30 */
    /* JADX WARN: Type inference failed for: r18v31 */
    /* JADX WARN: Type inference failed for: r18v32 */
    /* JADX WARN: Type inference failed for: r18v33 */
    /* JADX WARN: Type inference failed for: r18v34 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Type inference failed for: r18v6 */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Type inference failed for: r18v8 */
    /* JADX WARN: Type inference failed for: r18v9, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r1v20, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r21v13 */
    /* JADX WARN: Type inference failed for: r21v14 */
    /* JADX WARN: Type inference failed for: r21v15 */
    /* JADX WARN: Type inference failed for: r21v16 */
    /* JADX WARN: Type inference failed for: r21v17 */
    /* JADX WARN: Type inference failed for: r21v18 */
    /* JADX WARN: Type inference failed for: r21v19 */
    /* JADX WARN: Type inference failed for: r21v22 */
    /* JADX WARN: Type inference failed for: r21v23 */
    /* JADX WARN: Type inference failed for: r21v24 */
    /* JADX WARN: Type inference failed for: r21v27 */
    /* JADX WARN: Type inference failed for: r21v28 */
    /* JADX WARN: Type inference failed for: r21v29 */
    /* JADX WARN: Type inference failed for: r21v33 */
    /* JADX WARN: Type inference failed for: r21v35 */
    /* JADX WARN: Type inference failed for: r21v36 */
    /* JADX WARN: Type inference failed for: r21v37 */
    /* JADX WARN: Type inference failed for: r21v38 */
    /* JADX WARN: Type inference failed for: r21v39 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r21v40 */
    /* JADX WARN: Type inference failed for: r21v41 */
    /* JADX WARN: Type inference failed for: r21v42 */
    /* JADX WARN: Type inference failed for: r21v43 */
    /* JADX WARN: Type inference failed for: r21v44 */
    /* JADX WARN: Type inference failed for: r21v5 */
    /* JADX WARN: Type inference failed for: r21v6 */
    /* JADX WARN: Type inference failed for: r21v7 */
    /* JADX WARN: Type inference failed for: r21v8 */
    /* JADX WARN: Type inference failed for: r21v9 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.kuaishou.weapon.p0.s r25, java.lang.String r26, java.lang.String r27, boolean r28) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1162
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kuaishou.weapon.p0.r.a(com.kuaishou.weapon.p0.s, java.lang.String, java.lang.String, boolean):void");
    }

    private void a(s sVar, String str, String str2, HashSet<String> hashSet, byte[] bArr, StringBuilder sb2, boolean z10) throws Throwable {
        File file;
        String str3;
        ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(sVar.f74855e));
        FileOutputStream fileOutputStream = null;
        while (true) {
            try {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    break;
                }
                String name = nextEntry.getName();
                if (!name.contains("../")) {
                    if (name.startsWith("lib/") && !nextEntry.isDirectory()) {
                        String str4 = Build.CPU_ABI;
                        try {
                            str3 = Build.CPU_ABI2;
                        } catch (Throwable unused) {
                            str3 = null;
                        }
                        if (name.contains(str4) || ((!TextUtils.isEmpty(str3) && name.contains(str3)) || (name.contains(com.join.mgps.mod.utils.d.f71903e) && ("armeabi-v7a".equalsIgnoreCase(str4) || (!TextUtils.isEmpty(str3) && "armeabi-v7a".equalsIgnoreCase(str3)))))) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(str);
                            sb3.append(name.substring(3).replace(".so", str2 + ".so"));
                            String string = sb3.toString();
                            String strSubstring = string.substring(0, string.lastIndexOf(47));
                            hashSet.add(strSubstring.substring(strSubstring.lastIndexOf(47) + 1));
                            e(strSubstring);
                            File file2 = new File(string);
                            file2.delete();
                            file2.createNewFile();
                            FileOutputStream fileOutputStream2 = new FileOutputStream(string);
                            while (true) {
                                try {
                                    int i10 = zipInputStream.read(bArr);
                                    if (i10 <= 0) {
                                        break;
                                    } else {
                                        fileOutputStream2.write(bArr, 0, i10);
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    fileOutputStream = fileOutputStream2;
                                    zipInputStream.close();
                                    if (fileOutputStream != null) {
                                        fileOutputStream.close();
                                    }
                                    throw th;
                                }
                            }
                            fileOutputStream2.close();
                            dl.a(string, Boolean.TRUE);
                            fileOutputStream = fileOutputStream2;
                        }
                    }
                    try {
                        if (name.endsWith(".dex") && !nextEntry.isDirectory() && z10) {
                            String str5 = sVar.f74863m;
                            e(str5);
                            file = new File(str5, sVar.f74851a + "-" + sVar.f74854d + ".dex");
                            try {
                                file.delete();
                                file.createNewFile();
                                FileOutputStream fileOutputStream3 = new FileOutputStream(file);
                                while (true) {
                                    try {
                                        int i11 = zipInputStream.read(bArr);
                                        if (i11 <= 0) {
                                            break;
                                        } else {
                                            fileOutputStream3.write(bArr, 0, i11);
                                        }
                                    } catch (Throwable unused2) {
                                        fileOutputStream = fileOutputStream3;
                                        if (file != null && file.exists()) {
                                            file.delete();
                                        }
                                    }
                                }
                                fileOutputStream3.close();
                                if (sb2.length() > 0) {
                                    sb2.setLength(0);
                                }
                                sb2.append(file.getAbsolutePath());
                                dl.a(sb2.toString(), Boolean.TRUE);
                                fileOutputStream = fileOutputStream3;
                            } catch (Throwable unused3) {
                            }
                        }
                    } catch (Throwable unused4) {
                        file = null;
                    }
                    zipInputStream.closeEntry();
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        zipInputStream.close();
        if (fileOutputStream != null) {
            fileOutputStream.close();
        }
    }
}
