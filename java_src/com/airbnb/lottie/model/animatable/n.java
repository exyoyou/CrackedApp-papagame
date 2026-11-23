package com.airbnb.lottie.model.animatable;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
abstract class n<V, O> implements m<V, O> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final List<com.airbnb.lottie.value.a<V>> f5742a;

    n(V v10) {
        this(Collections.singletonList(new com.airbnb.lottie.value.a(v10)));
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public List<com.airbnb.lottie.value.a<V>> b() {
        return this.f5742a;
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public boolean c() {
        if (this.f5742a.isEmpty()) {
            return true;
        }
        return this.f5742a.size() == 1 && this.f5742a.get(0).i();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (!this.f5742a.isEmpty()) {
            sb2.append("values=");
            sb2.append(Arrays.toString(this.f5742a.toArray()));
        }
        return sb2.toString();
    }

    n(List<com.airbnb.lottie.value.a<V>> list) {
        this.f5742a = list;
    }
}
