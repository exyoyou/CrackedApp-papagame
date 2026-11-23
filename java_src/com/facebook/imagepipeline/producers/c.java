package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.producers.v;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public abstract class c<FETCH_STATE extends v> implements l0<FETCH_STATE> {
    @Override // com.facebook.imagepipeline.producers.l0
    public void a(FETCH_STATE fetchState, int byteSize) {
    }

    @Override // com.facebook.imagepipeline.producers.l0
    public boolean d(FETCH_STATE fetchState) {
        return true;
    }

    @Override // com.facebook.imagepipeline.producers.l0
    @Nullable
    public Map<String, String> e(FETCH_STATE fetchState, int byteSize) {
        return null;
    }
}
