package cn.fly.tools.xcrash;

import android.text.TextUtils;
import cn.fly.commons.m;
import com.tencent.stat.StatNativeCrashReport;
import com.uc.crashsdk.export.LogType;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.StringReader;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f2378a = Pattern.compile("^(.*):\\s'(.*?)'$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f2379b = Pattern.compile("^pid:\\s(.*),\\stid:\\s(.*),\\sname:\\s(.*)\\s+>>>\\s(.*)\\s<<<$");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f2380c = Pattern.compile("^pid:\\s(.*)\\s+>>>\\s(.*)\\s<<<$");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f2381d = Pattern.compile("^signal\\s(.*),\\scode\\s(.*),\\sfault\\saddr\\s(.*)$");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Pattern f2382e = Pattern.compile("^(\\d{20})_(.*)__(.*)$");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Set<String> f2383f = new HashSet(Arrays.asList("Tombstone maker", "Crash type", "Start time", "Crash time", "App ID", "App version", "Rooted", "API level", "OS version", "Kernel version", "ABI list", "Manuf", "Brd", "Model", "Build_f", "ABI", "Abort message"));

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Set<String> f2384g = new HashSet(Arrays.asList("backtrace", "java stacktrace", "xcrash error", "xcrash error debug"));

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Set<String> f2385h = new HashSet(Arrays.asList("foreground"));

    /* JADX INFO: renamed from: cn.fly.tools.xcrash.d$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2386a;

        static {
            int[] iArr = new int[a.values().length];
            f2386a = iArr;
            try {
                iArr[a.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2386a[a.HEAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2386a[a.SECTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private enum a {
        UNKNOWN,
        HEAD,
        SECTION
    }

    private d() {
    }

    public static Map<String, String> a(String str, String str2) throws IOException {
        HashMap map = new HashMap();
        if (str != null) {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(str));
            a((Map<String, String>) map, bufferedReader, true);
            bufferedReader.close();
        }
        if (str2 != null) {
            BufferedReader bufferedReader2 = new BufferedReader(new StringReader(str2));
            a((Map<String, String>) map, bufferedReader2, false);
            bufferedReader2.close();
        }
        a(map, str);
        if (TextUtils.isEmpty((String) map.get("App version"))) {
            String appVersion = XCrash.getAppVersion();
            if (TextUtils.isEmpty(appVersion)) {
                appVersion = m.a("007Wfi0g5gjBg_fmhiYg");
            }
            map.put("App version", appVersion);
        }
        return map;
    }

    private static void a(Map<String, String> map, String str) {
        String strSubstring;
        if (str == null) {
            return;
        }
        if (TextUtils.isEmpty(map.get("Crash time"))) {
            map.put("Crash time", new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US).format(new Date(new File(str).lastModified())));
        }
        String str2 = map.get("Start time");
        String str3 = map.get("App version");
        String str4 = map.get("pname");
        String str5 = map.get("Crash type");
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4) || TextUtils.isEmpty(str5)) {
            String strSubstring2 = str.substring(str.lastIndexOf(47) + 1);
            if (!strSubstring2.isEmpty() && strSubstring2.startsWith(StatNativeCrashReport.PRE_TAG_TOMBSTONE_FNAME)) {
                String strSubstring3 = strSubstring2.substring(10);
                if (strSubstring3.endsWith(".java.xcrash")) {
                    if (TextUtils.isEmpty(str5)) {
                        map.put("Crash type", LogType.JAVA_TYPE);
                    }
                    strSubstring = strSubstring3.substring(0, strSubstring3.length() - 12);
                } else if (strSubstring3.endsWith(".native.xcrash")) {
                    if (TextUtils.isEmpty(str5)) {
                        map.put("Crash type", "native");
                    }
                    strSubstring = strSubstring3.substring(0, strSubstring3.length() - 14);
                } else {
                    if (!strSubstring3.endsWith(".anr.xcrash")) {
                        return;
                    }
                    if (TextUtils.isEmpty(str5)) {
                        map.put("Crash type", LogType.ANR_TYPE);
                    }
                    strSubstring = strSubstring3.substring(0, strSubstring3.length() - 11);
                }
                if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) {
                    Matcher matcher = f2382e.matcher(strSubstring);
                    if (matcher.find() && matcher.groupCount() == 3) {
                        if (TextUtils.isEmpty(str2)) {
                            map.put("Start time", new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US).format(new Date(Long.parseLong(matcher.group(1), 10) / 1000)));
                        }
                        if (TextUtils.isEmpty(str3)) {
                            map.put("App version", matcher.group(2));
                        }
                        if (TextUtils.isEmpty(str4)) {
                            map.put("pname", matcher.group(3));
                        }
                    }
                }
            }
        }
    }

    private static String a(BufferedReader bufferedReader) throws IOException {
        try {
            bufferedReader.mark(2);
            for (int i10 = 0; i10 < 2; i10++) {
                try {
                    int i11 = bufferedReader.read();
                    if (i11 == -1) {
                        bufferedReader.reset();
                        return null;
                    }
                    if (i11 > 0) {
                        bufferedReader.reset();
                        return bufferedReader.readLine();
                    }
                } catch (Exception unused) {
                    bufferedReader.reset();
                    return bufferedReader.readLine();
                }
            }
            bufferedReader.reset();
            return null;
        } catch (Exception unused2) {
            return bufferedReader.readLine();
        }
    }

    private static void a(Map<String, String> map, BufferedReader bufferedReader, boolean z10) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        a aVar = a.UNKNOWN;
        String strA = z10 ? a(bufferedReader) : bufferedReader.readLine();
        int i10 = 1;
        boolean z11 = strA == null;
        String str = null;
        String str2 = "";
        boolean z12 = false;
        boolean zEquals = false;
        while (!z11) {
            String strA2 = z10 ? a(bufferedReader) : bufferedReader.readLine();
            boolean z13 = strA2 == null;
            int i11 = AnonymousClass1.f2386a[aVar.ordinal()];
            if (i11 == i10) {
                if (strA.equals("*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***")) {
                    aVar = a.HEAD;
                } else if (strA.equals("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---")) {
                    aVar = a.SECTION;
                    sb2.append(strA);
                    sb2.append('\n');
                    str2 = "+++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++";
                    z12 = false;
                    zEquals = false;
                } else if (strA.length() > 1 && strA.endsWith(":")) {
                    aVar = a.SECTION;
                    String strSubstring = strA.substring(0, strA.length() - 1);
                    if (f2384g.contains(strSubstring)) {
                        z12 = strSubstring.equals("backtrace") || strSubstring.equals("java stacktrace") || strSubstring.equals("xcrash error debug");
                        zEquals = strSubstring.equals("xcrash error");
                    } else if (!strSubstring.equals("meminfo") && !strSubstring.startsWith("memory near ")) {
                        str = strSubstring;
                        str2 = "";
                        z12 = false;
                        zEquals = false;
                    }
                    str = strSubstring;
                    str2 = "";
                }
                strA = strA2;
                z11 = z13;
                i10 = 1;
            } else if (i11 == 2) {
                if (strA.startsWith("pid: ")) {
                    Matcher matcher = f2379b.matcher(strA);
                    if (matcher.find() && matcher.groupCount() == 4) {
                        a(map, "pname", matcher.group(4));
                    } else {
                        Matcher matcher2 = f2380c.matcher(strA);
                        if (matcher2.find() && matcher2.groupCount() == 2) {
                            a(map, "pname", matcher2.group(2));
                        }
                    }
                } else if (!strA.startsWith("signal ")) {
                    Matcher matcher3 = f2378a.matcher(strA);
                    if (matcher3.find() && matcher3.groupCount() == 2 && f2383f.contains(matcher3.group(1))) {
                        a(map, matcher3.group(1), matcher3.group(2));
                    }
                }
                if (strA2 != null && (strA2.startsWith("    r0 ") || strA2.startsWith("    x0 ") || strA2.startsWith("    eax ") || strA2.startsWith("    rax "))) {
                    aVar = a.SECTION;
                    str = "registers";
                    str2 = "";
                    z12 = true;
                    zEquals = false;
                }
                if (strA2 == null || strA2.isEmpty()) {
                    aVar = a.UNKNOWN;
                }
            } else if (i11 == 3) {
                if (!strA.equals(str2) && !z13) {
                    if (z12) {
                        if (str.equals("java stacktrace") && strA.startsWith(" ")) {
                            strA = strA.trim();
                        } else if (strA.startsWith("    ")) {
                            strA = strA.substring(4);
                        }
                    }
                    sb2.append(strA);
                    sb2.append('\n');
                } else {
                    if (f2385h.contains(str) && sb2.length() > 0 && sb2.charAt(sb2.length() - 1) == '\n') {
                        sb2.deleteCharAt(sb2.length() - 1);
                    }
                    a(map, str, sb2.toString(), zEquals);
                    sb2.setLength(0);
                    aVar = a.UNKNOWN;
                }
            }
            strA = strA2;
            z11 = z13;
            i10 = 1;
        }
    }

    private static void a(Map<String, String> map, String str, String str2) {
        a(map, str, str2, false);
    }

    private static void a(Map<String, String> map, String str, String str2, boolean z10) {
        if (str == null || str.isEmpty() || str2 == null) {
            return;
        }
        String str3 = map.get(str);
        if (!z10) {
            if (str3 == null || (str3.isEmpty() && !str2.isEmpty())) {
                map.put(str, str2);
                return;
            }
            return;
        }
        if (str3 != null) {
            str2 = str3 + str2;
        }
        map.put(str, str2);
    }
}
