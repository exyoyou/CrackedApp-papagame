package com.sdk.base.api;

import android.content.Context;
import android.content.SharedPreferences;
import com.sdk.b.a;
import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.base.module.config.BaseConfig;
import com.sdk.base.module.manager.SDKManager;
import com.sdk.o.b;
import com.sdk.p.d;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public class ToolUtils {
    public static String Base64_Decrypt(String str) {
        return new String(d.a(str), Charset.defaultCharset());
    }

    public static String RsaDecrypt(String str, String str2) {
        return b.a(str, str2);
    }

    public static void clearCache(Context context) {
        LogUtils.i(a.f78446a, "cache clear", a.f78447b);
        String str = com.sdk.j.a.f78542a;
        SharedPreferences sharedPreferences = context.getSharedPreferences("ZzxCache", 0);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        for (String str2 : sharedPreferences.getAll().keySet()) {
            if (str2.startsWith("accessCode")) {
                editorEdit.remove(str2);
            }
        }
        editorEdit.commit();
    }

    public static String getAppDebugInfo(Context context, String str) {
        String str2;
        String strA = com.sdk.i.a.a(context, BaseConfig.apk);
        String str3 = com.sdk.t.a.f78585b;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n-------------------");
        sb2.append("\n网络类型：");
        int iA = com.sdk.n.a.b(context).a();
        if (iA == -1) {
            str2 = "无网络";
        } else if (iA == 0) {
            str2 = "单WIFI";
        } else if (iA != 1) {
            str2 = iA != 2 ? "未知" : "流量 + WIFI";
        } else {
            str2 = "单流量";
        }
        sb2.append(str2);
        return ((sb2.toString() + "\noperator：" + com.sdk.n.a.a(context) + "\n说明：0未知 1移动 2电信 3联通 \n") + "\n-------------------") + "\nrelease version:\n" + BaseConfig.f78469v + "\n\napp Info:\n" + com.sdk.f.a.a(context, str) + "\n(md5:)HashFinger: " + str + "\n\napiKey:\n" + strA + "\n\npublicKey:\n" + str3 + "\n";
    }

    public static String getAppMd5(Context context) {
        return com.sdk.i.a.b(context, "MD5");
    }

    public static String getAppSM3(Context context) {
        return com.sdk.i.a.b(context, SDKManager.HASH_FINGER_SM3);
    }
}
