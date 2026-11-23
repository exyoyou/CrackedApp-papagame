package cn.fly.commons;

import android.content.Context;
import android.text.TextUtils;
import cn.fly.tools.FlyLog;
import cn.fly.tools.network.NetCommunicator;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes7.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static volatile String f1326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile Boolean f1327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile String f1328c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile boolean f1329d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static HashSet<String> f1330e = new HashSet<>();

    public static boolean a() {
        return !c.b();
    }

    public static String b() {
        if (a()) {
            return null;
        }
        if (TextUtils.isEmpty(f1326a)) {
            String strD = a.a().d();
            if (!TextUtils.isEmpty(strD) && TextUtils.isEmpty(f1326a)) {
                f1326a = strD;
            }
        }
        return f1326a;
    }

    public static HashMap<String, Object> c() {
        return a.a().f();
    }

    static a.c d() {
        a.a();
        return a.b();
    }

    public static String a(Context context) {
        return cn.fly.tools.b.c.a(context).d().ap();
    }

    public static String a(FlyProduct flyProduct) {
        HashMap<String, Object> mapB = b(flyProduct);
        if (mapB != null) {
            return (String) mapB.get(NetCommunicator.KEY_DUID);
        }
        return null;
    }

    public static synchronized HashMap<String, Object> b(FlyProduct flyProduct) {
        boolean z10;
        HashMap<String, Object> map;
        if (flyProduct != null) {
            ad.a(flyProduct);
            z10 = !f1330e.contains(flyProduct.getProductTag());
            if (z10) {
                f1330e.add(flyProduct.getProductTag());
            }
        } else {
            z10 = false;
        }
        if (TextUtils.isEmpty(f1326a)) {
            f1326a = a.a().e();
            z10 = true;
        }
        FlyLog.getInstance().d("aut pro: " + flyProduct + ", ndReg: " + z10 + ", hsReged: " + f1329d, new Object[0]);
        if (z10 || !f1329d) {
            a.a().a(flyProduct, new cn.fly.tools.utils.d<Void>() { // from class: cn.fly.commons.f.1
                @Override // cn.fly.tools.utils.d
                public void a(Void r10) {
                }
            });
            f1329d = true;
        }
        if (f1327b == null) {
            String strB = ae.b().b("key_curr_passed_duid", (String) null);
            f1328c = strB;
            if (!TextUtils.isEmpty(strB) && !strB.equals(f1326a)) {
                f1327b = Boolean.TRUE;
            } else {
                f1327b = Boolean.FALSE;
            }
            ae.b().a("key_curr_passed_duid", f1326a);
        }
        map = new HashMap<>();
        map.put(NetCommunicator.KEY_DUID, f1326a);
        map.put("isModified", Boolean.valueOf(f1327b.booleanValue()));
        map.put("duidPrevious", f1328c);
        return map;
    }
}
