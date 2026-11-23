package com.cmic.gen.sdk.b;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.telephony.SubscriptionManager;
import com.cmic.gen.sdk.e.c;
import com.cmic.gen.sdk.e.m;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f24325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f24326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private C0532a f24327c = null;

    /* JADX INFO: renamed from: com.cmic.gen.sdk.b.a$a, reason: collision with other inner class name */
    public static class C0532a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f24328a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f24329b = -1;

        public int a() {
            return this.f24329b;
        }
    }

    private a() {
    }

    public static a a() {
        if (f24325a == null) {
            f24325a = new a();
        }
        return f24325a;
    }

    public C0532a b() {
        C0532a c0532a = this.f24327c;
        return c0532a == null ? new C0532a() : c0532a;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0093 A[PHI: r2
      0x0093: PHI (r2v5 android.database.Cursor) = (r2v4 android.database.Cursor), (r2v6 android.database.Cursor) binds: [B:25:0x0091, B:20:0x0087] A[DONT_GENERATE, DONT_INLINE]] */
    private void b(Context context) {
        c.b("UMCTelephonyManagement", "readSimInfoDbStart");
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = context.getContentResolver().query(Uri.parse("content://telephony/siminfo"), new String[]{"_id", "sim_id"}, "sim_id>=?", new String[]{"0"}, null);
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        int i10 = cursorQuery.getInt(cursorQuery.getColumnIndex("sim_id"));
                        int i11 = cursorQuery.getInt(cursorQuery.getColumnIndex("_id"));
                        if (this.f24327c.f24328a == -1 && this.f24327c.f24329b != -1 && this.f24327c.f24329b == i11) {
                            this.f24327c.f24328a = i10;
                            c.b("UMCTelephonyManagement", "通过读取sim db获取数据流量卡的卡槽值：" + i10);
                        }
                        if (this.f24327c.f24328a == i10) {
                            this.f24327c.f24329b = i11;
                        }
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Exception unused) {
                c.a("UMCTelephonyManagement", "readSimInfoDb error");
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
            c.b("UMCTelephonyManagement", "readSimInfoDbEnd");
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public void a(Context context, boolean z10) {
        long jCurrentTimeMillis = System.currentTimeMillis() - f24326b;
        if (jCurrentTimeMillis >= 5000 || jCurrentTimeMillis <= 0) {
            this.f24327c = new C0532a();
            if (z10) {
                a(context);
                if (m.e() && m.d()) {
                    c.b("UMCTelephonyManagement", "华为手机兼容性处理");
                    if (this.f24327c.f24329b == 0 || this.f24327c.f24329b == 1) {
                        if (this.f24327c.f24328a == -1) {
                            C0532a c0532a = this.f24327c;
                            c0532a.f24328a = c0532a.f24329b;
                        }
                        this.f24327c.f24329b = -1;
                    }
                    if (this.f24327c.f24328a != -1 || this.f24327c.f24329b != -1) {
                        b(context);
                    }
                }
                f24326b = System.currentTimeMillis();
            }
        }
    }

    private void a(Context context) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 22) {
            SubscriptionManager subscriptionManagerFrom = SubscriptionManager.from(context.getApplicationContext());
            if (subscriptionManagerFrom != null) {
                try {
                    if (this.f24327c.f24328a == -1 && i10 >= 24) {
                        this.f24327c.f24329b = SubscriptionManager.getDefaultDataSubscriptionId();
                        c.b("UMCTelephonyManagement", "android 7.0及以上手机getDefaultDataSubscriptionId适配成功: dataSubId = " + this.f24327c.f24329b);
                        return;
                    }
                } catch (Exception unused) {
                    c.a("UMCTelephonyManagement", "android 7.0及以上手机getDefaultDataSubscriptionId适配失败");
                }
                try {
                    Object objInvoke = subscriptionManagerFrom.getClass().getMethod("getDefaultDataSubId", new Class[0]).invoke(subscriptionManagerFrom, new Object[0]);
                    if ((objInvoke instanceof Integer) || (objInvoke instanceof Long)) {
                        this.f24327c.f24329b = ((Integer) objInvoke).intValue();
                        c.b("UMCTelephonyManagement", "android 7.0以下手机getDefaultDataSubId适配成功: dataSubId = " + this.f24327c.f24329b);
                        return;
                    }
                } catch (Exception unused2) {
                    c.a("UMCTelephonyManagement", "readDefaultDataSubId-->getDefaultDataSubId 反射出错");
                }
                try {
                    Object objInvoke2 = subscriptionManagerFrom.getClass().getMethod("getDefaultDataSubscriptionId", new Class[0]).invoke(subscriptionManagerFrom, new Object[0]);
                    if ((objInvoke2 instanceof Integer) || (objInvoke2 instanceof Long)) {
                        this.f24327c.f24329b = ((Integer) objInvoke2).intValue();
                        c.b("UMCTelephonyManagement", "反射getDefaultDataSubscriptionId适配成功: dataSubId = " + this.f24327c.f24329b);
                        return;
                    }
                    return;
                } catch (Exception unused3) {
                    c.a("UMCTelephonyManagement", "getDefaultDataSubscriptionId-->getDefaultDataSubscriptionId 反射出错");
                    return;
                }
            }
            return;
        }
        this.f24327c.f24328a = -1;
    }
}
