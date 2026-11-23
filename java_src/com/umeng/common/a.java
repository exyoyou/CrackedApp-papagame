package com.umeng.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.pro.aw;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.utils.UMUtils;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f85035a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f85036b = "umeng+";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f85037c = "ek__id";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f85038d = "ek_key";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f85039e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f85040f = aw.b().b(aw.f84333n);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f85041g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static a f85042h;

    private a() {
    }

    public static a a() {
        if (f85042h == null) {
            synchronized (a.class) {
                if (f85042h == null) {
                    f85042h = new a();
                }
            }
        }
        return f85042h;
    }

    private String c(String str) {
        String string = "";
        try {
            String strSubstring = str.substring(1, 9);
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < strSubstring.length(); i10++) {
                char cCharAt = strSubstring.charAt(i10);
                if (!Character.isDigit(cCharAt)) {
                    sb2.append(cCharAt);
                } else if (Integer.parseInt(Character.toString(cCharAt)) == 0) {
                    sb2.append(0);
                } else {
                    sb2.append(10 - Integer.parseInt(Character.toString(cCharAt)));
                }
            }
            string = sb2.toString();
            return string + new StringBuilder(string).reverse().toString();
        } catch (Throwable unused) {
            return string;
        }
    }

    public String b(String str) {
        String str2;
        try {
            return TextUtils.isEmpty(f85035a) ? str : new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), f85035a.getBytes()));
        } catch (Exception unused) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败!");
            String str3 = null;
            if (TextUtils.isEmpty(f85039e)) {
                return null;
            }
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，换老秘钥重试");
            try {
                String str4 = new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), f85039e.getBytes()));
                try {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，换老秘钥重试成功。");
                    return str4;
                } catch (Exception unused2) {
                    str3 = str4;
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，换老秘钥重试失败。换子进程备份key重试。");
                    try {
                        String str5 = new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), f85041g.getBytes()));
                        try {
                            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，子进程备份key重试成功。");
                            return str5;
                        } catch (Throwable unused3) {
                            str2 = str5;
                            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，子进程备份key重试失败。");
                            return str2;
                        }
                    } catch (Throwable unused4) {
                        str2 = str3;
                    }
                }
            } catch (Exception unused5) {
            }
        }
    }

    public void a(Context context) {
        try {
            if (TextUtils.isEmpty(f85035a)) {
                String multiProcessSP = UMUtils.getMultiProcessSP(context, f85037c);
                if (!TextUtils.isEmpty(multiProcessSP)) {
                    f85039e = c(multiProcessSP);
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>> primaryKey: " + f85039e);
                }
                SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f85040f, 0);
                if (sharedPreferences != null) {
                    f85041g = sharedPreferences.getString(f85037c, null);
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 子进程备份秘钥：主进程key: " + f85041g);
                }
                f85035a = c(UMUtils.genId());
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>> 正式秘钥：key: " + f85035a);
            }
        } catch (Throwable unused) {
        }
    }

    public String a(String str) {
        try {
            return TextUtils.isEmpty(f85035a) ? str : Base64.encodeToString(DataHelper.encrypt(str.getBytes(), f85035a.getBytes()), 0);
        } catch (Exception unused) {
            return null;
        }
    }
}
