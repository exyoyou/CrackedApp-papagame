package com.kwad.sdk.api.loader;

import com.kwad.sdk.liteapi.KsLiteApiImpl;

/* JADX INFO: loaded from: classes2.dex */
public final class r {
    public static q HH() {
        try {
            return (q) KsLiteApiImpl.class.newInstance();
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
            return null;
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
            return null;
        } catch (InstantiationException e12) {
            e12.printStackTrace();
            return null;
        }
    }
}
