package o2;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.LinearInterpolator;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class a implements b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    public static final C1218a f94933d = new C1218a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final float f94934e = 0.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f94935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f94936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private final LinearInterpolator f94937c;

    /* JADX INFO: renamed from: o2.a$a, reason: collision with other inner class name */
    public static final class C1218a {
        public /* synthetic */ C1218a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C1218a() {
        }
    }

    @JvmOverloads
    public a() {
        this(0L, 0.0f, 3, null);
    }

    @Override // o2.b
    @NotNull
    public Animator a(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", this.f94936b, 1.0f);
        objectAnimatorOfFloat.setDuration(this.f94935a);
        objectAnimatorOfFloat.setInterpolator(this.f94937c);
        Intrinsics.checkNotNull(objectAnimatorOfFloat);
        return objectAnimatorOfFloat;
    }

    @JvmOverloads
    public a(long j10) {
        this(j10, 0.0f, 2, null);
    }

    @JvmOverloads
    public a(long j10, float f10) {
        this.f94935a = j10;
        this.f94936b = f10;
        this.f94937c = new LinearInterpolator();
    }

    public /* synthetic */ a(long j10, float f10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 300L : j10, (i10 & 2) != 0 ? 0.0f : f10);
    }
}
