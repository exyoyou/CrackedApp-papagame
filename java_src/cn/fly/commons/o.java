package cn.fly.commons;

import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static o f1411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<String, Object> f1412b;

    private o() {
        HashMap<String, Object> mapC = c();
        this.f1412b = mapC;
        if (mapC == null) {
            this.f1412b = new HashMap<>();
        }
        ArrayList<FlyProduct> arrayListB = ad.b();
        if (arrayListB == null || arrayListB.isEmpty()) {
            return;
        }
        for (FlyProduct flyProduct : arrayListB) {
            if (!this.f1412b.containsKey(flyProduct.getProductTag())) {
                this.f1412b.put(flyProduct.getProductTag(), 0);
            }
        }
    }

    public static o a() {
        if (f1411a == null) {
            synchronized (o.class) {
                if (f1411a == null) {
                    f1411a = new o();
                }
            }
        }
        return f1411a;
    }

    private HashMap<String, Object> c() {
        try {
            return ae.b().g();
        } catch (Throwable unused) {
            return null;
        }
    }

    public HashMap<String, Object> b() {
        return this.f1412b;
    }

    public void a(FlyProduct flyProduct, int i10) {
        if (flyProduct != null) {
            this.f1412b.put(flyProduct.getProductTag(), Integer.valueOf(i10));
            a(this.f1412b);
        }
    }

    private void a(HashMap<String, Object> map) {
        try {
            ae.b().a(map);
        } catch (Throwable unused) {
        }
    }

    public static String a(String str) {
        return C1293r.a(str, 99);
    }
}
