package k4;

import android.graphics.Bitmap;
import com.facebook.cache.common.j;
import com.facebook.imagepipeline.nativecode.NativeRoundingFilter;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class e extends com.facebook.imagepipeline.request.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private com.facebook.cache.common.c f92133c;

    @Override // com.facebook.imagepipeline.request.a, com.facebook.imagepipeline.request.d
    @Nullable
    public com.facebook.cache.common.c a() {
        if (this.f92133c == null) {
            this.f92133c = new j("RoundedCornersPostprocessor");
        }
        return this.f92133c;
    }

    @Override // com.facebook.imagepipeline.request.a
    public void e(Bitmap bitmap) {
        int iMin = Math.min(bitmap.getHeight(), bitmap.getWidth());
        NativeRoundingFilter.a(bitmap, iMin / 2, iMin / 3, iMin / 4, iMin / 5);
    }
}
