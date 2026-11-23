package com.byazt.jb;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 63, 133})
public final class z extends IOException {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final tt f15808c;

    public z(tt ttVar) {
        super("stream was reset: ".concat(String.valueOf(ttVar)));
        this.f15808c = ttVar;
    }
}
