package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<v> f5373a = new ArrayList();

    void a(v vVar) {
        this.f5373a.add(vVar);
    }

    public void b(Path path) {
        for (int size = this.f5373a.size() - 1; size >= 0; size--) {
            com.airbnb.lottie.utils.l.b(path, this.f5373a.get(size));
        }
    }
}
