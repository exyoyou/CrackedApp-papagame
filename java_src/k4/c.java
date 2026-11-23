package k4;

import android.graphics.Bitmap;
import com.facebook.cache.common.j;
import com.facebook.imagepipeline.nativecode.NativeRoundingFilter;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class c extends com.facebook.imagepipeline.request.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final boolean f92126e = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private com.facebook.cache.common.c f92127c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f92128d;

    public c() {
        this(true);
    }

    @Override // com.facebook.imagepipeline.request.a, com.facebook.imagepipeline.request.d
    @Nullable
    public com.facebook.cache.common.c a() {
        if (this.f92127c == null) {
            if (this.f92128d) {
                this.f92127c = new j("RoundAsCirclePostprocessor#AntiAliased");
            } else {
                this.f92127c = new j("RoundAsCirclePostprocessor");
            }
        }
        return this.f92127c;
    }

    @Override // com.facebook.imagepipeline.request.a
    public void e(Bitmap bitmap) {
        NativeRoundingFilter.toCircleFast(bitmap, this.f92128d);
    }

    public c(boolean enableAntiAliasing) {
        this.f92128d = enableAntiAliasing;
    }
}
