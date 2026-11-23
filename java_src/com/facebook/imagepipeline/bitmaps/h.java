package com.facebook.imagepipeline.bitmaps;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class h implements com.facebook.common.references.g<Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static h f27624a;

    private h() {
    }

    public static h a() {
        if (f27624a == null) {
            f27624a = new h();
        }
        return f27624a;
    }

    @Override // com.facebook.common.references.g
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void release(Bitmap value) {
        value.recycle();
    }
}
