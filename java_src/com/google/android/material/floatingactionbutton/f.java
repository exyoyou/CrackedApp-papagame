package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.animation.i;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
interface f {
    void a();

    i b();

    @Nullable
    i c();

    boolean d();

    void e(@NonNull Animator.AnimatorListener animatorListener);

    @AnimatorRes
    int f();

    AnimatorSet g();

    void h(@Nullable ExtendedFloatingActionButton.l lVar);

    void i();

    void j();

    void k(@NonNull Animator.AnimatorListener animatorListener);

    void l(@Nullable i iVar);

    List<Animator.AnimatorListener> m();

    void onAnimationStart(Animator animator);
}
