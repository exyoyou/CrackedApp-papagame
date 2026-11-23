package androidx.transition;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class e {
    public static void a(Transition.TransitionListener transitionListener, @NonNull Transition transition, boolean z10) {
        transitionListener.onTransitionEnd(transition);
    }

    public static void b(Transition.TransitionListener transitionListener, @NonNull Transition transition, boolean z10) {
        transitionListener.onTransitionStart(transition);
    }
}
