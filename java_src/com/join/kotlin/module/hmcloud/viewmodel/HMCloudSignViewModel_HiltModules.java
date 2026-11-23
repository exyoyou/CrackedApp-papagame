package com.join.kotlin.module.hmcloud.viewmodel;

import androidx.lifecycle.ViewModel;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.hilt.InstallIn;
import dagger.hilt.android.internal.lifecycle.HiltViewModelMap;
import dagger.hilt.codegen.OriginatingElement;
import dagger.multibindings.IntoMap;
import dagger.multibindings.LazyClassKey;

/* JADX INFO: loaded from: classes4.dex */
@OriginatingElement(topLevelClass = HMCloudSignViewModel.class)
public final class HMCloudSignViewModel_HiltModules {

    @Module
    @InstallIn({eb.f.class})
    public static abstract class BindsModule {
        private BindsModule() {
        }

        @LazyClassKey(HMCloudSignViewModel.class)
        @Binds
        @HiltViewModelMap
        @IntoMap
        public abstract ViewModel binds(HMCloudSignViewModel vm);
    }

    @Module
    @InstallIn({eb.b.class})
    public static final class KeyModule {
        private KeyModule() {
        }

        @Provides
        @LazyClassKey(HMCloudSignViewModel.class)
        @HiltViewModelMap.KeySet
        @IntoMap
        public static boolean provide() {
            return true;
        }
    }

    private HMCloudSignViewModel_HiltModules() {
    }
}
