package com.join.kotlin.module.hmcloud.viewmodel;

import android.content.Context;
import dagger.internal.DaggerGenerated;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;

/* JADX INFO: loaded from: classes4.dex */
@ScopeMetadata
@DaggerGenerated
@QualifierMetadata({"dagger.hilt.android.qualifiers.ApplicationContext"})
public final class HMCloudSignViewModel_Factory implements dagger.internal.e<HMCloudSignViewModel> {
    private final dagger.internal.l<Context> contextProvider;

    private HMCloudSignViewModel_Factory(dagger.internal.l<Context> contextProvider) {
        this.contextProvider = contextProvider;
    }

    public static HMCloudSignViewModel_Factory create(dagger.internal.l<Context> contextProvider) {
        return new HMCloudSignViewModel_Factory(contextProvider);
    }

    public static HMCloudSignViewModel newInstance(Context context) {
        return new HMCloudSignViewModel(context);
    }

    @Override // vb.a, tb.a
    public HMCloudSignViewModel get() {
        return newInstance(this.contextProvider.get());
    }
}
