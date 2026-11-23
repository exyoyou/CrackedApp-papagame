package com.sigmob.sdk.videocache;

/* JADX INFO: loaded from: classes3.dex */
public class p extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f81975a = ". Version: 4.25.21";

    public p(String message) {
        super(message + f81975a);
    }

    public p(String message, Throwable cause) {
        super(message + f81975a, cause);
    }

    public p(Throwable cause) {
        super("No explanation error. Version: 4.25.21", cause);
    }
}
