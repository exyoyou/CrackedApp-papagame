package com.facebook.imagepipeline.common;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class TooManyBitmapsException extends RuntimeException {
    public TooManyBitmapsException() {
    }

    public TooManyBitmapsException(String detailMessage) {
        super(detailMessage);
    }
}
