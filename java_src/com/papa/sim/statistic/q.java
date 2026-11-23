package com.papa.sim.statistic;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.dto.Constant;
import com.qq.e.comm.managers.setting.GlobalSetting;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f77317a = {"0", "1", "2", "3", "4", "5", "6", "7", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, "9", "a", com.kuaishou.weapon.p0.t.f74887l, "c", com.kuaishou.weapon.p0.t.f74895t, "e", com.xinzhu.overmind.server.os.f.TAG};

    private static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b10 : bArr) {
            stringBuffer.append(b(b10));
        }
        return stringBuffer.toString();
    }

    private static String b(byte b10) {
        int i10 = b10;
        if (b10 < 0) {
            i10 = b10 + 256;
        }
        StringBuilder sb2 = new StringBuilder();
        String[] strArr = f77317a;
        sb2.append(strArr[i10 / 16]);
        sb2.append(strArr[i10 % 16]);
        return sb2.toString();
    }

    private static String c(Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        try {
            for (String str : map.keySet()) {
                if (!str.equals("sig") && !str.equals(Constant.MD5)) {
                    arrayList.add(str + SimpleComparison.EQUAL_TO_OPERATION + map.get(str));
                }
            }
            Collections.sort(arrayList);
            return a(MessageDigest.getInstance("MD5").digest(("Se+mLqD-mV@y6^Z+" + arrayList.toString().replace("[", "").replace("]", "").replace(", ", x.a.f97576d)).getBytes()));
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String d(Object obj) {
        c(e(obj));
        return c(e(obj));
    }

    private static Map<String, String> e(Object obj) {
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
}
