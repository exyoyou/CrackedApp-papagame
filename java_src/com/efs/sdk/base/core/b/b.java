package com.efs.sdk.base.core.b;

import androidx.annotation.Nullable;
import com.efs.sdk.base.core.util.Log;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes9.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ConcurrentHashMap<Byte, e> f26251a = new ConcurrentHashMap<>();

    @Nullable
    public final e a(byte b10) {
        if (!this.f26251a.containsKey(Byte.valueOf(b10))) {
            if (b10 == 1) {
                this.f26251a.putIfAbsent(Byte.valueOf(b10), new g());
            } else if (b10 != 2) {
                Log.w("efs.cache", "Cache module not support protocol ".concat(String.valueOf((int) b10)));
            } else {
                this.f26251a.putIfAbsent(Byte.valueOf(b10), new d());
            }
        }
        return this.f26251a.get(Byte.valueOf(b10));
    }
}
