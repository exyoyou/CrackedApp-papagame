package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class b0 {
    static int a(final int offset, final int count, final int memorySize) {
        return Math.min(Math.max(0, memorySize - offset), count);
    }

    static void b(final int offset, final int otherLength, final int otherOffset, final int count, final int memorySize) {
        com.facebook.common.internal.i.d(Boolean.valueOf(count >= 0));
        com.facebook.common.internal.i.d(Boolean.valueOf(offset >= 0));
        com.facebook.common.internal.i.d(Boolean.valueOf(otherOffset >= 0));
        com.facebook.common.internal.i.d(Boolean.valueOf(offset + count <= memorySize));
        com.facebook.common.internal.i.d(Boolean.valueOf(otherOffset + count <= otherLength));
    }
}
