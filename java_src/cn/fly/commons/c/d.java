package cn.fly.commons.c;

import android.content.Context;
import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.commons.ae;
import cn.fly.tools.utils.ResHelper;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f1137a = cn.fly.commons.m.a("0051fnfhhk.fFhk");

    public static synchronized HashMap<String, Object> a(Context context) {
        HashMap<String, Object> map = new HashMap<>();
        HashMap<String, Object> mapA = a();
        boolean z10 = mapA != null && mapA.size() > 0;
        if (z10) {
            HashMap map2 = new HashMap();
            if (mapA.containsKey(cn.fly.commons.m.a("004Ififefkfe"))) {
                mapA.put(cn.fly.commons.m.a("005f0fifefkfe"), mapA.remove(cn.fly.commons.m.a("004Nfifefkfe")));
            }
            map2.putAll(mapA);
            map.put(cn.fly.commons.m.a("009Wghfkfehkgf[fejh"), map2);
        }
        String strAo = cn.fly.tools.b.c.a(context).d().ao();
        if (!z10 && TextUtils.isEmpty(strAo)) {
            return null;
        }
        map.put(cn.fly.commons.m.a("004Zfm%f!fkfe"), strAo);
        a(strAo);
        return map;
    }

    public static String b(Context context) {
        return e.b(context);
    }

    private static HashMap<String, Object> a() {
        HashMap<String, Object> map;
        File file = new File(FlySDK.getContext().getFilesDir().getAbsolutePath() + cn.fly.commons.m.a("005n?jefmhh9n"), f1137a);
        if (file.exists()) {
            map = (HashMap) ResHelper.readObjectFromFile(file.getAbsolutePath());
            ae.b().b("all_ds", map);
            file.delete();
        } else {
            map = null;
        }
        return (map == null || map.isEmpty()) ? (HashMap) ae.b().c("all_ds", null) : map;
    }

    private static void a(String str) {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            map.put(cn.fly.commons.m.a("0045fm;f9fkfe"), str);
        }
        ae.b().b("all_ds", map);
    }
}
