package com.byazt.dna;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.haima.hmcp.proto.GSSDK;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_TOUCH_BEGIN_VALUE, 121})
public class cu implements or, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f13030c;
    public volatile or tt;

    public cu(or orVar) {
        this.tt = orVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function functionA;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.tt != null ? this.tt : this.f13030c;
        }
        if (iIntValue == -4 && (functionA = n0.c.a(sparseArray.get(1))) != null) {
            this.tt = null;
            this.f13030c = functionA;
        }
        return null;
    }

    @Override // com.byazt.dna.or
    public String get(String str) {
        if (this.tt != null) {
            return this.tt.get(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, str);
        return (String) this.f13030c.apply(sparseArray);
    }

    @Override // com.byazt.dna.or
    public boolean getBoolean(String str) {
        if (this.tt != null) {
            return this.tt.getBoolean(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, str);
        return ((Boolean) this.f13030c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.dna.or
    public int getInt(String str) {
        if (this.tt != null) {
            return this.tt.getInt(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, str);
        return ((Integer) this.f13030c.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.dna.or
    public long getLong(String str) {
        if (this.tt != null) {
            return this.tt.getLong(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, str);
        return ((Long) this.f13030c.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.dna.or
    public void set(String str, String str2) {
        if (this.tt != null) {
            this.tt.set(str, str2);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        this.f13030c.apply(sparseArray);
    }

    public cu(Function function) {
        this.f13030c = function;
    }
}
