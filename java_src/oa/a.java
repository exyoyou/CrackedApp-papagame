package oa;

import android.app.Application;
import com.byazt.quv.AbsServerManager;
import com.xinzhu.overmind.b;
import java.lang.reflect.Field;
import java.util.HashMap;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f94984a = "WeChatCompat";

    public static void a(String str, Application application) {
        HashMap map;
        if ("com.tencent.mm".equals(str)) {
            try {
                for (Field field : Class.forName("com.tencent.mm.sensitive.l", true, application.getClassLoader()).getDeclaredFields()) {
                    field.setAccessible(true);
                    if (HashMap.class.isAssignableFrom(field.getType()) && (map = (HashMap) field.get(null)) != null && map.get("device_identifiers") != null && map.get("iphonesubinfo") != null && map.get(AbsServerManager.PACKAGE_QUERY_BINDER) != null) {
                        b.c(f94984a, "WeChatCompat works");
                        map.clear();
                        return;
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }
}
