package com.efs.sdk.base.core.util.a;

import androidx.annotation.NonNull;
import com.efs.sdk.base.http.HttpResponse;

/* JADX INFO: loaded from: classes9.dex */
public final class c extends com.efs.sdk.base.core.util.concurrent.d<HttpResponse> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b f26391a;

    c(@NonNull b bVar) {
        super(bVar);
        this.f26391a = bVar;
    }

    @NonNull
    public final HttpResponse b() {
        this.f26391a.f26388e = "post";
        return a();
    }
}
