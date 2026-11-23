package com.facebook.imagepipeline.common;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public enum Priority {
    LOW,
    MEDIUM,
    HIGH;

    public static Priority getHigherPriority(Priority priority1, Priority priority2) {
        return priority1.ordinal() > priority2.ordinal() ? priority1 : priority2;
    }
}
