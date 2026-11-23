package com.sigmob.sdk.downloader;

import java.io.IOException;
import java.net.ProtocolException;

/* JADX INFO: loaded from: classes3.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f80794a = 10;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final int f80795b = 307;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final int f80796c = 308;

    public static String a(com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a connected, int responseCode) throws IOException {
        String strC = connected.c("Location");
        if (strC != null) {
            return strC;
        }
        throw new ProtocolException("Response code is " + responseCode + " but can't find Location field");
    }

    public static boolean a(int code) {
        return code == 301 || code == 302 || code == 303 || code == 300 || code == 307 || code == 308;
    }
}
