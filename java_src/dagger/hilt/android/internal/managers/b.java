package dagger.hilt.android.internal.managers;

import android.content.Context;
import androidx.activity.ComponentActivity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import dagger.Module;
import dagger.Provides;
import dagger.hilt.EntryPoint;
import dagger.hilt.InstallIn;
import dagger.hilt.android.scopes.ActivityRetainedScoped;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes8.dex */
final class b implements jb.b<eb.b> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ViewModelStoreOwner f90789b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f90790c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private volatile eb.b f90791d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f90792e = new Object();

    class a implements ViewModelProvider.Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f90793a;

        a(final Context val$context) {
            this.f90793a = val$context;
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public /* synthetic */ ViewModel create(Class cls) {
            return androidx.lifecycle.o.a(this, cls);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public /* synthetic */ ViewModel create(KClass kClass, CreationExtras creationExtras) {
            return androidx.lifecycle.o.c(this, kClass, creationExtras);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        @NonNull
        public <T extends ViewModel> T create(@NonNull Class<T> aClass, CreationExtras creationExtras) {
            n nVar = new n(creationExtras);
            return new c(((InterfaceC1152b) dagger.hilt.android.c.d(this.f90793a, InterfaceC1152b.class)).d().a(nVar).build(), nVar);
        }
    }

    /* JADX INFO: renamed from: dagger.hilt.android.internal.managers.b$b, reason: collision with other inner class name */
    @EntryPoint
    @InstallIn({ib.a.class})
    public interface InterfaceC1152b {
        gb.b d();
    }

    static final class c extends ViewModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final eb.b f90795a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final n f90796b;

        c(eb.b component, n savedStateHandleHolder) {
            this.f90795a = component;
            this.f90796b = savedStateHandleHolder;
        }

        eb.b a() {
            return this.f90795a;
        }

        n b() {
            return this.f90796b;
        }

        @Override // androidx.lifecycle.ViewModel
        protected void onCleared() {
            super.onCleared();
            ((dagger.hilt.android.internal.lifecycle.h) ((d) dagger.hilt.a.a(this.f90795a, d.class)).b()).c();
        }
    }

    @EntryPoint
    @InstallIn({eb.b.class})
    public interface d {
        dagger.hilt.android.a b();
    }

    @Module
    @InstallIn({eb.b.class})
    static abstract class e {
        e() {
        }

        @Provides
        @ActivityRetainedScoped
        static dagger.hilt.android.a a() {
            return new dagger.hilt.android.internal.lifecycle.h();
        }
    }

    b(ComponentActivity activity) {
        this.f90789b = activity;
        this.f90790c = activity;
    }

    private eb.b a() {
        return ((c) d(this.f90789b, this.f90790c).get(c.class)).a();
    }

    private ViewModelProvider d(ViewModelStoreOwner owner, Context context) {
        return new ViewModelProvider(owner, new a(context));
    }

    @Override // jb.b
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public eb.b generatedComponent() {
        if (this.f90791d == null) {
            synchronized (this.f90792e) {
                if (this.f90791d == null) {
                    this.f90791d = a();
                }
            }
        }
        return this.f90791d;
    }

    public n c() {
        return ((c) d(this.f90789b, this.f90790c).get(c.class)).b();
    }
}
