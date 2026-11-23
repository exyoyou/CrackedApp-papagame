package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import com.airbnb.lottie.model.content.Mask;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<a<com.airbnb.lottie.model.content.j, Path>> f5534a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<a<Integer, Integer>> f5535b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<Mask> f5536c;

    public h(List<Mask> list) {
        this.f5536c = list;
        this.f5534a = new ArrayList(list.size());
        this.f5535b = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f5534a.add(list.get(i10).b().a());
            this.f5535b.add(list.get(i10).c().a());
        }
    }

    public List<a<com.airbnb.lottie.model.content.j, Path>> a() {
        return this.f5534a;
    }

    public List<Mask> b() {
        return this.f5536c;
    }

    public List<a<Integer, Integer>> c() {
        return this.f5535b;
    }
}
