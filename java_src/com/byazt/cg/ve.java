package com.byazt.cg;

import android.text.TextUtils;
import com.byazt.dna.or;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 549, 54})
public class ve implements or {
    public tt tt = new tt();
    public c ve = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f12414c = !this.tt.c();

    @Override // com.byazt.dna.or
    public String get(String str) {
        String str2 = this.tt.c() ? this.tt.get(str) : "";
        return (this.f12414c && TextUtils.isEmpty(str2)) ? this.ve.get(str) : str2;
    }

    @Override // com.byazt.dna.or
    public boolean getBoolean(String str) {
        boolean z10 = this.tt.c() ? this.tt.getBoolean(str) : false;
        return (!this.f12414c || z10) ? z10 : this.ve.getBoolean(str);
    }

    @Override // com.byazt.dna.or
    public int getInt(String str) {
        int i10 = this.tt.c() ? this.tt.getInt(str) : Integer.MAX_VALUE;
        return (this.f12414c && i10 == Integer.MAX_VALUE) ? this.ve.getInt(str) : i10;
    }

    @Override // com.byazt.dna.or
    public long getLong(String str) {
        long j10 = this.tt.c() ? this.tt.getLong(str) : Long.MAX_VALUE;
        return (this.f12414c && j10 == 2147483647L) ? this.ve.getLong(str) : j10;
    }

    @Override // com.byazt.dna.or
    public void set(String str, String str2) {
        if (this.tt.c()) {
            this.tt.set(str, str2);
        }
    }
}
