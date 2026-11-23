package com.kwad.sdk.api.loader;

import android.app.Application;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    public static Application HD() {
        try {
            return (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
