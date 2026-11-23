package com.byazt.dna;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.haima.hmcp.proto.GSSDK;
import java.util.function.Function;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_TOUCH_BEGIN_VALUE, 34})
public class a implements n.c, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f13029c;
    public volatile n.c tt;

    public a(n.c cVar) {
        this.tt = cVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(0)).intValue() != 1) {
            return null;
        }
        this.tt.reportSensorData((JSONObject) sparseArray.get(1));
        return null;
    }

    @Override // com.byazt.dna.n.c
    public void reportSensorData(JSONObject jSONObject) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, jSONObject);
        this.f13029c.apply(sparseArray);
    }

    public a(Function function) {
        this.f13029c = function;
    }
}
