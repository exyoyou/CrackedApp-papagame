package cn.fly.commons.cc;

import com.tencent.cos.common.COSHttpResponseKey;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: loaded from: classes7.dex */
final class v {
    static void a(Class<?> cls, String str, String str2, int i10, Object[] objArr, t tVar, String str3, int i11) throws Throwable {
        Class<?>[] parameterTypes;
        boolean[] zArr;
        boolean[] zArrA;
        Object obj;
        Class<?> superclass = cls;
        Object[] objArrA = objArr;
        if ("new".equals(str2)) {
            if (List.class.isAssignableFrom(superclass) && objArrA.length == 1 && (obj = objArrA[0]) != null && obj.getClass().isArray()) {
                int length = Array.getLength(objArrA[0]);
                List arrayList = superclass.equals(List.class) ? new ArrayList(length) : (List) cls.newInstance();
                for (int i12 = 0; i12 < length; i12++) {
                    arrayList.add(Array.get(objArrA[0], i12));
                }
                tVar.a(arrayList);
                return;
            }
            if (Map.class.isAssignableFrom(superclass) && objArrA.length == 1 && objArrA[0] != null) {
                Map map = superclass.equals(Map.class) ? new HashMap() : (Map) cls.newInstance();
                Object obj2 = objArrA[0];
                if (obj2 instanceof Map) {
                    map.putAll((Map) obj2);
                } else {
                    Class<?> cls2 = Class.forName("org.json.JSONObject");
                    a(map, a(objArrA[0], cls2, str3, i11), cls2, Class.forName("org.json.JSONArray"));
                }
                tVar.a(map);
                return;
            }
            if (superclass.equals(c.class)) {
                if (objArrA.length == 2) {
                    tVar.a(new c((Number) objArrA[0], (Number) objArrA[1], null));
                    return;
                }
                if (objArrA.length == 3) {
                    tVar.a(new c((Number) objArrA[0], (Number) objArrA[1], (Number) objArrA[2]));
                    return;
                }
                throw new NoSuchMethodException("mth: new at: " + str3 + "(" + i11 + ")");
            }
            boolean[][] zArr2 = new boolean[2][];
            Constructor constructorA = tVar.h().a(superclass, objArrA, zArr2);
            if (constructorA != null) {
                if (!zArr2[1][0]) {
                    objArrA = tVar.h().a(tVar, constructorA.getParameterTypes(), objArrA, zArr2[0]);
                }
                constructorA.setAccessible(true);
                tVar.a(constructorA.newInstance(objArrA));
                return;
            }
            for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
                Class<?>[] parameterTypes2 = constructor.getParameterTypes();
                boolean[] zArr3 = new boolean[1];
                boolean[] zArrA2 = tVar.h().a(parameterTypes2, objArrA, zArr3);
                if (zArrA2 != null) {
                    if (!zArr3[0]) {
                        objArrA = tVar.h().a(tVar, parameterTypes2, objArrA, zArrA2);
                    }
                    constructor.setAccessible(true);
                    tVar.a(constructor.newInstance(objArrA));
                    return;
                }
            }
            throw new NoSuchMethodException("mth: new at: " + str3 + "(" + i11 + ")");
        }
        if ("fromJson".equals(str2) && Map.class.isAssignableFrom(superclass) && objArrA.length == 1 && objArrA[0] != null) {
            a(cls, str, "new", i10, objArr, tVar, str3, i11);
            return;
        }
        if (superclass.equals(Array.class)) {
            if (str2.equals(cn.fly.commons.n.a("011cdVdecc!cSdgNgbcad")) && objArrA.length == 2) {
                Object obj3 = objArrA[1];
                if (obj3 instanceof Integer) {
                    tVar.a(Array.newInstance((Class<?>) objArrA[0], ((Integer) obj3).intValue()));
                    return;
                }
            }
            if ("copy".equals(str2)) {
                if (i10 == 5) {
                    System.arraycopy(objArrA[0], Integer.parseInt(String.valueOf(objArrA[1])), objArrA[2], Integer.parseInt(String.valueOf(objArrA[3])), Integer.parseInt(String.valueOf(objArrA[4])));
                    return;
                }
                if (i10 == 2) {
                    Object obj4 = objArrA[0];
                    System.arraycopy(obj4, 0, objArrA[1], 0, Math.min(Array.getLength(obj4), Array.getLength(objArrA[1])));
                    return;
                }
                throw new NoSuchMethodException("mth: copy at: " + str3 + "(" + i11 + ")");
            }
        } else if ("quit".equals(str2) && superclass.equals(aa.class)) {
            tVar.f();
            return;
        }
        if (tVar.h().a((Object) null, cls, str2, objArr, tVar)) {
            return;
        }
        for (Class<?> superclass2 = superclass; superclass2 != null; superclass2 = superclass2.getSuperclass()) {
            boolean[][] zArr4 = new boolean[2][];
            Method methodA = tVar.h().a(superclass2, str2, true, objArr, zArr4);
            if (methodA != null) {
                if (!zArr4[1][0]) {
                    objArrA = tVar.h().a(tVar, methodA.getParameterTypes(), objArrA, zArr4[0]);
                }
                methodA.setAccessible(true);
                if (methodA.getReturnType() == Void.TYPE) {
                    methodA.invoke(null, objArrA);
                    return;
                } else {
                    tVar.a(methodA.invoke(null, objArrA));
                    return;
                }
            }
        }
        while (superclass != null) {
            for (Method method : superclass.getDeclaredMethods()) {
                if (method.getName().equals(str2) && Modifier.isStatic(method.getModifiers()) && (zArrA = tVar.h().a((parameterTypes = method.getParameterTypes()), objArrA, (zArr = new boolean[1]))) != null) {
                    if (!zArr[0]) {
                        objArrA = tVar.h().a(tVar, parameterTypes, objArrA, zArrA);
                    }
                    method.setAccessible(true);
                    if (method.getReturnType() == Void.TYPE) {
                        method.invoke(null, objArrA);
                        return;
                    } else {
                        tVar.a(method.invoke(null, objArrA));
                        return;
                    }
                }
            }
            superclass = superclass.getSuperclass();
        }
        throw new NoSuchMethodException("mth: " + str2 + " at: " + str3 + "(" + i11 + ")");
    }

    private static Object a(Object obj, Class<?> cls, String str, int i10) throws Throwable {
        if (obj instanceof ByteArrayOutputStream) {
            return a(((ByteArrayOutputStream) obj).toByteArray(), cls, str, i10);
        }
        if (obj instanceof byte[]) {
            return a(new String((byte[]) obj, "utf-8"), cls, str, i10);
        }
        if (!(obj instanceof StringBuffer) && !(obj instanceof StringBuilder)) {
            if (obj instanceof String) {
                return cls.getConstructor(String.class).newInstance(obj);
            }
            if (obj.getClass().equals(cls)) {
                return obj;
            }
            throw new ClassCastException("Failed to cast " + obj + " to be " + cls.getName() + " at: " + str + "(" + i10 + ")");
        }
        return a(obj.toString(), cls, str, i10);
    }

    private static void a(Map map, Object obj, Class<?> cls, Class<?> cls2) throws Throwable {
        Field declaredField = cls.getDeclaredField("nameValuePairs");
        declaredField.setAccessible(true);
        Map map2 = (Map) declaredField.get(obj);
        Field declaredField2 = cls.getDeclaredField("NULL");
        declaredField2.setAccessible(true);
        Object obj2 = declaredField2.get(null);
        for (Map.Entry entry : map2.entrySet()) {
            map.put(entry.getKey(), a(entry.getValue(), obj2, cls, cls2));
        }
    }

    private static Object a(Object obj, Object obj2, Class<?> cls, Class<?> cls2) throws Throwable {
        if (obj == null || obj2.equals(obj)) {
            return null;
        }
        if (obj.getClass().equals(cls)) {
            HashMap map = new HashMap();
            a((Map) map, obj, cls, cls2);
            return map;
        }
        if (!obj.getClass().equals(cls2)) {
            return obj;
        }
        Field declaredField = cls2.getDeclaredField(HmDataChannelManager.BEHAVIOR_VALUE);
        declaredField.setAccessible(true);
        List list = (List) declaredField.get(obj);
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(a(it2.next(), obj2, cls, cls2));
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:297:0x055f  */
    static void a(Object obj, String str, Object[] objArr, t tVar, String str2, int i10) throws Throwable {
        byte[] bArr;
        String[] strArr;
        ab abVar;
        String strValueOf;
        Object obj2;
        Class<?>[] parameterTypes;
        boolean[] zArr;
        boolean[] zArrA;
        Object obj3;
        Class<?>[] clsArr;
        int i11 = 0;
        if (obj instanceof Map) {
            Map map = (Map) obj;
            Object obj4 = map.get(str);
            if (obj4 != null) {
                if (obj4 instanceof ab) {
                    LinkedList<Object> linkedListB = ((ab) obj4).b(objArr);
                    if (linkedListB.size() > 0) {
                        tVar.a(linkedListB.get(0));
                        return;
                    }
                    return;
                }
                if (obj4 instanceof Method) {
                    tVar.a((Method) obj4, objArr);
                    return;
                }
            } else {
                if ((cn.fly.commons.n.a("005hJbhbicgca").equals(str) || cn.fly.commons.n.a("011Obe.cKdg;b@cd3d2ejbhbicgca").equals(str)) && objArr.length == 1 && (obj3 = objArr[0]) != null) {
                    if (obj3 instanceof Class) {
                        clsArr = new Class[]{(Class) obj3};
                    } else if (obj3 instanceof List) {
                        List list = (List) obj3;
                        clsArr = (Class[]) list.toArray(new Class[list.size()]);
                    } else {
                        throw new NoSuchMethodException("mth: " + str + " at: " + str2 + "(" + i10 + ")");
                    }
                    tVar.a(tVar.a(obj, cn.fly.commons.n.a("005h$bhbicgca").equals(str), clsArr));
                    return;
                }
                if ("iterator".equals(str) && objArr.length == 0) {
                    tVar.a(map.entrySet().iterator());
                    return;
                } else if ("toJson".equals(str) && objArr.length == 0) {
                    tVar.a(Class.forName("org.json.JSONObject").getDeclaredConstructor(Map.class).newInstance(obj));
                    return;
                }
            }
        } else if (obj instanceof ab) {
            ab abVar2 = (ab) obj;
            if (cn.fly.commons.n.a("004gdSdg_g").equals(str)) {
                tVar.a(abVar2.a(objArr));
                return;
            }
        } else if (obj instanceof Method) {
            if (cn.fly.commons.n.a("004gdDdg3g").equals(str)) {
                ab.a aVar = new ab.a();
                t tVarC = tVar.c();
                try {
                    tVarC.a((Method) obj, objArr);
                    aVar.f1213b = tVarC.b();
                } catch (Throwable th) {
                    aVar.f1212a = th;
                }
                tVar.a(aVar);
                return;
            }
            if (cn.fly.commons.n.a("013_dgTdg=db!aadKdgdgbgdd)ed").equals(str) && objArr.length == 1) {
                ((Method) obj).setAccessible(((Boolean) objArr[0]).booleanValue());
                return;
            }
        } else if (obj instanceof Collection) {
            Collection collection = (Collection) obj;
            int size = collection.size();
            if ("toArray".equals(str) && objArr.length == 1 && (obj2 = objArr[0]) != null && (obj2 instanceof Class)) {
                Object objNewInstance = Array.newInstance((Class<?>) obj2, size);
                Iterator it2 = collection.iterator();
                while (it2.hasNext()) {
                    Array.set(objNewInstance, i11, it2.next());
                    i11++;
                }
                tVar.a(objNewInstance);
                return;
            }
            if ("filter".equals(str) && objArr.length == 1 && (objArr[0] instanceof String)) {
                ArrayList arrayList = new ArrayList();
                String str3 = (String) objArr[0];
                for (Object obj5 : collection) {
                    if ((obj5 instanceof String) && ((String) obj5).matches(str3)) {
                        arrayList.add(obj5);
                    }
                }
                tVar.a(arrayList);
                return;
            }
            if ("replace".equals(str) && objArr.length == 2 && (objArr[0] instanceof String) && (objArr[1] instanceof String)) {
                ArrayList arrayList2 = new ArrayList();
                String str4 = (String) objArr[0];
                String str5 = (String) objArr[1];
                for (Object obj6 : collection) {
                    if (obj6 instanceof String) {
                        arrayList2.add(((String) obj6).replace(str4, str5));
                    } else {
                        arrayList2.add(obj6);
                    }
                }
                tVar.a(arrayList2);
                return;
            }
        } else if (obj.getClass().isArray()) {
            if ("iterator".equals(str) && objArr.length == 0) {
                ArrayList arrayList3 = new ArrayList();
                int length = Array.getLength(obj);
                while (i11 < length) {
                    arrayList3.add(Array.get(obj, i11));
                    i11++;
                }
                tVar.a(arrayList3.iterator());
                return;
            }
            if ("toList".equals(str) && objArr.length == 0) {
                ArrayList arrayList4 = new ArrayList();
                int length2 = Array.getLength(obj);
                while (i11 < length2) {
                    arrayList4.add(Array.get(obj, i11));
                    i11++;
                }
                tVar.a(arrayList4);
                return;
            }
            if (obj.getClass().getComponentType() == Byte.TYPE) {
                if (cn.fly.commons.n.a("003Cbdbafg").equals(str) && objArr.length == 0) {
                    byte[] bArr2 = (byte[]) obj;
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr2, 0, bArr2.length);
                    Object objA = a(byteArrayInputStream);
                    byteArrayInputStream.close();
                    tVar.a(objA);
                    return;
                }
                if ("hex".equals(str) && objArr.length == 0) {
                    tVar.a(a((byte[]) obj));
                    return;
                } else if (COSHttpResponseKey.Data.SHA.equals(str) && objArr.length == 1) {
                    MessageDigest messageDigest = MessageDigest.getInstance((String) objArr[0]);
                    messageDigest.update((byte[]) obj);
                    tVar.a(messageDigest.digest());
                    return;
                }
            }
        } else if (Iterator.class.isAssignableFrom(obj.getClass())) {
            if ("hasNext".equals(str)) {
                tVar.a(Boolean.valueOf(((Iterator) obj).hasNext()));
                return;
            } else if ("next".equals(str)) {
                tVar.a(((Iterator) obj).next());
                return;
            } else if ("remove".equals(str)) {
                ((Iterator) obj).remove();
                return;
            }
        } else if (obj instanceof c.a) {
            if ("hasNext".equals(str) && objArr.length == 0) {
                tVar.a(Boolean.valueOf(((c.a) obj).a()));
                return;
            } else if ("next".equals(str) && objArr.length == 0) {
                tVar.a(((c.a) obj).b());
                return;
            }
        } else if (obj instanceof c) {
            if ("iterator".equals(str) && objArr.length == 0) {
                tVar.a(((c) obj).a());
                return;
            }
            if ("isInRange".equals(str) && objArr.length == 1) {
                tVar.a(Boolean.valueOf(((c) obj).a((Number) objArr[0])));
                return;
            }
            if ("contains".equals(str) && objArr.length == 1) {
                tVar.a(Boolean.valueOf(((c) obj).b((Number) objArr[0])));
                return;
            } else if (HttpHeaders.Values.BOUNDARY.equals(str) && objArr.length == 0) {
                tVar.a(((c) obj).b());
                return;
            }
        } else if (obj instanceof String) {
            if ("getBytes".equals(str)) {
                if (objArr.length == 0) {
                    tVar.a(((String) obj).getBytes());
                    return;
                } else if (objArr.length == 1) {
                    Object obj7 = objArr[0];
                    if (obj7 instanceof String) {
                        tVar.a(((String) obj).getBytes((String) obj7));
                        return;
                    }
                }
            } else if ("input".equals(str)) {
                if (objArr.length == 0) {
                    tVar.a(new FileInputStream((String) obj));
                    return;
                } else if (objArr.length == 1 && (objArr[0] instanceof ab)) {
                    FileInputStream fileInputStream = new FileInputStream((String) obj);
                    ((ab) objArr[0]).b(fileInputStream);
                    fileInputStream.close();
                    return;
                }
            } else if ("output".equals(str)) {
                if (objArr.length == 0) {
                    tVar.a(new FileOutputStream((String) obj));
                    return;
                } else if (objArr.length == 1 && (objArr[0] instanceof ab)) {
                    FileOutputStream fileOutputStream = new FileOutputStream((String) obj);
                    ((ab) objArr[0]).b(fileOutputStream);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return;
                }
            } else {
                File file = null;
                String strValueOf2 = null;
                String strValueOf3 = null;
                FileInputStream fileInputStream2 = null;
                arrayList = null;
                Collection arrayList5 = null;
                file = null;
                if (cn.fly.commons.n.a("012(bh=db0baeabhbibdeabgVed").equals(str)) {
                    if (objArr.length == 0) {
                        strValueOf2 = "utf-8";
                    } else if (objArr.length == 1) {
                        strValueOf2 = String.valueOf(objArr[0]);
                    }
                    if (strValueOf2 != null) {
                        FileInputStream fileInputStream3 = new FileInputStream((String) obj);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        byte[] bArr3 = new byte[4096];
                        for (int i12 = fileInputStream3.read(bArr3); i12 != -1; i12 = fileInputStream3.read(bArr3)) {
                            byteArrayOutputStream.write(bArr3, 0, i12);
                        }
                        fileInputStream3.close();
                        byteArrayOutputStream.flush();
                        byteArrayOutputStream.close();
                        tVar.a(new String(byteArrayOutputStream.toByteArray(), strValueOf2));
                        return;
                    }
                } else if (cn.fly.commons.n.a("011)debhbg6gdPdabieabg0ed").equals(str)) {
                    if (objArr.length == 1) {
                        strValueOf3 = String.valueOf(objArr[0]);
                        strValueOf = "utf-8";
                    } else if (objArr.length == 2) {
                        strValueOf3 = String.valueOf(objArr[0]);
                        strValueOf = String.valueOf(objArr[1]);
                    } else {
                        strValueOf = null;
                    }
                    if (strValueOf3 != null) {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(strValueOf3);
                        fileOutputStream2.write(((String) obj).getBytes(strValueOf));
                        fileOutputStream2.flush();
                        fileOutputStream2.close();
                        return;
                    }
                } else if (cn.fly.commons.n.a("009,bh:db7badcbg+cd,dg").equals(str)) {
                    String str6 = "utf-8";
                    if (objArr.length == 0) {
                        abVar = null;
                        fileInputStream2 = new FileInputStream((String) obj);
                    } else if (objArr.length == 1) {
                        Object obj8 = objArr[0];
                        if (obj8 instanceof String) {
                            fileInputStream2 = new FileInputStream((String) obj);
                            str6 = (String) objArr[0];
                            abVar = null;
                        } else if (obj8 instanceof ab) {
                            fileInputStream2 = new FileInputStream((String) obj);
                            abVar = (ab) objArr[0];
                        } else {
                            abVar = null;
                        }
                    } else if (objArr.length == 2 && (objArr[0] instanceof String) && (objArr[1] instanceof ab)) {
                        fileInputStream2 = new FileInputStream((String) obj);
                        str6 = (String) objArr[0];
                        abVar = (ab) objArr[1];
                    } else {
                        abVar = null;
                    }
                    if (fileInputStream2 != null) {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream2, str6));
                        String line = bufferedReader.readLine();
                        if (abVar == null) {
                            ArrayList arrayList6 = new ArrayList();
                            while (line != null) {
                                arrayList6.add(line);
                                line = bufferedReader.readLine();
                            }
                            tVar.a(arrayList6);
                        } else {
                            while (line != null) {
                                abVar.b(line);
                                line = bufferedReader.readLine();
                            }
                        }
                        bufferedReader.close();
                        return;
                    }
                } else if (cn.fly.commons.n.a("010@debhbgPgdLdcbg<cd-dg").equals(str)) {
                    String str7 = "utf-8";
                    if (objArr.length >= 1) {
                        if (objArr.length == 2) {
                            Object obj9 = objArr[1];
                            if (obj9 instanceof String) {
                                str7 = (String) obj9;
                            }
                        }
                        Object obj10 = objArr[0];
                        if (obj10 instanceof String) {
                            arrayList5 = new ArrayList();
                            arrayList5.add(objArr[0]);
                        } else if (obj10 instanceof Collection) {
                            arrayList5 = (Collection) obj10;
                        } else if (obj10.getClass().isArray()) {
                            arrayList5 = new ArrayList();
                            int length3 = Array.getLength(objArr[0]);
                            for (int i13 = 0; i13 < length3; i13++) {
                                arrayList5.add(Array.get(objArr[0], i13));
                            }
                        }
                    }
                    if (arrayList5 != null) {
                        FileOutputStream fileOutputStream3 = new FileOutputStream((String) obj);
                        Iterator it3 = arrayList5.iterator();
                        while (it3.hasNext()) {
                            fileOutputStream3.write((it3.next() + "\r\n").getBytes(str7));
                        }
                        fileOutputStream3.flush();
                        fileOutputStream3.close();
                        return;
                    }
                } else if (cn.fly.commons.n.a("004dNcgYda").equals(str)) {
                    if (objArr.length == 0) {
                        tVar.a(Runtime.getRuntime().exec((String) obj));
                        return;
                    }
                    if (objArr.length == 1 || objArr.length == 2) {
                        Object obj11 = objArr[0];
                        if (obj11 instanceof String[]) {
                            strArr = (String[]) obj11;
                        } else if (obj11 instanceof List) {
                            List list2 = (List) obj11;
                            int size2 = list2.size();
                            String[] strArr2 = new String[size2];
                            for (int i14 = 0; i14 < size2; i14++) {
                                Object obj12 = list2.get(i14);
                                strArr2[i14] = obj12 == null ? null : String.valueOf(obj12);
                            }
                            strArr = strArr2;
                        } else {
                            strArr = null;
                        }
                        if (objArr.length == 2) {
                            Object obj13 = objArr[1];
                            if (obj13 instanceof File) {
                                file = (File) obj13;
                            }
                        }
                        if (strArr != null) {
                            tVar.a(Runtime.getRuntime().exec((String) obj, strArr, file));
                            return;
                        }
                    }
                } else if (cn.fly.commons.n.a("007@cdbhbibddi dHcg").equals(str) && objArr.length == 0) {
                    String str8 = (String) obj;
                    int length4 = str8.length();
                    if (length4 % 2 == 1) {
                        length4++;
                        bArr = new byte[length4 / 2];
                        str8 = "0" + str8;
                    } else {
                        bArr = new byte[length4 / 2];
                    }
                    int i15 = 0;
                    while (i11 < length4) {
                        int i16 = i11 + 2;
                        bArr[i15] = (byte) Integer.parseInt(str8.substring(i11, i16), 16);
                        i15++;
                        i11 = i16;
                    }
                    tVar.a(bArr);
                    return;
                }
            }
        } else if (obj instanceof InputStream) {
            if (cn.fly.commons.n.a("017gUbidj6bgbScc<ch:beBgAcj:g@bh'db%bd").equals(str) && objArr.length == 0) {
                tVar.a(new DataInputStream((InputStream) obj));
                return;
            }
            if (cn.fly.commons.n.a("021gHbidhbecdcdBdGbhLdEbaccOch3be1gQcj4gZbhMdb>bd").equals(str) && objArr.length == 0) {
                tVar.a(new BufferedInputStream((InputStream) obj));
                return;
            }
            if (cn.fly.commons.n.a("017gWbigbghccejccZchVbeTg.cjKg9bhXdbVbd").equals(str) && objArr.length == 0) {
                tVar.a(new GZIPInputStream((InputStream) obj));
                return;
            } else if (cn.fly.commons.n.a("019gVbiefddfeVdag$cc,ch[beBgEcj=g!bhSdbGbd").equals(str) && objArr.length == 0) {
                tVar.a(new ObjectInputStream((InputStream) obj));
                return;
            } else if (cn.fly.commons.n.a("003Vbdbafg").equals(str) && objArr.length == 0) {
                a((InputStream) obj);
            }
        } else if (obj instanceof OutputStream) {
            if (cn.fly.commons.n.a("018gZbidj4bgbRefbeSgh_be1g*cj1g@bh(db7bd").equals(str) && objArr.length == 0) {
                tVar.a(new DataOutputStream((OutputStream) obj));
                return;
            }
            if (cn.fly.commons.n.a("022gVbidhbecdcd%d8bh=d'baefbe[ghFbeEgFcj^g0bhGdb_bd").equals(str) && objArr.length == 0) {
                tVar.a(new BufferedOutputStream((OutputStream) obj));
                return;
            }
            if (cn.fly.commons.n.a("018g1bigbghccejefbeIgh2be$g4cj%g_bhPdbQbd").equals(str) && objArr.length == 0) {
                tVar.a(new GZIPOutputStream((OutputStream) obj));
                return;
            } else if (cn.fly.commons.n.a("020g0biefddfe:dag8efbe:gh.beZg'cj%g5bhUdb=bd").equals(str) && objArr.length == 0) {
                tVar.a(new ObjectOutputStream((OutputStream) obj));
                return;
            }
        } else if (obj instanceof Class) {
            if (cn.fly.commons.n.a("0066bgbdEhXbibhBg").equals(str)) {
                if (objArr.length == 0) {
                    Class<?> cls = (Class) obj;
                    tVar.b(cls.getSimpleName(), cls);
                    return;
                } else if (objArr.length == 1) {
                    Object obj14 = objArr[0];
                    if (obj14 instanceof String) {
                        tVar.b((String) obj14, (Class<?>) obj);
                        return;
                    }
                }
            }
        } else if (obj instanceof Throwable) {
            if (cn.fly.commons.n.a("005gfCbhbide").equals(str) && objArr.length == 0) {
                throw ((Throwable) obj);
            }
        } else if (obj instanceof BufferedReader) {
            if ("filter".equals(str) && objArr.length > 0) {
                Object obj15 = objArr[0];
                if (obj15 instanceof String) {
                    String str9 = (String) obj15;
                    boolean z10 = objArr.length == 2 && Boolean.TRUE.equals(objArr[1]);
                    ArrayList arrayList7 = new ArrayList();
                    BufferedReader bufferedReader2 = (BufferedReader) obj;
                    String line2 = bufferedReader2.readLine();
                    while (line2 != null) {
                        if (line2.matches(str9)) {
                            if (z10) {
                                line2 = line2.trim();
                            }
                            arrayList7.add(line2);
                        }
                        line2 = bufferedReader2.readLine();
                    }
                    tVar.a(arrayList7);
                    return;
                }
            }
        } else if (AccessibleObject.class.isAssignableFrom(obj.getClass()) && cn.fly.commons.n.a("013;dg@dg(db%aad+dgdgbgdd]ed").equals(str) && objArr.length == 1) {
            ((AccessibleObject) obj).setAccessible(((Boolean) objArr[0]).booleanValue());
            return;
        }
        if (cn.fly.commons.n.a("004eJbiSa?cf").equals(str) && objArr.length > 0 && (objArr[0] instanceof ab)) {
            synchronized (obj) {
                ab abVar3 = (ab) objArr[0];
                int length5 = objArr.length - 1;
                Object[] objArr2 = new Object[length5];
                if (objArr.length > 1) {
                    System.arraycopy(objArr, 1, objArr2, 0, length5);
                }
                LinkedList<Object> linkedListB2 = abVar3.b(objArr2);
                if (!linkedListB2.isEmpty()) {
                    tVar.a(linkedListB2.get(0));
                }
            }
            return;
        }
        Class<?> superclass = obj.getClass();
        if (tVar.h().a(obj, superclass, str, objArr, tVar)) {
            return;
        }
        for (Class<?> superclass2 = superclass; superclass2 != null; superclass2 = superclass2.getSuperclass()) {
            boolean[][] zArr2 = new boolean[2][];
            Method methodA = tVar.h().a(superclass2, str, false, objArr, zArr2);
            if (methodA != null) {
                Object[] objArrA = !zArr2[1][0] ? tVar.h().a(tVar, methodA.getParameterTypes(), objArr, zArr2[0]) : objArr;
                methodA.setAccessible(true);
                if (methodA.getReturnType() == Void.TYPE) {
                    methodA.invoke(obj, objArrA);
                    return;
                } else {
                    tVar.a(methodA.invoke(obj, objArrA));
                    return;
                }
            }
        }
        while (superclass != null) {
            for (Method method : superclass.getDeclaredMethods()) {
                if (method.getName().equals(str) && !Modifier.isStatic(method.getModifiers()) && (zArrA = tVar.h().a((parameterTypes = method.getParameterTypes()), objArr, (zArr = new boolean[1]))) != null) {
                    Object[] objArrA2 = !zArr[0] ? tVar.h().a(tVar, parameterTypes, objArr, zArrA) : objArr;
                    method.setAccessible(true);
                    if (method.getReturnType() == Void.TYPE) {
                        method.invoke(obj, objArrA2);
                        return;
                    } else {
                        tVar.a(method.invoke(obj, objArrA2));
                        return;
                    }
                }
            }
            superclass = superclass.getSuperclass();
        }
        throw new NoSuchMethodException("mth: " + str + " at: " + str2 + "(" + i10 + ")");
    }

    private static String a(InputStream inputStream) throws Throwable {
        if (inputStream == null) {
            return null;
        }
        byte[] bArr = new byte[1024];
        MessageDigest messageDigest = MessageDigest.getInstance(cn.fly.commons.n.a("003*fadjfg"));
        int i10 = inputStream.read(bArr);
        while (i10 != -1) {
            messageDigest.update(bArr, 0, i10);
            i10 = inputStream.read(bArr);
        }
        return a(messageDigest.digest());
    }

    private static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b10 : bArr) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(b10)));
        }
        return stringBuffer.toString();
    }
}
