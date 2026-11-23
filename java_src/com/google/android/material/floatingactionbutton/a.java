package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private Animator f30676a;

    a() {
    }

    public void a() {
        Animator animator = this.f30676a;
        if (animator != null) {
            animator.cancel();
        }
    }

    public void b() {
        this.f30676a = null;
    }

    public void c(Animator animator) {
        a();
        this.f30676a = animator;
    }
}
