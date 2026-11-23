package dagger.hilt.android.internal.lifecycle;

import androidx.activity.ComponentActivity;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import dagger.Module;
import dagger.hilt.EntryPoint;
import dagger.hilt.InstallIn;
import dagger.multibindings.Multibinds;
import java.util.Map;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: dagger.hilt.android.internal.lifecycle.a$a, reason: collision with other inner class name */
    @EntryPoint
    @InstallIn({eb.a.class})
    public interface InterfaceC1149a {
        d a();
    }

    @Module
    @InstallIn({eb.a.class})
    interface b {
        @HiltViewModelMap.KeySet
        @Multibinds
        Map<Class<?>, Boolean> a();
    }

    @EntryPoint
    @InstallIn({eb.c.class})
    public interface c {
        d a();
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<Class<?>, Boolean> f90772a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final gb.f f90773b;

        @Inject
        d(@HiltViewModelMap.KeySet Map<Class<?>, Boolean> keySet, gb.f viewModelComponentBuilder) {
            this.f90772a = keySet;
            this.f90773b = viewModelComponentBuilder;
        }

        private ViewModelProvider.Factory c(ViewModelProvider.Factory delegate) {
            return new dagger.hilt.android.internal.lifecycle.c(this.f90772a, (ViewModelProvider.Factory) jb.d.b(delegate), this.f90773b);
        }

        ViewModelProvider.Factory a(ComponentActivity activity, ViewModelProvider.Factory delegateFactory) {
            return c(delegateFactory);
        }

        ViewModelProvider.Factory b(Fragment fragment, ViewModelProvider.Factory delegateFactory) {
            return c(delegateFactory);
        }
    }

    private a() {
    }

    public static ViewModelProvider.Factory a(ComponentActivity activity, ViewModelProvider.Factory delegateFactory) {
        return ((InterfaceC1149a) dagger.hilt.a.a(activity, InterfaceC1149a.class)).a().a(activity, delegateFactory);
    }

    public static ViewModelProvider.Factory b(Fragment fragment, ViewModelProvider.Factory delegateFactory) {
        return ((c) dagger.hilt.a.a(fragment, c.class)).a().b(fragment, delegateFactory);
    }
}
