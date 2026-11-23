package cn.fly.commons.cc;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final HashMap<String, Class<?>> f1293a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap<String, HashMap<String, String[][]>> f1294b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap<Class<?>, y<?>> f1295c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashMap<String, Class<?>> f1296d = new LinkedHashMap<String, Class<?>>(512, 0.75f, true) { // from class: cn.fly.commons.cc.z.1
        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<String, Class<?>> entry) {
            return size() > 512;
        }
    };

    static {
        HashMap<String, Class<?>> map = new HashMap<>();
        f1293a = map;
        map.put(cn.fly.commons.a.m.a("003Zej=fj"), Integer.TYPE);
        map.put(cn.fly.commons.a.m.a("006?edelehgg6hg"), Double.TYPE);
        map.put(MethodReflectParams.LONG, Long.TYPE);
        map.put(cn.fly.commons.a.m.a("005,fgRh+elXej"), Float.TYPE);
        map.put("boolean", Boolean.TYPE);
        map.put(MethodReflectParams.SHORT, Short.TYPE);
        map.put(MethodReflectParams.BYTE, Byte.TYPE);
        map.put(cn.fly.commons.a.m.a("004dieNek"), Character.TYPE);
        map.put("void", Void.TYPE);
    }

    public z() {
        a(ab.a.class, ab.a.class);
    }

    private boolean b(Class<?> cls, Class<?> cls2) {
        return (cls == Byte.TYPE && cls2 == Byte.class) || (cls == Short.TYPE && (cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || ((cls == Character.TYPE && (cls2 == Character.class || cls2 == Short.class || cls2 == Byte.class)) || ((cls == Integer.TYPE && (cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || ((cls == Long.TYPE && (cls2 == Long.class || cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || ((cls == Float.TYPE && (cls2 == Float.class || cls2 == Long.class || cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || ((cls == Double.TYPE && (cls2 == Double.class || cls2 == Float.class || cls2 == Long.class || cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || (cls == Boolean.TYPE && cls2 == Boolean.class))))));
    }

    public void a(byte[] bArr) throws Throwable {
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr), "utf-8"));
        try {
            try {
                HashMap<String, String[][]> map = null;
                for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                    String strSubstring = line.substring(0, 2);
                    String strSubstring2 = line.substring(2);
                    if (":P".equals(strSubstring)) {
                        arrayList.addAll(Arrays.asList(strSubstring2.split("#")));
                    } else if (":C".equals(strSubstring)) {
                        String str = (String) arrayList.get(Integer.parseInt(strSubstring2));
                        map = this.f1294b.get(str);
                        if (map == null) {
                            map = new HashMap<>();
                            this.f1294b.put(str, map);
                        }
                    } else {
                        String[] strArrSplit = strSubstring2.split("#");
                        String str2 = (String) arrayList.get(Integer.parseInt(strArrSplit[0]));
                        String[][] strArr = new String[Integer.parseInt(strArrSplit[1])][];
                        for (int i10 = 2; i10 < strArrSplit.length; i10++) {
                            String str3 = strArrSplit[i10].startsWith("+") ? "+" : null;
                            if (strArrSplit[i10].length() > 1) {
                                String[] strArrSplit2 = strArrSplit[i10].substring(1).split(",");
                                String[] strArr2 = new String[strArrSplit2.length + 1];
                                strArr2[0] = str3;
                                int i11 = 0;
                                while (i11 < strArrSplit2.length) {
                                    int i12 = i11 + 1;
                                    strArr2[i12] = (String) arrayList.get(Integer.parseInt(strArrSplit2[i11]));
                                    i11 = i12;
                                }
                                strArr[i10 - 2] = strArr2;
                            } else {
                                strArr[i10 - 2] = new String[]{str3};
                            }
                        }
                        map.put(str2, strArr);
                    }
                }
            } finally {
                bufferedReader.close();
            }
        } catch (Throwable unused) {
            this.f1294b.clear();
        }
    }

    public void a(Class<?> cls, Class<? extends y<?>> cls2) {
        try {
            y<?> yVarNewInstance = cls2.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (this.f1295c.get(cls) == null) {
                this.f1295c.put(cls, yVarNewInstance);
            }
        } catch (Throwable unused) {
        }
    }

    public boolean a(Object obj, Class<?> cls, String str, Object[] objArr, t tVar) throws Throwable {
        y<?> yVar = null;
        for (Class<?> superclass = cls; yVar == null && superclass != null; superclass = superclass.getSuperclass()) {
            yVar = this.f1295c.get(superclass);
        }
        if (yVar == null) {
            return false;
        }
        boolean[] zArr = new boolean[1];
        Object[] objArr2 = new Object[1];
        Throwable[] thArr = new Throwable[1];
        boolean zA = yVar.a(obj, cls, str, objArr, zArr, objArr2, thArr);
        if (zA) {
            Throwable th = thArr[0];
            if (th != null) {
                throw th;
            }
            if (!zArr[0]) {
                tVar.a(objArr2[0]);
            }
        }
        return zA;
    }

    public boolean[] a(Class<?>[] clsArr, Object[] objArr, boolean[] zArr) {
        zArr[0] = true;
        if (clsArr.length != objArr.length) {
            return null;
        }
        boolean[] zArr2 = new boolean[clsArr.length];
        for (int i10 = 0; i10 < objArr.length; i10++) {
            Object obj = objArr[i10];
            if (obj != null) {
                Class<?> cls = clsArr[i10];
                if (cls.isInterface() && (obj instanceof ab)) {
                    zArr2[i10] = true;
                    zArr[0] = false;
                } else {
                    Class<?> cls2 = obj.getClass();
                    if (!b(cls, cls2) && !cls.isAssignableFrom(cls2)) {
                        return null;
                    }
                    zArr2[i10] = false;
                }
            }
        }
        return zArr2;
    }

    public Object[] a(t tVar, Class<?>[] clsArr, Object[] objArr, boolean[] zArr) {
        Object[] objArr2 = new Object[zArr.length];
        for (int i10 = 0; i10 < zArr.length; i10++) {
            Object obj = objArr[i10];
            if (obj != null) {
                if (zArr[i10]) {
                    objArr2[i10] = tVar.a(obj, true, clsArr[i10]);
                } else {
                    objArr2[i10] = obj;
                }
            }
        }
        return objArr2;
    }

    /*  JADX ERROR: NoSuchElementException in pass: ReplaceNewArray
        java.util.NoSuchElementException
        	at java.base/java.util.TreeMap.key(TreeMap.java:1637)
        	at java.base/java.util.TreeMap.lastKey(TreeMap.java:309)
        	at jadx.core.dex.visitors.ReplaceNewArray.processNewArray(ReplaceNewArray.java:171)
        	at jadx.core.dex.visitors.ReplaceNewArray.processInsn(ReplaceNewArray.java:72)
        	at jadx.core.dex.visitors.ReplaceNewArray.visit(ReplaceNewArray.java:53)
        */
    public java.lang.reflect.Constructor a(java.lang.Class<?> r12, java.lang.Object[] r13, boolean[][] r14) throws java.lang.Throwable {
        /*
            r11 = this;
            java.util.HashMap<java.lang.String, java.util.HashMap<java.lang.String, java.lang.String[][]>> r0 = r11.f1294b
            java.lang.String r1 = r12.getName()
            java.lang.Object r0 = r0.get(r1)
            java.util.HashMap r0 = (java.util.HashMap) r0
            if (r0 == 0) goto L56
            java.lang.String r1 = "006Mjfej*fJejEj*jh"
            java.lang.String r1 = cn.fly.commons.a.m.a(r1)
            java.lang.Object r0 = r0.get(r1)
            java.lang.String[][] r0 = (java.lang.String[][]) r0
            if (r0 == 0) goto L56
            int r1 = r0.length
            r2 = 0
            r3 = 0
        L1f:
            if (r3 >= r1) goto L56
            r4 = r0[r3]
            int r5 = r4.length
            r6 = 1
            int r5 = r5 - r6
            int r7 = r13.length
            if (r5 != r7) goto L53
            int r5 = r13.length
            java.lang.Class[] r7 = new java.lang.Class[r5]
            r8 = 0
        L2d:
            if (r8 >= r5) goto L3f
            int r9 = r8 + 1
            r10 = r4[r9]
            java.lang.Class r10 = r11.a(r10)
            r7[r8] = r10
            if (r10 != 0) goto L3d
            r4 = 1
            goto L40
        L3d:
            r8 = r9
            goto L2d
        L3f:
            r4 = 0
        L40:
            if (r4 != 0) goto L53
            boolean[] r4 = new boolean[r6]
            boolean[] r5 = r11.a(r7, r13, r4)
            if (r5 == 0) goto L53
            r14[r2] = r5
            r14[r6] = r4
            java.lang.reflect.Constructor r12 = r12.getDeclaredConstructor(r7)
            return r12
        L53:
            int r3 = r3 + 1
            goto L1f
        L56:
            r12 = 0
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.fly.commons.cc.z.a(java.lang.Class, java.lang.Object[], boolean[][]):java.lang.reflect.Constructor");
    }

    /*  JADX ERROR: NoSuchElementException in pass: ReplaceNewArray
        java.util.NoSuchElementException
        	at java.base/java.util.TreeMap.key(TreeMap.java:1637)
        	at java.base/java.util.TreeMap.lastKey(TreeMap.java:309)
        	at jadx.core.dex.visitors.ReplaceNewArray.processNewArray(ReplaceNewArray.java:171)
        	at jadx.core.dex.visitors.ReplaceNewArray.processInsn(ReplaceNewArray.java:72)
        	at jadx.core.dex.visitors.ReplaceNewArray.visit(ReplaceNewArray.java:53)
        */
    public java.lang.reflect.Method a(java.lang.Class<?> r16, java.lang.String r17, boolean r18, java.lang.Object[] r19, boolean[][] r20) throws java.lang.Throwable {
        /*
            r15 = this;
            r0 = r15
            r1 = r17
            r2 = r19
            java.util.HashMap<java.lang.String, java.util.HashMap<java.lang.String, java.lang.String[][]>> r3 = r0.f1294b
            java.lang.String r4 = r16.getName()
            java.lang.Object r3 = r3.get(r4)
            java.util.HashMap r3 = (java.util.HashMap) r3
            if (r3 == 0) goto L6b
            java.lang.Object r3 = r3.get(r1)
            java.lang.String[][] r3 = (java.lang.String[][]) r3
            if (r3 == 0) goto L6b
            int r4 = r3.length
            r5 = 0
            r6 = 0
        L1e:
            if (r6 >= r4) goto L6b
            r7 = r3[r6]
            r8 = r7[r5]
            r9 = 1
            if (r8 == 0) goto L2b
            r8 = r18
            r10 = 1
            goto L2e
        L2b:
            r8 = r18
            r10 = 0
        L2e:
            if (r8 != r10) goto L32
            r10 = 1
            goto L33
        L32:
            r10 = 0
        L33:
            if (r10 == 0) goto L66
            int r10 = r7.length
            int r10 = r10 - r9
            int r11 = r2.length
            if (r10 != r11) goto L66
            int r10 = r2.length
            java.lang.Class[] r11 = new java.lang.Class[r10]
            r12 = 0
        L3e:
            if (r12 >= r10) goto L50
            int r13 = r12 + 1
            r14 = r7[r13]
            java.lang.Class r14 = r15.a(r14)
            r11[r12] = r14
            if (r14 != 0) goto L4e
            r7 = 1
            goto L51
        L4e:
            r12 = r13
            goto L3e
        L50:
            r7 = 0
        L51:
            if (r7 != 0) goto L66
            boolean[] r7 = new boolean[r9]
            boolean[] r10 = r15.a(r11, r2, r7)
            if (r10 == 0) goto L66
            r20[r5] = r10
            r20[r9] = r7
            r7 = r16
            java.lang.reflect.Method r1 = r7.getDeclaredMethod(r1, r11)
            return r1
        L66:
            r7 = r16
            int r6 = r6 + 1
            goto L1e
        L6b:
            r1 = 0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.fly.commons.cc.z.a(java.lang.Class, java.lang.String, boolean, java.lang.Object[], boolean[][]):java.lang.reflect.Method");
    }

    private Class<?> a(String str) {
        Class<?> cls = f1293a.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = this.f1296d.get(str);
        if (cls2 != null) {
            return cls2;
        }
        try {
            Class<?> cls3 = Class.forName(str);
            this.f1296d.put(str, cls3);
            return cls3;
        } catch (Throwable unused) {
            return null;
        }
    }
}
