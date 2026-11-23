package i6;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public class c implements b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final float f91484b = 0.5f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f91485a;

    public c() {
        this(0.5f);
    }

    @Override // i6.b
    public Animator[] a(View view) {
        return new ObjectAnimator[]{ObjectAnimator.ofFloat(view, "scaleX", this.f91485a, 1.0f), ObjectAnimator.ofFloat(view, "scaleY", this.f91485a, 1.0f)};
    }

    public c(float from) {
        this.f91485a = from;
    }
}
