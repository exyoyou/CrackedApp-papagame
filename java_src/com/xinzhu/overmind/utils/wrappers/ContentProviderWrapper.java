package com.xinzhu.overmind.utils.wrappers;

import android.content.ContentProviderClient;
import android.net.Uri;
import android.os.Bundle;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.utils.e;

/* JADX INFO: loaded from: classes8.dex */
public class ContentProviderWrapper {
    private static final int RETRY_COUNT_LIMIT = 5;

    public static Bundle acquire(String str, String str2, String str3, Bundle bundle) {
        Uri uri = Uri.parse("content://" + str);
        ContentProviderClient contentProviderClientAcquireContentProviderClient = acquireContentProviderClient(uri);
        if (contentProviderClientAcquireContentProviderClient == null) {
            throw new RuntimeException("ContentProviderWrapper get null content provider " + uri);
        }
        try {
            Bundle bundleCall = contentProviderClientAcquireContentProviderClient.call(str2, str3, bundle);
            closeOrRelease(contentProviderClientAcquireContentProviderClient);
            return bundleCall;
        } catch (Throwable th) {
            try {
                throw new RuntimeException(th.getMessage());
            } catch (Throwable th2) {
                closeOrRelease(contentProviderClientAcquireContentProviderClient);
                throw th2;
            }
        }
    }

    private static ContentProviderClient acquireContentProviderClient(Uri uri) {
        ContentProviderClient contentProviderClientAcquireContentProviderClientNoRetry;
        int i10 = 0;
        while (true) {
            contentProviderClientAcquireContentProviderClientNoRetry = acquireContentProviderClientNoRetry(uri);
            if (contentProviderClientAcquireContentProviderClientNoRetry != null || (i10 = i10 + 1) > 5) {
                break;
            }
            try {
                Thread.sleep(50L);
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
        }
        return contentProviderClientAcquireContentProviderClientNoRetry;
    }

    private static ContentProviderClient acquireContentProviderClientNoRetry(Uri uri) {
        return Overmind.getContext().getContentResolver().acquireUnstableContentProviderClient(uri);
    }

    private static void closeOrRelease(ContentProviderClient contentProviderClient) {
        try {
            if (e.d()) {
                contentProviderClient.release();
            } else {
                contentProviderClient.release();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
