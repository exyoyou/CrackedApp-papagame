package com.windmill.gromore;

import android.util.Pair;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationAdEcpmInfo;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import org.json.JSONTokener;

/* JADX INFO: loaded from: classes8.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f86334a;

    private static double a(Class cls, Object obj, int i10) {
        double dC;
        try {
            Class<?> superclass = obj.getClass();
            do {
                superclass = superclass.getSuperclass();
            } while (!(superclass instanceof Object));
        } catch (Throwable th) {
            a(th);
        }
        double dB = 0.0d;
        try {
            for (Field field : cls.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj2 = field.get(obj);
                if ((obj2 instanceof List) && !((List) obj2).isEmpty()) {
                    for (Object obj3 : (List) obj2) {
                        obj3.getClass();
                        if (obj3 instanceof Bridge) {
                            dC = c(obj3, i10);
                            if (dC > dB) {
                                dB = dC;
                            }
                        } else if (obj3.getClass().getName().contains("com.bytedance.msdk.adapter.pangle_csjm")) {
                            dC = c(obj3, i10);
                            if (dC > dB) {
                                dB = dC;
                            }
                        } else {
                            try {
                                for (Field field2 : obj3.getClass().getDeclaredFields()) {
                                    field2.setAccessible(true);
                                    Object obj4 = field2.get(obj3);
                                    if (b(obj4, i10) > dB) {
                                        dB = b(obj4, i10);
                                    }
                                }
                                Class<? super Object> superclass2 = obj3.getClass().getSuperclass();
                                if (superclass2 != null) {
                                    for (Field field3 : superclass2.getDeclaredFields()) {
                                        field3.setAccessible(true);
                                        Object obj5 = field3.get(obj3);
                                        if (b(obj5, i10) > dB) {
                                            dB = b(obj5, i10);
                                        }
                                    }
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            a(th2);
        }
        return dB;
    }

    private static double b(Object obj, int i10) {
        double dOptDouble = 0.0d;
        if (obj != null) {
            try {
                if (obj.toString().contains("cpm") || obj.toString().contains("price")) {
                    JSONObject jSONObject = new JSONObject(new JSONTokener(obj.toString()));
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        if (next.contains("cpm") || next.contains("price")) {
                            if (jSONObject.optDouble(next) > dOptDouble) {
                                dOptDouble = jSONObject.optDouble(next);
                                f86334a = true;
                            }
                        }
                    }
                    return dOptDouble;
                }
            } catch (Exception unused) {
                return 0.0d;
            }
        }
        if (i10 != 0 || f86334a || !(obj instanceof Double) || ((Double) obj).doubleValue() <= 0.0d) {
            return 0.0d;
        }
        return ((Double) obj).doubleValue();
    }

    private static double c(Object obj, int i10) {
        ArrayList<Field> arrayList = new ArrayList();
        a((Class) obj.getClass(), (List<Field>) arrayList, i10);
        double d10 = 0.0d;
        for (Field field : arrayList) {
            if (field.getType() == Double.TYPE) {
                try {
                    field.setAccessible(true);
                    double dDoubleValue = ((Double) field.get(obj)).doubleValue();
                    if (d10 <= dDoubleValue) {
                        d10 = dDoubleValue;
                    }
                } catch (Throwable th) {
                    a(th);
                }
            }
        }
        return d10;
    }

    private static double a(Object obj, int i10) {
        if (obj != null) {
            try {
                List<Object> listA = a(obj);
                if (listA.size() == 0) {
                    return 0.0d;
                }
                for (Object obj2 : listA) {
                    if (obj2 != null) {
                        Class<?> superclass = obj2.getClass();
                        a(superclass, obj2, i10);
                        Class<?> cls = null;
                        while (superclass != null && !superclass.getName().equals("java.lang.Object")) {
                            if (superclass.getSuperclass().getName().equals("java.lang.Object")) {
                                cls = superclass;
                            }
                            superclass = superclass.getSuperclass();
                        }
                        if (cls != null) {
                            double dA = a(cls, obj2, i10);
                            if (dA > 0.0d) {
                                return dA;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            } catch (Throwable th) {
                a(th);
            }
        }
        return 0.0d;
    }

    public static int a(Map<String, Object> map) {
        if (map == null || !map.containsKey(WMConstants.ISONLYBIDDING)) {
            return 0;
        }
        try {
            return WMBidUtil.parseInt(map.get(WMConstants.ISONLYBIDDING)).intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    public static q a(Object obj, int i10, String str, int i11) {
        q qVarA = a.a().a(obj, str);
        if (qVarA.f86346a >= 0.0d) {
            return qVarA;
        }
        Field[] declaredFields = obj.getClass().getDeclaredFields();
        f86334a = false;
        double dDoubleValue = 0.0d;
        for (Field field : declaredFields) {
            field.setAccessible(true);
            try {
                Object obj2 = field.get(obj);
                if (obj2 != null) {
                    double dA = a(obj2, i10);
                    if (dA > dDoubleValue) {
                        dDoubleValue = dA;
                    }
                }
            } catch (Throwable th) {
                WMLogUtil.e("---csjUtil: Throwable： " + th.getMessage());
                a(th);
            }
        }
        if (dDoubleValue == 0.0d) {
            try {
                WMLogUtil.i("---csjUtil: GroUtil2： start ".concat(String.valueOf(str)));
                m mVar = new m();
                Pair<Double, String> pairB = i11 == 2 ? mVar.b(obj, str, qVarA) : mVar.a(obj, str, qVarA);
                qVarA.f86346a = ((Double) pairB.first).doubleValue();
                qVarA.f86348c = str;
                dDoubleValue = ((Double) pairB.first).doubleValue();
                WMLogUtil.i("---csjUtil: GroUtil2： " + dDoubleValue + " " + str);
            } catch (Throwable unused) {
            }
        }
        qVarA.f86346a = dDoubleValue;
        WMLogUtil.i("---csjUtil: ".concat(String.valueOf(qVarA)));
        return qVarA;
    }

    public static String a(MediationAdEcpmInfo mediationAdEcpmInfo) {
        if (mediationAdEcpmInfo == null) {
            return "";
        }
        WMLogUtil.i("------groEcpm getShowEcpm " + mediationAdEcpmInfo.getEcpm());
        return mediationAdEcpmInfo.getEcpm();
    }

    private static List<Object> a(Object obj) {
        ArrayList arrayList = new ArrayList();
        try {
            for (Field field : obj.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                Object obj2 = field.get(obj);
                if (obj2 != null) {
                    arrayList.add(obj2);
                    for (Field field2 : obj2.getClass().getDeclaredFields()) {
                        field2.setAccessible(true);
                        arrayList.add(field2.get(obj2));
                    }
                }
            }
            return arrayList;
        } catch (Throwable th) {
            a(th);
            return arrayList;
        }
    }

    private static void a(Class cls, List<Field> list, int i10) {
        if (cls != null) {
            try {
                if (cls.getName().equals(Object.class.getName())) {
                    return;
                }
                Field[] declaredFields = cls.getDeclaredFields();
                if (declaredFields != null && declaredFields.length > 0) {
                    list.addAll(Arrays.asList(declaredFields));
                }
                a(cls.getSuperclass(), list, i10);
            } catch (Throwable th) {
                a(th);
            }
        }
    }

    private static void a(Throwable th) {
        WMLogUtil.i(WMLogUtil.TAG, "-----" + th.getMessage());
    }
}
