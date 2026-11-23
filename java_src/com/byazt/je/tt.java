package com.byazt.je;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 725, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PluginValueSet f15815c;

    public tt(SparseArray<Object> sparseArray) {
        this.f15815c = com.byazt.rl.c.c(sparseArray).tt();
    }

    public List<String> c() {
        return (List) this.f15815c.objectValue(262114, List.class);
    }

    public boolean n() {
        return this.f15815c.booleanValue(262118);
    }

    public List<String> tt() {
        return (List) this.f15815c.objectValue(262115, List.class);
    }

    public boolean uj() {
        return this.f15815c.booleanValue(262117);
    }

    public boolean ve() {
        return this.f15815c.booleanValue(262116);
    }
}
