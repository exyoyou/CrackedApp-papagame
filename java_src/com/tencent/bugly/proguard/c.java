package com.tencent.bugly.proguard;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected HashMap<String, HashMap<String, byte[]>> f83577a = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected HashMap<String, Object> f83578b = new HashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HashMap<String, Object> f83581e = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f83579c = "GBK";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    k f83580d = new k();

    c() {
    }

    public void a(String str) {
        this.f83579c = str;
    }

    public <T> void a(String str, T t10) {
        if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        }
        if (t10 == null) {
            throw new IllegalArgumentException("put value can not is null");
        }
        if (t10 instanceof Set) {
            throw new IllegalArgumentException("can not support Set");
        }
        l lVar = new l();
        lVar.a(this.f83579c);
        lVar.a(t10, 0);
        byte[] bArrA = n.a(lVar.f83610a);
        HashMap<String, byte[]> map = new HashMap<>(1);
        ArrayList arrayList = new ArrayList(1);
        a((ArrayList<String>) arrayList, t10);
        map.put(a.a(arrayList), bArrA);
        this.f83581e.remove(str);
        this.f83577a.put(str, map);
    }

    private static void a(ArrayList<String> arrayList, Object obj) {
        while (true) {
            if (obj.getClass().isArray()) {
                if (obj.getClass().getComponentType().toString().equals(MethodReflectParams.BYTE)) {
                    if (Array.getLength(obj) > 0) {
                        arrayList.add("java.util.List");
                        obj = Array.get(obj, 0);
                    } else {
                        arrayList.add("Array");
                        arrayList.add("?");
                        return;
                    }
                } else {
                    throw new IllegalArgumentException("only byte[] is supported");
                }
            } else if (!(obj instanceof Array)) {
                if (obj instanceof List) {
                    arrayList.add("java.util.List");
                    List list = (List) obj;
                    if (list.size() > 0) {
                        obj = list.get(0);
                    } else {
                        arrayList.add("?");
                        return;
                    }
                } else if (obj instanceof Map) {
                    arrayList.add("java.util.Map");
                    Map map = (Map) obj;
                    if (map.size() > 0) {
                        Object next = map.keySet().iterator().next();
                        obj = map.get(next);
                        arrayList.add(next.getClass().getName());
                    } else {
                        arrayList.add("?");
                        arrayList.add("?");
                        return;
                    }
                } else {
                    arrayList.add(obj.getClass().getName());
                    return;
                }
            } else {
                throw new IllegalArgumentException("can not support Array, please use List");
            }
        }
    }

    public byte[] a() {
        l lVar = new l(0);
        lVar.a(this.f83579c);
        lVar.a((Map) this.f83577a, 0);
        return n.a(lVar.f83610a);
    }

    public void a(byte[] bArr) {
        this.f83580d.a(bArr);
        this.f83580d.a(this.f83579c);
        HashMap map = new HashMap(1);
        HashMap map2 = new HashMap(1);
        map2.put("", new byte[0]);
        map.put("", map2);
        this.f83577a = this.f83580d.a((Map) map, 0, false);
    }
}
