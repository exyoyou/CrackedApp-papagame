package o2;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class c implements b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    public static final a f94938d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final float f94939e = 0.5f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f94940a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f94941b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private final DecelerateInterpolator f94942c;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @JvmOverloads
    public c() {
        this(0L, 0.0f, 3, null);
    }

    @Override // o2.b
    @NotNull
    public Animator a(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "scaleX", this.f94941b, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "scaleY", this.f94941b, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(this.f94940a);
        animatorSet.setInterpolator(this.f94942c);
        animatorSet.play(objectAnimatorOfFloat).with(objectAnimatorOfFloat2);
        return animatorSet;
    }

    @JvmOverloads
    public c(long j10) {
        this(j10, 0.0f, 2, null);
    }

    @JvmOverloads
    public c(long j10, float f10) {
        this.f94940a = j10;
        this.f94941b = f10;
        this.f94942c = new DecelerateInterpolator();
    }

    public /* synthetic */ c(long j10, float f10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 300L : j10, (i10 & 2) != 0 ? 0.5f : f10);
    }
}
