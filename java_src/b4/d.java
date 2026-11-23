package b4;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f386c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f387d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f388e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f389f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f390g;

    public d(int viewportWidth, int viewportHeight, int encodedImageWidth, int encodedImageHeight, int decodedImageWidth, int decodedImageHeight, String scaleType) {
        this.f384a = viewportWidth;
        this.f385b = viewportHeight;
        this.f386c = encodedImageWidth;
        this.f387d = encodedImageHeight;
        this.f388e = decodedImageWidth;
        this.f389f = decodedImageHeight;
        this.f390g = scaleType;
    }

    public int a() {
        return this.f389f;
    }

    public int b() {
        return this.f388e;
    }

    public int c() {
        return this.f387d;
    }

    public int d() {
        return this.f386c;
    }

    public String e() {
        return this.f390g;
    }

    public int f() {
        return this.f385b;
    }

    public int g() {
        return this.f384a;
    }

    public String toString() {
        return "DimensionsInfo{mViewportWidth=" + this.f384a + ", mViewportHeight=" + this.f385b + ", mEncodedImageWidth=" + this.f386c + ", mEncodedImageHeight=" + this.f387d + ", mDecodedImageWidth=" + this.f388e + ", mDecodedImageHeight=" + this.f389f + ", mScaleType='" + this.f390g + "'}";
    }
}
