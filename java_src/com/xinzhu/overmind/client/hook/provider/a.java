package com.xinzhu.overmind.client.hook.provider;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.f;
import com.xinzhu.overmind.utils.e;
import java.io.File;
import java.util.Iterator;

/* JADX INFO: loaded from: classes8.dex */
public class a {
    public static Uri a(Context context, Uri uri) {
        if (e.d()) {
            Iterator<ProviderInfo> it2 = f.getProviders().iterator();
            while (it2.hasNext()) {
                try {
                    File fileD = FileProvider.d(context, it2.next().authority, uri);
                    if (fileD != null && fileD.exists()) {
                        return Overmind.getMindStorageManager().c(fileD.getAbsolutePath());
                    }
                } catch (Exception unused) {
                }
            }
        }
        return uri;
    }
}
