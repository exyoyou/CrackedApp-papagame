package com.tencent.bugly.proguard;

import android.content.Context;
import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class be {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static List<File> f83451a = new ArrayList();

    protected static String a(String str) {
        if (str == null) {
            return "";
        }
        String[] strArrSplit = str.split("\n");
        if (strArrSplit == null || strArrSplit.length == 0) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : strArrSplit) {
            if (!str2.contains("java.lang.Thread.getStackTrace(")) {
                sb2.append(str2);
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }

    private static String b(String str, String str2) {
        BufferedReader bufferedReaderB = ap.b(str, "reg_record.txt");
        if (bufferedReaderB == null) {
            return null;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            String line = bufferedReaderB.readLine();
            if (line != null && line.startsWith(str2)) {
                int i10 = 18;
                int i11 = 0;
                int length = 0;
                while (true) {
                    String line2 = bufferedReaderB.readLine();
                    if (line2 == null) {
                        break;
                    }
                    if (i11 % 4 == 0) {
                        if (i11 > 0) {
                            sb2.append("\n");
                        }
                        sb2.append("  ");
                    } else {
                        if (line2.length() > 16) {
                            i10 = 28;
                        }
                        sb2.append("                ".substring(0, i10 - length));
                    }
                    length = line2.length();
                    sb2.append(line2);
                    i11++;
                }
                sb2.append("\n");
                String string = sb2.toString();
                try {
                    bufferedReaderB.close();
                } catch (Exception e10) {
                    al.a(e10);
                }
                return string;
            }
            try {
                bufferedReaderB.close();
            } catch (Exception e11) {
                al.a(e11);
            }
            return null;
        } catch (Throwable th) {
            try {
                al.a(th);
                return null;
            } finally {
                try {
                    bufferedReaderB.close();
                } catch (Exception e12) {
                    al.a(e12);
                }
            }
        }
    }

    private static String c(String str, String str2) {
        BufferedReader bufferedReaderB = ap.b(str, "map_record.txt");
        if (bufferedReaderB == null) {
            return null;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            String line = bufferedReaderB.readLine();
            if (line != null && line.startsWith(str2)) {
                while (true) {
                    String line2 = bufferedReaderB.readLine();
                    if (line2 == null) {
                        break;
                    }
                    sb2.append("  ");
                    sb2.append(line2);
                    sb2.append("\n");
                }
                String string = sb2.toString();
                try {
                    bufferedReaderB.close();
                } catch (Exception e10) {
                    al.a(e10);
                }
                return string;
            }
            try {
                bufferedReaderB.close();
            } catch (Exception e11) {
                al.a(e11);
            }
            return null;
        } catch (Throwable th) {
            try {
                al.a(th);
                return null;
            } finally {
                try {
                    bufferedReaderB.close();
                } catch (Exception e12) {
                    al.a(e12);
                }
            }
        }
    }

    private static Map<String, Integer> d(String str) {
        if (str == null) {
            return null;
        }
        try {
            HashMap map = new HashMap();
            for (String str2 : str.split(",")) {
                String[] strArrSplit = str2.split(":");
                if (strArrSplit.length != 2) {
                    al.e("error format at %s", str2);
                    return null;
                }
                map.put(strArrSplit[0], Integer.valueOf(Integer.parseInt(strArrSplit[1])));
            }
            return map;
        } catch (Exception e10) {
            al.e("error format intStateStr %s", str);
            e10.printStackTrace();
            return null;
        }
    }

    private static <KeyT, ValueT> ValueT a(Map<KeyT, ValueT> map, KeyT keyt, ValueT valuet) {
        try {
            ValueT valuet2 = map.get(keyt);
            return valuet2 != null ? valuet2 : valuet;
        } catch (Exception e10) {
            al.a(e10);
        }
    }

    private static String a(BufferedInputStream bufferedInputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream(1024);
            while (true) {
                try {
                    int i10 = bufferedInputStream.read();
                    if (i10 == -1) {
                        break;
                    }
                    if (i10 == 0) {
                        String str = new String(byteArrayOutputStream.toByteArray(), "UTf-8");
                        byteArrayOutputStream.close();
                        return str;
                    }
                    byteArrayOutputStream.write(i10);
                } catch (Throwable th) {
                    th = th;
                    try {
                        al.a(th);
                        if (byteArrayOutputStream != null) {
                            break;
                        }
                        return null;
                    } finally {
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.close();
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream = null;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3, types: [boolean] */
    public static CrashDetailBean a(Context context, String str, NativeExceptionHandler nativeExceptionHandler) {
        BufferedInputStream bufferedInputStream;
        String str2;
        String strA;
        BufferedInputStream bufferedInputStream2 = 0;
        if (context != null && str != null && nativeExceptionHandler != null) {
            File file = new File(str, "rqd_record.eup");
            if (file.exists()) {
                ?? CanRead = file.canRead();
                try {
                    if (CanRead != 0) {
                        try {
                            bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                            try {
                                String strA2 = a(bufferedInputStream);
                                if (strA2 != null && strA2.equals("NATIVE_RQD_REPORT")) {
                                    HashMap map = new HashMap();
                                    loop0: while (true) {
                                        str2 = null;
                                        while (true) {
                                            strA = a(bufferedInputStream);
                                            if (strA == null) {
                                                break loop0;
                                            }
                                            if (str2 == null) {
                                                str2 = strA;
                                            }
                                        }
                                        map.put(str2, strA);
                                    }
                                    if (str2 != null) {
                                        al.e("record not pair! drop! %s", str2);
                                        try {
                                            bufferedInputStream.close();
                                        } catch (IOException e10) {
                                            e10.printStackTrace();
                                        }
                                        return null;
                                    }
                                    CrashDetailBean crashDetailBeanA = a(context, map, nativeExceptionHandler);
                                    try {
                                        bufferedInputStream.close();
                                    } catch (IOException e11) {
                                        e11.printStackTrace();
                                    }
                                    return crashDetailBeanA;
                                }
                                al.e("record read fail! %s", strA2);
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e12) {
                                    e12.printStackTrace();
                                }
                                return null;
                            } catch (IOException e13) {
                                e = e13;
                                e.printStackTrace();
                                if (bufferedInputStream != null) {
                                    try {
                                        bufferedInputStream.close();
                                    } catch (IOException e14) {
                                        e14.printStackTrace();
                                    }
                                }
                                return null;
                            }
                        } catch (IOException e15) {
                            e = e15;
                            bufferedInputStream = null;
                        } catch (Throwable th) {
                            th = th;
                            if (bufferedInputStream2 != 0) {
                                try {
                                    bufferedInputStream2.close();
                                } catch (IOException e16) {
                                    e16.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedInputStream2 = CanRead;
                }
            }
            return null;
        }
        al.e("get eup record file args error", new Object[0]);
        return null;
    }

    public static void c(String str) {
        File[] fileArrListFiles;
        if (str == null) {
            return;
        }
        try {
            File file = new File(str);
            if (file.canRead() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                for (File file2 : fileArrListFiles) {
                    if (file2.canRead() && file2.canWrite() && file2.length() == 0) {
                        file2.delete();
                        al.c("Delete empty record file %s", file2.getAbsoluteFile());
                    }
                }
            }
        } catch (Throwable th) {
            al.a(th);
        }
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        File file = new File(str, "backup_record.txt");
        if (file.exists()) {
            return file.getAbsolutePath();
        }
        return null;
    }

    private static long b(Map<String, String> map) {
        String str = map.get("launchTime");
        if (str == null) {
            return -1L;
        }
        al.c("[Native record info] launchTime: %s", str);
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException e10) {
            if (al.a(e10)) {
                return -1L;
            }
            e10.printStackTrace();
            return -1L;
        }
    }

    public static String a(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        String strB = b(str, str2);
        if (strB != null && !strB.isEmpty()) {
            sb2.append("Register infos:\n");
            sb2.append(strB);
        }
        String strC = c(str, str2);
        if (strC != null && !strC.isEmpty()) {
            if (sb2.length() > 0) {
                sb2.append("\n");
            }
            sb2.append("System SO infos:\n");
            sb2.append(strC);
        }
        return sb2.toString();
    }

    public static void a(boolean z10, String str) {
        if (str != null) {
            f83451a.add(new File(str, "rqd_record.eup"));
            f83451a.add(new File(str, "reg_record.txt"));
            f83451a.add(new File(str, "map_record.txt"));
            f83451a.add(new File(str, "backup_record.txt"));
            if (z10) {
                c(str);
            }
        }
        List<File> list = f83451a;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (File file : f83451a) {
            if (file.exists() && file.canWrite()) {
                file.delete();
                al.c("Delete record file %s", file.getAbsoluteFile());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.String] */
    public static String a(String str, int i10, String str2, boolean z10) {
        BufferedReader bufferedReader = null;
        if (str != null && i10 > 0) {
            File file = new File(str);
            if (file.exists() && file.canRead()) {
                al.a("Read system log from native record file(length: %s bytes): %s", Long.valueOf(file.length()), file.getAbsolutePath());
                f83451a.add(file);
                al.c("Add this record file to list for cleaning lastly.", new Object[0]);
                if (str2 == null) {
                    return ap.a(new File(str), i10, z10);
                }
                String sb2 = new StringBuilder();
                try {
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file), "utf-8"));
                        while (true) {
                            try {
                                String line = bufferedReader2.readLine();
                                if (line == null) {
                                    break;
                                }
                                if (Pattern.compile(str2 + "[ ]*:").matcher(line).find()) {
                                    sb2.append(line);
                                    sb2.append("\n");
                                }
                                if (i10 > 0 && sb2.length() > i10) {
                                    if (z10) {
                                        sb2.delete(i10, sb2.length());
                                        break;
                                    }
                                    sb2.delete(0, sb2.length() - i10);
                                }
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader = bufferedReader2;
                                try {
                                    al.a(th);
                                    sb2.append("\n[error:" + th.toString() + "]");
                                    String string = sb2.toString();
                                    if (bufferedReader == null) {
                                        return string;
                                    }
                                    bufferedReader.close();
                                    sb2 = string;
                                } catch (Throwable th2) {
                                    if (bufferedReader != null) {
                                        try {
                                            bufferedReader.close();
                                        } catch (Exception e10) {
                                            al.a(e10);
                                        }
                                    }
                                    throw th2;
                                }
                            }
                        }
                        String string2 = sb2.toString();
                        bufferedReader2.close();
                        sb2 = string2;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                    return sb2;
                } catch (Exception e11) {
                    al.a(e11);
                    return sb2;
                }
            }
        }
        return null;
    }

    private static Map<String, String> a(Map<String, String> map) {
        String str = map.get("key-value");
        if (str == null) {
            return null;
        }
        HashMap map2 = new HashMap();
        for (String str2 : str.split("\n")) {
            String[] strArrSplit = str2.split(SimpleComparison.EQUAL_TO_OPERATION);
            if (strArrSplit.length == 2) {
                map2.put(strArrSplit[0], strArrSplit[1]);
            }
        }
        return map2;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0037 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:16:0x0038  */
    /* JADX WARN: Code duplicated, block: B:18:0x0044  */
    /* JADX WARN: Code duplicated, block: B:22:0x007c A[Catch: all -> 0x023b, TryCatch #0 {all -> 0x023b, blocks: (B:20:0x0056, B:22:0x007c, B:24:0x0084, B:26:0x00ab, B:27:0x00bf, B:30:0x00cd, B:32:0x00d3, B:34:0x00ef, B:36:0x00f9, B:38:0x00ff, B:40:0x010a, B:42:0x011c, B:43:0x0131, B:45:0x0145, B:46:0x015a, B:48:0x016d, B:49:0x0182, B:51:0x01df, B:53:0x021d, B:55:0x022e), top: B:60:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0084 A[Catch: all -> 0x023b, TryCatch #0 {all -> 0x023b, blocks: (B:20:0x0056, B:22:0x007c, B:24:0x0084, B:26:0x00ab, B:27:0x00bf, B:30:0x00cd, B:32:0x00d3, B:34:0x00ef, B:36:0x00f9, B:38:0x00ff, B:40:0x010a, B:42:0x011c, B:43:0x0131, B:45:0x0145, B:46:0x015a, B:48:0x016d, B:49:0x0182, B:51:0x01df, B:53:0x021d, B:55:0x022e), top: B:60:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x00ab A[Catch: all -> 0x023b, TryCatch #0 {all -> 0x023b, blocks: (B:20:0x0056, B:22:0x007c, B:24:0x0084, B:26:0x00ab, B:27:0x00bf, B:30:0x00cd, B:32:0x00d3, B:34:0x00ef, B:36:0x00f9, B:38:0x00ff, B:40:0x010a, B:42:0x011c, B:43:0x0131, B:45:0x0145, B:46:0x015a, B:48:0x016d, B:49:0x0182, B:51:0x01df, B:53:0x021d, B:55:0x022e), top: B:60:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:39:0x0108  */
    /* JADX WARN: Code duplicated, block: B:42:0x011c A[Catch: all -> 0x023b, TryCatch #0 {all -> 0x023b, blocks: (B:20:0x0056, B:22:0x007c, B:24:0x0084, B:26:0x00ab, B:27:0x00bf, B:30:0x00cd, B:32:0x00d3, B:34:0x00ef, B:36:0x00f9, B:38:0x00ff, B:40:0x010a, B:42:0x011c, B:43:0x0131, B:45:0x0145, B:46:0x015a, B:48:0x016d, B:49:0x0182, B:51:0x01df, B:53:0x021d, B:55:0x022e), top: B:60:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x0145 A[Catch: all -> 0x023b, TryCatch #0 {all -> 0x023b, blocks: (B:20:0x0056, B:22:0x007c, B:24:0x0084, B:26:0x00ab, B:27:0x00bf, B:30:0x00cd, B:32:0x00d3, B:34:0x00ef, B:36:0x00f9, B:38:0x00ff, B:40:0x010a, B:42:0x011c, B:43:0x0131, B:45:0x0145, B:46:0x015a, B:48:0x016d, B:49:0x0182, B:51:0x01df, B:53:0x021d, B:55:0x022e), top: B:60:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x016d A[Catch: all -> 0x023b, TryCatch #0 {all -> 0x023b, blocks: (B:20:0x0056, B:22:0x007c, B:24:0x0084, B:26:0x00ab, B:27:0x00bf, B:30:0x00cd, B:32:0x00d3, B:34:0x00ef, B:36:0x00f9, B:38:0x00ff, B:40:0x010a, B:42:0x011c, B:43:0x0131, B:45:0x0145, B:46:0x015a, B:48:0x016d, B:49:0x0182, B:51:0x01df, B:53:0x021d, B:55:0x022e), top: B:60:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x01df A[Catch: all -> 0x023b, TryCatch #0 {all -> 0x023b, blocks: (B:20:0x0056, B:22:0x007c, B:24:0x0084, B:26:0x00ab, B:27:0x00bf, B:30:0x00cd, B:32:0x00d3, B:34:0x00ef, B:36:0x00f9, B:38:0x00ff, B:40:0x010a, B:42:0x011c, B:43:0x0131, B:45:0x0145, B:46:0x015a, B:48:0x016d, B:49:0x0182, B:51:0x01df, B:53:0x021d, B:55:0x022e), top: B:60:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x021d A[Catch: all -> 0x023b, TryCatch #0 {all -> 0x023b, blocks: (B:20:0x0056, B:22:0x007c, B:24:0x0084, B:26:0x00ab, B:27:0x00bf, B:30:0x00cd, B:32:0x00d3, B:34:0x00ef, B:36:0x00f9, B:38:0x00ff, B:40:0x010a, B:42:0x011c, B:43:0x0131, B:45:0x0145, B:46:0x015a, B:48:0x016d, B:49:0x0182, B:51:0x01df, B:53:0x021d, B:55:0x022e), top: B:60:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x022d  */
    /* JADX WARN: Code duplicated, block: B:60:0x0056 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:26:0x00ab, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:42:0x011c, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:45:0x0145, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:48:0x016d, please report this as an issue */
    private static CrashDetailBean a(Context context, Map<String, String> map, NativeExceptionHandler nativeExceptionHandler) {
        boolean z10;
        Map<String, Integer> mapD;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        Integer num;
        String str6;
        String str7;
        String str8;
        byte[] bArrA;
        String str9;
        Integer num2;
        String str10;
        Integer num3;
        String str11;
        Integer num4;
        CrashDetailBean crashDetailBeanPackageCrashDatas;
        String str12;
        boolean zEqualsIgnoreCase;
        if (aa.a(context) == null) {
            al.e("abnormal com info not created", new Object[0]);
        } else {
            String str13 = map.get("intStateStr");
            if (str13 == null || str13.trim().length() <= 0) {
                al.e("no intStateStr", new Object[0]);
            } else {
                z10 = true;
            }
            if (!z10) {
                return null;
            }
            mapD = d(map.get("intStateStr"));
            if (mapD == null) {
                al.e("parse intSateMap fail", Integer.valueOf(map.size()));
                return null;
            }
            try {
                mapD.get("sino").intValue();
                mapD.get("sud").intValue();
                str = map.get(com.join.mgps.mod.utils.d.f71912n);
                if (TextUtils.isEmpty(str)) {
                    al.e("error format at version", new Object[0]);
                    return null;
                }
                str2 = (String) a(map, "codeMsg", "unknown");
                str3 = (String) a(map, "signalName", "unknown");
                map.get("errnoMsg");
                str4 = (String) a(map, "stack", "unknown");
                str5 = map.get("jstack");
                if (str5 != null) {
                    str4 = str4 + "java:\n" + str5;
                }
                num = mapD.get("sico");
                if (num != null || num.intValue() <= 0) {
                    str6 = str2;
                    str7 = str3;
                } else {
                    str7 = str3 + "(" + str2 + ")";
                    str6 = "KERNEL";
                }
                str8 = map.get("nativeLog");
                if (str8 != null || str8.isEmpty()) {
                    bArrA = null;
                } else {
                    bArrA = ap.a(str8, "BuglyNativeLog.txt");
                }
                str9 = (String) a(map, "sendingProcess", "unknown");
                num2 = mapD.get("spd");
                if (num2 != null) {
                    str9 = str9 + "(" + num2 + ")";
                }
                String str14 = str9;
                str10 = (String) a(map, "threadName", "unknown");
                num3 = mapD.get("et");
                if (num3 != null) {
                    str10 = str10 + "(" + num3 + ")";
                }
                String str15 = str10;
                str11 = (String) a(map, "processName", "unknown");
                num4 = mapD.get("ep");
                if (num4 != null) {
                    str11 = str11 + "(" + num4 + ")";
                }
                crashDetailBeanPackageCrashDatas = nativeExceptionHandler.packageCrashDatas(str11, str15, (((long) mapD.get("ets").intValue()) * 1000) + (((long) mapD.get("etms").intValue()) / 1000), str7, (String) a(map, "errorAddr", "unknown"), a(str4), str6, str14, (String) a(map, "tombPath", "unknown"), map.get("sysLogPath"), map.get("jniLogPath"), str, bArrA, a(map), false, false);
                if (crashDetailBeanPackageCrashDatas != null) {
                    String str16 = (String) a(map, "userId", crashDetailBeanPackageCrashDatas.f83132m);
                    crashDetailBeanPackageCrashDatas.f83132m = str16;
                    al.c("[Native record info] userId: %s", str16);
                    String str17 = (String) a(map, "sysLog", crashDetailBeanPackageCrashDatas.f83142w);
                    crashDetailBeanPackageCrashDatas.f83142w = str17;
                    String str18 = (String) a(map, "appVersion", str17);
                    crashDetailBeanPackageCrashDatas.f83125f = str18;
                    al.c("[Native record info] appVersion: %s", str18);
                    str12 = map.get("isAppForeground");
                    if (str12 != null) {
                        al.c("[Native record info] isAppForeground: %s", str12);
                        zEqualsIgnoreCase = str12.equalsIgnoreCase("true");
                    } else {
                        zEqualsIgnoreCase = false;
                    }
                    crashDetailBeanPackageCrashDatas.R = zEqualsIgnoreCase;
                    crashDetailBeanPackageCrashDatas.Q = b(map);
                    crashDetailBeanPackageCrashDatas.f83145z = null;
                    crashDetailBeanPackageCrashDatas.f83130k = true;
                }
                return crashDetailBeanPackageCrashDatas;
            } catch (Throwable th) {
                al.e("error format", new Object[0]);
                th.printStackTrace();
                return null;
            }
        }
        z10 = false;
        if (!z10) {
            return null;
        }
        mapD = d(map.get("intStateStr"));
        if (mapD == null) {
            al.e("parse intSateMap fail", Integer.valueOf(map.size()));
            return null;
        }
        mapD.get("sino").intValue();
        mapD.get("sud").intValue();
        str = map.get(com.join.mgps.mod.utils.d.f71912n);
        if (TextUtils.isEmpty(str)) {
            al.e("error format at version", new Object[0]);
            return null;
        }
        str2 = (String) a(map, "codeMsg", "unknown");
        str3 = (String) a(map, "signalName", "unknown");
        map.get("errnoMsg");
        str4 = (String) a(map, "stack", "unknown");
        str5 = map.get("jstack");
        if (str5 != null) {
            str4 = str4 + "java:\n" + str5;
        }
        num = mapD.get("sico");
        if (num != null) {
            str6 = str2;
            str7 = str3;
        } else {
            str6 = str2;
            str7 = str3;
        }
        str8 = map.get("nativeLog");
        if (str8 != null) {
            bArrA = null;
        } else {
            bArrA = null;
        }
        str9 = (String) a(map, "sendingProcess", "unknown");
        num2 = mapD.get("spd");
        if (num2 != null) {
            str9 = str9 + "(" + num2 + ")";
        }
        String str19 = str9;
        str10 = (String) a(map, "threadName", "unknown");
        num3 = mapD.get("et");
        if (num3 != null) {
            str10 = str10 + "(" + num3 + ")";
        }
        String str110 = str10;
        str11 = (String) a(map, "processName", "unknown");
        num4 = mapD.get("ep");
        if (num4 != null) {
            str11 = str11 + "(" + num4 + ")";
        }
        crashDetailBeanPackageCrashDatas = nativeExceptionHandler.packageCrashDatas(str11, str110, (((long) mapD.get("ets").intValue()) * 1000) + (((long) mapD.get("etms").intValue()) / 1000), str7, (String) a(map, "errorAddr", "unknown"), a(str4), str6, str19, (String) a(map, "tombPath", "unknown"), map.get("sysLogPath"), map.get("jniLogPath"), str, bArrA, a(map), false, false);
        if (crashDetailBeanPackageCrashDatas != null) {
            String str111 = (String) a(map, "userId", crashDetailBeanPackageCrashDatas.f83132m);
            crashDetailBeanPackageCrashDatas.f83132m = str111;
            al.c("[Native record info] userId: %s", str111);
            String str112 = (String) a(map, "sysLog", crashDetailBeanPackageCrashDatas.f83142w);
            crashDetailBeanPackageCrashDatas.f83142w = str112;
            String str113 = (String) a(map, "appVersion", str112);
            crashDetailBeanPackageCrashDatas.f83125f = str113;
            al.c("[Native record info] appVersion: %s", str113);
            str12 = map.get("isAppForeground");
            if (str12 != null) {
                al.c("[Native record info] isAppForeground: %s", str12);
                zEqualsIgnoreCase = str12.equalsIgnoreCase("true");
            } else {
                zEqualsIgnoreCase = false;
            }
            crashDetailBeanPackageCrashDatas.R = zEqualsIgnoreCase;
            crashDetailBeanPackageCrashDatas.Q = b(map);
            crashDetailBeanPackageCrashDatas.f83145z = null;
            crashDetailBeanPackageCrashDatas.f83130k = true;
        }
        return crashDetailBeanPackageCrashDatas;
    }
}
