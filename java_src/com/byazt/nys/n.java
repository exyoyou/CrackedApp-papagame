package com.byazt.nys;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 430, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static StringBuffer f17719c = new StringBuffer();

    public static void c(String str, String str2) {
        StringBuffer stringBuffer = f17719c;
        if (stringBuffer == null || str2 == null) {
            return;
        }
        try {
            if (stringBuffer.length() > 204800) {
                return;
            }
            StringBuffer stringBuffer2 = f17719c;
            stringBuffer2.append(System.currentTimeMillis());
            stringBuffer2.append(';');
            stringBuffer2.append(str);
            stringBuffer2.append(';');
            stringBuffer2.append(str2);
            stringBuffer2.append('\n');
        } catch (Exception unused) {
        }
    }

    public static String tt() {
        StringBuffer stringBuffer = f17719c;
        String string = stringBuffer != null ? stringBuffer.toString() : "";
        f17719c = null;
        return string;
    }

    public static void c() {
        f17719c = null;
    }
}
