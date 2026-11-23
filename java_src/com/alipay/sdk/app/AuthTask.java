package com.alipay.sdk.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.sdk.util.j;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class AuthTask {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f7020c = 73;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Object f7021d = com.alipay.sdk.util.f.class;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f7022a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.alipay.sdk.widget.a f7023b;

    public AuthTask(Activity activity) {
        this.f7022a = activity;
        x.b bVarB = x.b.b();
        Activity activity2 = this.f7022a;
        com.alipay.sdk.data.c.a();
        bVarB.c(activity2);
        com.alipay.sdk.app.statistic.a.a(activity);
        this.f7023b = new com.alipay.sdk.widget.a(activity, com.alipay.sdk.widget.a.f7253f);
    }

    private com.alipay.sdk.util.f.a a() {
        return new a(this);
    }

    private String b(Activity activity, String str) {
        String strA = new x.a(this.f7022a).a(str);
        if (!e(activity)) {
            return f(activity, strA);
        }
        String strC = new com.alipay.sdk.util.f(activity, new a(this)).c(strA);
        if (TextUtils.equals(strC, com.alipay.sdk.util.f.f7234h)) {
            return f(activity, strA);
        }
        return TextUtils.isEmpty(strC) ? h.a() : strC;
    }

    private String c(w.a aVar) {
        String[] strArr = aVar.f97545c;
        Bundle bundle = new Bundle();
        bundle.putString("url", strArr[0]);
        Intent intent = new Intent(this.f7022a, (Class<?>) H5AuthActivity.class);
        intent.putExtras(bundle);
        this.f7022a.startActivity(intent);
        Object obj = f7021d;
        synchronized (obj) {
            try {
                obj.wait();
            } catch (InterruptedException unused) {
                return h.a();
            }
        }
        String str = h.f7050a;
        return TextUtils.isEmpty(str) ? h.a() : str;
    }

    private static boolean e(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(j.f7245b, 128);
            return packageInfo != null && packageInfo.versionCode >= 73;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private String f(Activity activity, String str) {
        i iVarA;
        g();
        try {
            try {
                try {
                    List<w.a> listB = w.a.b(new com.alipay.sdk.packet.impl.a().b(activity, str).a().optJSONObject(u.c.f97427c).optJSONObject(u.c.f97428d));
                    h();
                    for (int i10 = 0; i10 < listB.size(); i10++) {
                        if (listB.get(i10).f97543a == com.alipay.sdk.protocol.a.WapPay) {
                            String strC = c(listB.get(i10));
                            h();
                            return strC;
                        }
                    }
                } catch (IOException e10) {
                    i iVarA2 = i.a(i.NETWORK_ERROR.a());
                    com.alipay.sdk.app.statistic.a.e("net", e10);
                    h();
                    iVarA = iVarA2;
                }
            } catch (Throwable th) {
                com.alipay.sdk.app.statistic.a.d(com.alipay.sdk.app.statistic.c.f7066l, com.alipay.sdk.app.statistic.c.f7072r, th);
            }
            h();
            iVarA = null;
            if (iVarA == null) {
                iVarA = i.a(i.FAILED.a());
            }
            return h.b(iVarA.a(), iVarA.b(), "");
        } catch (Throwable th2) {
            h();
            throw th2;
        }
    }

    private void g() {
        com.alipay.sdk.widget.a aVar = this.f7023b;
        if (aVar != null) {
            aVar.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        com.alipay.sdk.widget.a aVar = this.f7023b;
        if (aVar != null) {
            aVar.f();
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x003d A[Catch: all -> 0x0060, Exception -> 0x0073, TryCatch #3 {Exception -> 0x0073, all -> 0x0060, blocks: (B:6:0x0016, B:8:0x0027, B:10:0x003d, B:12:0x0043, B:14:0x004a), top: B:28:0x0016, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:12:0x0043 A[Catch: all -> 0x0060, Exception -> 0x0073, TryCatch #3 {Exception -> 0x0073, all -> 0x0060, blocks: (B:6:0x0016, B:8:0x0027, B:10:0x003d, B:12:0x0043, B:14:0x004a), top: B:28:0x0016, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:13:0x0048  */
    /* JADX WARN: Code duplicated, block: B:14:0x004a A[Catch: all -> 0x0060, Exception -> 0x0073, TRY_LEAVE, TryCatch #3 {Exception -> 0x0073, all -> 0x0060, blocks: (B:6:0x0016, B:8:0x0027, B:10:0x003d, B:12:0x0043, B:14:0x004a), top: B:28:0x0016, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:8:0x0027 A[Catch: all -> 0x0060, Exception -> 0x0073, TryCatch #3 {Exception -> 0x0073, all -> 0x0060, blocks: (B:6:0x0016, B:8:0x0027, B:10:0x003d, B:12:0x0043, B:14:0x004a), top: B:28:0x0016, outer: #1 }] */
    public synchronized String auth(String str, boolean z10) {
        String strA;
        Activity activity;
        Activity activity2;
        String strA2;
        String strC;
        if (z10) {
            g();
            x.b bVarB = x.b.b();
            Activity activity3 = this.f7022a;
            com.alipay.sdk.data.c.a();
            bVarB.c(activity3);
            strA = h.a();
            try {
                activity2 = this.f7022a;
                strA2 = new x.a(activity2).a(str);
                if (e(activity2)) {
                    strC = new com.alipay.sdk.util.f(activity2, new a(this)).c(strA2);
                    if (!TextUtils.equals(strC, com.alipay.sdk.util.f.f7234h)) {
                        strA = f(activity2, strA2);
                    } else if (TextUtils.isEmpty(strC)) {
                        strA = h.a();
                    } else {
                        strA = strC;
                    }
                } else {
                    strA = f(activity2, strA2);
                }
                com.alipay.sdk.data.a.f().b(this.f7022a);
                h();
                activity = this.f7022a;
            } catch (Exception unused) {
                com.alipay.sdk.data.a.f().b(this.f7022a);
                h();
                activity = this.f7022a;
            } catch (Throwable th) {
                com.alipay.sdk.data.a.f().b(this.f7022a);
                h();
                com.alipay.sdk.app.statistic.a.b(this.f7022a, str);
                throw th;
            }
            com.alipay.sdk.app.statistic.a.b(activity, str);
        } else {
            x.b bVarB2 = x.b.b();
            Activity activity4 = this.f7022a;
            com.alipay.sdk.data.c.a();
            bVarB2.c(activity4);
            strA = h.a();
            activity2 = this.f7022a;
            strA2 = new x.a(activity2).a(str);
            if (e(activity2)) {
                strC = new com.alipay.sdk.util.f(activity2, new a(this)).c(strA2);
                if (!TextUtils.equals(strC, com.alipay.sdk.util.f.f7234h)) {
                    strA = f(activity2, strA2);
                } else if (TextUtils.isEmpty(strC)) {
                    strA = h.a();
                } else {
                    strA = strC;
                }
            } else {
                strA = f(activity2, strA2);
            }
            com.alipay.sdk.data.a.f().b(this.f7022a);
            h();
            activity = this.f7022a;
            com.alipay.sdk.app.statistic.a.b(activity, str);
        }
        throw th;
        return strA;
    }
}
