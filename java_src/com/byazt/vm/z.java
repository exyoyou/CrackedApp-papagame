package com.byazt.vm;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 165, 133})
public final class z implements nu {
    @Override // com.byazt.vm.nu
    public boolean tt(Context context) {
        return Build.VERSION.SDK_INT > 28;
    }

    @Override // com.byazt.vm.nu
    public nu.c ve(Context context) {
        Uri uri = Uri.parse("content://cn.nubia.identity/identity");
        try {
            int i10 = Build.VERSION.SDK_INT;
            ContentProviderClient contentProviderClientAcquireContentProviderClient = context.getContentResolver().acquireContentProviderClient(uri);
            if (contentProviderClientAcquireContentProviderClient == null) {
                return null;
            }
            Bundle bundleCall = contentProviderClientAcquireContentProviderClient.call("getOAID", null, null);
            if (i10 >= 24) {
                contentProviderClientAcquireContentProviderClient.release();
            } else {
                contentProviderClientAcquireContentProviderClient.release();
            }
            if (bundleCall == null) {
                return null;
            }
            if (bundleCall.getInt("code", -1) == 0) {
                nu.c cVar = new nu.c();
                cVar.tt = bundleCall.getString("id");
                return cVar;
            }
            String string = bundleCall.getString("message");
            if (!TextUtils.isEmpty(string)) {
                com.byazt.yv.da.tt(string);
            }
            return null;
        } catch (Exception e10) {
            com.byazt.yv.da.c(e10);
            return null;
        }
    }
}
