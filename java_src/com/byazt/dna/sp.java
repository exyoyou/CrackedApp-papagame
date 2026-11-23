package com.byazt.dna;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.haima.hmcp.proto.GSSDK;
import java.util.function.Function;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_TOUCH_BEGIN_VALUE, 91})
public class sp implements n.tt, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f13041c;
    public volatile n.tt tt;

    public sp(n.tt ttVar) {
        this.tt = ttVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == 1) {
            this.tt.setCryptInitStatus(((Long) sparseArray.get(1)).longValue(), ((Boolean) sparseArray.get(2)).booleanValue());
            return null;
        }
        if (iIntValue != 2) {
            if (iIntValue != 3) {
                return null;
            }
            return Long.valueOf(this.tt.getArmorFlags());
        }
        this.tt.reportSoftDecData((String) sparseArray.get(1), (JSONObject) sparseArray.get(2));
        return null;
    }

    @Override // com.byazt.dna.n.tt
    public long getArmorFlags() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Long) this.f13041c.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.dna.n.tt
    public void reportSoftDecData(String str, JSONObject jSONObject) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, str);
        sparseArray.put(2, jSONObject);
        this.f13041c.apply(sparseArray);
    }

    @Override // com.byazt.dna.n.tt
    public void setCryptInitStatus(long j10, boolean z10) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, Long.valueOf(j10));
        sparseArray.put(2, Boolean.valueOf(z10));
        this.f13041c.apply(sparseArray);
    }

    public sp(Function function) {
        this.f13041c = function;
    }
}
