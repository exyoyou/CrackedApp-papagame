package com.join.mgps.Util;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.activity.QuarkPromptActivity_;
import com.join.mgps.dto.Constant;
import com.qq.e.comm.managers.setting.GlobalSetting;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class k2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f49794a = {"0", "1", "2", "3", "4", "5", "6", "7", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, "9", "a", com.kuaishou.weapon.p0.t.f74887l, "c", com.kuaishou.weapon.p0.t.f74895t, "e", com.xinzhu.overmind.server.os.f.TAG};

    private static String a(byte[] b10) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b11 : b10) {
            stringBuffer.append(b(b11));
        }
        return stringBuffer.toString();
    }

    private static String b(byte b10) {
        int i10 = b10;
        if (b10 < 0) {
            i10 = b10 + 256;
        }
        StringBuilder sb2 = new StringBuilder();
        String[] strArr = f49794a;
        sb2.append(strArr[i10 / 16]);
        sb2.append(strArr[i10 % 16]);
        return sb2.toString();
    }

    public static String c(String json) {
        new ArrayList();
        try {
            return a(MessageDigest.getInstance("MD5").digest(("Se+mLqD-mV@y6^Z+" + json).getBytes()));
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String d(Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        try {
            for (String str : map.keySet()) {
                if (!str.equals("sig") && !str.equals(Constant.MD5)) {
                    arrayList.add(str + SimpleComparison.EQUAL_TO_OPERATION + map.get(str));
                }
            }
            Collections.sort(arrayList);
            return a(MessageDigest.getInstance("MD5").digest(("Se+mLqD-mV@y6^Z+QmUMaPuW8beIUZf4Gzh58yNPjvDNydRs" + arrayList.toString().replace("[", "").replace("]", "").replace(", ", x.a.f97576d)).getBytes()));
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    private static String e(Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        try {
            boolean z10 = false;
            for (String str : map.keySet()) {
                if (!str.equals("sig") && !str.equals(Constant.MD5)) {
                    arrayList.add(str + SimpleComparison.EQUAL_TO_OPERATION + map.get(str));
                    if ("device_id".equals(str)) {
                        z10 = true;
                    }
                }
            }
            if (!z10) {
                arrayList.add("device_id=");
            }
            Collections.sort(arrayList);
            return a(MessageDigest.getInstance("MD5").digest(("Se+mLqD-mV@y6^Z+" + arrayList.toString().replace("[", "").replace("]", "").replace(", ", x.a.f97576d)).getBytes()));
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    private static String f(Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        try {
            boolean z10 = false;
            for (String str : map.keySet()) {
                if (!str.equals("sig") && !str.equals(Constant.MD5)) {
                    arrayList.add(str + SimpleComparison.EQUAL_TO_OPERATION + map.get(str));
                    if ("device_id".equals(str)) {
                        z10 = true;
                    }
                }
            }
            if (!z10) {
                arrayList.add("device_id=");
            }
            Collections.sort(arrayList);
            return a(MessageDigest.getInstance("MD5").digest(("Se+mLqD-mV@y6^Z+" + arrayList.toString()).getBytes()));
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String g(Object o10) {
        return e(i(o10));
    }

    public static String h(Object o10) {
        return e(k(o10));
    }

    private static Map<String, String> i(Object obj) {
        HashMap map = new HashMap();
        Field[] declaredFields = obj.getClass().getDeclaredFields();
        int length = declaredFields.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (!Modifier.isStatic(declaredFields[i10].getModifiers())) {
                String name = declaredFields[i10].getName();
                try {
                    boolean zIsAccessible = declaredFields[i10].isAccessible();
                    declaredFields[i10].setAccessible(true);
                    Object obj2 = declaredFields[i10].get(obj);
                    if (obj2 != null) {
                        map.put(name, obj2.toString());
                    }
                    declaredFields[i10].setAccessible(zIsAccessible);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                } catch (IllegalArgumentException e11) {
                    e11.printStackTrace();
                }
            }
        }
        return map;
    }

    private static void j(Object obj, Map<String, String> map) {
        Field[] declaredFields = obj.getClass().getDeclaredFields();
        int length = declaredFields.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (!Modifier.isStatic(declaredFields[i10].getModifiers())) {
                String name = declaredFields[i10].getName();
                try {
                    boolean zIsAccessible = declaredFields[i10].isAccessible();
                    declaredFields[i10].setAccessible(true);
                    Object obj2 = declaredFields[i10].get(obj);
                    if (obj2 != null) {
                        if (obj2 instanceof Collection) {
                            map.put(name, JsonMapper.getInstance().toJson(obj2).replace(",", ", "));
                        } else {
                            map.put(name, obj2.toString());
                        }
                    }
                    declaredFields[i10].setAccessible(zIsAccessible);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                } catch (IllegalArgumentException e11) {
                    e11.printStackTrace();
                }
            }
        }
    }

    private static Map<String, String> k(Object obj) {
        HashMap map = new HashMap();
        Field[] declaredFields = obj.getClass().getDeclaredFields();
        int length = declaredFields.length;
        for (int i10 = 0; i10 < length; i10++) {
            try {
                if (!Modifier.isStatic(declaredFields[i10].getModifiers())) {
                    String name = declaredFields[i10].getName();
                    boolean zIsAccessible = declaredFields[i10].isAccessible();
                    declaredFields[i10].setAccessible(true);
                    Object obj2 = declaredFields[i10].get(obj);
                    if (obj2 != null) {
                        if (name.equals(QuarkPromptActivity_.ARGS_EXTRA)) {
                            j(obj2, map);
                        } else {
                            map.put(name, obj2.toString());
                        }
                    }
                    declaredFields[i10].setAccessible(zIsAccessible);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return map;
    }

    private static boolean l(Object obj) {
        try {
            return ((Class) obj.getClass().getField("TYPE").get(null)).isPrimitive();
        } catch (Exception unused) {
            return false;
        }
    }
}
