package com.byazt.dna;

import android.content.Context;
import android.os.Looper;
import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.haima.hmcp.proto.GSSDK;
import java.util.function.Function;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_TOUCH_BEGIN_VALUE, 512})
public class d implements h, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f13031c;
    public volatile h tt;

    public d(h hVar) {
        this.tt = hVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function functionA;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.tt != null ? this.tt : this.f13031c;
        }
        if (iIntValue == -4 && (functionA = n0.c.a(sparseArray.get(1))) != null) {
            this.tt = null;
            this.f13031c = functionA;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.lang.Object, java.util.function.Function] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v9 */
    @Override // com.byazt.dna.h
    public com.byazt.fk.sp createTTLiveVideoPlayer(Context context, boolean z10, long j10, JSONObject jSONObject, Looper looper) {
        ?? iVar;
        if (this.tt != null) {
            return this.tt.createTTLiveVideoPlayer(context, z10, j10, jSONObject, looper);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, context);
        sparseArray.put(2, Boolean.valueOf(z10));
        sparseArray.put(3, Long.valueOf(j10));
        sparseArray.put(4, jSONObject);
        sparseArray.put(5, looper);
        ?? Apply = this.f13031c.apply(sparseArray);
        if (Apply != 0) {
            iVar = Apply;
            iVar = new com.byazt.fk.i((Function) Apply);
        }
        iVar = Apply;
        return (com.byazt.fk.sp) iVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, java.util.function.Function] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v7 */
    @Override // com.byazt.dna.h
    public com.byazt.fk.sp createTTVideoPlayer(Context context, String str) {
        ?? iVar;
        if (this.tt != null) {
            return this.tt.createTTVideoPlayer(context, str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, context);
        sparseArray.put(2, str);
        ?? Apply = this.f13031c.apply(sparseArray);
        if (Apply != 0) {
            iVar = Apply;
            iVar = new com.byazt.fk.i((Function) Apply);
        }
        iVar = Apply;
        return (com.byazt.fk.sp) iVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, java.util.function.Function] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v8 */
    @Override // com.byazt.dna.h
    public com.byazt.fk.c createVideoCacheDir() {
        ?? ttVar;
        if (this.tt != null) {
            return this.tt.createVideoCacheDir();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        ?? Apply = this.f13031c.apply(sparseArray);
        if (Apply != 0) {
            ttVar = Apply;
            ttVar = new com.byazt.fk.tt((Function) Apply);
        }
        ttVar = Apply;
        return (com.byazt.fk.c) ttVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, java.util.function.Function] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v8 */
    @Override // com.byazt.dna.h
    public com.byazt.fk.da createVideoPreload() {
        ?? tVar;
        if (this.tt != null) {
            return this.tt.createVideoPreload();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        ?? Apply = this.f13031c.apply(sparseArray);
        if (Apply != 0) {
            tVar = Apply;
            tVar = new com.byazt.fk.t((Function) Apply);
        }
        tVar = Apply;
        return (com.byazt.fk.da) tVar;
    }

    @Override // com.byazt.dna.h
    public int getLiveSupportCode() {
        if (this.tt != null) {
            return this.tt.getLiveSupportCode();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        return ((Integer) this.f13031c.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.dna.h
    public boolean isTTVideoOk() {
        if (this.tt != null) {
            return this.tt.isTTVideoOk();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return ((Boolean) this.f13031c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.dna.h
    public void openDebugLog(boolean z10) {
        if (this.tt != null) {
            this.tt.openDebugLog(z10);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        sparseArray.put(1, Boolean.valueOf(z10));
        this.f13031c.apply(sparseArray);
    }

    @Override // com.byazt.dna.h
    public void preloadTTVideo(Context context, String str, int i10, String[] strArr, long[] jArr, boolean z10) {
        if (this.tt != null) {
            this.tt.preloadTTVideo(context, str, i10, strArr, jArr, z10);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, context);
        sparseArray.put(2, str);
        sparseArray.put(3, Integer.valueOf(i10));
        sparseArray.put(4, strArr);
        sparseArray.put(5, jArr);
        sparseArray.put(6, Boolean.valueOf(z10));
        this.f13031c.apply(sparseArray);
    }

    public d(Function function) {
        this.f13031c = function;
    }
}
