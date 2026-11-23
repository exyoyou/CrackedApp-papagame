package com.byazt.yx;

import com.byazt.eg.d;
import com.byazt.eg.rl;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 252, 71})
public final class x extends d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f22480c;
    public final long tt;
    public final com.byazt.mk.n ve;

    public x(String str, long j10, com.byazt.mk.n nVar) {
        this.f22480c = str;
        this.tt = j10;
        this.ve = nVar;
    }

    @Override // com.byazt.eg.d
    public rl c() {
        String str = this.f22480c;
        if (str != null) {
            return rl.c(str);
        }
        return null;
    }

    @Override // com.byazt.eg.d
    public long tt() {
        return this.tt;
    }

    @Override // com.byazt.eg.d
    public com.byazt.mk.n ve() {
        return this.ve;
    }
}
