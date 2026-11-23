package l4;

import com.facebook.imagepipeline.core.l;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class f implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f93926a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f93927b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final d f93928c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private final Integer f93929d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f93930e;

    public f(final int maxBitmapSize, final boolean useDownSamplingRatio, @Nullable final d primaryImageTranscoderFactory, @Nullable final Integer imageTranscoderType, final boolean ensureTranscoderLibraryLoaded) {
        this.f93926a = maxBitmapSize;
        this.f93927b = useDownSamplingRatio;
        this.f93928c = primaryImageTranscoderFactory;
        this.f93929d = imageTranscoderType;
        this.f93930e = ensureTranscoderLibraryLoaded;
    }

    @Nullable
    private c a(com.facebook.imageformat.c imageFormat, boolean isResizingEnabled) {
        d dVar = this.f93928c;
        if (dVar == null) {
            return null;
        }
        return dVar.createImageTranscoder(imageFormat, isResizingEnabled);
    }

    @Nullable
    private c b(com.facebook.imageformat.c imageFormat, boolean isResizingEnabled) {
        Integer num = this.f93929d;
        if (num == null) {
            return null;
        }
        int iIntValue = num.intValue();
        if (iIntValue == 0) {
            return c(imageFormat, isResizingEnabled);
        }
        if (iIntValue == 1) {
            return d(imageFormat, isResizingEnabled);
        }
        throw new IllegalArgumentException("Invalid ImageTranscoderType");
    }

    @Nullable
    private c c(com.facebook.imageformat.c imageFormat, boolean isResizingEnabled) {
        return com.facebook.imagepipeline.nativecode.e.a(this.f93926a, this.f93927b, this.f93930e).createImageTranscoder(imageFormat, isResizingEnabled);
    }

    private c d(com.facebook.imageformat.c imageFormat, boolean isResizingEnabled) {
        return new h(this.f93926a).createImageTranscoder(imageFormat, isResizingEnabled);
    }

    @Override // l4.d
    public c createImageTranscoder(com.facebook.imageformat.c imageFormat, boolean isResizingEnabled) {
        c cVarA = a(imageFormat, isResizingEnabled);
        if (cVarA == null) {
            cVarA = b(imageFormat, isResizingEnabled);
        }
        if (cVarA == null && l.a()) {
            cVarA = c(imageFormat, isResizingEnabled);
        }
        return cVarA == null ? d(imageFormat, isResizingEnabled) : cVarA;
    }
}
