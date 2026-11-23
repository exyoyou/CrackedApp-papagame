package org.jboss.netty.util.internal;

import com.qq.e.comm.managers.setting.GlobalSetting;
import com.sigmob.sdk.base.mta.PointType;
import java.util.ArrayList;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes10.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f95812a = Pattern.compile("[, \\t\\n\\r\\f\\e\\a]");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f95813b = {"0", "1", "2", "3", "4", "5", "6", "7", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, "9", "10", "11", "12", PointType.SIGMOB_REPORT_TRACKING, "14", "15"};

    private b() {
    }

    public static boolean a(Object obj) {
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        if (obj instanceof Number) {
            return ((Number) obj).intValue() != 0;
        }
        String strValueOf = String.valueOf(obj);
        if (strValueOf.length() == 0) {
            return false;
        }
        try {
            return Integer.parseInt(strValueOf) != 0;
        } catch (NumberFormatException unused) {
            char upperCase = Character.toUpperCase(strValueOf.charAt(0));
            return upperCase == 'T' || upperCase == 'Y';
        }
    }

    public static int b(Object obj) {
        return obj instanceof Number ? ((Number) obj).intValue() : Integer.parseInt(String.valueOf(obj));
    }

    public static String c(int i10) {
        if (i10 >= 0) {
            String[] strArr = f95813b;
            if (i10 < strArr.length) {
                return strArr[i10];
            }
        }
        return Integer.toString(i10);
    }

    public static String[] d(Object obj) {
        if (obj instanceof String[]) {
            return (String[]) obj;
        }
        if (!(obj instanceof Iterable)) {
            return f95812a.split(String.valueOf(obj));
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : (Iterable) obj) {
            if (obj2 == null) {
                arrayList.add(null);
            } else {
                arrayList.add(String.valueOf(obj2));
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
