package com.byazt.kd;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1714, 215})
public abstract class yp<V, O> implements u<V, O> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<com.byazt.vc.c<V>> f16177c;

    public yp(List<com.byazt.vc.c<V>> list) {
        this.f16177c = list;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (!this.f16177c.isEmpty()) {
            sb2.append("values=");
            sb2.append(Arrays.toString(this.f16177c.toArray()));
        }
        return sb2.toString();
    }

    @Override // com.byazt.kd.u
    public boolean tt() {
        return this.f16177c.isEmpty() || (this.f16177c.size() == 1 && this.f16177c.get(0).n());
    }

    @Override // com.byazt.kd.u
    public List<com.byazt.vc.c<V>> ve() {
        return this.f16177c;
    }
}
