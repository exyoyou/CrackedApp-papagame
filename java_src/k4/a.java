package k4;

import android.content.Context;
import android.graphics.Bitmap;
import com.facebook.cache.common.j;
import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class a extends com.facebook.imagepipeline.request.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final boolean f92116g = h4.c.b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f92117h = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f92118c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f92119d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f92120e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private com.facebook.cache.common.c f92121f;

    public a(final int blurRadius, final Context context, final int iterations) {
        i.d(Boolean.valueOf(blurRadius > 0 && blurRadius <= 25));
        i.d(Boolean.valueOf(iterations > 0));
        i.i(context);
        this.f92118c = iterations;
        this.f92120e = blurRadius;
        this.f92119d = context;
    }

    @Override // com.facebook.imagepipeline.request.a, com.facebook.imagepipeline.request.d
    @Nullable
    public com.facebook.cache.common.c a() {
        if (this.f92121f == null) {
            this.f92121f = new j(f92116g ? String.format(null, "IntrinsicBlur;%d", Integer.valueOf(this.f92120e)) : String.format(null, "IterativeBoxBlur;%d;%d", Integer.valueOf(this.f92118c), Integer.valueOf(this.f92120e)));
        }
        return this.f92121f;
    }

    @Override // com.facebook.imagepipeline.request.a
    public void e(final Bitmap bitmap) {
        h4.b.b(bitmap, this.f92118c, this.f92120e);
    }

    @Override // com.facebook.imagepipeline.request.a
    public void f(final Bitmap destBitmap, final Bitmap sourceBitmap) throws Throwable {
        if (f92116g) {
            h4.c.a(destBitmap, sourceBitmap, this.f92119d, this.f92120e);
        } else {
            super.f(destBitmap, sourceBitmap);
        }
    }

    public a(final int blurRadius, final Context context) {
        this(blurRadius, context, 3);
    }
}
