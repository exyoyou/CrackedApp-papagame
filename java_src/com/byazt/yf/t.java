package com.byazt.yf;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, TypedValues.PositionType.TYPE_CURVE_FIT, 66})
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String[] f22197a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f22198c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f22199i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[] f22200n;
    public String sp;
    public int tt;
    public boolean uj;
    public boolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Map<String, String> f22201x;

    @com.byazt.zqa.c(c = {0, 1, TypedValues.PositionType.TYPE_CURVE_FIT, 125})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f22203c = false;
        public int tt = 0;
        public boolean ve = true;
        public boolean uj = false;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int[] f22205n = {4, 3, 5};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String[] f22202a = new String[0];
        public String sp = "";

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final Map<String, String> f22206x = new HashMap();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f22204i = "";

        public c c(boolean z10) {
            this.f22203c = z10;
            return this;
        }

        public c tt(boolean z10) {
            this.ve = z10;
            return this;
        }

        public c c(int i10) {
            this.tt = i10;
            return this;
        }

        public c tt(@NonNull String str) {
            this.f22204i = str;
            return this;
        }

        public c c(@NonNull int... iArr) {
            this.f22205n = iArr;
            return this;
        }

        public c c(@NonNull String str) {
            this.sp = str;
            return this;
        }

        public c c(@NonNull Map<String, String> map) {
            this.f22206x.putAll(map);
            return this;
        }

        public t c() {
            return new t(this);
        }
    }

    @Nullable
    public String[] a() {
        return this.f22197a;
    }

    public boolean c() {
        return this.f22198c;
    }

    @Nullable
    public String i() {
        return this.f22199i;
    }

    public int[] n() {
        return this.f22200n;
    }

    @Nullable
    public String sp() {
        return this.sp;
    }

    public int tt() {
        return this.tt;
    }

    public boolean uj() {
        return this.uj;
    }

    public boolean ve() {
        return this.ve;
    }

    @NonNull
    public Map<String, String> x() {
        return this.f22201x;
    }

    private t(c cVar) {
        this.f22198c = cVar.f22203c;
        this.tt = cVar.tt;
        this.ve = cVar.ve;
        this.uj = cVar.uj;
        this.f22200n = cVar.f22205n;
        this.f22197a = cVar.f22202a;
        this.sp = cVar.sp;
        this.f22201x = cVar.f22206x;
        this.f22199i = cVar.f22204i;
    }
}
