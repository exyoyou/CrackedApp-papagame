package com.aggmoread.sdk.z.c.a.a.e.u;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<String> f5287a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Map<String, String> f5288b = new HashMap();

    public void a(List<String> list) {
        List<String> list2 = this.f5287a;
        if (list2 != null) {
            list2.clear();
        } else {
            this.f5287a = new ArrayList();
        }
        if (list != null) {
            this.f5287a.addAll(list);
        }
    }

    public String toString() {
        return "PluginGDTConfig{blackList=" + this.f5287a + ", data=" + this.f5288b + '}';
    }

    public void a(Map<String, String> map) {
        Map<String, String> map2 = this.f5288b;
        if (map2 != null) {
            map2.clear();
        } else {
            this.f5288b = new HashMap();
        }
        if (map != null) {
            this.f5288b.putAll(map);
        }
    }

    public boolean a() {
        List<String> list = this.f5287a;
        return list != null && list.contains("20102911");
    }
}
