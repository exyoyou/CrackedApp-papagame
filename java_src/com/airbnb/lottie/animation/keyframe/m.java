package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.content.t;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class m extends a<com.airbnb.lottie.model.content.j, Path> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.airbnb.lottie.model.content.j f5545i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Path f5546j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<t> f5547k;

    public m(List<com.airbnb.lottie.value.a<com.airbnb.lottie.model.content.j>> list) {
        super(list);
        this.f5545i = new com.airbnb.lottie.model.content.j();
        this.f5546j = new Path();
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public Path i(com.airbnb.lottie.value.a<com.airbnb.lottie.model.content.j> aVar, float f10) {
        this.f5545i.c(aVar.f6133b, aVar.f6134c, f10);
        com.airbnb.lottie.model.content.j jVarF = this.f5545i;
        List<t> list = this.f5547k;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                jVarF = this.f5547k.get(size).f(jVarF);
            }
        }
        com.airbnb.lottie.utils.k.i(jVarF, this.f5546j);
        return this.f5546j;
    }

    public void q(@Nullable List<t> list) {
        this.f5547k = list;
    }
}
