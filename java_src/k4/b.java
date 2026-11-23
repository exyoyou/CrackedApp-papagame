package k4;

import android.graphics.Bitmap;
import com.facebook.cache.common.j;
import com.facebook.common.internal.i;
import com.facebook.imagepipeline.nativecode.NativeBlurFilter;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class b extends com.facebook.imagepipeline.request.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f92122f = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f92123c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f92124d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private com.facebook.cache.common.c f92125e;

    public b(int blurRadius) {
        this(3, blurRadius);
    }

    @Override // com.facebook.imagepipeline.request.a, com.facebook.imagepipeline.request.d
    @Nullable
    public com.facebook.cache.common.c a() {
        if (this.f92125e == null) {
            this.f92125e = new j(String.format(null, "i%dr%d", Integer.valueOf(this.f92123c), Integer.valueOf(this.f92124d)));
        }
        return this.f92125e;
    }

    @Override // com.facebook.imagepipeline.request.a
    public void e(Bitmap bitmap) {
        NativeBlurFilter.a(bitmap, this.f92123c, this.f92124d);
    }

    public b(int iterations, int blurRadius) {
        i.d(Boolean.valueOf(iterations > 0));
        i.d(Boolean.valueOf(blurRadius > 0));
        this.f92123c = iterations;
        this.f92124d = blurRadius;
    }
}
