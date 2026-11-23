package com.tencent.stat;

import android.content.Context;
import android.os.Environment;
import android.provider.Settings;
import com.tencent.stat.common.StatLogger;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f83817b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private StatLogger f83818a = com.tencent.stat.common.k.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f83819c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f83820d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f83821e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f83822f;

    private a(Context context) {
        this.f83819c = false;
        this.f83820d = false;
        this.f83821e = false;
        this.f83822f = null;
        this.f83822f = context.getApplicationContext();
        this.f83819c = b(context);
        this.f83820d = d(context);
        this.f83821e = c(context);
    }

    public static synchronized a a(Context context) {
        if (f83817b == null) {
            f83817b = new a(context);
        }
        return f83817b;
    }

    private boolean c(Context context) {
        if (com.tencent.stat.common.k.a(context, "android.permission.WRITE_SETTINGS")) {
            return true;
        }
        this.f83818a.e("Check permission failed: android.permission.WRITE_SETTINGS");
        return false;
    }

    public String b(String str, String str2) {
        return com.tencent.stat.common.p.a(this.f83822f, str, str2);
    }

    public String d(String str, String str2) {
        if (!this.f83819c) {
            return null;
        }
        try {
            Iterator<String> it2 = com.tencent.stat.common.d.a(new File(Environment.getExternalStorageDirectory(), "Tencent/mta/.mid.txt")).iterator();
            while (it2.hasNext()) {
                String[] strArrSplit = it2.next().split(",");
                if (strArrSplit.length == 2 && strArrSplit[0].equals(str)) {
                    return strArrSplit[1];
                }
            }
        } catch (FileNotFoundException unused) {
            this.f83818a.w("Tencent/mta/.mid.txt not found.");
        } catch (Throwable th) {
            this.f83818a.w(th);
        }
        return null;
    }

    public boolean e(String str, String str2) {
        if (!this.f83821e) {
            return false;
        }
        Settings.System.putString(this.f83822f.getContentResolver(), str, str2);
        return true;
    }

    public String f(String str, String str2) {
        return !this.f83821e ? str2 : Settings.System.getString(this.f83822f.getContentResolver(), str);
    }

    private boolean b(Context context) {
        if (com.tencent.stat.common.k.a(context, com.kuaishou.weapon.p0.g.f74786j)) {
            return true;
        }
        this.f83818a.e("Check permission failed: android.permission.WRITE_EXTERNAL_STORAGE");
        return false;
    }

    private boolean d(Context context) {
        if (com.tencent.stat.common.k.d() < 14) {
            return b(context);
        }
        return true;
    }

    public boolean a(String str, String str2) {
        com.tencent.stat.common.p.b(this.f83822f, str, str2);
        return true;
    }

    public boolean c(String str, String str2) {
        if (!this.f83819c) {
            return false;
        }
        try {
            com.tencent.stat.common.d.a(Environment.getExternalStorageDirectory() + net.lingala.zip4j.util.e.F0 + "Tencent/mta");
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(new File(Environment.getExternalStorageDirectory(), "Tencent/mta/.mid.txt")));
            bufferedWriter.write(str + "," + str2);
            bufferedWriter.write("\n");
            bufferedWriter.close();
            return true;
        } catch (Throwable th) {
            this.f83818a.w(th);
            return false;
        }
    }
}
