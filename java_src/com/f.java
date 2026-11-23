package com;

import android.app.Activity;
import android.app.Service;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import com.join.kotlin.module.hmcloud.menu.HMSettingsCommonFragment;
import com.join.kotlin.module.hmcloud.menu.HMSettingsPeripheralFragment;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel_HiltModules;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudSignViewModel;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudSignViewModel_HiltModules;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudSignViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudSignViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import com.join.mgps.activity.HMCloudMainTestActivity;
import com.join.mgps.activity.HMCloudMenuActivity;
import dagger.internal.DaggerGenerated;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
@DaggerGenerated
public final class f {

    private static final class b implements com.l.a.InterfaceC0966a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k f26653a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e f26654b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Activity f26655c;

        @Override // gb.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public b a(Activity activity) {
            this.f26655c = (Activity) dagger.internal.k.b(activity);
            return this;
        }

        @Override // gb.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public com.l.a build() {
            dagger.internal.k.a(this.f26655c, Activity.class);
            return new c(this.f26653a, this.f26654b, this.f26655c);
        }

        private b(k singletonCImpl, e activityRetainedCImpl) {
            this.f26653a = singletonCImpl;
            this.f26654b = activityRetainedCImpl;
        }
    }

    private static final class c extends com.l.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k f26656a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e f26657b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c f26658c = this;

        c(k singletonCImpl, e activityRetainedCImpl, Activity activityParam) {
            this.f26656a = singletonCImpl;
            this.f26657b = activityRetainedCImpl;
        }

        @Override // dagger.hilt.android.internal.lifecycle.a.InterfaceC1149a
        public dagger.hilt.android.internal.lifecycle.a.d a() {
            return dagger.hilt.android.internal.lifecycle.b.c(d(), new n(this.f26656a, this.f26657b));
        }

        @Override // dagger.hilt.android.internal.managers.p.b
        public gb.e b() {
            return new l(this.f26656a, this.f26657b, this.f26658c);
        }

        @Override // dagger.hilt.android.internal.managers.i.a
        public gb.c c() {
            return new g(this.f26656a, this.f26657b, this.f26658c);
        }

        @Override // dagger.hilt.android.internal.lifecycle.c.InterfaceC1150c
        public Map<Class<?>, Boolean> d() {
            return dagger.internal.g.a(dagger.internal.h.b(2).c(HMCloudMainViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(HMCloudMainViewModel_HiltModules.KeyModule.provide())).c(HMCloudSignViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(HMCloudSignViewModel_HiltModules.KeyModule.provide())).a());
        }

        @Override // com.join.mgps.activity.w5
        public void e(HMCloudMenuActivity hMCloudMenuActivity) {
        }

        @Override // com.join.mgps.activity.s4
        public void f(HMCloudMainTestActivity hMCloudMainTestActivity) {
        }

        @Override // dagger.hilt.android.internal.lifecycle.c.InterfaceC1150c
        public gb.f g() {
            return new n(this.f26656a, this.f26657b);
        }
    }

    private static final class d implements com.l.c.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k f26659a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private dagger.hilt.android.internal.managers.n f26660b;

        @Override // gb.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public com.l.c build() {
            dagger.internal.k.a(this.f26660b, dagger.hilt.android.internal.managers.n.class);
            return new e(this.f26659a, this.f26660b);
        }

        @Override // gb.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public d a(dagger.hilt.android.internal.managers.n savedStateHandleHolder) {
            this.f26660b = (dagger.hilt.android.internal.managers.n) dagger.internal.k.b(savedStateHandleHolder);
            return this;
        }

        private d(k singletonCImpl) {
            this.f26659a = singletonCImpl;
        }
    }

    private static final class e extends com.l.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k f26661a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e f26662b = this;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        dagger.internal.l<dagger.hilt.android.a> f26663c;

        private static final class a<T> implements dagger.internal.l<T> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final k f26664a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final e f26665b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final int f26666c;

            a(k singletonCImpl, e activityRetainedCImpl, int id2) {
                this.f26664a = singletonCImpl;
                this.f26665b = activityRetainedCImpl;
                this.f26666c = id2;
            }

            @Override // vb.a, tb.a
            public T get() {
                if (this.f26666c == 0) {
                    return (T) dagger.hilt.android.internal.managers.c.c();
                }
                throw new AssertionError(this.f26666c);
            }
        }

        e(k singletonCImpl, dagger.hilt.android.internal.managers.n savedStateHandleHolderParam) {
            this.f26661a = singletonCImpl;
            c(savedStateHandleHolderParam);
        }

        private void c(final dagger.hilt.android.internal.managers.n savedStateHandleHolderParam) {
            this.f26663c = dagger.internal.d.d(new a(this.f26661a, this.f26662b, 0));
        }

        @Override // dagger.hilt.android.internal.managers.a.InterfaceC1151a
        public gb.a a() {
            return new b(this.f26661a, this.f26662b);
        }

        @Override // dagger.hilt.android.internal.managers.b.d
        public dagger.hilt.android.a b() {
            return this.f26663c.get();
        }
    }

    /* JADX INFO: renamed from: com.f$f, reason: collision with other inner class name */
    public static final class C0553f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private dagger.hilt.android.internal.modules.c f26667a;

        public C0553f a(dagger.hilt.android.internal.modules.c applicationContextModule) {
            this.f26667a = (dagger.hilt.android.internal.modules.c) dagger.internal.k.b(applicationContextModule);
            return this;
        }

        public com.l.i b() {
            dagger.internal.k.a(this.f26667a, dagger.hilt.android.internal.modules.c.class);
            return new k(this.f26667a);
        }

        private C0553f() {
        }
    }

    private static final class g implements com.l.e.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k f26668a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e f26669b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c f26670c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Fragment f26671d;

        @Override // gb.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public com.l.e build() {
            dagger.internal.k.a(this.f26671d, Fragment.class);
            return new h(this.f26668a, this.f26669b, this.f26670c, this.f26671d);
        }

        @Override // gb.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public g a(Fragment fragment) {
            this.f26671d = (Fragment) dagger.internal.k.b(fragment);
            return this;
        }

        private g(k singletonCImpl, e activityRetainedCImpl, c activityCImpl) {
            this.f26668a = singletonCImpl;
            this.f26669b = activityRetainedCImpl;
            this.f26670c = activityCImpl;
        }
    }

    private static final class h extends com.l.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k f26672a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e f26673b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c f26674c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final h f26675d = this;

        h(k singletonCImpl, e activityRetainedCImpl, c activityCImpl, Fragment fragmentParam) {
            this.f26672a = singletonCImpl;
            this.f26673b = activityRetainedCImpl;
            this.f26674c = activityCImpl;
        }

        @Override // dagger.hilt.android.internal.lifecycle.a.c
        public dagger.hilt.android.internal.lifecycle.a.d a() {
            return this.f26674c.a();
        }

        @Override // dagger.hilt.android.internal.managers.p.c
        public gb.g b() {
            return new p(this.f26672a, this.f26673b, this.f26674c, this.f26675d);
        }

        @Override // com.join.kotlin.module.hmcloud.menu.HMSettingsCommonFragment_GeneratedInjector
        public void injectHMSettingsCommonFragment(HMSettingsCommonFragment hMSettingsCommonFragment) {
        }

        @Override // com.join.kotlin.module.hmcloud.menu.HMSettingsPeripheralFragment_GeneratedInjector
        public void injectHMSettingsPeripheralFragment(HMSettingsPeripheralFragment hMSettingsPeripheralFragment) {
        }
    }

    private static final class i implements com.l.g.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k f26676a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Service f26677b;

        @Override // gb.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public com.l.g build() {
            dagger.internal.k.a(this.f26677b, Service.class);
            return new j(this.f26676a, this.f26677b);
        }

        @Override // gb.d
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public i a(Service service) {
            this.f26677b = (Service) dagger.internal.k.b(service);
            return this;
        }

        private i(k singletonCImpl) {
            this.f26676a = singletonCImpl;
        }
    }

    private static final class j extends com.l.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k f26678a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final j f26679b = this;

        j(k singletonCImpl, Service serviceParam) {
            this.f26678a = singletonCImpl;
        }
    }

    private static final class k extends com.l.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final dagger.hilt.android.internal.modules.c f26680a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final k f26681b = this;

        k(dagger.hilt.android.internal.modules.c applicationContextModuleParam) {
            this.f26680a = applicationContextModuleParam;
        }

        @Override // dagger.hilt.android.internal.managers.o.a
        public gb.d a() {
            return new i(this.f26681b);
        }

        @Override // dagger.hilt.android.flags.FragmentGetContextFix.a
        public Set<Boolean> b() {
            return Collections.emptySet();
        }

        @Override // com.k
        public void c(MApplication mApplication) {
        }

        @Override // dagger.hilt.android.internal.managers.b.InterfaceC1152b
        public gb.b d() {
            return new d(this.f26681b);
        }
    }

    private static final class l implements com.l.j.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k f26682a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e f26683b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c f26684c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private View f26685d;

        @Override // gb.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public com.l.j build() {
            dagger.internal.k.a(this.f26685d, View.class);
            return new m(this.f26682a, this.f26683b, this.f26684c, this.f26685d);
        }

        @Override // gb.e
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public l a(View view) {
            this.f26685d = (View) dagger.internal.k.b(view);
            return this;
        }

        private l(k singletonCImpl, e activityRetainedCImpl, c activityCImpl) {
            this.f26682a = singletonCImpl;
            this.f26683b = activityRetainedCImpl;
            this.f26684c = activityCImpl;
        }
    }

    private static final class m extends com.l.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k f26686a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e f26687b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c f26688c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final m f26689d = this;

        m(k singletonCImpl, e activityRetainedCImpl, c activityCImpl, View viewParam) {
            this.f26686a = singletonCImpl;
            this.f26687b = activityRetainedCImpl;
            this.f26688c = activityCImpl;
        }
    }

    private static final class n implements com.l.AbstractC0967l.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k f26690a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e f26691b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private SavedStateHandle f26692c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private dagger.hilt.android.d f26693d;

        @Override // gb.f
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public com.l.AbstractC0967l build() {
            dagger.internal.k.a(this.f26692c, SavedStateHandle.class);
            dagger.internal.k.a(this.f26693d, dagger.hilt.android.d.class);
            return new o(this.f26690a, this.f26691b, this.f26692c, this.f26693d);
        }

        @Override // gb.f
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public n a(SavedStateHandle handle) {
            this.f26692c = (SavedStateHandle) dagger.internal.k.b(handle);
            return this;
        }

        @Override // gb.f
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public n b(dagger.hilt.android.d viewModelLifecycle) {
            this.f26693d = (dagger.hilt.android.d) dagger.internal.k.b(viewModelLifecycle);
            return this;
        }

        private n(k singletonCImpl, e activityRetainedCImpl) {
            this.f26690a = singletonCImpl;
            this.f26691b = activityRetainedCImpl;
        }
    }

    private static final class o extends com.l.AbstractC0967l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k f26694a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e f26695b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final o f26696c = this;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        dagger.internal.l<HMCloudMainViewModel> f26697d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        dagger.internal.l<HMCloudSignViewModel> f26698e;

        private static final class a<T> implements dagger.internal.l<T> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final k f26699a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final e f26700b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final o f26701c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final int f26702d;

            a(k singletonCImpl, e activityRetainedCImpl, o viewModelCImpl, int id2) {
                this.f26699a = singletonCImpl;
                this.f26700b = activityRetainedCImpl;
                this.f26701c = viewModelCImpl;
                this.f26702d = id2;
            }

            @Override // vb.a, tb.a
            public T get() {
                int i10 = this.f26702d;
                if (i10 == 0) {
                    return (T) new HMCloudMainViewModel(dagger.hilt.android.internal.modules.e.c(this.f26699a.f26680a));
                }
                if (i10 == 1) {
                    return (T) new HMCloudSignViewModel(dagger.hilt.android.internal.modules.e.c(this.f26699a.f26680a));
                }
                throw new AssertionError(this.f26702d);
            }
        }

        o(k singletonCImpl, e activityRetainedCImpl, SavedStateHandle savedStateHandleParam, dagger.hilt.android.d viewModelLifecycleParam) {
            this.f26694a = singletonCImpl;
            this.f26695b = activityRetainedCImpl;
            c(savedStateHandleParam, viewModelLifecycleParam);
        }

        private void c(final SavedStateHandle savedStateHandleParam, final dagger.hilt.android.d viewModelLifecycleParam) {
            this.f26697d = new a(this.f26694a, this.f26695b, this.f26696c, 0);
            this.f26698e = new a(this.f26694a, this.f26695b, this.f26696c, 1);
        }

        @Override // dagger.hilt.android.internal.lifecycle.c.d
        public Map<Class<?>, vb.a<ViewModel>> a() {
            return dagger.internal.g.a(dagger.internal.h.b(2).c(HMCloudMainViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.f26697d).c(HMCloudSignViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.f26698e).a());
        }

        @Override // dagger.hilt.android.internal.lifecycle.c.d
        public Map<Class<?>, Object> b() {
            return Collections.emptyMap();
        }
    }

    private static final class p implements com.l.n.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k f26703a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e f26704b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c f26705c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final h f26706d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private View f26707e;

        @Override // gb.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public com.l.n build() {
            dagger.internal.k.a(this.f26707e, View.class);
            return new q(this.f26703a, this.f26704b, this.f26705c, this.f26706d, this.f26707e);
        }

        @Override // gb.g
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public p a(View view) {
            this.f26707e = (View) dagger.internal.k.b(view);
            return this;
        }

        private p(k singletonCImpl, e activityRetainedCImpl, c activityCImpl, h fragmentCImpl) {
            this.f26703a = singletonCImpl;
            this.f26704b = activityRetainedCImpl;
            this.f26705c = activityCImpl;
            this.f26706d = fragmentCImpl;
        }
    }

    private static final class q extends com.l.n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k f26708a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e f26709b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c f26710c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final h f26711d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final q f26712e = this;

        q(k singletonCImpl, e activityRetainedCImpl, c activityCImpl, h fragmentCImpl, View viewParam) {
            this.f26708a = singletonCImpl;
            this.f26709b = activityRetainedCImpl;
            this.f26710c = activityCImpl;
            this.f26711d = fragmentCImpl;
        }
    }

    private f() {
    }

    public static C0553f a() {
        return new C0553f();
    }
}
