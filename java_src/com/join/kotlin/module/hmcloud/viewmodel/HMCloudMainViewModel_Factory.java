package com.join.kotlin.module.hmcloud.viewmodel;

import android.content.Context;
import dagger.internal.DaggerGenerated;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;

/* JADX INFO: loaded from: classes4.dex */
@ScopeMetadata
@DaggerGenerated
@QualifierMetadata({"dagger.hilt.android.qualifiers.ApplicationContext"})
public final class HMCloudMainViewModel_Factory implements dagger.internal.e<HMCloudMainViewModel> {
    private final dagger.internal.l<Context> contextProvider;

    private HMCloudMainViewModel_Factory(dagger.internal.l<Context> contextProvider) {
        this.contextProvider = contextProvider;
    }

    public static HMCloudMainViewModel_Factory create(dagger.internal.l<Context> contextProvider) {
        return new HMCloudMainViewModel_Factory(contextProvider);
    }

    public static HMCloudMainViewModel newInstance(Context context) {
        return new HMCloudMainViewModel(context);
    }

    @Override // vb.a, tb.a
    public HMCloudMainViewModel get() {
        return newInstance(this.contextProvider.get());
    }
}
