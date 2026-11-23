package com.byazt.je;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 725, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PluginValueSet f15816c;

    public ve(SparseArray<Object> sparseArray) {
        this.f15816c = com.byazt.rl.c.c(sparseArray).tt();
    }

    public String a() {
        return (String) this.f15816c.objectValue(265005, String.class);
    }

    public Map<String, String> c() {
        return (Map) this.f15816c.objectValue(265007, Map.class);
    }

    public int n() {
        return this.f15816c.intValue(265004);
    }

    public String sp() {
        return (String) this.f15816c.objectValue(265006, String.class);
    }

    public String tt() {
        return (String) this.f15816c.objectValue(265001, String.class);
    }

    public String uj() {
        return (String) this.f15816c.objectValue(265003, String.class);
    }

    public String ve() {
        return (String) this.f15816c.objectValue(265002, String.class);
    }
}
