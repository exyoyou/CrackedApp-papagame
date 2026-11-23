package com.byazt.dna;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.haima.hmcp.proto.GSSDK;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_TOUCH_BEGIN_VALUE, 66})
public class t implements sl, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f13042c;
    public volatile sl tt;

    public t(sl slVar) {
        this.tt = slVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function functionA;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.tt != null ? this.tt : this.f13042c;
        }
        if (iIntValue == -4 && (functionA = n0.c.a(sparseArray.get(1))) != null) {
            this.tt = null;
            this.f13042c = functionA;
        }
        return null;
    }

    @Override // com.byazt.dna.sl
    public int getAdEventUploadBatch() {
        if (this.tt != null) {
            return this.tt.getAdEventUploadBatch();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        return ((Integer) this.f13042c.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.dna.sl
    public long getAdEventUploadInterval() {
        if (this.tt != null) {
            return this.tt.getAdEventUploadInterval();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        return ((Long) this.f13042c.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.dna.sl
    public int getAdLogExceptionBatch() {
        if (this.tt != null) {
            return this.tt.getAdLogExceptionBatch();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        return ((Integer) this.f13042c.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.dna.sl
    public String getAppLogUrl() {
        if (this.tt != null) {
            return this.tt.getAppLogUrl();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return (String) this.f13042c.apply(sparseArray);
    }

    @Override // com.byazt.dna.sl
    public boolean getDisable4TypeEncryptFallbackStatus() {
        if (this.tt != null) {
            return this.tt.getDisable4TypeEncryptFallbackStatus();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        return ((Boolean) this.f13042c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.dna.sl
    public String getETAppLogUrl() {
        if (this.tt != null) {
            return this.tt.getETAppLogUrl();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return (String) this.f13042c.apply(sparseArray);
    }

    @Override // com.byazt.dna.sl
    public int getMaxMemoryEventCount() {
        if (this.tt != null) {
            return this.tt.getMaxMemoryEventCount();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        return ((Integer) this.f13042c.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.dna.sl
    public int getStatsBatch() {
        if (this.tt != null) {
            return this.tt.getStatsBatch();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        return ((Integer) this.f13042c.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.dna.sl
    public String getStatsUrl() {
        if (this.tt != null) {
            return this.tt.getStatsUrl();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return (String) this.f13042c.apply(sparseArray);
    }

    @Override // com.byazt.dna.sl
    public boolean isCypherV4() {
        if (this.tt != null) {
            return this.tt.isCypherV4();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return ((Boolean) this.f13042c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.dna.sl
    public boolean isMiniEventUpload() {
        if (this.tt != null) {
            return this.tt.isMiniEventUpload();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return ((Boolean) this.f13042c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.dna.sl
    public boolean isOpenMonitor() {
        if (this.tt != null) {
            return this.tt.isOpenMonitor();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        return ((Boolean) this.f13042c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.dna.sl
    public boolean isUploadEventDebugInfo() {
        if (this.tt != null) {
            return this.tt.isUploadEventDebugInfo();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        return ((Boolean) this.f13042c.apply(sparseArray)).booleanValue();
    }

    public t(Function function) {
        this.f13042c = function;
    }
}
