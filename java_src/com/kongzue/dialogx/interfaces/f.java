package com.kongzue.dialogx.interfaces;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.interfaces.BaseDialog;

/* JADX INFO: loaded from: classes3.dex */
public abstract class f<T extends BaseDialog> implements LifecycleOwner {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LifecycleRegistry f74110b = new LifecycleRegistry(this);

    public void a(T t10) {
        try {
            Lifecycle.State currentState = this.f74110b.getState();
            Lifecycle.State state = Lifecycle.State.DESTROYED;
            if (currentState != state) {
                this.f74110b.setCurrentState(state);
            }
        } catch (Exception unused) {
        }
        f<BaseDialog> fVar = DialogX.E;
        if (fVar == null || fVar == this) {
            return;
        }
        fVar.a(t10);
    }

    public void b(T t10) {
        try {
            Lifecycle.State currentState = this.f74110b.getState();
            Lifecycle.State state = Lifecycle.State.CREATED;
            if (currentState != state) {
                this.f74110b.setCurrentState(state);
            }
        } catch (Exception unused) {
        }
        f<BaseDialog> fVar = DialogX.E;
        if (fVar == null || fVar == this) {
            return;
        }
        fVar.b(t10);
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NonNull
    public Lifecycle getLifecycle() {
        return this.f74110b;
    }
}
