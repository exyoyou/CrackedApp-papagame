package cn.fly.tools.utils;

import cn.fly.FlySDK;
import cn.fly.commons.x;
import cn.fly.tools.FlyLog;
import cn.fly.tools.proguard.PublicMemberKeeper;
import com.byazt.lr.uj;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class HashonHelper implements PublicMemberKeeper {

    public interface a {
        Object a();
    }

    private static <T> HashMap<String, T> a(JSONObject jSONObject) throws Throwable {
        uj ujVar = (HashMap<String, T>) new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = jSONObject.opt(next);
            if (JSONObject.NULL.equals(objOpt)) {
                objOpt = null;
            }
            if (objOpt != null) {
                if (objOpt instanceof JSONObject) {
                    objOpt = a((JSONObject) objOpt);
                } else if (objOpt instanceof JSONArray) {
                    objOpt = a((JSONArray) objOpt);
                }
                ujVar.put(next, objOpt);
            }
        }
        return ujVar;
    }

    private static ArrayList<?> b(Object obj) {
        int i10 = 0;
        if (obj instanceof byte[]) {
            ArrayList<?> arrayList = new ArrayList<>();
            byte[] bArr = (byte[]) obj;
            int length = bArr.length;
            while (i10 < length) {
                arrayList.add(Byte.valueOf(bArr[i10]));
                i10++;
            }
            return arrayList;
        }
        if (obj instanceof short[]) {
            ArrayList<?> arrayList2 = new ArrayList<>();
            short[] sArr = (short[]) obj;
            int length2 = sArr.length;
            while (i10 < length2) {
                arrayList2.add(Short.valueOf(sArr[i10]));
                i10++;
            }
            return arrayList2;
        }
        if (obj instanceof int[]) {
            ArrayList<?> arrayList3 = new ArrayList<>();
            int[] iArr = (int[]) obj;
            int length3 = iArr.length;
            while (i10 < length3) {
                arrayList3.add(Integer.valueOf(iArr[i10]));
                i10++;
            }
            return arrayList3;
        }
        if (obj instanceof long[]) {
            ArrayList<?> arrayList4 = new ArrayList<>();
            long[] jArr = (long[]) obj;
            int length4 = jArr.length;
            while (i10 < length4) {
                arrayList4.add(Long.valueOf(jArr[i10]));
                i10++;
            }
            return arrayList4;
        }
        if (obj instanceof float[]) {
            ArrayList<?> arrayList5 = new ArrayList<>();
            float[] fArr = (float[]) obj;
            int length5 = fArr.length;
            while (i10 < length5) {
                arrayList5.add(Float.valueOf(fArr[i10]));
                i10++;
            }
            return arrayList5;
        }
        if (obj instanceof double[]) {
            ArrayList<?> arrayList6 = new ArrayList<>();
            double[] dArr = (double[]) obj;
            int length6 = dArr.length;
            while (i10 < length6) {
                arrayList6.add(Double.valueOf(dArr[i10]));
                i10++;
            }
            return arrayList6;
        }
        if (obj instanceof char[]) {
            ArrayList<?> arrayList7 = new ArrayList<>();
            char[] cArr = (char[]) obj;
            int length7 = cArr.length;
            while (i10 < length7) {
                arrayList7.add(Character.valueOf(cArr[i10]));
                i10++;
            }
            return arrayList7;
        }
        if (!(obj instanceof boolean[])) {
            if (obj instanceof String[]) {
                return new ArrayList<>(Arrays.asList((String[]) obj));
            }
            return null;
        }
        ArrayList<?> arrayList8 = new ArrayList<>();
        boolean[] zArr = (boolean[]) obj;
        int length8 = zArr.length;
        while (i10 < length8) {
            arrayList8.add(Boolean.valueOf(zArr[i10]));
            i10++;
        }
        return arrayList8;
    }

    private static Object c(Object obj) throws Throwable {
        if (obj == null || obj.getClass().isPrimitive() || (obj instanceof String) || (obj instanceof Number) || (obj instanceof Character) || (obj instanceof Boolean)) {
            return obj;
        }
        if (obj instanceof a) {
            return c(((a) obj).a());
        }
        if (obj instanceof Enum) {
            HashMap map = new HashMap();
            map.put(x.b("004ed@cfce"), ((Enum) obj).name());
            return map;
        }
        if (obj.getClass().isArray()) {
            ArrayList arrayList = new ArrayList();
            int length = Array.getLength(obj);
            for (int i10 = 0; i10 < length; i10++) {
                arrayList.add(c(Array.get(obj, i10)));
            }
            return arrayList;
        }
        if (obj instanceof Collection) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = ((Collection) obj).iterator();
            while (it2.hasNext()) {
                arrayList2.add(c(it2.next()));
            }
            return arrayList2;
        }
        if (obj instanceof Map) {
            HashMap map2 = new HashMap();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                if (key instanceof String) {
                    map2.put((String) key, c(entry.getValue()));
                }
            }
            return map2;
        }
        ArrayList arrayList3 = new ArrayList();
        for (Class<?> superclass = obj.getClass(); !superclass.equals(Object.class); superclass = superclass.getSuperclass()) {
            arrayList3.add(0, superclass);
        }
        ArrayList<Field> arrayList4 = new ArrayList();
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            for (Field field : ((Class) it3.next()).getDeclaredFields()) {
                if (!Modifier.isStatic(field.getModifiers()) && !field.getName().contains("$")) {
                    arrayList4.add(field);
                }
            }
        }
        HashMap map3 = new HashMap();
        for (Field field2 : arrayList4) {
            field2.setAccessible(true);
            map3.put(field2.getName(), c(field2.get(obj)));
        }
        return map3;
    }

    public static String format(String str) {
        try {
            return a("", (HashMap<String, Object>) fromJson(str));
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return "";
        }
    }

    public static <T> String fromHashMap(HashMap<String, T> map) {
        try {
            JSONObject jSONObjectA = a((HashMap) map);
            return jSONObjectA == null ? "" : jSONObjectA.toString();
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return "";
        }
    }

    public static <T> HashMap<String, T> fromJson(String str) {
        if (str == null || str.isEmpty()) {
            return new HashMap<>();
        }
        try {
            if (str.startsWith("[") && str.endsWith("]")) {
                str = "{\"fakelist\":" + str + "}";
            }
            return a(new JSONObject(str));
        } catch (Throwable th) {
            FlyLog.getInstance().w(str);
            FlyLog.getInstance().w(th);
            return new HashMap<>();
        }
    }

    public static String fromObject(Object obj) {
        Object objC;
        try {
            objC = c(obj);
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            objC = null;
        }
        if (objC == null) {
            return "";
        }
        if (!(objC instanceof ArrayList)) {
            return fromHashMap((HashMap) objC);
        }
        HashMap map = new HashMap();
        map.put(x.b("004f4chehMh"), objC);
        String strFromHashMap = fromHashMap(map);
        return strFromHashMap.substring(8, strFromHashMap.length() - 1).trim();
    }

    public static <T> T fromJson(String str, Class<T> cls) {
        HashMap mapFromJson = fromJson(str);
        Object obj = mapFromJson;
        if (str.startsWith("[") && str.endsWith("]")) {
            obj = mapFromJson;
            obj = mapFromJson.get(x.b("008_deJc>dg6ef8cheh8h"));
        }
        obj = mapFromJson;
        try {
            Type genericSuperclass = cls.getGenericSuperclass();
            return (T) a(obj, cls, genericSuperclass instanceof ParameterizedType ? ((ParameterizedType) genericSuperclass).getActualTypeArguments() : null);
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return null;
        }
    }

    private static ArrayList<Object> a(JSONArray jSONArray) throws Throwable {
        ArrayList<Object> arrayList = new ArrayList<>();
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            Object objOpt = jSONArray.opt(i10);
            if (objOpt instanceof JSONObject) {
                objOpt = a((JSONObject) objOpt);
            } else if (objOpt instanceof JSONArray) {
                objOpt = a((JSONArray) objOpt);
            }
            arrayList.add(objOpt);
        }
        return arrayList;
    }

    private static <T> JSONObject a(HashMap<String, T> map) throws Throwable {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, T> entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof HashMap) {
                value = a((HashMap) value);
            } else if (value instanceof ArrayList) {
                value = a((ArrayList<Object>) value);
            } else if (a(value)) {
                value = a((ArrayList<Object>) b(value));
            }
            jSONObject.put(entry.getKey(), value);
        }
        return jSONObject;
    }

    private static boolean a(Object obj) {
        return (obj instanceof byte[]) || (obj instanceof short[]) || (obj instanceof int[]) || (obj instanceof long[]) || (obj instanceof float[]) || (obj instanceof double[]) || (obj instanceof char[]) || (obj instanceof boolean[]) || (obj instanceof String[]);
    }

    private static JSONArray a(ArrayList<Object> arrayList) throws Throwable {
        JSONArray jSONArray = new JSONArray();
        for (Object objA : arrayList) {
            if (objA instanceof HashMap) {
                objA = a((HashMap) objA);
            } else if (objA instanceof ArrayList) {
                objA = a((ArrayList<Object>) objA);
            }
            jSONArray.put(objA);
        }
        return jSONArray;
    }

    private static String a(String str, HashMap<String, Object> map) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{\n");
        String str2 = str + "\t";
        int i10 = 0;
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (i10 > 0) {
                sb2.append(",\n");
            }
            sb2.append(str2);
            sb2.append('\"');
            sb2.append(entry.getKey());
            sb2.append("\":");
            Object value = entry.getValue();
            if (value instanceof HashMap) {
                sb2.append(a(str2, (HashMap<String, Object>) value));
            } else if (value instanceof ArrayList) {
                sb2.append(a(str2, (ArrayList<Object>) value));
            } else if (value instanceof String) {
                sb2.append('\"');
                sb2.append(value);
                sb2.append('\"');
            } else {
                sb2.append(value);
            }
            i10++;
        }
        sb2.append('\n');
        sb2.append(str);
        sb2.append('}');
        return sb2.toString();
    }

    private static String a(String str, ArrayList<Object> arrayList) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[\n");
        String str2 = str + "\t";
        int i10 = 0;
        for (Object obj : arrayList) {
            if (i10 > 0) {
                sb2.append(",\n");
            }
            sb2.append(str2);
            if (obj instanceof HashMap) {
                sb2.append(a(str2, (HashMap<String, Object>) obj));
            } else if (obj instanceof ArrayList) {
                sb2.append(a(str2, (ArrayList<Object>) obj));
            } else if (obj instanceof String) {
                sb2.append('\"');
                sb2.append(obj);
                sb2.append('\"');
            } else {
                sb2.append(obj);
            }
            i10++;
        }
        sb2.append('\n');
        sb2.append(str);
        sb2.append(']');
        return sb2.toString();
    }

    /* JADX WARN: Type inference failed for: r10v10, types: [T, java.util.Map] */
    /* JADX WARN: Type inference failed for: r10v12, types: [T, java.util.Collection] */
    private static <T> T a(Object obj, Class<T> cls, Type[] typeArr) throws Throwable {
        Field declaredField;
        Type type;
        Type type2;
        Object objA;
        Object objA2;
        int i10 = 0;
        if (!cls.isPrimitive() && !Number.class.isAssignableFrom(cls) && !cls.equals(Character.class)) {
            if (a.class.isAssignableFrom(cls)) {
                try {
                    return (T) ReflectHelper.invokeStaticMethod(ReflectHelper.importClass(cls.getName()), x.b("0079cc'cfCcf_eYfgde"), obj);
                } catch (Throwable unused) {
                    return null;
                }
            }
            if (cls.equals(String.class) || cls.equals(Boolean.class)) {
                return obj;
            }
            if (cls.isEnum()) {
                return (T) Enum.valueOf(cls, String.valueOf(((HashMap) obj).get(x.b("004edNcfce"))));
            }
            if (cls.isArray()) {
                ArrayList arrayList = (ArrayList) obj;
                Class<?> componentType = cls.getComponentType();
                T t10 = (T) Array.newInstance(componentType, arrayList.size());
                int size = arrayList.size();
                while (i10 < size) {
                    Array.set(t10, i10, a(arrayList.get(i10), componentType, null));
                    i10++;
                }
                return t10;
            }
            if (Collection.class.isAssignableFrom(cls)) {
                ?? r10 = (T) ((Collection) cls.newInstance());
                Type type3 = (typeArr == null || typeArr.length <= 0) ? null : typeArr[0];
                ArrayList arrayList2 = (ArrayList) obj;
                int size2 = arrayList2.size();
                while (i10 < size2) {
                    if (type3 != null && (type3 instanceof Class) && !type3.equals(Object.class)) {
                        r10.add(a(arrayList2.get(i10), (Class) type3, null));
                    } else if (type3 != null && (type3 instanceof ParameterizedType)) {
                        ParameterizedType parameterizedType = (ParameterizedType) type3;
                        r10.add(a(arrayList2.get(i10), (Class) parameterizedType.getRawType(), parameterizedType.getActualTypeArguments()));
                    } else {
                        r10.add(arrayList2.get(i10));
                    }
                    i10++;
                }
                return r10;
            }
            if (Map.class.isAssignableFrom(cls)) {
                ?? r11 = (T) ((Map) cls.newInstance());
                if (typeArr == null || typeArr.length <= 1) {
                    type = null;
                    type2 = null;
                } else {
                    type2 = typeArr[0];
                    type = typeArr[1];
                }
                HashMap map = (HashMap) obj;
                for (Object obj2 : map.keySet()) {
                    if (type2 != null && (type2 instanceof Class) && !type.equals(Object.class)) {
                        objA = a(obj2, (Class) type2, null);
                    } else if (type2 == null || !(type2 instanceof ParameterizedType)) {
                        objA = obj2;
                    } else {
                        ParameterizedType parameterizedType2 = (ParameterizedType) type2;
                        objA = a(obj2, (Class) parameterizedType2.getRawType(), parameterizedType2.getActualTypeArguments());
                    }
                    if (type != null && (type instanceof Class) && !type.equals(Object.class)) {
                        objA2 = a(map.get(obj2), (Class) type, null);
                    } else if (type != null && (type instanceof ParameterizedType)) {
                        ParameterizedType parameterizedType3 = (ParameterizedType) type;
                        objA2 = a(map.get(obj2), (Class) parameterizedType3.getRawType(), parameterizedType3.getActualTypeArguments());
                    } else {
                        objA2 = map.get(obj2);
                    }
                    r11.put(objA, objA2);
                }
                return r11;
            }
            ArrayList arrayList3 = new ArrayList();
            for (Class<T> superclass = cls; !superclass.equals(Object.class); superclass = superclass.getSuperclass()) {
                arrayList3.add(superclass);
            }
            HashMap map2 = (HashMap) obj;
            HashMap map3 = new HashMap();
            for (String str : map2.keySet()) {
                if (map2.get(str) != null) {
                    Iterator it2 = arrayList3.iterator();
                    while (it2.hasNext()) {
                        try {
                            declaredField = ((Class) it2.next()).getDeclaredField(str);
                        } catch (Throwable unused2) {
                            declaredField = null;
                        }
                        if (declaredField != null) {
                            map3.put(str, declaredField);
                            break;
                        }
                    }
                }
            }
            T t11 = (T) ReflectHelper.newInstance(ReflectHelper.getName(cls), new Object[0]);
            for (String str2 : map3.keySet()) {
                Object obj3 = map2.get(str2);
                Field field = (Field) map3.get(str2);
                Class<?> type4 = field.getType();
                Type genericType = field.getGenericType();
                Type[] actualTypeArguments = genericType instanceof ParameterizedType ? ((ParameterizedType) genericType).getActualTypeArguments() : null;
                field.setAccessible(true);
                if (Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers()) && DH.SyncMtd.getOSVersionIntForFly() >= 37 && cn.fly.tools.b.c.a(FlySDK.getContext()).d().ar().targetSdkVersion >= 37) {
                    throw new Throwable("field static final field not allowed in 37");
                }
                field.set(t11, a(obj3, type4, actualTypeArguments));
            }
            return t11;
        }
        if (!cls.equals(Boolean.TYPE) && !cls.equals(Boolean.class)) {
            if (!cls.equals(Character.TYPE) && !cls.equals(Character.class)) {
                if (!cls.equals(Byte.TYPE) && !cls.equals(Byte.class)) {
                    if (!cls.equals(Short.TYPE) && !cls.equals(Short.class)) {
                        if (!cls.equals(Integer.TYPE) && !cls.equals(Integer.class)) {
                            if (!cls.equals(Long.TYPE) && !cls.equals(Long.class)) {
                                if (!cls.equals(Float.TYPE) && !cls.equals(Float.class)) {
                                    return (T) Double.valueOf(String.valueOf(obj));
                                }
                                return (T) Float.valueOf(String.valueOf(obj));
                            }
                            return (T) Long.valueOf(String.valueOf(obj));
                        }
                        return (T) Integer.valueOf(String.valueOf(obj));
                    }
                    return (T) Short.valueOf(String.valueOf(obj));
                }
                return (T) Byte.valueOf(String.valueOf(obj));
            }
            return (T) Character.valueOf(String.valueOf(obj).charAt(0));
        }
        return (T) Boolean.valueOf(x.b("004hEcicfEe").equals(String.valueOf(obj)));
    }
}
