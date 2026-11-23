package com.byazt.dna;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.haima.hmcp.proto.GSSDK;
import java.util.function.Function;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_TOUCH_BEGIN_VALUE, 130})
public class m implements z, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f13035c;
    public volatile z tt;

    public m(z zVar) {
        this.tt = zVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function functionA;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.tt != null ? this.tt : this.f13035c;
        }
        if (iIntValue == -4 && (functionA = n0.c.a(sparseArray.get(1))) != null) {
            this.tt = null;
            this.f13035c = functionA;
        }
        return null;
    }

    @Override // com.byazt.dna.z
    public void onAdEventReport(String str, String str2, String str3, String str4) {
        if (this.tt != null) {
            this.tt.onAdEventReport(str, str2, str3, str4);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        sparseArray.put(3, str3);
        sparseArray.put(4, str4);
        this.f13035c.apply(sparseArray);
    }

    @Override // com.byazt.dna.z
    public void onAppLogMiscEvent(String str, JSONObject jSONObject) {
        if (this.tt != null) {
            this.tt.onAppLogMiscEvent(str, jSONObject);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, str);
        sparseArray.put(2, jSONObject);
        this.f13035c.apply(sparseArray);
    }

    @Override // com.byazt.dna.z
    public void onExceptionEvent(String str, JSONObject jSONObject, Throwable th) {
        if (this.tt != null) {
            this.tt.onExceptionEvent(str, jSONObject, th);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, str);
        sparseArray.put(2, jSONObject);
        sparseArray.put(3, th);
        this.f13035c.apply(sparseArray);
    }

    @Override // com.byazt.dna.z
    public void onStatsEvent(String str, JSONObject jSONObject) {
        if (this.tt != null) {
            this.tt.onStatsEvent(str, jSONObject);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, str);
        sparseArray.put(2, jSONObject);
        this.f13035c.apply(sparseArray);
    }

    public m(Function function) {
        this.f13035c = function;
    }

    @Override // com.byazt.dna.z
    public void onAdEventReport(String str, String str2, String str3, String str4, String str5, JSONObject jSONObject, com.byazt.ya.c cVar) {
        com.byazt.ya.c ttVar = cVar;
        if (this.tt != null) {
            this.tt.onAdEventReport(str, str2, str3, str4, str5, jSONObject, cVar);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        sparseArray.put(3, str3);
        sparseArray.put(4, str4);
        sparseArray.put(5, str5);
        sparseArray.put(6, jSONObject);
        if (ttVar != null) {
            ttVar = new com.byazt.ya.tt(ttVar);
        }
        sparseArray.put(7, ttVar);
        this.f13035c.apply(sparseArray);
    }

    @Override // com.byazt.dna.z
    public void onStatsEvent(String str, JSONObject jSONObject, JSONObject jSONObject2) {
        if (this.tt != null) {
            this.tt.onStatsEvent(str, jSONObject, jSONObject2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, str);
        sparseArray.put(2, jSONObject);
        sparseArray.put(3, jSONObject2);
        this.f13035c.apply(sparseArray);
    }
}
