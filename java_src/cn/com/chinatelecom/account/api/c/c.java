package cn.com.chinatelecom.account.api.c;

import android.content.Context;
import android.text.TextUtils;
import cn.com.chinatelecom.account.api.d.j;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f792a = "c";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f793b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f794c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f795d = 1800000;

    public static synchronized String a() {
        if (System.currentTimeMillis() >= f794c || !cn.com.chinatelecom.account.api.d.d.a(f793b)) {
            return null;
        }
        return f793b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, String str2, int i10) {
        StringBuilder sb2;
        String str3;
        try {
            cn.com.chinatelecom.account.api.d.f.a(str2).b(i10);
            return InetAddress.getByName(str).getHostAddress();
        } catch (Exception e10) {
            if (i10 == 0) {
                sb2 = new StringBuilder();
                str3 = "first exception: ";
            } else {
                sb2 = new StringBuilder();
                str3 = "retry exception: ";
            }
            sb2.append(str3);
            sb2.append(e10.getMessage());
            cn.com.chinatelecom.account.api.d.f.a(str2).g(sb2.toString());
            return null;
        }
    }

    public static void a(final Context context) {
        if (f793b == null && cn.com.chinatelecom.account.api.d.g.a() == null) {
            new cn.com.chinatelecom.account.api.b.d().a(new cn.com.chinatelecom.account.api.b.e() { // from class: cn.com.chinatelecom.account.api.c.c.1
                @Override // cn.com.chinatelecom.account.api.b.e
                public void runTask() {
                    cn.com.chinatelecom.account.api.d.e eVarA;
                    String strA;
                    try {
                        String strA2 = cn.com.chinatelecom.account.api.d.d.a();
                        cn.com.chinatelecom.account.api.d.f.a(strA2).a(cn.com.chinatelecom.account.api.d.d.a(context)).c("dns").b(cn.com.chinatelecom.account.api.d.g.f(context));
                        String strA3 = cn.com.chinatelecom.account.api.a.d.a(cn.com.chinatelecom.account.api.d.b.f838f);
                        String strB = c.b(strA3, strA2, 0);
                        if (TextUtils.isEmpty(strB)) {
                            strB = c.b(strA3, strA2, 1);
                        }
                        synchronized (c.class) {
                            if (TextUtils.isEmpty(strB)) {
                                eVarA = cn.com.chinatelecom.account.api.d.f.a(strA2).a(80011);
                                strA = cn.com.chinatelecom.account.api.a.d.a(j.f898q);
                            } else {
                                String unused = c.f793b = strB;
                                long unused2 = c.f794c = System.currentTimeMillis() + c.f795d;
                                eVarA = cn.com.chinatelecom.account.api.d.f.a(strA2).a(0);
                                strA = "success";
                            }
                            eVarA.e(strA);
                        }
                        cn.com.chinatelecom.account.api.d.f.b(strA2);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            });
        }
    }
}
