package dagger.hilt.android.internal.managers;

import androidx.lifecycle.SavedStateHandle;
import dagger.internal.DaggerGenerated;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;

/* JADX INFO: loaded from: classes8.dex */
@ScopeMetadata("dagger.hilt.android.scopes.ActivityRetainedScoped")
@DaggerGenerated
@QualifierMetadata({"dagger.hilt.android.lifecycle.ActivityRetainedSavedState"})
public final class e implements dagger.internal.e<SavedStateHandle> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final dagger.internal.l<n> f90798a;

    private e(dagger.internal.l<n> savedStateHandleHolderProvider) {
        this.f90798a = savedStateHandleHolderProvider;
    }

    public static e a(dagger.internal.l<n> savedStateHandleHolderProvider) {
        return new e(savedStateHandleHolderProvider);
    }

    public static SavedStateHandle c(n savedStateHandleHolder) {
        return (SavedStateHandle) dagger.internal.k.f(d.a(savedStateHandleHolder));
    }

    @Override // vb.a, tb.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public SavedStateHandle get() {
        return c(this.f90798a.get());
    }
}
