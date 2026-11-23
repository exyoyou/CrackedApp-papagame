package com.aggmoread.sdk.a.adcomm.amsdk;

import android.content.Context;
import android.content.pm.ProviderInfo;
import androidx.core.content.FileProvider;
import com.aggmoread.sdk.z.a.d;

/* JADX INFO: loaded from: classes7.dex */
public class AMFilesProvider extends FileProvider {
    private static final String TAG = "ApiFileProvider";

    @Override // androidx.core.content.FileProvider, android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        d.d(TAG, "attachInfo enter,info = " + providerInfo.toString());
    }

    @Override // androidx.core.content.FileProvider, android.content.ContentProvider
    public boolean onCreate() {
        boolean zOnCreate = super.onCreate();
        d.d(TAG, "onCreate enter");
        return zOnCreate;
    }
}
