package com.byazt.je;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 725, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PluginValueSet f15814c;

    public c(SparseArray<Object> sparseArray) {
        this.f15814c = com.byazt.rl.c.c(sparseArray).tt();
    }

    public JSONObject a() {
        return (JSONObject) this.f15814c.objectValue(264106, JSONObject.class);
    }

    public String c() {
        return (String) this.f15814c.objectValue(264101, String.class);
    }

    public boolean da() {
        return this.f15814c.booleanValue(264110);
    }

    public boolean i() {
        return this.f15814c.booleanValue(264109);
    }

    public boolean n() {
        return this.f15814c.booleanValue(264105);
    }

    public String sl() {
        return (String) this.f15814c.objectValue(264111, String.class);
    }

    public String sp() {
        return (String) this.f15814c.objectValue(264107, String.class);
    }

    public boolean tt() {
        return this.f15814c.booleanValue(264102);
    }

    public Map<String, Object> uj() {
        return (Map) this.f15814c.objectValue(264104, Map.class);
    }

    public ve ve() {
        SparseArray sparseArray = (SparseArray) this.f15814c.objectValue(264103, SparseArray.class);
        if (sparseArray == null) {
            return null;
        }
        return new ve(sparseArray);
    }

    public boolean x() {
        return this.f15814c.booleanValue(264108);
    }
}
