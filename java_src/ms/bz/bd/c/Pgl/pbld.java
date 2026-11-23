package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public final class pbld implements h1.pgla {

    private static class pgla {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ZipFile f94414c;
        public ZipEntry tt;

        public pgla(ZipFile zipFile, ZipEntry zipEntry) {
            this.f94414c = zipFile;
            this.tt = zipEntry;
        }
    }

    private static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private static pgla c(Context context, String[] strArr, String str, j1 j1Var) {
        String[] strArr2;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String[] strArr3 = applicationInfo.splitSourceDirs;
        char c10 = 0;
        if (strArr3 == null || strArr3.length == 0) {
            strArr2 = new String[]{applicationInfo.sourceDir};
        } else {
            strArr2 = new String[strArr3.length + 1];
            strArr2[0] = applicationInfo.sourceDir;
            System.arraycopy(strArr3, 0, strArr2, 1, strArr3.length);
        }
        int length = strArr2.length;
        int i10 = 0;
        while (true) {
            ZipFile zipFile = null;
            if (i10 >= length) {
                return null;
            }
            String str2 = strArr2[i10];
            int i11 = 0;
            while (true) {
                int i12 = i11 + 1;
                if (i11 >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(str2), 1);
                    break;
                } catch (IOException unused) {
                    i11 = i12;
                }
            }
            if (zipFile != null) {
                int i13 = 0;
                while (true) {
                    int i14 = i13 + 1;
                    if (i13 >= 5) {
                        try {
                            zipFile.close();
                            break;
                        } catch (IOException unused2) {
                            break;
                        }
                    }
                    int length2 = strArr.length;
                    int i15 = 0;
                    while (i15 < length2) {
                        String str3 = "lib" + File.separatorChar + strArr[i15] + File.separatorChar + str;
                        Object[] objArr = new Object[2];
                        objArr[c10] = str3;
                        objArr[1] = str2;
                        j1Var.getClass();
                        String.format(Locale.US, "Looking for %s in APK %s...", objArr);
                        ZipEntry entry = zipFile.getEntry(str3);
                        if (entry != null) {
                            return new pgla(zipFile, entry);
                        }
                        i15++;
                        c10 = 0;
                    }
                    i13 = i14;
                }
            }
            i10++;
            c10 = 0;
        }
    }

    private static String[] c(Context context, String str) {
        String[] strArr;
        Pattern patternCompile = Pattern.compile("lib" + File.separatorChar + "([^\\" + File.separatorChar + "]*)" + File.separatorChar + str);
        HashSet hashSet = new HashSet();
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String[] strArr2 = applicationInfo.splitSourceDirs;
        if (strArr2 == null || strArr2.length == 0) {
            strArr = new String[]{applicationInfo.sourceDir};
        } else {
            strArr = new String[strArr2.length + 1];
            strArr[0] = applicationInfo.sourceDir;
            System.arraycopy(strArr2, 0, strArr, 1, strArr2.length);
        }
        ZipFile zipFile = null;
        for (String str2 : strArr) {
            try {
                ZipFile zipFile2 = new ZipFile(new File(str2), 1);
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile2.entries();
                while (enumerationEntries.hasMoreElements()) {
                    Matcher matcher = patternCompile.matcher(enumerationEntries.nextElement().getName());
                    if (matcher.matches()) {
                        hashSet.add(matcher.group(1));
                    }
                }
                zipFile = zipFile2;
            } catch (IOException unused) {
            }
        }
        if (zipFile != null) {
            try {
                zipFile.close();
            } catch (IOException unused2) {
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    public final void c(Context context, String[] strArr, String str, File file, j1 j1Var) {
        String[] strArrC;
        Throwable th;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        pgla pglaVar = null;
        fileOutputStream = null;
        FileOutputStream fileOutputStream2 = null;
        try {
            pgla pglaVarC = c(context, strArr, str, j1Var);
            try {
                if (pglaVarC == null) {
                    try {
                        strArrC = c(context, str);
                    } catch (Exception e10) {
                        strArrC = new String[]{e10.toString()};
                    }
                    throw new b1(str, strArr, strArrC);
                }
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    if (i10 >= 5) {
                        j1Var.getClass();
                        try {
                            ZipFile zipFile = pglaVarC.f94414c;
                            if (zipFile != null) {
                                zipFile.close();
                                return;
                            }
                            return;
                        } catch (IOException unused) {
                            return;
                        }
                    }
                    j1Var.getClass();
                    String.format(Locale.US, "Found %s! Extracting...", str);
                    try {
                        if (file.exists() || file.createNewFile()) {
                            try {
                                inputStream = pglaVarC.f94414c.getInputStream(pglaVarC.tt);
                                try {
                                    fileOutputStream = new FileOutputStream(file);
                                    try {
                                        try {
                                            byte[] bArr = new byte[4096];
                                            long j10 = 0;
                                            while (true) {
                                                int i12 = inputStream.read(bArr);
                                                if (i12 == -1) {
                                                    break;
                                                }
                                                fileOutputStream.write(bArr, 0, i12);
                                                j10 += (long) i12;
                                            }
                                            fileOutputStream.flush();
                                            fileOutputStream.getFD().sync();
                                            if (j10 == file.length()) {
                                                c(inputStream);
                                                c(fileOutputStream);
                                                file.setReadable(true, false);
                                                file.setExecutable(true, false);
                                                file.setWritable(true);
                                                try {
                                                    ZipFile zipFile2 = pglaVarC.f94414c;
                                                    if (zipFile2 != null) {
                                                        zipFile2.close();
                                                        return;
                                                    }
                                                    return;
                                                } catch (IOException unused2) {
                                                    return;
                                                }
                                            }
                                            c(inputStream);
                                            c(fileOutputStream);
                                        } catch (FileNotFoundException | IOException unused3) {
                                            c(inputStream);
                                            c(fileOutputStream);
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        fileOutputStream2 = fileOutputStream;
                                        c(inputStream);
                                        c(fileOutputStream2);
                                        throw th;
                                    }
                                } catch (FileNotFoundException | IOException unused4) {
                                    fileOutputStream = null;
                                    c(inputStream);
                                    c(fileOutputStream);
                                    i10 = i11;
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            } catch (FileNotFoundException | IOException unused5) {
                                inputStream = null;
                            } catch (Throwable th4) {
                                th = th4;
                                inputStream = null;
                            }
                        }
                    } catch (IOException unused6) {
                    }
                    i10 = i11;
                }
            } catch (Throwable th5) {
                th = th5;
                pglaVar = pglaVarC;
                if (pglaVar != null) {
                    try {
                        ZipFile zipFile3 = pglaVar.f94414c;
                        if (zipFile3 != null) {
                            zipFile3.close();
                        }
                    } catch (IOException unused7) {
                    }
                }
                throw th;
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }
}
