package com.facebook.imagepipeline.cache;

import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class m implements com.facebook.common.internal.l<u> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f27724a = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f27725b = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f27726c = TimeUnit.MINUTES.toMillis(5);

    private int b() {
        int iMin = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (iMin < 16777216) {
            return 1048576;
        }
        return iMin < 33554432 ? 2097152 : 4194304;
    }

    @Override // com.facebook.common.internal.l
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public u get() {
        int iB = b();
        return new u(iB, Integer.MAX_VALUE, iB, Integer.MAX_VALUE, iB / 8, f27726c);
    }
}
