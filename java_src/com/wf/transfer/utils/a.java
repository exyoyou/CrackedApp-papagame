package com.wf.transfer.utils;

import android.content.ContentProviderClient;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.byazt.quv.AbsServerManager;
import com.wf.transfer.core.c;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static HashMap<String, IBinder> f85822a = new HashMap<>();

    public static Bundle a(String str, String str2, String str3, Bundle bundle) throws RemoteException {
        Uri uri = Uri.parse("content://" + str);
        ContentProviderClient contentProviderClientB = b(uri);
        if (contentProviderClientB != null) {
            return contentProviderClientB.call(str2, str3, bundle);
        }
        throw new RuntimeException("ContentProviderWrapper get null content provider " + uri);
    }

    public static ContentProviderClient b(Uri uri) {
        ContentProviderClient contentProviderClientC = null;
        for (int i10 = 0; i10 < 5; i10++) {
            contentProviderClientC = c(uri);
            if (contentProviderClientC != null) {
                return contentProviderClientC;
            }
        }
        return contentProviderClientC;
    }

    private static ContentProviderClient c(Uri uri) {
        return c.getContext().getContentResolver().acquireUnstableContentProviderClient(uri);
    }

    public static IBinder d(String str, String str2) {
        try {
            IBinder iBinder = f85822a.get(str2);
            if (iBinder != null && iBinder.isBinderAlive()) {
                return iBinder;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_svr_name_", str2);
            Bundle bundleA = a(str, "init", null, bundle);
            if (bundleA == null) {
                throw new RuntimeException("FileTransferManager get null binder");
            }
            IBinder binder = bundleA.getBinder(AbsServerManager.BUNDLE_BINDER);
            f85822a.put(str2, binder);
            return binder;
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
