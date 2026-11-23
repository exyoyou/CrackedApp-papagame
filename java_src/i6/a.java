package i6;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public class a implements b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final float f91482b = 0.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f91483a;

    public a() {
        this(0.0f);
    }

    @Override // i6.b
    public Animator[] a(View view) {
        return new Animator[]{ObjectAnimator.ofFloat(view, "alpha", this.f91483a, 1.0f)};
    }

    public a(float from) {
        this.f91483a = from;
    }
}
