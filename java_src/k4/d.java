package k4;

import android.graphics.Bitmap;
import com.facebook.cache.common.j;
import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class d extends com.facebook.imagepipeline.request.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final boolean f92129e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final boolean f92130f = h4.d.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private com.facebook.cache.common.c f92131c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f92132d;

    public d() {
        this(true);
    }

    @Override // com.facebook.imagepipeline.request.a, com.facebook.imagepipeline.request.d
    @Nullable
    public com.facebook.cache.common.c a() {
        if (this.f92131c == null) {
            if (f92130f) {
                this.f92131c = new j("XferRoundFilter");
            } else {
                this.f92131c = new j("InPlaceRoundFilter");
            }
        }
        return this.f92131c;
    }

    @Override // com.facebook.imagepipeline.request.a
    public void e(Bitmap bitmap) {
        h4.a.a(bitmap);
    }

    @Override // com.facebook.imagepipeline.request.a
    public void f(Bitmap destBitmap, Bitmap sourceBitmap) {
        i.i(destBitmap);
        i.i(sourceBitmap);
        if (f92130f) {
            h4.d.b(destBitmap, sourceBitmap, this.f92132d);
        } else {
            super.f(destBitmap, sourceBitmap);
        }
    }

    public d(boolean enableAntiAliasing) {
        this.f92132d = enableAntiAliasing;
    }
}
