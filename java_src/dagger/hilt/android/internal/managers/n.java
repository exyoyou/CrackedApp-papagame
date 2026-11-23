package dagger.hilt.android.internal.managers;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;

/* JADX INFO: loaded from: classes8.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private CreationExtras f90805a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private SavedStateHandle f90806b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f90807c;

    public n(@Nullable CreationExtras extras) {
        this.f90807c = extras != null;
        this.f90805a = extras;
    }

    public void a() {
        this.f90805a = null;
    }

    public SavedStateHandle b() {
        fb.b.a();
        jb.d.d(this.f90807c, "Activity that does not extend ComponentActivity cannot use SavedStateHandle", new Object[0]);
        SavedStateHandle savedStateHandle = this.f90806b;
        if (savedStateHandle != null) {
            return savedStateHandle;
        }
        jb.d.c(this.f90805a, "The first access to SavedStateHandle should happen between super.onCreate() and super.onDestroy()");
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(this.f90805a);
        mutableCreationExtras.set(SavedStateHandleSupport.DEFAULT_ARGS_KEY, Bundle.EMPTY);
        this.f90805a = mutableCreationExtras;
        SavedStateHandle savedStateHandleCreateSavedStateHandle = SavedStateHandleSupport.createSavedStateHandle(mutableCreationExtras);
        this.f90806b = savedStateHandleCreateSavedStateHandle;
        this.f90805a = null;
        return savedStateHandleCreateSavedStateHandle;
    }

    public boolean c() {
        return this.f90806b == null && this.f90805a == null;
    }

    public void d(CreationExtras extras) {
        jb.d.d(this.f90807c, "setExtras should only be called for an Activity that extends ComponentActivity", new Object[0]);
        if (this.f90806b != null) {
            return;
        }
        this.f90805a = extras;
    }
}
