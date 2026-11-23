package com.papa91.arc.util;

import android.text.TextUtils;
import com.join.mgps.Util.o0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes2.dex */
public class FileUtils {
    public static boolean copyFile(String str, String str2) {
        try {
            File file = new File(str);
            if (!file.exists() || !file.isFile() || !file.canRead()) {
                return false;
            }
            FileInputStream fileInputStream = new FileInputStream(str);
            FileOutputStream fileOutputStream = new FileOutputStream(str2);
            byte[] bArr = new byte[1024];
            while (true) {
                int i10 = fileInputStream.read(bArr);
                if (-1 == i10) {
                    fileInputStream.close();
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return true;
                }
                fileOutputStream.write(bArr, 0, i10);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean copyFolder(String str, String str2) {
        try {
            File file = new File(str2);
            if (!file.exists()) {
                file.mkdirs();
            }
            String[] list = new File(str).list();
            if (list == null) {
                return true;
            }
            for (String str3 : list) {
                String str4 = File.separator;
                File file2 = str.endsWith(str4) ? new File(str + str3) : new File(str + str4 + str3);
                if (file2.isDirectory()) {
                    copyFolder(str + e.F0 + str3, str2 + e.F0 + str3);
                } else {
                    if (!file2.exists() || !file2.isFile() || !file2.canRead()) {
                        return false;
                    }
                    if (new File(str2 + e.F0 + file2.getName()).exists()) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("copyFolder:  new file exist, replace=");
                        sb2.append(false);
                    } else {
                        FileInputStream fileInputStream = new FileInputStream(file2);
                        FileOutputStream fileOutputStream = new FileOutputStream(str2 + e.F0 + file2.getName());
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int i10 = fileInputStream.read(bArr);
                            if (i10 == -1) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, i10);
                        }
                        fileInputStream.close();
                        fileOutputStream.flush();
                        fileOutputStream.close();
                    }
                }
            }
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean deleteDirs(String str) {
        File file = new File(str);
        if (!file.exists()) {
            return true;
        }
        if (!file.isDirectory()) {
            try {
                return file.delete();
            } catch (Exception e10) {
                e10.printStackTrace();
                return false;
            }
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        boolean z10 = true;
        for (File file2 : fileArrListFiles) {
            z10 = z10 && deleteDirs(file2.getAbsolutePath());
        }
        try {
            return z10 && file.delete();
        } catch (Exception e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public static long fileSize(String str) {
        long length;
        File file = new File(str);
        long j10 = 0;
        if (!file.exists()) {
            return 0L;
        }
        try {
            if (file.isFile()) {
                return file.length();
            }
            for (File file2 : file.listFiles()) {
                if (file2.isDirectory()) {
                    length = fileSize(file2.getAbsolutePath());
                } else {
                    if (file2.exists()) {
                        length = file2.length();
                    }
                }
                j10 += length;
            }
            return j10;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static FilenameFilter getSlotFilter() {
        return new FilenameFilter() { // from class: com.papa91.arc.util.FileUtils.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                if (str.contains(o0.f49827a)) {
                    return isNumeric(str.substring(str.lastIndexOf(o0.f49827a) + 1));
                }
                return false;
            }

            public boolean isNumeric(String str) {
                return Pattern.compile("[0-9]*").matcher(str).matches();
            }
        };
    }

    public static String read(String str) {
        File file = new File(str);
        if (!file.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[(int) file.length()];
            fileInputStream.read(bArr);
            return new String(bArr);
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0048 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void write(String str, String str2) throws Throwable {
        FileOutputStream fileOutputStream;
        Throwable th;
        IOException e10;
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        File file = new File(str);
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        fileOutputStream.write(str2.getBytes());
                        fileOutputStream.close();
                    } catch (IOException e11) {
                        e10 = e11;
                        e10.printStackTrace();
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e13) {
                fileOutputStream = null;
                e10 = e13;
            } catch (Throwable th3) {
                fileOutputStream = null;
                th = th3;
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                throw th;
            }
        } catch (IOException e14) {
            e14.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00e8 A[Catch: Exception -> 0x0126, TryCatch #0 {Exception -> 0x0126, blocks: (B:3:0x0001, B:5:0x000c, B:6:0x000f, B:8:0x001a, B:10:0x001e, B:12:0x0028, B:14:0x0055, B:17:0x005d, B:18:0x0086, B:21:0x008d, B:24:0x0094, B:27:0x009b, B:29:0x00bc, B:31:0x00cc, B:33:0x00cf, B:36:0x00e8, B:37:0x010c, B:39:0x0113, B:40:0x0117, B:13:0x003d), top: B:47:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0113 A[Catch: Exception -> 0x0126, LOOP:1: B:37:0x010c->B:39:0x0113, LOOP_END, TryCatch #0 {Exception -> 0x0126, blocks: (B:3:0x0001, B:5:0x000c, B:6:0x000f, B:8:0x001a, B:10:0x001e, B:12:0x0028, B:14:0x0055, B:17:0x005d, B:18:0x0086, B:21:0x008d, B:24:0x0094, B:27:0x009b, B:29:0x00bc, B:31:0x00cc, B:33:0x00cf, B:36:0x00e8, B:37:0x010c, B:39:0x0113, B:40:0x0117, B:13:0x003d), top: B:47:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0117 A[EDGE_INSN: B:57:0x0117->B:40:0x0117 BREAK  A[LOOP:1: B:37:0x010c->B:39:0x0113], SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:36:0x00e8, please report this as an issue */
    public static boolean copyFolder(String str, String str2, String[] strArr) {
        File file;
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        byte[] bArr;
        int i10;
        try {
            File file2 = new File(str2);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            String[] list = new File(str).list();
            if (list == null) {
                return true;
            }
            for (String str3 : list) {
                String str4 = File.separator;
                if (str.endsWith(str4)) {
                    file = new File(str + str3);
                } else {
                    file = new File(str + str4 + str3);
                }
                if (file.isDirectory()) {
                    copyFolder(str + e.F0 + str3, str2 + e.F0 + str3);
                } else {
                    if (!file.exists() || !file.isFile() || !file.canRead()) {
                        return false;
                    }
                    if (new File(str2 + e.F0 + file.getName()).exists()) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("copyFolder:  new file exist, replace=");
                        sb2.append(false);
                    } else if (strArr != null && strArr.length > 0) {
                        List listAsList = Arrays.asList(strArr);
                        String name = file.getName();
                        if (listAsList.contains(name.substring(name.lastIndexOf(o0.f49827a)))) {
                            fileInputStream = new FileInputStream(file);
                            fileOutputStream = new FileOutputStream(str2 + e.F0 + file.getName());
                            bArr = new byte[1024];
                            while (true) {
                                i10 = fileInputStream.read(bArr);
                                if (i10 != -1) {
                                    break;
                                    break;
                                }
                                fileOutputStream.write(bArr, 0, i10);
                            }
                            fileInputStream.close();
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        }
                    } else {
                        fileInputStream = new FileInputStream(file);
                        fileOutputStream = new FileOutputStream(str2 + e.F0 + file.getName());
                        bArr = new byte[1024];
                        while (true) {
                            i10 = fileInputStream.read(bArr);
                            if (i10 != -1) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, i10);
                        }
                        fileInputStream.close();
                        fileOutputStream.flush();
                        fileOutputStream.close();
                    }
                }
            }
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
