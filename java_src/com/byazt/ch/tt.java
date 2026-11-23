package com.byazt.ch;

import android.util.SparseArray;
import java.util.Map;
import java.util.function.Function;
import n0.b;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1054, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f12417c;

    public tt(Function<SparseArray<Object>, Object> function) {
        this.f12417c = function == null ? com.byazt.rl.c.tt : function;
    }

    public Map<String, Object> a() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 266006);
        sparseArray.put(-99999985, Map.class);
        return (Map) this.f12417c.apply(sparseArray);
    }

    public boolean c() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 266001);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.f12417c.apply(sparseArray)).booleanValue();
    }

    public com.byazt.am.tt da() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 266101);
        sparseArray.put(-99999985, Object.class);
        Object objApply = this.f12417c.apply(sparseArray);
        if (b.a(objApply)) {
            return new com.byazt.am.tt(n0.c.a(objApply));
        }
        return null;
    }

    public boolean i() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 266009);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.f12417c.apply(sparseArray)).booleanValue();
    }

    public boolean n() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 266005);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.f12417c.apply(sparseArray)).booleanValue();
    }

    public float sl() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 266010);
        sparseArray.put(-99999985, Float.TYPE);
        return ((Float) this.f12417c.apply(sparseArray)).floatValue();
    }

    public boolean sp() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 266007);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.f12417c.apply(sparseArray)).booleanValue();
    }

    public float t() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 266011);
        sparseArray.put(-99999985, Float.TYPE);
        return ((Float) this.f12417c.apply(sparseArray)).floatValue();
    }

    public boolean tt() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 266002);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.f12417c.apply(sparseArray)).booleanValue();
    }

    public com.byazt.am.ve u() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 266102);
        sparseArray.put(-99999985, Object.class);
        return new com.byazt.am.ve(com.byazt.gxc.ve.c(this.f12417c.apply(sparseArray)));
    }

    public float uj() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 266004);
        sparseArray.put(-99999985, Float.TYPE);
        return ((Float) this.f12417c.apply(sparseArray)).floatValue();
    }

    public boolean ve() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 266003);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.f12417c.apply(sparseArray)).booleanValue();
    }

    public String x() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 266008);
        sparseArray.put(-99999985, String.class);
        return (String) this.f12417c.apply(sparseArray);
    }

    public String yp() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 266103);
        sparseArray.put(-99999985, String.class);
        return (String) this.f12417c.apply(sparseArray);
    }

    public int z() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 266104);
        sparseArray.put(-99999985, Integer.TYPE);
        return ((Integer) this.f12417c.apply(sparseArray)).intValue();
    }
}
