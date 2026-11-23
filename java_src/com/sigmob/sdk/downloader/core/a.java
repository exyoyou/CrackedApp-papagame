package com.sigmob.sdk.downloader.core;

import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f80354f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final File f80355g = new File("");

    public boolean a(a another) {
        if (!i().equals(another.i()) || i().equals("") || l().equals(f80355g)) {
            return false;
        }
        if (k().equals(another.k())) {
            return true;
        }
        if (!l().equals(another.l())) {
            return false;
        }
        String strD = d();
        String strD2 = another.d();
        return (strD2 == null || strD == null || !strD2.equals(strD)) ? false : true;
    }

    public abstract int c();

    public abstract String d();

    public abstract String i();

    protected abstract File k();

    public abstract File l();
}
