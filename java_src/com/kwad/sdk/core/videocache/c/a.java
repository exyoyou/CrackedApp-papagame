package com.kwad.sdk.core.videocache.c;

import android.content.Context;
import com.kwad.sdk.core.videocache.f;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private static f baG;

    public static f b(Context context, int i10, int i11) {
        f fVar = baG;
        if (fVar != null) {
            return fVar;
        }
        f fVarC = c(context, i10, i11);
        baG = fVarC;
        return fVarC;
    }

    private static f c(Context context, int i10, int i11) {
        return new f.a(context).aO(536870912L).eN(i10).eO(i11).OY();
    }

    public static f cm(Context context) {
        return b(context, 0, 0);
    }
}
