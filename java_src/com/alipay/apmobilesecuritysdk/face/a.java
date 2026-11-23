package com.alipay.apmobilesecuritysdk.face;

import android.content.Context;
import com.umeng.analytics.pro.bm;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static a f6997e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Object f6998f = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f6999a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Thread f7001c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile boolean f7000b = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinkedList<b> f7002d = new LinkedList<>();

    /* JADX INFO: renamed from: com.alipay.apmobilesecuritysdk.face.a$a, reason: collision with other inner class name */
    public interface InterfaceC0202a {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f7003a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f7004b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f7005c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f7006d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        InterfaceC0202a f7007e;

        public b(String str, String str2, String str3) {
            this.f7006d = str3;
            if (c0.a.b(str)) {
                this.f7004b = p.b.a(a.this.f6999a);
            } else {
                this.f7004b = str;
            }
            this.f7005c = str2;
            this.f7007e = null;
        }

        private void a() {
            if (a.this.f7000b) {
                return;
            }
            a.this.f7000b = true;
            try {
                p.a.b(a.this.f6999a);
                p.a.c();
                HashMap map = new HashMap();
                map.put(u.b.f97417c, this.f7005c);
                map.put(u.b.f97421g, this.f7004b);
                p.a.b(a.this.f6999a);
                map.put(bm.f84404g, p.a.a());
                map.put("userId", this.f7006d);
                e.a(a.this.f6999a, map);
                if (this.f7007e != null) {
                    c cVar = a.this.new c();
                    cVar.f7011c = com.alipay.apmobilesecuritysdk.a.a.g(a.this.f6999a);
                    cVar.f7010b = com.alipay.apmobilesecuritysdk.a.a.a(a.this.f6999a);
                    p.a.b(a.this.f6999a);
                    cVar.f7009a = p.a.a();
                    cVar.f7012d = r.b.a(a.this.f6999a);
                }
            } catch (Throwable unused) {
            }
            a.this.f7000b = false;
        }
    }

    public class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f7009a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f7010b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f7011c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f7012d;

        public c() {
        }
    }

    private a(Context context) {
        this.f6999a = context;
    }

    public static a a(Context context) {
        a aVar;
        synchronized (f6998f) {
            if (f6997e == null) {
                f6997e = new a(context);
            }
            aVar = f6997e;
        }
        return aVar;
    }

    private String b() {
        return com.alipay.apmobilesecuritysdk.a.a.a(this.f6999a);
    }

    private c f() {
        c cVar = new c();
        try {
            System.currentTimeMillis();
            cVar.f7010b = com.alipay.apmobilesecuritysdk.a.a.a(this.f6999a);
            System.currentTimeMillis();
            cVar.f7011c = com.alipay.apmobilesecuritysdk.a.a.g(this.f6999a);
            p.a.b(this.f6999a);
            cVar.f7009a = p.a.a();
            cVar.f7012d = r.b.a(this.f6999a);
        } catch (Throwable unused) {
        }
        return cVar;
    }

    static /* synthetic */ Thread g(a aVar) {
        aVar.f7001c = null;
        return null;
    }

    public final void d(Map<String, String> map) {
        String strA = c0.a.a(map, u.b.f97421g, "");
        String strA2 = c0.a.a(map, u.b.f97417c, "");
        String strA3 = c0.a.a(map, "userId", "");
        z.a.b("https://mobilegw.alipay.com/mgw.htm");
        this.f7002d.addLast(new b(strA, strA2, strA3));
        if (this.f7001c == null) {
            Thread thread = new Thread(new com.alipay.apmobilesecuritysdk.face.b(this));
            this.f7001c = thread;
            thread.setUncaughtExceptionHandler(new com.alipay.apmobilesecuritysdk.face.c(this));
            this.f7001c.start();
        }
    }
}
