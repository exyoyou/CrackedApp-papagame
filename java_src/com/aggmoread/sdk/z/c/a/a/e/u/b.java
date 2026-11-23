package com.aggmoread.sdk.z.c.a.a.e.u;

import com.aggmoread.sdk.z.c.a.a.e.e;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Map<Integer, List<String>> f5289a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Map<Integer, List<String>> f5290b = new HashMap();

    public boolean a(int i10) {
        List<String> list;
        try {
            if (this.f5289a.containsKey(Integer.valueOf(i10)) && (list = this.f5289a.get(Integer.valueOf(i10))) != null) {
                boolean z10 = !list.contains("20102911");
                e.a("need init " + z10);
                return z10;
            }
        } catch (Exception e10) {
            e.a("sgc n err " + e10.getMessage());
        }
        return true;
    }

    public String toString() {
        return "SDKPluginConfig{unInitList=" + this.f5289a + '}';
    }

    public boolean a(int i10, boolean z10) {
        List<String> list;
        try {
            if (this.f5290b.containsKey(Integer.valueOf(i10)) && (list = this.f5290b.get(Integer.valueOf(i10))) != null) {
                boolean zContains = list.contains("20102911");
                e.a("need init 1 " + zContains);
                return zContains;
            }
        } catch (Exception e10) {
            e.a("cnn err " + e10.getMessage());
        }
        return z10;
    }
}
