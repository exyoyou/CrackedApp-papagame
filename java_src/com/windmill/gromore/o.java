package com.windmill.gromore;

import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.openvk.api.proto.Bridge;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes8.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f86335a = "GroUtils3 ";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f86336b = "TAG_1";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f86337c = "TAG_2";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f86338d = "TAG_3";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f86339e = "TAG_4";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f86340f = "TAG_5";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f86341g = "TAG_6";

    private static double a(ArrayList<Field> arrayList, Object obj, q qVar, List<q.b> list, ArrayList<Integer> arrayList2) {
        double d10;
        Field field = null;
        double dDoubleValue = 0.0d;
        int iIntValue = -1;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            try {
                Field field2 = arrayList.get(i10);
                field2.setAccessible(true);
                if (field2.getType().equals(Double.TYPE)) {
                    Double d11 = (Double) field2.get(obj);
                    if (d11.doubleValue() > dDoubleValue) {
                        dDoubleValue = d11.doubleValue();
                        try {
                            iIntValue = arrayList2.get(i10).intValue();
                            field = field2;
                        } catch (Throwable th) {
                            th = th;
                            field = field2;
                            th.printStackTrace();
                            d10 = dDoubleValue;
                            if (d10 > 0.0d) {
                                ArrayList arrayList3 = new ArrayList(list);
                                arrayList3.add(new q.b(field.getDeclaringClass().getName(), field.getType().getName(), field.getName(), null, "TAG_6", iIntValue));
                                qVar.a(arrayList3, d10);
                            }
                            return d10;
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        d10 = dDoubleValue;
        if (d10 > 0.0d && qVar != null && field != null) {
            ArrayList arrayList4 = new ArrayList(list);
            arrayList4.add(new q.b(field.getDeclaringClass().getName(), field.getType().getName(), field.getName(), null, "TAG_6", iIntValue));
            qVar.a(arrayList4, d10);
        }
        return d10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(Double d10, Double d11) {
        return Double.compare(d11.doubleValue(), d10.doubleValue());
    }

    private static Pair<ArrayList<Field>, ArrayList<Integer>> a(Object obj) {
        Class<?> superclass = obj.getClass();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i10 = 0;
        while (superclass != null) {
            for (Field field : superclass.getDeclaredFields()) {
                if (!field.isSynthetic()) {
                    arrayList.add(field);
                    arrayList2.add(Integer.valueOf(i10));
                }
            }
            superclass = superclass.getSuperclass();
            i10++;
        }
        return new Pair<>(arrayList, arrayList2);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00e8  */
    final Double a(Object obj, String str, q qVar) {
        ArrayList arrayList;
        ArrayList arrayList2;
        boolean z10;
        Object obj2 = obj;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        if (obj2 != null) {
            try {
                Pair<ArrayList<Field>, ArrayList<Integer>> pairA = a(obj);
                ArrayList arrayList5 = (ArrayList) pairA.first;
                ArrayList arrayList6 = (ArrayList) pairA.second;
                int i10 = 0;
                while (i10 < arrayList5.size()) {
                    int iIntValue = ((Integer) arrayList6.get(i10)).intValue();
                    Field field = (Field) arrayList5.get(i10);
                    field.setAccessible(true);
                    Object obj3 = field.get(obj2);
                    if (obj3 != null) {
                        WeakHashMap<Object, Object> weakHashMap = new WeakHashMap<>();
                        ArrayList<Object> arrayList7 = new ArrayList<>();
                        ArrayList<List<q.b>> arrayList8 = new ArrayList<>();
                        a(obj3, weakHashMap, arrayList7, arrayList8, new ArrayList());
                        weakHashMap.clear();
                        Pair pair = new Pair(arrayList8, arrayList7);
                        ArrayList arrayList9 = (ArrayList) pair.first;
                        ArrayList arrayList10 = (ArrayList) pair.second;
                        if (!arrayList10.isEmpty()) {
                            int i11 = 0;
                            while (i11 < arrayList10.size()) {
                                Object obj4 = arrayList10.get(i11);
                                List list = (List) arrayList9.get(i11);
                                Pair<ArrayList<Field>, ArrayList<Integer>> pairA2 = a(obj4);
                                ArrayList arrayList11 = (ArrayList) pairA2.first;
                                ArrayList arrayList12 = (ArrayList) pairA2.second;
                                ArrayList arrayList13 = arrayList9;
                                if (arrayList11.isEmpty()) {
                                    arrayList = arrayList6;
                                    arrayList2 = arrayList5;
                                } else {
                                    int i12 = 0;
                                    boolean z11 = false;
                                    boolean z12 = false;
                                    while (true) {
                                        if (i12 >= arrayList11.size()) {
                                            arrayList = arrayList6;
                                            arrayList2 = arrayList5;
                                            z10 = false;
                                            break;
                                        }
                                        Field field2 = (Field) arrayList11.get(i12);
                                        arrayList = arrayList6;
                                        field2.setAccessible(true);
                                        arrayList2 = arrayList5;
                                        if (field2.getType().equals(Double.TYPE)) {
                                            z11 = true;
                                        } else if (field2.getType().equals(String.class)) {
                                            String str2 = (String) field2.get(obj4);
                                            if (!TextUtils.isEmpty(str2)) {
                                                if (TextUtils.equals(str2, str)) {
                                                    z12 = true;
                                                }
                                            }
                                        }
                                        if (z11 && z12) {
                                            z10 = true;
                                            break;
                                        }
                                        i12++;
                                        arrayList6 = arrayList;
                                        arrayList5 = arrayList2;
                                    }
                                    if (z10 && ((obj4 instanceof Bridge) || obj4.getClass().getName().contains("$") || obj4.getClass().getSuperclass() != Object.class)) {
                                        Double dValueOf = Double.valueOf(a((ArrayList<Field>) arrayList11, obj4, qVar, a(field, iIntValue, arrayList3, list), (ArrayList<Integer>) arrayList12));
                                        arrayList4.add(dValueOf);
                                    }
                                }
                                i11++;
                                arrayList9 = arrayList13;
                                arrayList6 = arrayList;
                                arrayList5 = arrayList2;
                            }
                        }
                    }
                    i10++;
                    obj2 = obj;
                    arrayList6 = arrayList6;
                    arrayList5 = arrayList5;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        if (arrayList4.isEmpty()) {
            return Double.valueOf(-1.0d);
        }
        Collections.sort(arrayList4, new Comparator() { // from class: com.windmill.gromore.u
            @Override // java.util.Comparator
            public final int compare(Object obj5, Object obj6) {
                return o.a((Double) obj5, (Double) obj6);
            }
        });
        return (Double) arrayList4.get(0);
    }

    private static List<q.b> a(Field field, int i10, List<q.b> list, List<q.b> list2) {
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(new q.b(field.getDeclaringClass().getName(), field.getType().getName(), field.getName(), null, null, i10));
        arrayList.addAll(list2);
        return arrayList;
    }

    private void a(Object obj, WeakHashMap<Object, Object> weakHashMap, ArrayList<Object> arrayList, ArrayList<List<q.b>> arrayList2, List<q.b> list) {
        CopyOnWriteArrayList copyOnWriteArrayList;
        Object obj2 = obj;
        if (obj2 != null) {
            try {
                if (weakHashMap.containsKey(obj2)) {
                    return;
                }
                weakHashMap.put(obj2, null);
                Pair<ArrayList<Field>, ArrayList<Integer>> pairA = a(obj);
                ArrayList arrayList3 = (ArrayList) pairA.first;
                ArrayList arrayList4 = (ArrayList) pairA.second;
                int i10 = 0;
                while (i10 < arrayList3.size()) {
                    int iIntValue = ((Integer) arrayList4.get(i10)).intValue();
                    Field field = (Field) arrayList3.get(i10);
                    field.setAccessible(true);
                    try {
                        Object obj3 = field.get(obj2);
                        ArrayList arrayList5 = new ArrayList(list);
                        String str = "com.bytedance.msdk";
                        if ((obj3 instanceof Comparable) && obj3.getClass().getName().startsWith("com.bytedance.msdk")) {
                            arrayList.add(obj3);
                            ArrayList arrayList6 = new ArrayList(arrayList5);
                            arrayList6.add(new q.b(field.getDeclaringClass().getName(), field.getType().getName(), field.getName(), null, "TAG_3", iIntValue));
                            arrayList2.add(arrayList6);
                        }
                        if (obj3 instanceof List) {
                            CopyOnWriteArrayList copyOnWriteArrayList2 = new CopyOnWriteArrayList((List) obj3);
                            int i11 = 0;
                            while (i11 < copyOnWriteArrayList2.size()) {
                                Object obj4 = copyOnWriteArrayList2.get(i11);
                                if ((obj4 instanceof Comparable) && obj4.getClass().getName().startsWith(str)) {
                                    arrayList.add(obj4);
                                    ArrayList arrayList7 = new ArrayList(arrayList5);
                                    arrayList7.add(new q.b(field.getDeclaringClass().getName(), field.getType().getName(), field.getName(), Integer.valueOf(i11), "TAG_4", iIntValue));
                                    arrayList2.add(arrayList7);
                                    copyOnWriteArrayList = copyOnWriteArrayList2;
                                } else {
                                    copyOnWriteArrayList = copyOnWriteArrayList2;
                                }
                                ArrayList arrayList8 = arrayList5;
                                a(obj4, weakHashMap, arrayList, arrayList2, arrayList8);
                                obj3 = obj3;
                                arrayList5 = arrayList8;
                                str = str;
                                field = field;
                                i11++;
                                copyOnWriteArrayList2 = copyOnWriteArrayList;
                            }
                        }
                        ArrayList arrayList9 = arrayList5;
                        Object obj5 = obj3;
                        Field field2 = field;
                        if (obj5 != null) {
                            String name = obj5.getClass().getName();
                            if (!TextUtils.isEmpty(name) && name.startsWith("com.bytedance") && !weakHashMap.containsKey(obj5)) {
                                ArrayList arrayList10 = new ArrayList(arrayList9);
                                arrayList10.add(new q.b(field2.getDeclaringClass().getName(), field2.getType().getName(), field2.getName(), null, "TAG_5", iIntValue));
                                a(obj5, weakHashMap, arrayList, arrayList2, arrayList10);
                            }
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    i10++;
                    obj2 = obj;
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }
}
