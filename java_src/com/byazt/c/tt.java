package com.byazt.c;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 20, 13})
public abstract class tt implements qy {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f12224c = false;

    @Override // com.byazt.c.qy
    public void c(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f12224c = true;
    }

    @Override // com.byazt.c.qy
    public boolean c() {
        return this.f12224c;
    }
}
