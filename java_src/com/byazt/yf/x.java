package com.byazt.yf;

import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, TypedValues.PositionType.TYPE_CURVE_FIT, 71})
public class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f22210c;
    public String tt;
    public boolean uj;
    public boolean ve;

    @com.byazt.zqa.c(c = {0, 1, TypedValues.PositionType.TYPE_CURVE_FIT, 62})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f22211c = false;
        public String tt = null;
        public boolean ve = false;
        public boolean uj = false;

        public c c(boolean z10) {
            this.f22211c = z10;
            return this;
        }

        public c tt(boolean z10) {
            this.ve = z10;
            return this;
        }

        public c ve(boolean z10) {
            this.uj = z10;
            return this;
        }

        public c c(String str) {
            this.tt = str;
            return this;
        }

        public x c() {
            return new x(this);
        }
    }

    @Nullable
    public String c() {
        return this.tt;
    }

    public boolean tt() {
        return this.f22210c;
    }

    public boolean uj() {
        return this.uj;
    }

    public boolean ve() {
        return this.ve;
    }

    private x(c cVar) {
        this.f22210c = cVar.f22211c;
        this.tt = cVar.tt;
        this.ve = cVar.ve;
        this.uj = cVar.uj;
    }
}
