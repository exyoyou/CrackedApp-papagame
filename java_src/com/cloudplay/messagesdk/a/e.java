package com.cloudplay.messagesdk.a;

import com.baidu.mobads.sdk.api.IAdInterListener;
import com.kuaishou.weapon.p0.t;
import com.sdk.base.framework.utils.log.LogFile;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes9.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f23689a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f23690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f23691c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f23692d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f23693e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f23694f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f23695g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static SimpleDateFormat f23696h = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static SimpleDateFormat f23697i = new SimpleDateFormat("yyyy-MM-dd");

    public static void a(String str, Exception exc) {
        if (f23691c) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("saas_sdk_msg-");
            sb2.append(str);
            if (exc != null) {
                exc.toString();
            }
        }
        if (f23694f) {
            a("e", str, exc == null ? "" : exc.toString());
        }
    }

    public static void b(String str, String str2) {
        if (f23691c) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("saas_sdk_msg-");
            sb2.append(str);
        }
        if (f23694f) {
            a("e", str, str2);
        }
    }

    public static void c(String str, String str2) {
        if (f23692d) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("saas_sdk_msg-");
            sb2.append(str);
        }
        if (f23694f) {
            a("i", str, str2);
        }
    }

    public static void d(String str, String str2) {
        if (f23693e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("saas_sdk_msg-");
            sb2.append(str);
        }
        if (f23694f) {
            a("v", str, str2);
        }
    }

    public static void e(String str, String str2) {
        if (f23690b) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("saas_sdk_msg-");
            sb2.append(str);
        }
        if (f23694f) {
            a(IAdInterListener.AdReqParam.WIDTH, str, str2);
        }
    }

    public static void a(String str, String str2) {
        if (f23689a) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("saas_sdk_msg-");
            sb2.append(str);
        }
        if (f23694f) {
            a(t.f74895t, str, str2);
        }
    }

    private static void a(String str, String str2, String str3) {
        if (f23695g == null) {
            return;
        }
        Date date = new Date();
        String str4 = f23697i.format(date);
        String str5 = f23696h.format(date) + "-" + str + "-" + str2 + ":" + str3;
        File file = new File(c.a(), "HmMessageSdkLog");
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            FileWriter fileWriter = new FileWriter(new File(file.getPath(), str4 + "-" + f23695g + LogFile.LOG_SUFFIX), true);
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            bufferedWriter.write(str5);
            bufferedWriter.newLine();
            bufferedWriter.close();
            fileWriter.close();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }
}
