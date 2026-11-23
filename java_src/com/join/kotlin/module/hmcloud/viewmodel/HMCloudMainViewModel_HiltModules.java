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
@OriginatingElement(topLevelClass = HMCloudMainViewModel.class)
public final class HMCloudMainViewModel_HiltModules {

    @Module
    @InstallIn({eb.f.class})
    public static abstract class BindsModule {
        private BindsModule() {
        }

        @LazyClassKey(HMCloudMainViewModel.class)
        @Binds
        @HiltViewModelMap
        @IntoMap
        public abstract ViewModel binds(HMCloudMainViewModel vm);
    }

    @Module
    @InstallIn({eb.b.class})
    public static final class KeyModule {
        private KeyModule() {
        }

        @Provides
        @LazyClassKey(HMCloudMainViewModel.class)
        @HiltViewModelMap.KeySet
        @IntoMap
        public static boolean provide() {
            return true;
        }
    }

    private HMCloudMainViewModel_HiltModules() {
    }
}
