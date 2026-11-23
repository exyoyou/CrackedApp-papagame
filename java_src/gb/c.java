package gb;

import androidx.fragment.app.Fragment;
import dagger.BindsInstance;
import dagger.hilt.DefineComponent;

/* JADX INFO: loaded from: classes8.dex */
@DefineComponent.Builder
public interface c {
    c a(@BindsInstance Fragment fragment);

    eb.c build();
}
