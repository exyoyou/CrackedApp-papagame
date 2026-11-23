package com.windmill.gromore;

import android.text.TextUtils;
import com.join.mgps.Util.o0;
import com.windmill.sdk.base.WMLogUtil;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes8.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Set<String> f86342a = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map<Class<?>, List<a>> f86343b = new ConcurrentHashMap();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Field f86344a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f86345b;

        a(Field field, int i10) {
            this.f86344a = field;
            this.f86345b = i10;
        }
    }

    static void a() {
        com.windmill.gromore.a.a();
        f86342a = com.windmill.gromore.a.b();
        WMLogUtil.d("GroUtils4 final packages: " + f86342a);
    }

    private void a(Class<?> cls, Field field, List<?> list, String str, q qVar, List<q.b> list2, Set<Object> set, int i10, int i11) {
        String name = field.getName();
        String name2 = cls.getName();
        for (int i12 = 0; i12 < list.size(); i12++) {
            Object obj = list.get(i12);
            if (obj != null && !set.contains(obj)) {
                q.b bVar = new q.b(name2, field.getType().getName(), name, Integer.valueOf(i12), null, i11);
                ArrayList arrayList = new ArrayList(list2);
                arrayList.add(bVar);
                a(obj, str, qVar, arrayList, set, i10 + 1);
            }
        }
    }

    private void a(Class<?> cls, Field field, Object[] objArr, String str, q qVar, List<q.b> list, Set<Object> set, int i10, int i11) {
        String name = field.getName();
        String name2 = cls.getName();
        for (int i12 = 0; i12 < objArr.length; i12++) {
            Object obj = objArr[i12];
            if (obj != null && !set.contains(obj)) {
                q.b bVar = new q.b(name2, field.getType().getName(), name, Integer.valueOf(i12), null, i11);
                ArrayList arrayList = new ArrayList(list);
                arrayList.add(bVar);
                a(obj, str, qVar, arrayList, set, i10 + 1);
            }
        }
    }

    final void a(Object obj, String str, q qVar, List<q.b> list, Set<Object> set, int i10) {
        String str2;
        boolean z10;
        List<a> list2;
        if (obj == null || set.contains(obj) || i10 > 15) {
            return;
        }
        set.add(obj);
        Class<?> cls = obj.getClass();
        String name = cls.getName();
        if (!a(name)) {
            return;
        }
        try {
            Map<Class<?>, List<a>> map = f86343b;
            List<a> arrayList = map.get(cls);
            if (arrayList == null) {
                synchronized (map) {
                    arrayList = map.get(cls);
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                        Class<?> superclass = cls;
                        int i11 = 0;
                        while (superclass != null && superclass != Object.class && a(superclass.getName())) {
                            for (Field field : superclass.getDeclaredFields()) {
                                arrayList.add(new a(field, i11));
                            }
                            superclass = superclass.getSuperclass();
                            i11++;
                        }
                        f86343b.put(cls, arrayList);
                    }
                }
            }
            List<a> list3 = arrayList;
            boolean z11 = false;
            for (a aVar : list3) {
                Field field2 = aVar.f86344a;
                boolean z12 = true;
                field2.setAccessible(true);
                Object obj2 = field2.get(obj);
                if (obj2 != null) {
                    if (field2.getType() == String.class && str.equals((String) obj2)) {
                        WMLogUtil.d("GroUtils4 find placementId: " + str + " in " + name + o0.f49827a + field2.getName() + ", level: " + aVar.f86345b);
                        z10 = true;
                    } else {
                        z10 = z11;
                    }
                    if (obj2 instanceof List) {
                        list2 = list3;
                        str2 = name;
                        try {
                            a(cls, field2, (List<?>) obj2, str, qVar, list, set, i10, aVar.f86345b);
                        } catch (Exception e10) {
                            e = e10;
                            WMLogUtil.e("GroUtils4 error processing objects: " + str2 + ", errorMsg: " + e.getMessage());
                            return;
                        }
                    } else {
                        list2 = list3;
                        str2 = name;
                        if (!obj2.getClass().isArray()) {
                            Class<?> cls2 = obj2.getClass();
                            if (!cls2.isPrimitive() && cls2 != Boolean.class && cls2 != Character.class && !Number.class.isAssignableFrom(cls2) && cls2 != String.class && cls2 != Enum.class && (!cls2.isArray() || cls2.getComponentType() == null || !cls2.getComponentType().isPrimitive())) {
                                z12 = false;
                            }
                            if (!z12) {
                                q.b bVar = new q.b(cls.getName(), field2.getType().getName(), field2.getName(), null, null, aVar.f86345b);
                                ArrayList arrayList2 = new ArrayList(list);
                                arrayList2.add(bVar);
                                a(obj2, str, qVar, arrayList2, set, i10 + 1);
                            }
                        } else if (obj2.getClass().getComponentType() != null && !obj2.getClass().getComponentType().isPrimitive()) {
                            a(cls, field2, (Object[]) obj2, str, qVar, list, set, i10, aVar.f86345b);
                        }
                    }
                    list3 = list2;
                    name = str2;
                    z11 = z10;
                }
            }
            List<a> list4 = list3;
            str2 = name;
            boolean z13 = obj instanceof Comparable;
            if (z11 && z13) {
                WMLogUtil.d("GroUtils4 find price, in object contains placementId: ".concat(str2));
                a(obj, list4, list, qVar);
            }
        } catch (Exception e11) {
            e = e11;
            str2 = name;
        }
    }

    private static void a(Object obj, List<a> list, List<q.b> list2, q qVar) {
        String name = obj.getClass().getName();
        double d10 = 0.0d;
        Field field = null;
        int i10 = -1;
        for (a aVar : list) {
            Field field2 = aVar.f86344a;
            field2.setAccessible(true);
            if (field2.getType() == Double.TYPE || field2.getType() == Double.class) {
                try {
                    Object obj2 = field2.get(obj);
                    if (obj2 != null) {
                        double d11 = field2.getType() == Double.TYPE ? field2.getDouble(obj) : ((Double) obj2).doubleValue();
                        if (d11 > d10) {
                            try {
                                i10 = aVar.f86345b;
                                field = field2;
                                d10 = d11;
                            } catch (Exception unused) {
                                field = field2;
                                d10 = d11;
                                WMLogUtil.e("GroUtils4 ignore inaccessible fields: " + name + o0.f49827a + field2.getName());
                            }
                        }
                    }
                } catch (Exception unused2) {
                }
            }
        }
        if (d10 <= 0.0d || field == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(list2);
        arrayList.add(new q.b(name, field.getType().getName(), field.getName(), null, null, i10));
        qVar.a(arrayList, d10);
        if (d10 > qVar.f86346a) {
            qVar.f86346a = d10;
        }
        WMLogUtil.d("GroUtils4 record max price: " + d10 + " in " + name + o0.f49827a + field.getName() + ", level: " + i10);
    }

    private static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Iterator<String> it2 = f86342a.iterator();
        while (it2.hasNext()) {
            if (str.startsWith(it2.next())) {
                return true;
            }
        }
        return false;
    }
}
