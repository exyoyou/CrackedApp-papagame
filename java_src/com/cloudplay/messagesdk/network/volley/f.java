package com.cloudplay.messagesdk.network.volley;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes9.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f24046a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<String, String> f24047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<d> f24048c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f24049d;

    @Deprecated
    public f(int i10, byte[] bArr, Map<String, String> map, boolean z10, long j10) {
        this(i10, bArr, map, a(map), z10, j10);
    }

    private static Map<String, String> a(List<d> list) {
        if (list == null) {
            return null;
        }
        if (list.isEmpty()) {
            return Collections.emptyMap();
        }
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (d dVar : list) {
            treeMap.put(dVar.a(), dVar.b());
        }
        return treeMap;
    }

    public f(int i10, byte[] bArr, boolean z10, long j10, List<d> list) {
        this(i10, bArr, a(list), list, z10, j10);
    }

    @Deprecated
    public f(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, false, 0L);
    }

    private f(int i10, byte[] bArr, Map<String, String> map, List<d> list, boolean z10, long j10) {
        this.f24046a = bArr;
        this.f24047b = map;
        if (list == null) {
            this.f24048c = null;
        } else {
            this.f24048c = Collections.unmodifiableList(list);
        }
        this.f24049d = z10;
    }

    private static List<d> a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new d(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }
}
