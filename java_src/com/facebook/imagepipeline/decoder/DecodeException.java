package com.facebook.imagepipeline.decoder;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class DecodeException extends RuntimeException {
    private final com.facebook.imagepipeline.image.e mEncodedImage;

    public DecodeException(String message, com.facebook.imagepipeline.image.e encodedImage) {
        super(message);
        this.mEncodedImage = encodedImage;
    }

    public com.facebook.imagepipeline.image.e getEncodedImage() {
        return this.mEncodedImage;
    }

    public DecodeException(String message, Throwable t10, com.facebook.imagepipeline.image.e encodedImage) {
        super(message, t10);
        this.mEncodedImage = encodedImage;
    }
}
