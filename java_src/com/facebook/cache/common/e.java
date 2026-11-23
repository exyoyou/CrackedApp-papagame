package com.facebook.cache.common;

import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class e extends j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final Object f26720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Uri f26721d;

    public e(String key, @Nullable Object callerContext, Uri sourceUri) {
        super(key);
        this.f26720c = callerContext;
        this.f26721d = sourceUri;
    }

    @Nullable
    public Object d() {
        return this.f26720c;
    }

    public Uri e() {
        return this.f26721d;
    }
}
