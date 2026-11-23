package com.facebook.imagepipeline.request;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public abstract class b extends a implements e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private f f28753c;

    @Nullable
    private synchronized f g() {
        return this.f28753c;
    }

    @Override // com.facebook.imagepipeline.request.e
    public synchronized void c(f runner) {
        this.f28753c = runner;
    }

    public void update() {
        f fVarG = g();
        if (fVarG != null) {
            fVarG.update();
        }
    }
}
