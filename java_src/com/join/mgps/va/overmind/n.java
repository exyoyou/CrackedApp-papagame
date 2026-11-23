package com.join.mgps.va.overmind;

import android.content.ContentProviderClient;
import android.net.Uri;
import android.os.Bundle;
import com.xinzhu.overmind.Overmind;

/* JADX INFO: loaded from: classes3.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f73284a = 5;

    public static Bundle a(String authority, String method, String arg, Bundle extras) {
        Uri uri = Uri.parse("content://" + authority);
        ContentProviderClient contentProviderClientB = b(uri);
        if (contentProviderClientB == null) {
            throw new RuntimeException("ContentProviderWrapper get null content provider " + uri);
        }
        try {
            Bundle bundleCall = contentProviderClientB.call(method, arg, extras);
            d(contentProviderClientB);
            return bundleCall;
        } catch (Throwable th) {
            try {
                throw new RuntimeException(th.getMessage());
            } catch (Throwable th2) {
                d(contentProviderClientB);
                throw th2;
            }
        }
    }

    private static ContentProviderClient b(Uri uri) {
        ContentProviderClient contentProviderClientC;
        int i10 = 0;
        while (true) {
            contentProviderClientC = c(uri);
            if (contentProviderClientC != null || (i10 = i10 + 1) > 5) {
                break;
            }
            try {
                Thread.sleep(50L);
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
        }
        return contentProviderClientC;
    }

    private static ContentProviderClient c(Uri uri) {
        return Overmind.getContext().getContentResolver().acquireUnstableContentProviderClient(uri);
    }

    private static void d(ContentProviderClient client) {
        try {
            if (com.xinzhu.overmind.utils.e.d()) {
                client.release();
            } else {
                client.release();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
