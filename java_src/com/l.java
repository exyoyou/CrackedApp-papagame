package com;

import com.join.kotlin.module.hmcloud.menu.HMSettingsCommonFragment_GeneratedInjector;
import com.join.kotlin.module.hmcloud.menu.HMSettingsPeripheralFragment_GeneratedInjector;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel_HiltModules;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudSignViewModel_HiltModules;
import com.join.mgps.activity.s4;
import com.join.mgps.activity.w5;
import dagger.Binds;
import dagger.Component;
import dagger.Module;
import dagger.Subcomponent;
import dagger.hilt.android.flags.FragmentGetContextFix;
import dagger.hilt.android.internal.managers.p;
import dagger.hilt.android.scopes.ActivityRetainedScoped;
import dagger.hilt.android.scopes.ActivityScoped;
import dagger.hilt.android.scopes.FragmentScoped;
import dagger.hilt.android.scopes.ServiceScoped;
import dagger.hilt.android.scopes.ViewModelScoped;
import dagger.hilt.android.scopes.ViewScoped;
import dagger.hilt.migration.DisableInstallInCheck;
import jakarta.inject.Singleton;

/* JADX INFO: loaded from: classes7.dex */
public final class l {

    @ActivityScoped
    @Subcomponent(modules = {dagger.hilt.android.internal.modules.f.class, dagger.hilt.android.internal.lifecycle.e.class, f.class, k.class})
    public static abstract class a implements s4, w5, eb.a, dagger.hilt.android.internal.lifecycle.a.InterfaceC1149a, dagger.hilt.android.internal.lifecycle.f, dagger.hilt.android.internal.managers.i.a, p.b, jb.a {

        /* JADX INFO: renamed from: com.l$a$a, reason: collision with other inner class name */
        @Subcomponent.Builder
        interface InterfaceC0966a extends gb.a {
        }
    }

    @DisableInstallInCheck
    @Module(subcomponents = {a.class})
    interface b {
        @Binds
        gb.a a(a.InterfaceC0966a builder);
    }

    @ActivityRetainedScoped
    @Subcomponent(modules = {HMCloudMainViewModel_HiltModules.KeyModule.class, HMCloudSignViewModel_HiltModules.KeyModule.class, dagger.hilt.android.internal.managers.l.class, dagger.hilt.android.internal.managers.m.class, b.class, m.class})
    public static abstract class c implements eb.b, dagger.hilt.android.internal.managers.a.InterfaceC1151a, dagger.hilt.android.internal.managers.k, jb.a {

        @Subcomponent.Builder
        interface a extends gb.b {
        }
    }

    @DisableInstallInCheck
    @Module(subcomponents = {c.class})
    interface d {
        @Binds
        gb.b a(c.a builder);
    }

    @FragmentScoped
    @Subcomponent(modules = {o.class})
    public static abstract class e implements HMSettingsCommonFragment_GeneratedInjector, HMSettingsPeripheralFragment_GeneratedInjector, eb.c, dagger.hilt.android.internal.lifecycle.a.c, p.c, jb.a {

        @Subcomponent.Builder
        interface a extends gb.c {
        }
    }

    @DisableInstallInCheck
    @Module(subcomponents = {e.class})
    interface f {
        @Binds
        gb.c a(e.a builder);
    }

    @ServiceScoped
    @Subcomponent
    public static abstract class g implements eb.d, jb.a {

        @Subcomponent.Builder
        interface a extends gb.d {
        }
    }

    @DisableInstallInCheck
    @Module(subcomponents = {g.class})
    interface h {
        @Binds
        gb.d a(g.a builder);
    }

    @Singleton
    @Component(modules = {y6.a.class, dagger.hilt.android.internal.modules.c.class, dagger.hilt.android.flags.a.class, d.class, h.class})
    @javax.inject.Singleton
    public static abstract class i implements com.k, FragmentGetContextFix.a, dagger.hilt.android.internal.managers.j, dagger.hilt.android.internal.managers.o.a, ib.a, jb.a {
    }

    @ViewScoped
    @Subcomponent
    public static abstract class j implements eb.e, jb.a {

        @Subcomponent.Builder
        interface a extends gb.e {
        }
    }

    @DisableInstallInCheck
    @Module(subcomponents = {j.class})
    interface k {
        @Binds
        gb.e a(j.a builder);
    }

    /* JADX INFO: renamed from: com.l$l, reason: collision with other inner class name */
    @ViewModelScoped
    @Subcomponent(modules = {HMCloudMainViewModel_HiltModules.BindsModule.class, HMCloudSignViewModel_HiltModules.BindsModule.class, dagger.hilt.android.internal.lifecycle.g.class})
    public static abstract class AbstractC0967l implements eb.f, dagger.hilt.android.internal.lifecycle.c.d, jb.a {

        /* JADX INFO: renamed from: com.l$l$a */
        @Subcomponent.Builder
        interface a extends gb.f {
        }
    }

    @DisableInstallInCheck
    @Module(subcomponents = {AbstractC0967l.class})
    interface m {
        @Binds
        gb.f a(AbstractC0967l.a builder);
    }

    @ViewScoped
    @Subcomponent
    public static abstract class n implements eb.g, jb.a {

        @Subcomponent.Builder
        interface a extends gb.g {
        }
    }

    @DisableInstallInCheck
    @Module(subcomponents = {n.class})
    interface o {
        @Binds
        gb.g a(n.a builder);
    }

    private l() {
    }
}
