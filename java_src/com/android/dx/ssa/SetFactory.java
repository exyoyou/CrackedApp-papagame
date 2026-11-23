package com.android.dx.ssa;

import com.android.dx.util.BitIntSet;
import com.android.dx.util.IntSet;
import com.android.dx.util.ListIntSet;

/* JADX INFO: loaded from: classes7.dex */
public final class SetFactory {
    private static final int DOMFRONT_SET_THRESHOLD_SIZE = 3072;
    private static final int INTERFERENCE_SET_THRESHOLD_SIZE = 3072;
    private static final int LIVENESS_SET_THRESHOLD_SIZE = 3072;

    static IntSet makeDomFrontSet(int i10) {
        return i10 <= 3072 ? new BitIntSet(i10) : new ListIntSet();
    }

    public static IntSet makeInterferenceSet(int i10) {
        return i10 <= 3072 ? new BitIntSet(i10) : new ListIntSet();
    }

    static IntSet makeLivenessSet(int i10) {
        return i10 <= 3072 ? new BitIntSet(i10) : new ListIntSet();
    }
}
