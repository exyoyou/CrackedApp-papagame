package com.byazt.oz;

import com.byazt.yj.m;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 213, 15})
public class uj<T> implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f18567a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f18568c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.yj.x f18569da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f18570i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f18571n;
    public int sl;
    public Map<String, String> sp;
    public String tt;
    public T uj;
    public T ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f18572x;

    public uj c(ve veVar, T t10) {
        this.ve = t10;
        this.f18568c = veVar.getMemoryCacheKey();
        this.tt = veVar.getUrl();
        this.f18571n = veVar.getWidth();
        this.f18567a = veVar.getHeight();
        this.f18570i = veVar.x();
        this.f18569da = veVar.da();
        this.sl = veVar.sl();
        return this;
    }

    @Override // com.byazt.yj.m
    public String getCacheKey() {
        return this.f18568c;
    }

    @Override // com.byazt.yj.m
    public int getFileSize() {
        return this.sl;
    }

    @Override // com.byazt.yj.m
    public Map<String, String> getHeaders() {
        return this.sp;
    }

    @Override // com.byazt.yj.m
    public int getHeight() {
        return this.f18567a;
    }

    @Override // com.byazt.yj.m
    public com.byazt.yj.x getHttpTime() {
        return this.f18569da;
    }

    @Override // com.byazt.yj.m
    public T getOriginResult() {
        return this.uj;
    }

    @Override // com.byazt.yj.m
    public T getResult() {
        return this.ve;
    }

    @Override // com.byazt.yj.m
    public String getUrl() {
        return this.tt;
    }

    @Override // com.byazt.yj.m
    public int getWidth() {
        return this.f18571n;
    }

    @Override // com.byazt.yj.m
    public boolean isGif() {
        return this.f18572x;
    }

    @Override // com.byazt.yj.m
    public boolean isLocal() {
        return this.f18570i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.byazt.yj.m
    public void setResult(Object obj) {
        this.uj = this.ve;
        this.ve = obj;
    }

    public uj c(ve veVar, T t10, Map<String, String> map, boolean z10) {
        this.sp = map;
        this.f18572x = z10;
        return c(veVar, t10);
    }
}
