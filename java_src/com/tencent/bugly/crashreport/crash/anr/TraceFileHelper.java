package com.tencent.bugly.crashreport.crash.anr;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.tencent.bugly.proguard.al;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class TraceFileHelper {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f83151a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f83152b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f83153c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Map<String, String[]> f83154d;
    }

    public interface b {
        boolean a(long j10);

        boolean a(long j10, long j11, String str);

        boolean a(String str, int i10, String str2, String str3);
    }

    private static Object[] a(BufferedReader bufferedReader, Pattern... patternArr) throws IOException {
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return null;
            }
            for (Pattern pattern : patternArr) {
                if (pattern.matcher(line).matches()) {
                    return new Object[]{pattern, line};
                }
            }
        }
    }

    private static String b(BufferedReader bufferedReader) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null || line.trim().length() <= 0) {
                break;
            }
            stringBuffer.append(line + "\n");
        }
        return stringBuffer.toString();
    }

    public static a readFirstDumpInfo(String str, final boolean z10) throws Throwable {
        if (str == null) {
            al.e("path:%s", str);
            return null;
        }
        final a aVar = new a();
        readTraceFile(str, new b() { // from class: com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.2
            @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
            public final boolean a(String str2, int i10, String str3, String str4) {
                al.c("new thread %s", str2);
                a aVar2 = aVar;
                if (aVar2.f83154d == null) {
                    aVar2.f83154d = new HashMap();
                }
                aVar.f83154d.put(str2, new String[]{str3, str4, String.valueOf(i10)});
                return true;
            }

            @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
            public final boolean a(long j10, long j11, String str2) {
                al.c("new process %s", str2);
                a aVar2 = aVar;
                aVar2.f83151a = j10;
                aVar2.f83152b = str2;
                aVar2.f83153c = j11;
                return z10;
            }

            @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
            public final boolean a(long j10) {
                al.c("process end %d", Long.valueOf(j10));
                return false;
            }
        });
        if (aVar.f83151a > 0 && aVar.f83153c > 0 && aVar.f83152b != null) {
            return aVar;
        }
        al.e("first dump error %s", aVar.f83151a + " " + aVar.f83153c + " " + aVar.f83152b);
        return null;
    }

    public static a readTargetDumpInfo(final String str, String str2, final boolean z10) throws Throwable {
        if (str != null && str2 != null) {
            final a aVar = new a();
            readTraceFile(str2, new b() { // from class: com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.1
                @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
                public final boolean a(String str3, int i10, String str4, String str5) {
                    al.c("new thread %s", str3);
                    a aVar2 = aVar;
                    if (aVar2.f83151a > 0 && aVar2.f83153c > 0 && aVar2.f83152b != null) {
                        if (aVar2.f83154d == null) {
                            aVar2.f83154d = new HashMap();
                        }
                        aVar.f83154d.put(str3, new String[]{str4, str5, String.valueOf(i10)});
                    }
                    return true;
                }

                @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
                public final boolean a(long j10, long j11, String str3) {
                    al.c("new process %s", str3);
                    if (!str3.equals(str)) {
                        return true;
                    }
                    a aVar2 = aVar;
                    aVar2.f83151a = j10;
                    aVar2.f83152b = str3;
                    aVar2.f83153c = j11;
                    return z10;
                }

                @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
                public final boolean a(long j10) {
                    al.c("process end %d", Long.valueOf(j10));
                    a aVar2 = aVar;
                    return aVar2.f83151a <= 0 || aVar2.f83153c <= 0 || aVar2.f83152b == null;
                }
            });
            if (aVar.f83151a > 0 && aVar.f83153c > 0 && aVar.f83152b != null) {
                return aVar;
            }
        }
        return null;
    }

    public static void readTraceFile(String str, b bVar) throws Throwable {
        Throwable th;
        if (str == null || bVar == null) {
            return;
        }
        File file = new File(str);
        if (!file.exists()) {
            return;
        }
        file.lastModified();
        file.length();
        int i10 = 0;
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
                try {
                    Pattern patternCompile = Pattern.compile("-{5}\\spid\\s\\d+\\sat\\s\\d+-\\d+-\\d+\\s\\d{2}:\\d{2}:\\d{2}\\s-{5}");
                    Pattern patternCompile2 = Pattern.compile("-{5}\\send\\s\\d+\\s-{5}");
                    Pattern patternCompile3 = Pattern.compile("Cmd\\sline:\\s(\\S+)");
                    Pattern patternCompile4 = Pattern.compile("\".+\"\\s(daemon\\s){0,1}prio=\\d+\\stid=\\d+\\s.*");
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
                    while (true) {
                        Pattern[] patternArr = new Pattern[1];
                        patternArr[i10] = patternCompile;
                        Object[] objArrA = a(bufferedReader2, patternArr);
                        if (objArrA == null) {
                            try {
                                bufferedReader2.close();
                                return;
                            } catch (IOException e10) {
                                if (al.a(e10)) {
                                    return;
                                }
                                e10.printStackTrace();
                                return;
                            }
                        }
                        Pattern[] patternArr2 = new Pattern[1];
                        patternArr2[i10] = patternCompile3;
                        Object[] objArrA2 = a(bufferedReader2, patternArr2);
                        if (objArrA2 == null) {
                            al.d("Failed to find process name.", new Object[i10]);
                            try {
                                bufferedReader2.close();
                                return;
                            } catch (IOException e11) {
                                if (al.a(e11)) {
                                    return;
                                }
                                e11.printStackTrace();
                                return;
                            }
                        }
                        String[] strArrSplit = objArrA[1].toString().split("\\s");
                        long j10 = Long.parseLong(strArrSplit[2]);
                        long time = simpleDateFormat.parse(strArrSplit[4] + " " + strArrSplit[5]).getTime();
                        Matcher matcher = patternCompile3.matcher(objArrA2[1].toString());
                        matcher.find();
                        matcher.group(1);
                        SimpleDateFormat simpleDateFormat2 = simpleDateFormat;
                        if (!bVar.a(j10, time, matcher.group(1))) {
                            try {
                                bufferedReader2.close();
                                return;
                            } catch (IOException e12) {
                                if (al.a(e12)) {
                                    return;
                                }
                                e12.printStackTrace();
                                return;
                            }
                        }
                        while (true) {
                            Object[] objArrA3 = a(bufferedReader2, patternCompile4, patternCompile2);
                            if (objArrA3 != null) {
                                if (objArrA3[0] != patternCompile4) {
                                    if (bVar.a(Long.parseLong(objArrA3[1].toString().split("\\s")[2]))) {
                                        break;
                                    }
                                    try {
                                        bufferedReader2.close();
                                        return;
                                    } catch (IOException e13) {
                                        if (al.a(e13)) {
                                            return;
                                        }
                                        e13.printStackTrace();
                                        return;
                                    }
                                }
                                String string = objArrA3[1].toString();
                                Matcher matcher2 = Pattern.compile("\".+\"").matcher(string);
                                matcher2.find();
                                String strGroup = matcher2.group();
                                String strSubstring = strGroup.substring(1, strGroup.length() - 1);
                                string.contains("NATIVE");
                                Matcher matcher3 = Pattern.compile("tid=\\d+").matcher(string);
                                matcher3.find();
                                String strGroup2 = matcher3.group();
                                bVar.a(strSubstring, Integer.parseInt(strGroup2.substring(strGroup2.indexOf(SimpleComparison.EQUAL_TO_OPERATION) + 1)), a(bufferedReader2), b(bufferedReader2));
                            } else {
                                break;
                            }
                        }
                        simpleDateFormat = simpleDateFormat2;
                        i10 = 0;
                    }
                } catch (Exception e14) {
                    e = e14;
                    bufferedReader = bufferedReader2;
                    if (!al.a(e)) {
                        e.printStackTrace();
                    }
                    al.d("trace open fail:%s : %s", e.getClass().getName(), e.getMessage());
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e15) {
                            if (al.a(e15)) {
                                return;
                            }
                            e15.printStackTrace();
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader == null) {
                        throw th;
                    }
                    try {
                        bufferedReader.close();
                        throw th;
                    } catch (IOException e16) {
                        if (al.a(e16)) {
                            throw th;
                        }
                        e16.printStackTrace();
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e17) {
            e = e17;
        }
    }

    private static String a(BufferedReader bufferedReader) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < 3; i10++) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return null;
            }
            stringBuffer.append(line + "\n");
        }
        return stringBuffer.toString();
    }
}
