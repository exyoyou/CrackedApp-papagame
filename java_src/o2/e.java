package o2;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class e implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f94945a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final DecelerateInterpolator f94946b;

    @JvmOverloads
    public e() {
        this(0L, 1, null);
    }

    @Override // o2.b
    @NotNull
    public Animator a(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationX", -view.getRootView().getWidth(), 0.0f);
        objectAnimatorOfFloat.setDuration(this.f94945a);
        objectAnimatorOfFloat.setInterpolator(this.f94946b);
        Intrinsics.checkNotNull(objectAnimatorOfFloat);
        return objectAnimatorOfFloat;
    }

    @JvmOverloads
    public e(long j10) {
        this.f94945a = j10;
        this.f94946b = new DecelerateInterpolator(1.8f);
    }

    public /* synthetic */ e(long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 400L : j10);
    }
}
