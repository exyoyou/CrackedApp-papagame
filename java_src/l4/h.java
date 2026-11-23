package l4;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class h implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f93934a;

    public h(final int maxBitmapSize) {
        this.f93934a = maxBitmapSize;
    }

    @Override // l4.d
    public c createImageTranscoder(com.facebook.imageformat.c imageFormat, boolean isResizingEnabled) {
        return new g(isResizingEnabled, this.f93934a);
    }
}
