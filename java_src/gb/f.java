package gb;

import androidx.lifecycle.SavedStateHandle;
import dagger.BindsInstance;
import dagger.hilt.DefineComponent;

/* JADX INFO: loaded from: classes8.dex */
@DefineComponent.Builder
public interface f {
    f a(@BindsInstance SavedStateHandle handle);

    f b(@BindsInstance dagger.hilt.android.d viewModelLifecycle);

    eb.f build();
}
