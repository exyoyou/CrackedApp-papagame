package com.byazt.uy;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1180, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<ve, List<c>> f21113c = new HashMap();
    public Map<String, String> tt = new HashMap();
    public final List<Object> ve = new CopyOnWriteArrayList();
    public final List<Object> uj = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List<Object> f21114n = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<Object> f21112a = new CopyOnWriteArrayList();
    public a sp = null;

    @Nullable
    public List<c> c(ve veVar) {
        return this.f21113c.get(veVar);
    }

    @NonNull
    public List<Object> tt() {
        return this.uj;
    }

    @Nullable
    public a uj() {
        return this.sp;
    }

    @NonNull
    public List<Object> ve() {
        return this.f21112a;
    }

    public void c(Map<? extends String, ? extends String> map) {
        this.tt.putAll(map);
    }

    public Map<String, String> c() {
        return this.tt;
    }

    public void c(a aVar) {
        this.sp = aVar;
    }
}
