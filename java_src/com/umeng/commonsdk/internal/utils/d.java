package com.umeng.commonsdk.internal.utils;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
public class d {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f85260a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f85261b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f85262c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f85263d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f85264e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f85265f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public String f85266g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f85267h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f85268i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f85269j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public String f85270k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public String f85271l;
    }

    /* JADX WARN: Code duplicated, block: B:124:0x0134 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:128:0x012d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:135:0x0144 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:141:0x013d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:151:? A[SYNTHETIC] */
    public static a a() throws Throwable {
        a aVar;
        BufferedReader bufferedReader;
        FileReader fileReader;
        Throwable th;
        int i10;
        FileReader fileReader2 = null;
        int i11 = 0;
        try {
            try {
                aVar = new a();
                try {
                    fileReader = new FileReader("/proc/cpuinfo");
                    try {
                        bufferedReader = new BufferedReader(fileReader);
                        try {
                            try {
                                int i12 = 0;
                                boolean z10 = true;
                                i10 = 0;
                                for (String line = bufferedReader.readLine(); !TextUtils.isEmpty(line) && (i12 = i12 + 1) < 30; line = bufferedReader.readLine()) {
                                    try {
                                        String[] strArrSplit = line.split(":\\s+", 2);
                                        if (z10 && strArrSplit != null && strArrSplit.length > 1) {
                                            aVar.f85260a = strArrSplit[1];
                                            z10 = false;
                                        }
                                        if (strArrSplit != null && strArrSplit.length > 1 && strArrSplit[0].contains("processor")) {
                                            i10++;
                                        }
                                        if (strArrSplit != null && strArrSplit.length > 1 && strArrSplit[0].contains("Features")) {
                                            aVar.f85263d = strArrSplit[1];
                                        }
                                        if (strArrSplit != null && strArrSplit.length > 1 && strArrSplit[0].contains("implementer")) {
                                            aVar.f85264e = strArrSplit[1];
                                        }
                                        if (strArrSplit != null && strArrSplit.length > 1 && strArrSplit[0].contains("architecture")) {
                                            aVar.f85265f = strArrSplit[1];
                                        }
                                        if (strArrSplit != null && strArrSplit.length > 1 && strArrSplit[0].contains("variant")) {
                                            aVar.f85266g = strArrSplit[1];
                                        }
                                        if (strArrSplit != null && strArrSplit.length > 1 && strArrSplit[0].contains("part")) {
                                            aVar.f85267h = strArrSplit[1];
                                        }
                                        if (strArrSplit != null && strArrSplit.length > 1 && strArrSplit[0].contains("revision")) {
                                            aVar.f85268i = strArrSplit[1];
                                        }
                                        if (strArrSplit != null && strArrSplit.length > 1 && strArrSplit[0].contains("Hardware")) {
                                            aVar.f85269j = strArrSplit[1];
                                        }
                                        if (strArrSplit != null && strArrSplit.length > 1 && strArrSplit[0].contains("Revision")) {
                                            aVar.f85270k = strArrSplit[1];
                                        }
                                        if (strArrSplit != null && strArrSplit.length > 1 && strArrSplit[0].contains("Serial")) {
                                            aVar.f85271l = strArrSplit[1];
                                        }
                                        if (strArrSplit != null && strArrSplit.length > 1 && strArrSplit[0].contains("implementer")) {
                                            aVar.f85264e = strArrSplit[1];
                                        }
                                    } catch (Exception unused) {
                                        fileReader2 = fileReader;
                                        i11 = i10;
                                        if (fileReader2 != null) {
                                            try {
                                                fileReader2.close();
                                            } catch (IOException unused2) {
                                            }
                                        }
                                        if (bufferedReader != null) {
                                            try {
                                                bufferedReader.close();
                                            } catch (IOException unused3) {
                                            }
                                        }
                                        i10 = i11;
                                    }
                                }
                                try {
                                    fileReader.close();
                                } catch (IOException unused4) {
                                }
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused5) {
                                }
                            } catch (Exception unused6) {
                                fileReader2 = fileReader;
                                if (fileReader2 != null) {
                                    fileReader2.close();
                                }
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                i10 = i11;
                                aVar.f85262c = i10;
                                return aVar;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (IOException unused7) {
                                }
                            }
                            if (bufferedReader != null) {
                                throw th;
                            }
                            try {
                                bufferedReader.close();
                                throw th;
                            } catch (IOException unused8) {
                                throw th;
                            }
                        }
                    } catch (Exception unused9) {
                        bufferedReader = null;
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader = null;
                        th = th;
                        if (fileReader != null) {
                            fileReader.close();
                        }
                        if (bufferedReader != null) {
                            throw th;
                        }
                        bufferedReader.close();
                        throw th;
                    }
                } catch (Exception unused10) {
                    bufferedReader = null;
                }
            } catch (Throwable th4) {
                th = th4;
                fileReader = null;
                bufferedReader = null;
            }
        } catch (Exception unused11) {
            aVar = null;
            bufferedReader = null;
        }
        aVar.f85262c = i10;
        return aVar;
    }

    public static String b() {
        String str = "";
        try {
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").start().getInputStream();
            byte[] bArr = new byte[24];
            while (inputStream.read(bArr) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
        } catch (Exception unused) {
        }
        return str.trim();
    }

    public static String c() {
        String str = "";
        try {
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq").start().getInputStream();
            byte[] bArr = new byte[24];
            while (inputStream.read(bArr) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
        } catch (Exception unused) {
        }
        return str.trim();
    }

    public static String d() throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"));
            try {
                String strTrim = bufferedReader.readLine().trim();
                try {
                    bufferedReader.close();
                    return strTrim;
                } catch (Throwable unused) {
                    return strTrim;
                }
            } catch (Exception unused2) {
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable unused3) {
                    }
                }
                return "";
            } catch (Throwable th2) {
                th = th2;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable unused4) {
                    }
                }
                throw th;
            }
        } catch (Exception unused5) {
        } catch (Throwable th3) {
            bufferedReader = null;
            th = th3;
        }
    }
}
