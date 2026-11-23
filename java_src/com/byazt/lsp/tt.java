package com.byazt.lsp;

import android.util.SparseArray;
import java.util.function.Function;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1405, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f16771c;

    public tt(Function<SparseArray<Object>, Object> function) {
        this.f16771c = function == null ? com.byazt.rl.c.tt : function;
    }

    public void c(JSONObject jSONObject) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 144101);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, jSONObject);
        this.f16771c.apply(sparseArray);
    }

    public void tt(JSONObject jSONObject) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 144103);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, jSONObject);
        this.f16771c.apply(sparseArray);
    }

    public void ve(JSONObject jSONObject) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(-99999987, 144104);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(0, jSONObject);
        this.f16771c.apply(sparseArray);
    }

    public JSONObject c() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 144102);
        sparseArray.put(-99999985, JSONObject.class);
        return (JSONObject) this.f16771c.apply(sparseArray);
    }

    public void tt() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 144105);
        sparseArray.put(-99999985, Void.class);
        this.f16771c.apply(sparseArray);
    }
}
