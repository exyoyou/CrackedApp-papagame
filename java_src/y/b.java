package y;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static b f97668c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f97669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f97670b;

    private b() {
    }

    public static synchronized b a() {
        if (f97668c == null) {
            f97668c = new b();
            Context context = x.b.b().f97590a;
            a aVar = new a(context);
            String strB = com.alipay.sdk.util.b.a(context).b();
            String strE = com.alipay.sdk.util.b.a(context).e();
            f97668c.f97669a = aVar.i(strB, strE);
            f97668c.f97670b = aVar.k(strB, strE);
            if (TextUtils.isEmpty(f97668c.f97670b)) {
                b bVar = f97668c;
                String hexString = Long.toHexString(System.currentTimeMillis());
                if (hexString.length() > 10) {
                    hexString = hexString.substring(hexString.length() - 10);
                }
                bVar.f97670b = hexString;
            }
            b bVar2 = f97668c;
            aVar.g(strB, strE, bVar2.f97669a, bVar2.f97670b);
        }
        return f97668c;
    }

    private void b(Context context) {
        a aVar = new a(context);
        try {
            aVar.g(com.alipay.sdk.util.b.a(context).b(), com.alipay.sdk.util.b.a(context).e(), this.f97669a, this.f97670b);
        } catch (Exception unused) {
        } finally {
            aVar.close();
        }
    }

    private void c(String str) {
        this.f97669a = str;
    }

    private String d() {
        return this.f97669a;
    }

    private void e(String str) {
        this.f97670b = str;
    }

    private String f() {
        return this.f97670b;
    }

    private boolean g() {
        return TextUtils.isEmpty(this.f97669a);
    }

    private static void h() {
        Context context = x.b.b().f97590a;
        String strB = com.alipay.sdk.util.b.a(context).b();
        String strE = com.alipay.sdk.util.b.a(context).e();
        a aVar = new a(context);
        aVar.f(strB, strE);
        aVar.close();
    }

    private static String i() {
        String hexString = Long.toHexString(System.currentTimeMillis());
        return hexString.length() > 10 ? hexString.substring(hexString.length() - 10) : hexString;
    }
}
