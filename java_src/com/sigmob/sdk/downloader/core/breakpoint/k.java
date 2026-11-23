package com.sigmob.sdk.downloader.core.breakpoint;

import android.util.SparseArray;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap<String, Integer> f80420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SparseArray<String> f80421b;

    k() {
        this(new HashMap(), new SparseArray());
    }

    public Integer a(com.sigmob.sdk.downloader.f task) {
        Integer num = this.f80420a.get(b(task));
        if (num != null) {
            return num;
        }
        return null;
    }

    String b(com.sigmob.sdk.downloader.f task) {
        return task.i() + task.h() + task.d();
    }

    k(HashMap<String, Integer> keyToIdMap, SparseArray<String> idToKeyMap) {
        this.f80420a = keyToIdMap;
        this.f80421b = idToKeyMap;
    }

    public void a(int id2) {
        String str = this.f80421b.get(id2);
        if (str != null) {
            this.f80420a.remove(str);
            this.f80421b.remove(id2);
        }
    }

    public void a(com.sigmob.sdk.downloader.f task, int id2) {
        String strB = b(task);
        this.f80420a.put(strB, Integer.valueOf(id2));
        this.f80421b.put(id2, strB);
    }
}
