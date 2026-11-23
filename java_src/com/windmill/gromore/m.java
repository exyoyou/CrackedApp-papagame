package com.windmill.gromore;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import android.view.ViewGroup;
import com.baidu.mobads.sdk.api.SplashAd;
import com.bykv.vk.openvk.api.proto.Bridge;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes8.dex */
public final class m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final double f86325b = 1.0d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f86324a = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f86326c = "TAG_1";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f86327d = "TAG_2";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f86328e = "TAG_3";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f86329f = "TAG_4";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f86330g = "TAG_5";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f86331h = "TAG_6";

    private static double a(Class<?> cls, Object obj, q qVar, List<q.b> list, int i10) {
        double dDoubleValue;
        Field field = null;
        if (cls != null) {
            try {
                dDoubleValue = 0.0d;
                for (Field field2 : cls.getDeclaredFields()) {
                    try {
                        field2.setAccessible(true);
                        if (field2.getType().equals(Double.TYPE)) {
                            Double d10 = (Double) field2.get(obj);
                            if (d10.doubleValue() > dDoubleValue) {
                                dDoubleValue = d10.doubleValue();
                                field = field2;
                            } else {
                                continue;
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        th.printStackTrace();
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                dDoubleValue = 0.0d;
            }
        } else {
            dDoubleValue = 0.0d;
        }
        if (dDoubleValue > 0.0d && qVar != null && field != null) {
            ArrayList arrayList = new ArrayList(list);
            arrayList.add(new q.b(cls.getName(), field.getType().getName(), field.getName(), null, "TAG_6", i10));
            qVar.a(arrayList, dDoubleValue);
        }
        return dDoubleValue;
    }

    /* JADX WARN: Code duplicated, block: B:114:0x034a  */
    /* JADX WARN: Code duplicated, block: B:128:0x015e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x0282 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:165:0x0282 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x0162 A[Catch: all -> 0x02a6, TRY_LEAVE, TryCatch #2 {all -> 0x02a6, blocks: (B:49:0x015e, B:51:0x0162), top: B:128:0x015e }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0184  */
    /* JADX WARN: Code duplicated, block: B:57:0x0194 A[Catch: all -> 0x0294, TRY_LEAVE, TryCatch #6 {all -> 0x0294, blocks: (B:55:0x0186, B:57:0x0194), top: B:136:0x0186 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:69:0x01cb A[Catch: all -> 0x0274, TryCatch #5 {all -> 0x0274, blocks: (B:65:0x01b7, B:67:0x01bf, B:70:0x01cd, B:69:0x01cb, B:75:0x01de), top: B:134:0x01b7 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x01de A[Catch: all -> 0x0274, TRY_LEAVE, TryCatch #5 {all -> 0x0274, blocks: (B:65:0x01b7, B:67:0x01bf, B:70:0x01cd, B:69:0x01cb, B:75:0x01de), top: B:134:0x01b7 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0272  */
    /* JADX WARN: Code duplicated, block: B:83:0x027a  */
    final Pair<Double, String> b(Object obj, String str, q qVar) {
        Bridge bridge;
        Pair<Double, String> pairA;
        String str2;
        ArrayList arrayList;
        Field[] fieldArr;
        int i10;
        int i11;
        Pair<Double, String> pair;
        Field[] fieldArr2;
        boolean z10;
        int iIntValue;
        Field[] declaredFields;
        int length;
        Pair<Double, String> pair2;
        int i12;
        Field field;
        Object obj2;
        int i13;
        Object obj3;
        Field[] declaredFields2;
        int length2;
        int i14;
        int i15;
        Pair<Double, String> pairA2;
        Field field2;
        String str3 = str;
        String str4 = "com.bytedance.msdk.core.admanager";
        Pair<Double, String> pair3 = new Pair<>(Double.valueOf(0.0d), "tt");
        ArrayList arrayList2 = new ArrayList();
        Bridge bridgeA = a(obj, qVar, arrayList2);
        ArrayList arrayList3 = new ArrayList(arrayList2);
        if (bridgeA != null) {
            try {
                Field[] declaredFields3 = bridgeA.getClass().getDeclaredFields();
                int length3 = declaredFields3.length;
                int i16 = 0;
                while (i16 < length3) {
                    Field field3 = declaredFields3[i16];
                    field3.setAccessible(true);
                    Object obj4 = field3.get(bridgeA);
                    if (obj4 != null) {
                        if (obj4.getClass().getName().startsWith(str4)) {
                            Class<?> cls = obj4.getClass();
                            Field[] declaredFields4 = cls.getDeclaredFields();
                            int length4 = declaredFields4.length;
                            fieldArr = declaredFields3;
                            int i17 = 0;
                            while (i17 < length4) {
                                int i18 = length3;
                                try {
                                    Field field4 = declaredFields4[i17];
                                    Field[] fieldArr3 = declaredFields4;
                                    field4.setAccessible(true);
                                    Field declaredField = cls.getDeclaredField(field4.getName());
                                    declaredField.setAccessible(true);
                                    Object obj5 = declaredField.get(obj4);
                                    if (obj5 != null && obj5.getClass().getName().startsWith(str4) && !obj5.getClass().getName().contains("$")) {
                                        arrayList2.add(new q.b(field3.getDeclaringClass().getName(), field3.getType().getName(), field3.getName(), null, "TAG_1", 0));
                                        Pair<ArrayList, ArrayList<List<q.b>>> pairA3 = a(obj4, arrayList2);
                                        Pair<Double, String> pairA4 = a((List<Object>) pairA3.first, qVar, (ArrayList<List<q.b>>) pairA3.second);
                                        if (((Double) pairA4.first).doubleValue() > ((Double) pair3.first).doubleValue()) {
                                            i17++;
                                            pair3 = pairA4;
                                        }
                                    }
                                    i17++;
                                    length3 = i18;
                                    declaredFields4 = fieldArr3;
                                } catch (Throwable th) {
                                    th.printStackTrace();
                                    Pair<Double, String> pairA5 = a(bridgeA, str3, qVar, arrayList3);
                                    if (((Double) pairA5.first).doubleValue() > ((Double) pair3.first).doubleValue()) {
                                        pair3 = pairA5;
                                    }
                                    return new Pair<>(Double.valueOf(((Double) pair3.first).doubleValue()), (String) pair3.second);
                                }
                            }
                            i10 = length3;
                            str2 = str4;
                        } else {
                            fieldArr = declaredFields3;
                            i10 = length3;
                            try {
                                Field[] declaredFields5 = obj4.getClass().getDeclaredFields();
                                int length5 = declaredFields5.length;
                                int i19 = 0;
                                while (i19 < length5) {
                                    try {
                                        Field field5 = declaredFields5[i19];
                                        field5.setAccessible(true);
                                        Object obj6 = field5.get(obj4);
                                        str2 = str4;
                                        if (obj6 != null) {
                                            try {
                                                Class<?> cls2 = obj6.getClass();
                                                pair = pair3;
                                                fieldArr2 = declaredFields5;
                                                try {
                                                    Class<?>[] clsArr = new Class[1];
                                                    try {
                                                        clsArr[0] = Context.class;
                                                        cls2.getConstructor(clsArr);
                                                        z10 = true;
                                                    } catch (Throwable unused) {
                                                        z10 = false;
                                                    }
                                                } catch (Throwable unused2) {
                                                    z10 = false;
                                                    if (z10) {
                                                        try {
                                                            if (!(obj6 instanceof ViewGroup)) {
                                                                Pair<Integer, Class<?>> pairA6 = a(obj6.getClass());
                                                                iIntValue = ((Integer) pairA6.first).intValue();
                                                                declaredFields = ((Class) pairA6.second).getDeclaredFields();
                                                                length = declaredFields.length;
                                                                length5 = length5;
                                                                obj4 = obj4;
                                                                pair2 = pair;
                                                                i12 = 0;
                                                                while (i12 < length) {
                                                                    int i20 = length;
                                                                    try {
                                                                        field = declaredFields[i12];
                                                                        Field[] fieldArr4 = declaredFields;
                                                                        field.setAccessible(true);
                                                                        obj2 = field.get(obj6);
                                                                        if (obj2 != null) {
                                                                            obj3 = obj6;
                                                                            declaredFields2 = obj2.getClass().getDeclaredFields();
                                                                            arrayList = arrayList3;
                                                                            try {
                                                                                length2 = declaredFields2.length;
                                                                                bridge = bridgeA;
                                                                                i14 = 0;
                                                                                i15 = 0;
                                                                                while (i14 < length2) {
                                                                                    int i21 = length2;
                                                                                    try {
                                                                                        field2 = declaredFields2[i14];
                                                                                        Field[] fieldArr5 = declaredFields2;
                                                                                        field2.setAccessible(true);
                                                                                        i11 = i16;
                                                                                        try {
                                                                                            if (field2.getType().equals(List.class)) {
                                                                                                i15++;
                                                                                            } else {
                                                                                                i15++;
                                                                                            }
                                                                                            i14++;
                                                                                            length2 = i21;
                                                                                            declaredFields2 = fieldArr5;
                                                                                            i16 = i11;
                                                                                        } catch (Throwable th2) {
                                                                                            th = th2;
                                                                                            pair3 = pair2;
                                                                                            try {
                                                                                                th.printStackTrace();
                                                                                                i16 = i11 + 1;
                                                                                                i16++;
                                                                                                str3 = str;
                                                                                                declaredFields3 = fieldArr;
                                                                                                length3 = i10;
                                                                                                str4 = str2;
                                                                                                arrayList3 = arrayList;
                                                                                                bridgeA = bridge;
                                                                                            } catch (Throwable th3) {
                                                                                                th = th3;
                                                                                                th.printStackTrace();
                                                                                                pairA = a(bridge, str, qVar, arrayList2);
                                                                                                if (((Double) pairA.first).doubleValue() < ((Double) pair3.first).doubleValue()) {
                                                                                                    pair3 = pairA;
                                                                                                }
                                                                                                return new Pair<>(Double.valueOf(((Double) pair3.first).doubleValue()), (String) pair3.second);
                                                                                            }
                                                                                        }
                                                                                    } catch (Throwable th4) {
                                                                                        th = th4;
                                                                                        i11 = i16;
                                                                                        pair3 = pair2;
                                                                                        th.printStackTrace();
                                                                                        i16 = i11 + 1;
                                                                                        i16++;
                                                                                        str3 = str;
                                                                                        declaredFields3 = fieldArr;
                                                                                        length3 = i10;
                                                                                        str4 = str2;
                                                                                        arrayList3 = arrayList;
                                                                                        bridgeA = bridge;
                                                                                    }
                                                                                }
                                                                                i13 = i16;
                                                                                if (i15 >= 3) {
                                                                                    arrayList2.add(new q.b(field3.getDeclaringClass().getName(), field3.getType().getName(), field3.getName(), null, "TAG_1", 0));
                                                                                    arrayList2.add(new q.b(field5.getDeclaringClass().getName(), field5.getType().getName(), field5.getName(), null, null, 0));
                                                                                    arrayList2.add(new q.b(field.getDeclaringClass().getName(), field.getType().getName(), field.getName(), null, null, iIntValue));
                                                                                    Pair<ArrayList, ArrayList<List<q.b>>> pairA7 = a(obj2, obj2.getClass(), arrayList2);
                                                                                    pairA2 = a((List<Object>) pairA7.first, qVar, (ArrayList<List<q.b>>) pairA7.second);
                                                                                    if (((Double) pairA2.first).doubleValue() > ((Double) pair2.first).doubleValue()) {
                                                                                        pair2 = pairA2;
                                                                                    }
                                                                                }
                                                                            } catch (Throwable th5) {
                                                                                th = th5;
                                                                                bridge = bridgeA;
                                                                            }
                                                                        } else {
                                                                            bridge = bridgeA;
                                                                            arrayList = arrayList3;
                                                                            i13 = i16;
                                                                            obj3 = obj6;
                                                                        }
                                                                        i12++;
                                                                        length = i20;
                                                                        declaredFields = fieldArr4;
                                                                        obj6 = obj3;
                                                                        arrayList3 = arrayList;
                                                                        bridgeA = bridge;
                                                                        i16 = i13;
                                                                    } catch (Throwable th6) {
                                                                        th = th6;
                                                                        bridge = bridgeA;
                                                                        arrayList = arrayList3;
                                                                    }
                                                                }
                                                                bridgeA = bridgeA;
                                                                arrayList3 = arrayList3;
                                                                i16 = i16;
                                                                pair3 = pair2;
                                                            }
                                                            i19++;
                                                            length5 = length5;
                                                            str4 = str2;
                                                            declaredFields5 = fieldArr2;
                                                            obj4 = obj4;
                                                            arrayList3 = arrayList3;
                                                            bridgeA = bridgeA;
                                                            i16 = i16;
                                                        } catch (Throwable th7) {
                                                            th = th7;
                                                            bridge = bridgeA;
                                                            arrayList = arrayList3;
                                                            i11 = i16;
                                                            pair3 = pair;
                                                        }
                                                    }
                                                    pair3 = pair;
                                                    i19++;
                                                    length5 = length5;
                                                    str4 = str2;
                                                    declaredFields5 = fieldArr2;
                                                    obj4 = obj4;
                                                    arrayList3 = arrayList3;
                                                    bridgeA = bridgeA;
                                                    i16 = i16;
                                                }
                                            } catch (Throwable unused3) {
                                                pair = pair3;
                                                fieldArr2 = declaredFields5;
                                            }
                                            if (z10) {
                                                if (!(obj6 instanceof ViewGroup)) {
                                                    Pair<Integer, Class<?>> pairA8 = a(obj6.getClass());
                                                    iIntValue = ((Integer) pairA8.first).intValue();
                                                    declaredFields = ((Class) pairA8.second).getDeclaredFields();
                                                    length = declaredFields.length;
                                                    length5 = length5;
                                                    obj4 = obj4;
                                                    pair2 = pair;
                                                    i12 = 0;
                                                    while (i12 < length) {
                                                        int i22 = length;
                                                        field = declaredFields[i12];
                                                        Field[] fieldArr6 = declaredFields;
                                                        field.setAccessible(true);
                                                        obj2 = field.get(obj6);
                                                        if (obj2 != null) {
                                                            obj3 = obj6;
                                                            declaredFields2 = obj2.getClass().getDeclaredFields();
                                                            arrayList = arrayList3;
                                                            length2 = declaredFields2.length;
                                                            bridge = bridgeA;
                                                            i14 = 0;
                                                            i15 = 0;
                                                            while (i14 < length2) {
                                                                int i23 = length2;
                                                                field2 = declaredFields2[i14];
                                                                Field[] fieldArr7 = declaredFields2;
                                                                field2.setAccessible(true);
                                                                i11 = i16;
                                                                if (field2.getType().equals(List.class) || field2.getType().equals(CopyOnWriteArrayList.class)) {
                                                                    i15++;
                                                                }
                                                                i14++;
                                                                length2 = i23;
                                                                declaredFields2 = fieldArr7;
                                                                i16 = i11;
                                                            }
                                                            i13 = i16;
                                                            if (i15 >= 3) {
                                                                arrayList2.add(new q.b(field3.getDeclaringClass().getName(), field3.getType().getName(), field3.getName(), null, "TAG_1", 0));
                                                                arrayList2.add(new q.b(field5.getDeclaringClass().getName(), field5.getType().getName(), field5.getName(), null, null, 0));
                                                                arrayList2.add(new q.b(field.getDeclaringClass().getName(), field.getType().getName(), field.getName(), null, null, iIntValue));
                                                                Pair<ArrayList, ArrayList<List<q.b>>> pairA9 = a(obj2, obj2.getClass(), arrayList2);
                                                                pairA2 = a((List<Object>) pairA9.first, qVar, (ArrayList<List<q.b>>) pairA9.second);
                                                                if (((Double) pairA2.first).doubleValue() > ((Double) pair2.first).doubleValue()) {
                                                                    pair2 = pairA2;
                                                                }
                                                            }
                                                        } else {
                                                            bridge = bridgeA;
                                                            arrayList = arrayList3;
                                                            i13 = i16;
                                                            obj3 = obj6;
                                                        }
                                                        i12++;
                                                        length = i22;
                                                        declaredFields = fieldArr6;
                                                        obj6 = obj3;
                                                        arrayList3 = arrayList;
                                                        bridgeA = bridge;
                                                        i16 = i13;
                                                    }
                                                    bridgeA = bridgeA;
                                                    arrayList3 = arrayList3;
                                                    i16 = i16;
                                                    pair3 = pair2;
                                                }
                                                i19++;
                                                length5 = length5;
                                                str4 = str2;
                                                declaredFields5 = fieldArr2;
                                                obj4 = obj4;
                                                arrayList3 = arrayList3;
                                                bridgeA = bridgeA;
                                                i16 = i16;
                                            }
                                        } else {
                                            pair = pair3;
                                            fieldArr2 = declaredFields5;
                                        }
                                        pair3 = pair;
                                        i19++;
                                        length5 = length5;
                                        str4 = str2;
                                        declaredFields5 = fieldArr2;
                                        obj4 = obj4;
                                        arrayList3 = arrayList3;
                                        bridgeA = bridgeA;
                                        i16 = i16;
                                    } catch (Throwable th8) {
                                        th = th8;
                                        str2 = str4;
                                        bridge = bridgeA;
                                        arrayList = arrayList3;
                                        i11 = i16;
                                        th.printStackTrace();
                                        i16 = i11 + 1;
                                        i16++;
                                        str3 = str;
                                        declaredFields3 = fieldArr;
                                        length3 = i10;
                                        str4 = str2;
                                        arrayList3 = arrayList;
                                        bridgeA = bridge;
                                    }
                                }
                                str2 = str4;
                            } catch (Throwable th9) {
                                th = th9;
                                str2 = str4;
                            }
                        }
                        bridge = bridgeA;
                        arrayList = arrayList3;
                        i11 = i16;
                        i16 = i11 + 1;
                    } else {
                        str2 = str4;
                        bridge = bridgeA;
                        arrayList = arrayList3;
                        fieldArr = declaredFields3;
                        i10 = length3;
                    }
                    i16++;
                    str3 = str;
                    declaredFields3 = fieldArr;
                    length3 = i10;
                    str4 = str2;
                    arrayList3 = arrayList;
                    bridgeA = bridge;
                }
                str3 = str;
            } catch (Throwable th10) {
                th = th10;
                bridge = bridgeA;
                th.printStackTrace();
                pairA = a(bridge, str, qVar, arrayList2);
                if (((Double) pairA.first).doubleValue() < ((Double) pair3.first).doubleValue()) {
                    pair3 = pairA;
                }
                return new Pair<>(Double.valueOf(((Double) pair3.first).doubleValue()), (String) pair3.second);
            }
        }
        Pair<Double, String> pairA10 = a(bridgeA, str3, qVar, arrayList3);
        if (((Double) pairA10.first).doubleValue() > ((Double) pair3.first).doubleValue()) {
            pair3 = pairA10;
        }
        return new Pair<>(Double.valueOf(((Double) pair3.first).doubleValue()), (String) pair3.second);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:52:0x0160  */
    /* JADX WARN: Code duplicated, block: B:60:0x0183  */
    /* JADX WARN: Code duplicated, block: B:62:0x0194  */
    private Pair<Double, String> a(Bridge bridge, String str, q qVar, List<q.b> list) {
        Pair<Double, String> pair;
        Pair<Double, String> pair2;
        Field[] fieldArr;
        int i10;
        List list2;
        Pair pair3;
        Pair<Double, String> pair4;
        Bridge bridge2 = bridge;
        Pair<Double, String> pair5 = new Pair<>(Double.valueOf(0.0d), "tt");
        ArrayList arrayList = new ArrayList();
        if (bridge2 != null) {
            try {
                Field[] declaredFields = bridge.getClass().getDeclaredFields();
                int length = declaredFields.length;
                int i11 = 0;
                boolean z10 = false;
                while (i11 < length) {
                    Field field = declaredFields[i11];
                    field.setAccessible(true);
                    Object obj = field.get(bridge2);
                    if (obj != null) {
                        Pair<ArrayList<List<q.b>>, ArrayList> pairA = a(obj);
                        List list3 = (List) pairA.second;
                        List list4 = (List) pairA.first;
                        if (list3.isEmpty()) {
                            pair2 = pair5;
                            fieldArr = declaredFields;
                            i10 = length;
                        } else {
                            int i12 = 0;
                            while (i12 < list3.size()) {
                                Object obj2 = list3.get(i12);
                                List list5 = (List) list4.get(i12);
                                pair = pair5;
                                try {
                                    Pair<Integer, Class<?>> pairA2 = a(obj2.getClass());
                                    Field[] fieldArr2 = declaredFields;
                                    int iIntValue = ((Integer) pairA2.first).intValue();
                                    Class cls = (Class) pairA2.second;
                                    if (cls != null) {
                                        Field[] declaredFields2 = cls.getDeclaredFields();
                                        boolean z11 = z10;
                                        int length2 = declaredFields2.length;
                                        int i13 = 0;
                                        boolean z12 = true;
                                        while (i13 < length2) {
                                            int i14 = length2;
                                            Field field2 = declaredFields2[i13];
                                            Field[] fieldArr3 = declaredFields2;
                                            field2.setAccessible(true);
                                            List list6 = list3;
                                            if (!field2.getType().equals(Double.TYPE)) {
                                                if (field2.getType().equals(String.class)) {
                                                    String str2 = (String) field2.get(obj2);
                                                    if (!TextUtils.isEmpty(str2)) {
                                                        if (TextUtils.equals(str2, str)) {
                                                            z12 = false;
                                                        }
                                                    }
                                                    z12 = z11;
                                                } else {
                                                    z12 = z11;
                                                }
                                            }
                                            i13++;
                                            z11 = z12;
                                            length2 = i14;
                                            declaredFields2 = fieldArr3;
                                            list3 = list6;
                                        }
                                        list2 = list3;
                                        if (!z12) {
                                            if (obj2 instanceof Bridge) {
                                                pair3 = new Pair(Double.valueOf(a((Class<?>) cls, obj2, qVar, a(field, list, (List<q.b>) list5), iIntValue)), SplashAd.KEY_BIDFAIL_ADN);
                                            } else if (obj2.getClass().getName().contains("$")) {
                                                pair3 = new Pair(Double.valueOf(a((Class<?>) cls, obj2, qVar, a(field, list, (List<q.b>) list5), iIntValue) * 1.0d), "tt");
                                            } else if (obj2.getClass().getSuperclass() != Object.class) {
                                                pair3 = new Pair(Double.valueOf(a((Class<?>) cls, obj2, qVar, a(field, list, (List<q.b>) list5), iIntValue)), SplashAd.KEY_BIDFAIL_ADN);
                                            }
                                            arrayList.add(pair3);
                                        }
                                        z10 = z11;
                                    } else {
                                        list2 = list3;
                                    }
                                    i12++;
                                    declaredFields = fieldArr2;
                                    pair5 = pair;
                                    length = length;
                                    list4 = list4;
                                    list3 = list2;
                                } catch (Throwable th) {
                                    th = th;
                                    th.printStackTrace();
                                    if (!arrayList.isEmpty()) {
                                        Collections.sort(arrayList, new Comparator<Pair>() { // from class: com.windmill.gromore.m.1
                                            @Override // java.util.Comparator
                                            public final /* synthetic */ int compare(Pair pair6, Pair pair7) {
                                                return Double.compare(((Double) pair7.first).doubleValue(), ((Double) pair6.first).doubleValue());
                                            }
                                        });
                                        pair4 = (Pair) arrayList.get(0);
                                        if (pair4 != null) {
                                            return pair4;
                                        }
                                    }
                                    return pair;
                                }
                            }
                            pair2 = pair5;
                            fieldArr = declaredFields;
                            i10 = length;
                        }
                    } else {
                        pair2 = pair5;
                        fieldArr = declaredFields;
                        i10 = length;
                    }
                    i11++;
                    bridge2 = bridge;
                    declaredFields = fieldArr;
                    pair5 = pair2;
                    length = i10;
                }
            } catch (Throwable th2) {
                th = th2;
                pair = pair5;
            }
        }
        pair = pair5;
        if (!arrayList.isEmpty()) {
            Collections.sort(arrayList, new Comparator<Pair>() { // from class: com.windmill.gromore.m.1
                @Override // java.util.Comparator
                public final /* synthetic */ int compare(Pair pair6, Pair pair7) {
                    return Double.compare(((Double) pair7.first).doubleValue(), ((Double) pair6.first).doubleValue());
                }
            });
            pair4 = (Pair) arrayList.get(0);
            if (pair4 != null) {
                return pair4;
            }
        }
        return pair;
    }

    private static Pair<Integer, Class<?>> a(Class<?> cls) {
        int i10 = 0;
        if (cls == null || cls.equals(Object.class)) {
            return new Pair<>(0, null);
        }
        while (!cls.equals(Object.class)) {
            Class<? super Object> superclass = cls.getSuperclass();
            if (superclass == null || superclass.equals(Object.class)) {
                return new Pair<>(Integer.valueOf(i10), cls);
            }
            i10++;
            cls = superclass;
        }
        return new Pair<>(0, null);
    }

    private synchronized Pair<ArrayList<List<q.b>>, ArrayList> a(Object obj) {
        ArrayList<Object> arrayList;
        ArrayList<List<q.b>> arrayList2;
        HashMap map = new HashMap();
        arrayList = new ArrayList<>();
        arrayList2 = new ArrayList<>();
        a(obj, map, arrayList, arrayList2, new ArrayList<>());
        map.clear();
        return new Pair<>(arrayList2, arrayList);
    }

    private static Pair<ArrayList, ArrayList<List<q.b>>> a(Object obj, Class<?> cls, List<q.b> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            Field[] declaredFields = cls.getDeclaredFields();
            int length = declaredFields.length;
            int i10 = 0;
            int i11 = 0;
            while (i11 < length) {
                Field field = declaredFields[i11];
                field.setAccessible(true);
                if (field.getType().equals(List.class) || field.getType().equals(CopyOnWriteArrayList.class)) {
                    List list2 = (List) field.get(obj);
                    if (list2 != null && !list2.isEmpty()) {
                        Object obj2 = list2.get(i10);
                        if (obj2.getClass().getName().startsWith("com.bytedance.msdk") && obj2.getClass().getName().contains("$")) {
                            arrayList.addAll(list2);
                            ArrayList arrayList3 = new ArrayList(list);
                            arrayList3.add(new q.b(field.getDeclaringClass().getName(), field.getType().getName(), field.getName(), Integer.valueOf(i10), null, 0));
                            arrayList2.add(arrayList3);
                        } else if (obj2 instanceof Bridge) {
                            arrayList.addAll(list2);
                            ArrayList arrayList4 = new ArrayList(list);
                            arrayList4.add(new q.b(field.getDeclaringClass().getName(), field.getType().getName(), field.getName(), 0, "", 0));
                            arrayList2.add(arrayList4);
                        }
                    }
                }
                i11++;
                i10 = 0;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return new Pair<>(arrayList, arrayList2);
    }

    /* JADX WARN: Code duplicated, block: B:63:0x01ee  */
    final Pair<Double, String> a(Object obj, String str, q qVar) {
        Bridge bridge;
        Field[] fieldArr;
        int i10;
        Bridge bridge2;
        Object obj2;
        Field[] fieldArr2;
        int i11;
        Pair<Double, String> pairA;
        Pair<Double, String> pair = new Pair<>(Double.valueOf(0.0d), "tt");
        ArrayList arrayList = new ArrayList();
        Bridge bridgeA = a(obj, qVar, arrayList);
        ArrayList arrayList2 = new ArrayList(arrayList);
        if (bridgeA != null) {
            try {
                Field[] declaredFields = bridgeA.getClass().getDeclaredFields();
                int length = declaredFields.length;
                int i12 = 0;
                while (i12 < length) {
                    Field field = declaredFields[i12];
                    field.setAccessible(true);
                    Object obj3 = field.get(bridgeA);
                    if (obj3 != null) {
                        if (obj3.getClass().getName().startsWith("com.bytedance.msdk.core.admanager")) {
                            arrayList.add(new q.b(field.getDeclaringClass().getName(), field.getType().getName(), field.getName(), null, "TAG_1", 0));
                            Pair<ArrayList, ArrayList<List<q.b>>> pairA2 = a(obj3, arrayList);
                            Pair<Double, String> pairA3 = a((List<Object>) pairA2.first, qVar, (ArrayList<List<q.b>>) pairA2.second);
                            if (((Double) pairA3.first).doubleValue() > ((Double) pair.first).doubleValue()) {
                                pair = pairA3;
                            }
                        } else {
                            try {
                                Pair<Integer, Class<?>> pairA4 = a(obj3.getClass());
                                int iIntValue = ((Integer) pairA4.first).intValue();
                                Field[] declaredFields2 = ((Class) pairA4.second).getDeclaredFields();
                                int length2 = declaredFields2.length;
                                int i13 = 0;
                                while (i13 < length2) {
                                    Field field2 = declaredFields2[i13];
                                    fieldArr = declaredFields;
                                    try {
                                        field2.setAccessible(true);
                                        Object obj4 = field2.get(obj3);
                                        if (obj4 != null) {
                                            i10 = length;
                                            try {
                                                Field[] declaredFields3 = obj4.getClass().getDeclaredFields();
                                                obj2 = obj3;
                                                int length3 = declaredFields3.length;
                                                fieldArr2 = declaredFields2;
                                                int i14 = length2;
                                                int i15 = 0;
                                                int i16 = 0;
                                                while (i15 < length3) {
                                                    int i17 = length3;
                                                    Field field3 = declaredFields3[i15];
                                                    Field[] fieldArr3 = declaredFields3;
                                                    field3.setAccessible(true);
                                                    bridge = bridgeA;
                                                    try {
                                                        if (field3.getType().equals(List.class) || field3.getType().equals(CopyOnWriteArrayList.class)) {
                                                            i16++;
                                                        }
                                                        i15++;
                                                        length3 = i17;
                                                        declaredFields3 = fieldArr3;
                                                        bridgeA = bridge;
                                                    } catch (Throwable th) {
                                                        th = th;
                                                        try {
                                                            th.printStackTrace();
                                                            i12++;
                                                            i12++;
                                                            declaredFields = fieldArr;
                                                            length = i10;
                                                            bridgeA = bridge;
                                                        } catch (Throwable th2) {
                                                            th = th2;
                                                            th.printStackTrace();
                                                            bridgeA = bridge;
                                                            pairA = a(bridgeA, str, qVar, arrayList2);
                                                            if (((Double) pairA.first).doubleValue() > ((Double) pair.first).doubleValue()) {
                                                                pair = pairA;
                                                            }
                                                            return new Pair<>(Double.valueOf(((Double) pair.first).doubleValue()), (String) pair.second);
                                                        }
                                                    }
                                                }
                                                bridge2 = bridgeA;
                                                if (i16 >= 3) {
                                                    arrayList.add(new q.b(field.getDeclaringClass().getName(), field.getType().getName(), field.getName(), null, "TAG_1", 0));
                                                    String name = field2.getDeclaringClass().getName();
                                                    String name2 = field2.getType().getName();
                                                    String name3 = field2.getName();
                                                    i11 = i14;
                                                    arrayList.add(new q.b(name, name2, name3, null, "TAG_2", iIntValue));
                                                    Pair<ArrayList, ArrayList<List<q.b>>> pairA5 = a(obj4, obj4.getClass(), arrayList);
                                                    Pair<Double, String> pairA6 = a((List<Object>) pairA5.first, qVar, (ArrayList<List<q.b>>) pairA5.second);
                                                    if (((Double) pairA6.first).doubleValue() > ((Double) pair.first).doubleValue()) {
                                                        pair = pairA6;
                                                    }
                                                } else {
                                                    i11 = i14;
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                                bridge = bridgeA;
                                            }
                                        } else {
                                            bridge2 = bridgeA;
                                            i10 = length;
                                            obj2 = obj3;
                                            fieldArr2 = declaredFields2;
                                            i11 = length2;
                                        }
                                        i13++;
                                        length2 = i11;
                                        declaredFields = fieldArr;
                                        length = i10;
                                        obj3 = obj2;
                                        declaredFields2 = fieldArr2;
                                        bridgeA = bridge2;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        bridge = bridgeA;
                                        i10 = length;
                                        th.printStackTrace();
                                        i12++;
                                        i12++;
                                        declaredFields = fieldArr;
                                        length = i10;
                                        bridgeA = bridge;
                                    }
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                bridge = bridgeA;
                                fieldArr = declaredFields;
                            }
                        }
                        bridge = bridgeA;
                        fieldArr = declaredFields;
                        i10 = length;
                        i12++;
                    } else {
                        bridge = bridgeA;
                        fieldArr = declaredFields;
                        i10 = length;
                    }
                    i12++;
                    declaredFields = fieldArr;
                    length = i10;
                    bridgeA = bridge;
                }
            } catch (Throwable th6) {
                th = th6;
                bridge = bridgeA;
            }
        }
        pairA = a(bridgeA, str, qVar, arrayList2);
        if (((Double) pairA.first).doubleValue() > ((Double) pair.first).doubleValue()) {
            pair = pairA;
        }
        return new Pair<>(Double.valueOf(((Double) pair.first).doubleValue()), (String) pair.second);
    }

    private static Pair<ArrayList, ArrayList<List<q.b>>> a(Object obj, List<q.b> list) {
        Pair<ArrayList, ArrayList<List<q.b>>> pair = new Pair<>(new ArrayList(), new ArrayList());
        try {
            Pair<Integer, Class<?>> pairA = a(obj.getClass());
            Class cls = (Class) pairA.second;
            ((Integer) pairA.first).intValue();
            return a(obj, (Class<?>) cls, list);
        } catch (Throwable th) {
            th.printStackTrace();
            return pair;
        }
    }

    private Pair<Double, String> a(List<Object> list, q qVar, ArrayList<List<q.b>> arrayList) {
        Pair pair;
        try {
            ArrayList arrayList2 = new ArrayList();
            if (!list.isEmpty()) {
                for (int i10 = 0; i10 < list.size(); i10++) {
                    Object obj = list.get(i10);
                    if (obj instanceof Bridge) {
                        Pair<Integer, Class<?>> pairA = a(obj.getClass());
                        pair = new Pair(Double.valueOf(a((Class<?>) pairA.second, obj, qVar, arrayList.get(i10), ((Integer) pairA.first).intValue())), SplashAd.KEY_BIDFAIL_ADN);
                    } else {
                        Class<? super Object> superclass = obj.getClass().getSuperclass();
                        if (superclass != null) {
                            pair = new Pair(Double.valueOf(a(superclass, obj, qVar, arrayList.get(i10), 1) * 1.0d), "tt");
                        }
                    }
                    arrayList2.add(pair);
                }
            }
            if (!arrayList2.isEmpty()) {
                Collections.sort(arrayList2, new Comparator<Pair>() { // from class: com.windmill.gromore.m.2
                    @Override // java.util.Comparator
                    public final /* synthetic */ int compare(Pair pair2, Pair pair3) {
                        return Double.compare(((Double) pair3.first).doubleValue(), ((Double) pair2.first).doubleValue());
                    }
                });
                Pair<Double, String> pair2 = (Pair) arrayList2.get(0);
                if (pair2 != null) {
                    return pair2;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return new Pair<>(Double.valueOf(0.0d), "tt");
    }

    private Bridge a(Object obj, q qVar, List<q.b> list) {
        Bridge bridgeA = null;
        try {
            Field field = null;
            for (Field field2 : Class.forName(obj.getClass().getName()).getDeclaredFields()) {
                field2.setAccessible(true);
                Object obj2 = field2.get(obj);
                try {
                    if (obj2 instanceof Bridge) {
                        field = field2;
                        bridgeA = (Bridge) obj2;
                    } else {
                        if (Build.VERSION.SDK_INT > 24 && n0.b.a(obj2)) {
                            list.add(new q.b(field2.getDeclaringClass().getName(), field2.getType().getName(), field2.getName(), null, null, 0));
                            bridgeA = a(obj2, qVar, list);
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    th.printStackTrace();
                    return bridgeA;
                }
            }
            if (bridgeA != null && qVar != null && field != null) {
                list.add(new q.b(field.getDeclaringClass().getName(), field.getType().getName(), field.getName(), null, null, 0));
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return bridgeA;
    }

    private static List<q.b> a(Field field, List<q.b> list, List<q.b> list2) {
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(new q.b(field.getDeclaringClass().getName(), field.getType().getName(), field.getName(), null, null, 0));
        arrayList.addAll(list2);
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:48:0x01a2  */
    private void a(Object obj, Map<Integer, WeakReference<Object>> map, ArrayList<Object> arrayList, ArrayList<List<q.b>> arrayList2, List<q.b> list) {
        int i10;
        int i11;
        Field[] fieldArr;
        Object obj2;
        Object obj3 = obj;
        if (obj3 == null || a(map, obj3)) {
            return;
        }
        map.put(Integer.valueOf(obj.hashCode()), new WeakReference<>(obj3));
        Pair<Integer, Class<?>> pairA = a(obj.getClass());
        int iIntValue = ((Integer) pairA.first).intValue();
        Class cls = (Class) pairA.second;
        if (cls != null) {
            Field[] declaredFields = cls.getDeclaredFields();
            int length = declaredFields.length;
            int i12 = 0;
            while (i12 < length) {
                Field field = declaredFields[i12];
                field.setAccessible(true);
                try {
                    Object obj4 = field.get(obj3);
                    ArrayList arrayList3 = new ArrayList(list);
                    if (obj4 instanceof Comparable) {
                        try {
                            if (obj4.getClass().getName().startsWith("com.bytedance.msdk")) {
                                arrayList.add(obj4);
                                ArrayList arrayList4 = new ArrayList(arrayList3);
                                arrayList4.add(new q.b(field.getDeclaringClass().getName(), field.getType().getName(), field.getName(), null, "TAG_3", iIntValue));
                                arrayList2.add(arrayList4);
                            }
                        } catch (Throwable th) {
                            th = th;
                            i10 = i12;
                            i11 = length;
                            fieldArr = declaredFields;
                            th.printStackTrace();
                            i12 = i10 + 1;
                            obj3 = obj;
                            length = i11;
                            declaredFields = fieldArr;
                        }
                    }
                    if (obj4 instanceof List) {
                        try {
                            CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList((List) obj4);
                            for (int i13 = 0; i13 < copyOnWriteArrayList.size(); i13++) {
                                Object obj5 = copyOnWriteArrayList.get(i13);
                                if ((obj5 instanceof Comparable) && obj5.getClass().getName().startsWith("com.bytedance.msdk")) {
                                    arrayList.add(obj5);
                                    ArrayList arrayList5 = new ArrayList(arrayList3);
                                    arrayList5.add(new q.b(field.getDeclaringClass().getName(), field.getType().getName(), field.getName(), Integer.valueOf(i13), "TAG_4", iIntValue));
                                    arrayList2.add(arrayList5);
                                }
                                ArrayList arrayList6 = arrayList3;
                                Object obj6 = obj4;
                                i10 = i12;
                                i11 = length;
                                fieldArr = declaredFields;
                                try {
                                    a(obj5, map, arrayList, arrayList2, arrayList6);
                                    arrayList3 = arrayList6;
                                    obj4 = obj6;
                                    i12 = i10;
                                    length = i11;
                                    copyOnWriteArrayList = copyOnWriteArrayList;
                                    declaredFields = fieldArr;
                                } catch (Throwable th2) {
                                    th = th2;
                                    th.printStackTrace();
                                    i12 = i10 + 1;
                                    obj3 = obj;
                                    length = i11;
                                    declaredFields = fieldArr;
                                }
                            }
                            ArrayList arrayList7 = arrayList3;
                            obj2 = obj4;
                            i10 = i12;
                            i11 = length;
                            fieldArr = declaredFields;
                            if (obj2 == null && obj2.getClass().getName().startsWith("com.bytedance")) {
                                try {
                                    if (!a(map, obj2)) {
                                        ArrayList arrayList8 = new ArrayList(arrayList7);
                                        arrayList8.add(new q.b(field.getDeclaringClass().getName(), field.getType().getName(), field.getName(), null, "TAG_5", iIntValue));
                                        a(obj2, map, arrayList, arrayList2, arrayList8);
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    th.printStackTrace();
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            i10 = i12;
                            i11 = length;
                            fieldArr = declaredFields;
                        }
                    } else {
                        ArrayList arrayList9 = arrayList3;
                        obj2 = obj4;
                        i10 = i12;
                        i11 = length;
                        fieldArr = declaredFields;
                        if (obj2 == null) {
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
                i12 = i10 + 1;
                obj3 = obj;
                length = i11;
                declaredFields = fieldArr;
            }
        }
    }

    private static boolean a(Map<Integer, WeakReference<Object>> map, Object obj) {
        WeakReference<Object> weakReference;
        return (map == null || obj == null || (weakReference = map.get(Integer.valueOf(obj.hashCode()))) == null || weakReference.get() == null || !weakReference.get().equals(obj)) ? false : true;
    }
}
