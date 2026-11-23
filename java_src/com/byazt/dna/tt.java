package com.byazt.dna;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.haima.hmcp.proto.GSSDK;
import java.util.Map;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_TOUCH_BEGIN_VALUE, 13})
public class tt implements c, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f13043c;
    public volatile c tt;

    public tt(c cVar) {
        this.tt = cVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function functionA;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.tt != null ? this.tt : this.f13043c;
        }
        if (iIntValue == -4 && (functionA = n0.c.a(sparseArray.get(1))) != null) {
            this.tt = null;
            this.f13043c = functionA;
        }
        return null;
    }

    @Override // com.byazt.dna.c
    public int getAgeGroup() {
        if (this.tt != null) {
            return this.tt.getAgeGroup();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 15);
        return ((Integer) this.f13043c.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.dna.c
    public String getAppChannel() {
        if (this.tt != null) {
            return this.tt.getAppChannel();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 26);
        return (String) this.f13043c.apply(sparseArray);
    }

    @Override // com.byazt.dna.c
    public String getAppId() {
        if (this.tt != null) {
            return this.tt.getAppId();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return (String) this.f13043c.apply(sparseArray);
    }

    @Override // com.byazt.dna.c
    public String getAppName() {
        if (this.tt != null) {
            return this.tt.getAppName();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return (String) this.f13043c.apply(sparseArray);
    }

    @Override // com.byazt.dna.c
    public String getAppVersion() {
        if (this.tt != null) {
            return this.tt.getAppVersion();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 21);
        return (String) this.f13043c.apply(sparseArray);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, java.util.function.Function] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v8 */
    @Override // com.byazt.dna.c
    public com.byazt.lz.c getCustomController() {
        ?? ttVar;
        if (this.tt != null) {
            return this.tt.getCustomController();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        ?? Apply = this.f13043c.apply(sparseArray);
        if (Apply != 0) {
            ttVar = Apply;
            ttVar = new com.byazt.lz.tt((Function) Apply);
        }
        ttVar = Apply;
        return (com.byazt.lz.c) ttVar;
    }

    @Override // com.byazt.dna.c
    public String getData() {
        if (this.tt != null) {
            return this.tt.getData();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        return (String) this.f13043c.apply(sparseArray);
    }

    @Override // com.byazt.dna.c
    public int[] getDirectDownloadNetworkType() {
        if (this.tt != null) {
            return this.tt.getDirectDownloadNetworkType();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        return (int[]) this.f13043c.apply(sparseArray);
    }

    @Override // com.byazt.dna.c
    public Object getExtra(String str) {
        if (this.tt != null) {
            return this.tt.getExtra(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, str);
        return this.f13043c.apply(sparseArray);
    }

    @Override // com.byazt.dna.c
    public Map getInitExtra() {
        if (this.tt != null) {
            return this.tt.getInitExtra();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 19);
        return (Map) this.f13043c.apply(sparseArray);
    }

    @Override // com.byazt.dna.c
    public String getKeywords() {
        if (this.tt != null) {
            return this.tt.getKeywords();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        return (String) this.f13043c.apply(sparseArray);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, java.util.function.Function] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v8 */
    @Override // com.byazt.dna.c
    public com.byazt.lz.a getMediationConfig() {
        ?? iVar;
        if (this.tt != null) {
            return this.tt.getMediationConfig();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 17);
        ?? Apply = this.f13043c.apply(sparseArray);
        if (Apply != 0) {
            iVar = Apply;
            iVar = new com.byazt.lz.i((Function) Apply);
        }
        iVar = Apply;
        return (com.byazt.lz.a) iVar;
    }

    @Override // com.byazt.dna.c
    public String getPackageName() {
        if (this.tt != null) {
            return this.tt.getPackageName();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 22);
        return (String) this.f13043c.apply(sparseArray);
    }

    @Override // com.byazt.dna.c
    public int getPluginUpdateConfig() {
        if (this.tt != null) {
            return this.tt.getPluginUpdateConfig();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 14);
        return ((Integer) this.f13043c.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.dna.c
    public String getSdkApiVersion() {
        if (this.tt != null) {
            return this.tt.getSdkApiVersion();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 24);
        return (String) this.f13043c.apply(sparseArray);
    }

    public Object getService(String str) {
        return com.byazt.ut.uj.getService(str, this);
    }

    @Override // com.byazt.dna.c
    public int getThemeStatus() {
        if (this.tt != null) {
            return this.tt.getThemeStatus();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 16);
        return ((Integer) this.f13043c.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.dna.c
    public int getTitleBarTheme() {
        if (this.tt != null) {
            return this.tt.getTitleBarTheme();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        return ((Integer) this.f13043c.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.dna.c
    public String getVersionCode() {
        if (this.tt != null) {
            return this.tt.getVersionCode();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 23);
        return (String) this.f13043c.apply(sparseArray);
    }

    @Override // com.byazt.dna.c
    public boolean isAllowShowNotify() {
        if (this.tt != null) {
            return this.tt.isAllowShowNotify();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        return ((Boolean) this.f13043c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.dna.c
    public boolean isDebug() {
        if (this.tt != null) {
            return this.tt.isDebug();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        return ((Boolean) this.f13043c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.dna.c
    public boolean isPaid() {
        if (this.tt != null) {
            return this.tt.isPaid();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        return ((Boolean) this.f13043c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.dna.c
    public boolean isPlugin() {
        if (this.tt != null) {
            return this.tt.isPlugin();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 25);
        return ((Boolean) this.f13043c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.dna.c
    public boolean isSupportMultiProcess() {
        if (this.tt != null) {
            return this.tt.isSupportMultiProcess();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Boolean) this.f13043c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.dna.c
    public boolean isUseMediation() {
        if (this.tt != null) {
            return this.tt.isUseMediation();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 18);
        return ((Boolean) this.f13043c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.dna.c
    public void updateInitParams(SparseArray sparseArray) {
        if (this.tt != null) {
            this.tt.updateInitParams(sparseArray);
            return;
        }
        SparseArray sparseArray2 = new SparseArray();
        sparseArray2.put(0, 20);
        sparseArray2.put(1, sparseArray);
        this.f13043c.apply(sparseArray2);
    }

    public tt(Function function) {
        this.f13043c = function;
    }
}
