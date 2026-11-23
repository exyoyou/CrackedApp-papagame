package com.googlecode.mp4parser.util;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class h extends j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Logger f33788a;

    public h(String str) {
        this.f33788a = Logger.getLogger(str);
    }

    @Override // com.googlecode.mp4parser.util.j
    public void b(String str) {
        this.f33788a.log(Level.FINE, str);
    }

    @Override // com.googlecode.mp4parser.util.j
    public void c(String str) {
        this.f33788a.log(Level.SEVERE, str);
    }

    @Override // com.googlecode.mp4parser.util.j
    public void d(String str) {
        this.f33788a.log(Level.WARNING, str);
    }
}
