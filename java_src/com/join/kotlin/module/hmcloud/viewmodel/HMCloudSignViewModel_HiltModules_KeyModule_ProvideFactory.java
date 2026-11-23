package com.join.kotlin.module.hmcloud.viewmodel;

import dagger.internal.DaggerGenerated;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;

/* JADX INFO: loaded from: classes4.dex */
@ScopeMetadata
@DaggerGenerated
@QualifierMetadata({"dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"})
public final class HMCloudSignViewModel_HiltModules_KeyModule_ProvideFactory implements dagger.internal.e<Boolean> {

    private static final class InstanceHolder {
        static final HMCloudSignViewModel_HiltModules_KeyModule_ProvideFactory INSTANCE = new HMCloudSignViewModel_HiltModules_KeyModule_ProvideFactory();

        private InstanceHolder() {
        }
    }

    public static HMCloudSignViewModel_HiltModules_KeyModule_ProvideFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static boolean provide() {
        return HMCloudSignViewModel_HiltModules.KeyModule.provide();
    }

    @Override // vb.a, tb.a
    public Boolean get() {
        return Boolean.valueOf(provide());
    }
}
