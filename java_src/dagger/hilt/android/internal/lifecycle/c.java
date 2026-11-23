package dagger.hilt.android.internal.lifecycle;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.o;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.savedstate.SavedStateRegistryOwner;
import dagger.Module;
import dagger.hilt.EntryPoint;
import dagger.hilt.InstallIn;
import dagger.multibindings.Multibinds;
import java.io.Closeable;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes8.dex */
public final class c implements ViewModelProvider.Factory {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final CreationExtras.Key<Function1<Object, ViewModel>> f90776d = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class<?>, Boolean> f90777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ViewModelProvider.Factory f90778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ViewModelProvider.Factory f90779c;

    class a implements CreationExtras.Key<Function1<Object, ViewModel>> {
        a() {
        }
    }

    class b implements ViewModelProvider.Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ gb.f f90780a;

        b(final gb.f val$viewModelComponentBuilder) {
            this.f90780a = val$viewModelComponentBuilder;
        }

        private <T extends ViewModel> T a(@NonNull eb.f component, @NonNull Class<T> modelClass, @NonNull CreationExtras extras) {
            vb.a<ViewModel> aVar = ((d) dagger.hilt.a.a(component, d.class)).a().get(modelClass);
            Function1 function1 = (Function1) extras.get(c.f90776d);
            Object obj = ((d) dagger.hilt.a.a(component, d.class)).b().get(modelClass);
            if (obj == null) {
                if (function1 != null) {
                    throw new IllegalStateException("Found creation callback but class " + modelClass.getName() + " does not have an assisted factory specified in @HiltViewModel.");
                }
                if (aVar != null) {
                    return (T) aVar.get();
                }
                throw new IllegalStateException("Expected the @HiltViewModel-annotated class " + modelClass.getName() + " to be available in the multi-binding of @HiltViewModelMap but none was found.");
            }
            if (aVar != null) {
                throw new AssertionError("Found the @HiltViewModel-annotated class " + modelClass.getName() + " in both the multi-bindings of @HiltViewModelMap and @HiltViewModelAssistedMap.");
            }
            if (function1 != null) {
                return (T) function1.invoke(obj);
            }
            throw new IllegalStateException("Found @HiltViewModel-annotated class " + modelClass.getName() + " using @AssistedInject but no creation callback was provided in CreationExtras.");
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public /* synthetic */ ViewModel create(Class cls) {
            return o.a(this, cls);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public /* synthetic */ ViewModel create(KClass kClass, CreationExtras creationExtras) {
            return o.c(this, kClass, creationExtras);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        @NonNull
        public <T extends ViewModel> T create(@NonNull Class<T> cls, @NonNull CreationExtras creationExtras) {
            final h hVar = new h();
            T t10 = (T) a(this.f90780a.a(SavedStateHandleSupport.createSavedStateHandle(creationExtras)).b(hVar).build(), cls, creationExtras);
            t10.addCloseable(new Closeable() { // from class: dagger.hilt.android.internal.lifecycle.d
                @Override // java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                    hVar.c();
                }
            });
            return t10;
        }
    }

    /* JADX INFO: renamed from: dagger.hilt.android.internal.lifecycle.c$c, reason: collision with other inner class name */
    @EntryPoint
    @InstallIn({eb.a.class})
    interface InterfaceC1150c {
        @HiltViewModelMap.KeySet
        Map<Class<?>, Boolean> d();

        gb.f g();
    }

    @EntryPoint
    @InstallIn({eb.f.class})
    public interface d {
        @HiltViewModelMap
        Map<Class<?>, vb.a<ViewModel>> a();

        @HiltViewModelAssistedMap
        Map<Class<?>, Object> b();
    }

    @Module
    @InstallIn({eb.f.class})
    interface e {
        @HiltViewModelMap
        @Multibinds
        Map<Class<?>, ViewModel> a();

        @HiltViewModelAssistedMap
        @Multibinds
        Map<Class<?>, Object> b();
    }

    public c(@NonNull Map<Class<?>, Boolean> hiltViewModelKeys, @NonNull ViewModelProvider.Factory delegateFactory, @NonNull gb.f viewModelComponentBuilder) {
        this.f90777a = hiltViewModelKeys;
        this.f90778b = delegateFactory;
        this.f90779c = new b(viewModelComponentBuilder);
    }

    public static ViewModelProvider.Factory a(@NonNull Activity activity, @NonNull ViewModelProvider.Factory delegateFactory) {
        InterfaceC1150c interfaceC1150c = (InterfaceC1150c) dagger.hilt.a.a(activity, InterfaceC1150c.class);
        return new c(interfaceC1150c.d(), delegateFactory, interfaceC1150c.g());
    }

    public static ViewModelProvider.Factory b(@NonNull Activity activity, @NonNull SavedStateRegistryOwner owner, @Nullable Bundle defaultArgs, @NonNull ViewModelProvider.Factory delegateFactory) {
        return a(activity, delegateFactory);
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public /* synthetic */ ViewModel create(KClass kClass, CreationExtras creationExtras) {
        return o.c(this, kClass, creationExtras);
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    @NonNull
    public <T extends ViewModel> T create(@NonNull Class<T> cls, @NonNull CreationExtras creationExtras) {
        return this.f90777a.containsKey(cls) ? (T) this.f90779c.create(cls, creationExtras) : (T) this.f90778b.create(cls, creationExtras);
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    @NonNull
    public <T extends ViewModel> T create(@NonNull Class<T> cls) {
        if (this.f90777a.containsKey(cls)) {
            return (T) this.f90779c.create(cls);
        }
        return (T) this.f90778b.create(cls);
    }
}
