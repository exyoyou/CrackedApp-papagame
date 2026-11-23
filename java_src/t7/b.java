package t7;

import com.sdk.base.framework.utils.log.LogUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static String a(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        if (str2.contains("timeout")) {
            sb2.append("ping: cannot resolve " + str + ": Timeout");
        } else if (str2.contains("unknown")) {
            sb2.append("ping: cannot resolve " + str + ": Unknown host");
        } else {
            g(str2, sb2);
        }
        return sb2.toString();
    }

    private static String b(String str) {
        Matcher matcher = Pattern.compile("(?<=\\()([\\d]+\\.)+[\\d]+(?=\\))").matcher(str);
        String strTrim = null;
        while (matcher.find()) {
            strTrim = matcher.group().toString().trim();
        }
        return strTrim;
    }

    private static List<String> c(String str) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile("(?<=icmp_seq=)([0-9]+)(?=\\s)").matcher(str);
        while (matcher.find()) {
            arrayList.add(matcher.group().toString().trim());
        }
        return arrayList;
    }

    private static List<String> d(String str) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile("(?<=\\D)([\\s0-9]+)(?=bytes)").matcher(str);
        while (matcher.find()) {
            String strTrim = matcher.group().toString().trim();
            if (matcher.group().toString().trim().matches("\\d+")) {
                arrayList.add(strTrim);
            }
        }
        return arrayList;
    }

    private static List<String> e(String str) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile("(?<=ttl=)([0-9]+)(?=\\s)").matcher(str);
        while (matcher.find()) {
            arrayList.add(matcher.group().toString().trim());
        }
        return arrayList;
    }

    private static List<String> f(String str) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile("(?<==)([\\.0-9\\s]+)(?=ms)").matcher(str);
        while (matcher.find()) {
            arrayList.add(matcher.group().toString().trim());
        }
        return arrayList;
    }

    public static void g(String str, StringBuilder sb2) {
        String strB = b(str);
        List<String> listD = d(str);
        List<String> listE = e(str);
        List<String> listF = f(str);
        List<String> listC = c(str);
        int size = listF.size();
        int i10 = 0;
        while (true) {
            int i11 = size - 1;
            if (i10 >= i11) {
                sb2.append(listD.get(i11) + "bytes from " + strB + ": icmp_seq=#" + listC.get(i11) + " ttl=" + listE.get(i11) + " time=" + listF.get(i11) + "ms");
                return;
            }
            sb2.append(listD.get(i10) + "bytes from " + strB + ": icmp_seq=#" + listC.get(i10) + " ttl=" + listE.get(i10) + " time=" + listF.get(i10) + LogUtils.CSTR_TIMES_END);
            i10++;
        }
    }
}
