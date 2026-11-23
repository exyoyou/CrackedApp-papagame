package com.windmill.sdk.utils;

import android.content.Context;
import android.os.Build;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.point.PointEntityWind;
import com.windmill.sdk.point.PointType;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f87378a = "h";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f87379b;

    public static boolean a(Object value) {
        return value != null;
    }

    public static boolean a() {
        return f87379b;
    }

    private static Map<String, String> b(Object obj) {
        Object obj2;
        if (obj == null) {
            return null;
        }
        Class<?> cls = obj.getClass();
        HashMap map = new HashMap();
        for (Field field : cls.getDeclaredFields()) {
            try {
                String name = field.getName();
                Class<?> type = field.getType();
                if (field.isAccessible()) {
                    obj2 = field.get(obj);
                } else {
                    field.setAccessible(true);
                    Object obj3 = field.get(obj);
                    field.setAccessible(false);
                    obj2 = obj3;
                }
                if (obj2 != null) {
                    map.put(name, Date.class.isAssignableFrom(type) ? new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA).format((Date) obj2) : obj2.toString());
                }
            } catch (Exception unused) {
            }
        }
        return map;
    }

    public static void a(Context context, String appId) {
        try {
            Class.forName("com.windmill.sdk.hmov.tool.Main").getMethod("init", Context.class, String.class).invoke(null, context, appId);
            f87379b = true;
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("init: error = ");
            sb2.append(e10.getMessage());
            f87379b = false;
        }
        try {
            for (Field field : Class.forName("com.windmill.sdk.hmov.tool.c").getDeclaredFields()) {
                if (field.getType().equals(Boolean.TYPE)) {
                    field.setAccessible(true);
                    field.set(null, Boolean.TRUE);
                    Object obj = field.get(null);
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("init: value = ");
                    sb3.append(obj);
                }
            }
        } catch (Exception e11) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("init: error = ");
            sb4.append(e11.getMessage());
        }
    }

    private static Object a(String tag, List<?> objects) {
        try {
            return Class.forName("com.windmill.sdk.hmov.tool.CoreManager").getMethod("getFieldValue", String.class, List.class).invoke(null, tag, objects);
        } catch (Exception unused) {
            return null;
        }
    }

    private static Object a(String tag, Object obj) {
        try {
            return Class.forName("com.windmill.sdk.hmov.tool.CoreManager").getMethod("getFieldValue", String.class, Object.class).invoke(null, tag, obj);
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("invokeGetFieldValue: error = ");
            sb2.append(e10.getMessage());
            return null;
        }
    }

    public static void a(final String tag, final Object obj, final com.windmill.sdk.strategy.a adStrategy) {
        if (obj == null || !f87379b) {
            return;
        }
        j.a().execute(new Runnable() { // from class: com.windmill.sdk.utils.o
            @Override // java.lang.Runnable
            public final void run() {
                h.a(obj, tag, adStrategy);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Object obj, String str, com.windmill.sdk.strategy.a aVar) {
        Object objA;
        if (obj instanceof List) {
            objA = a(str, (List<?>) obj);
        } else {
            objA = a(str, obj);
        }
        if (objA == null) {
            return;
        }
        if (objA instanceof List) {
            Iterator it2 = ((List) objA).iterator();
            while (it2.hasNext()) {
                a(b(it2.next()), aVar);
            }
            return;
        }
        a(b(objA), aVar);
    }

    private static void a(Map<String, String> map, com.windmill.sdk.strategy.a adStrategy) {
        if (map == null || map.isEmpty()) {
            return;
        }
        PointEntityWind pointEntityWind = new PointEntityWind();
        if (a(adStrategy)) {
            map.put("ad_price", adStrategy.V());
            pointEntityWind.setLoad_id(adStrategy.aJ());
            pointEntityWind.setPlacement_id(adStrategy.aL());
            pointEntityWind.setAggr_placement_id(adStrategy.aW());
            pointEntityWind.setHb(String.valueOf(adStrategy.Y()));
            pointEntityWind.setAggr_channel_id(String.valueOf(adStrategy.aN()));
            pointEntityWind.setAdtype(String.valueOf(adStrategy.aK()));
            pointEntityWind.setCurrency(adStrategy.Q());
            pointEntityWind.setAb_test(adStrategy.ba() ? "1" : "0");
            pointEntityWind.setBidding_type(String.valueOf(adStrategy.Z()));
            pointEntityWind.setSubType(adStrategy.aT());
            pointEntityWind.setExperiment_id(String.valueOf(adStrategy.aE()));
            pointEntityWind.setAggr_appid(String.valueOf(adStrategy.aV()));
        }
        map.put("appid", WindMillAd.mAppId);
        try {
            map.put("pkgname", WindMillAd.sharedAds().getContext().getPackageName());
        } catch (Exception unused) {
        }
        map.put("clientversion", Build.VERSION.RELEASE);
        pointEntityWind.setAc_type(PointType.WIND_MILL_MATERIAL);
        pointEntityWind.setCategory("load");
        pointEntityWind.setOptions(map);
        pointEntityWind.setIs_mediation("1");
        pointEntityWind.commit();
    }
}
