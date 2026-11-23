package dagger.hilt.android.internal.managers;

import androidx.annotation.OptIn;
import androidx.lifecycle.SavedStateHandle;
import dagger.Module;
import dagger.Provides;
import dagger.hilt.InstallIn;
import dagger.hilt.android.UnstableApi;
import dagger.hilt.android.lifecycle.ActivityRetainedSavedState;
import dagger.hilt.android.scopes.ActivityRetainedScoped;

/* JADX INFO: loaded from: classes8.dex */
@Module
@InstallIn({eb.b.class})
abstract class d {
    d() {
    }

    @Provides
    @OptIn(markerClass = {UnstableApi.class})
    @ActivityRetainedScoped
    @ActivityRetainedSavedState
    static SavedStateHandle a(n savedStateHandleHolder) {
        return savedStateHandleHolder.b();
    }
}
