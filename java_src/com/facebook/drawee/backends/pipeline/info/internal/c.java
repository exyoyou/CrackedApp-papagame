package com.facebook.drawee.backends.pipeline.info.internal;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;
import q3.h;
import q3.j;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class c implements q3.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f27040a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f27041b;

    public c(j imagePerfState, h imagePerfMonitor) {
        this.f27040a = imagePerfState;
        this.f27041b = imagePerfMonitor;
    }

    @Override // q3.c
    public void a(String controllerId, int imageOrigin, boolean successful, @Nullable String ultimateProducerName) {
        this.f27040a.v(imageOrigin);
        this.f27040a.E(ultimateProducerName);
        this.f27041b.b(this.f27040a, 1);
    }
}
