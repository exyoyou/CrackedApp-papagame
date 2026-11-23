package com.papa91.arc.util;

import com.google.gson.Gson;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.activity.QuarkPromptActivity_;
import com.join.mgps.dto.Constant;
import com.kuaishou.weapon.p0.t;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.xinzhu.overmind.server.os.f;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class SignUtil {
    private static final String[] hexDigits = {"0", "1", "2", "3", "4", "5", "6", "7", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, "9", "a", t.f74887l, "c", t.f74895t, "e", f.TAG};

    private static String byteArrayToHexString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b10 : bArr) {
            stringBuffer.append(byteToHexString(b10));
        }
        return stringBuffer.toString();
    }

    private static String byteToHexString(byte b10) {
        int i10 = b10;
        if (b10 < 0) {
            i10 = b10 + 256;
        }
        StringBuilder sb2 = new StringBuilder();
        String[] strArr = hexDigits;
        sb2.append(strArr[i10 / 16]);
        sb2.append(strArr[i10 % 16]);
        return sb2.toString();
    }

    public static String getJsonStringSign(String str) {
        new ArrayList();
        try {
            return byteArrayToHexString(MessageDigest.getInstance("MD5").digest(("Se+mLqD-mV@y6^Z+" + str).getBytes()));
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    private static String getSafeSign(Map<String, String> map) {
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
            return byteArrayToHexString(MessageDigest.getInstance("MD5").digest(("Se+mLqD-mV@y6^Z+" + arrayList.toString().replace("[", "").replace("]", "").replace(", ", x.a.f97576d)).getBytes()));
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    private static String getSafeSignAPP(Map<String, String> map) {
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
            return byteArrayToHexString(MessageDigest.getInstance("MD5").digest(("Se+mLqD-mV@y6^Z+" + arrayList.toString()).getBytes()));
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String getSign(Object obj) {
        return getSafeSign(getValueMap(obj));
    }

    public static String getSignForAPP(Object obj) {
        return getSafeSign(getValueMapForAPP(obj));
    }

    private static Map<String, String> getValueMap(Object obj) {
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

    private static void getValueMapArg(Object obj, Map<String, String> map) {
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
                            map.put(name, new Gson().toJson(obj2));
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

    private static Map<String, String> getValueMapForAPP(Object obj) {
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
                        if (name.equals(QuarkPromptActivity_.ARGS_EXTRA)) {
                            getValueMapArg(obj2, map);
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
        return map;
    }

    private static boolean isPrimitive(Object obj) {
        try {
            return ((Class) obj.getClass().getField("TYPE").get(null)).isPrimitive();
        } catch (Exception unused) {
            return false;
        }
    }
}
