package com.byazt.whk;

import android.content.Context;
import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import java.util.function.Function;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 908, 15})
public class uj implements ve, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f21571c;
    public volatile ve tt;

    public uj(ve veVar) {
        this.tt = veVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function functionA;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.tt != null ? this.tt : this.f21571c;
        }
        if (iIntValue == -4 && (functionA = n0.c.a(sparseArray.get(1))) != null) {
            this.tt = null;
            this.f21571c = functionA;
        }
        return null;
    }

    @Override // com.byazt.whk.ve
    public void init(Context context, Function function) {
        if (this.tt != null) {
            this.tt.init(context, function);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, context);
        sparseArray.put(2, function);
        this.f21571c.apply(sparseArray);
    }

    @Override // com.byazt.whk.ve
    public boolean isPitayaEnvAvailable() {
        if (this.tt != null) {
            return this.tt.isPitayaEnvAvailable();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return ((Boolean) this.f21571c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.whk.ve
    public boolean isPitayaInitSuccess() {
        if (this.tt != null) {
            return this.tt.isPitayaInitSuccess();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Boolean) this.f21571c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.whk.ve
    public void onAppLogEvent(String str, JSONObject jSONObject) {
        if (this.tt != null) {
            this.tt.onAppLogEvent(str, jSONObject);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        sparseArray.put(1, str);
        sparseArray.put(2, jSONObject);
        this.f21571c.apply(sparseArray);
    }

    @Override // com.byazt.whk.ve
    public void queryPackage(String str, Function function) {
        if (this.tt != null) {
            this.tt.queryPackage(str, function);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        sparseArray.put(1, str);
        sparseArray.put(2, function);
        this.f21571c.apply(sparseArray);
    }

    @Override // com.byazt.whk.ve
    public void runTask(String str, JSONObject jSONObject, Function function) {
        if (this.tt != null) {
            this.tt.runTask(str, jSONObject, function);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, str);
        sparseArray.put(2, jSONObject);
        sparseArray.put(3, function);
        this.f21571c.apply(sparseArray);
    }

    public uj(Function function) {
        this.f21571c = function;
    }
}
