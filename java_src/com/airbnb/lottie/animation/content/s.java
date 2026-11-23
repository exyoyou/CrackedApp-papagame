package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class s implements n, com.airbnb.lottie.animation.keyframe.a.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f5491c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LottieDrawable f5492d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.m f5493e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private List<t> f5494f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f5495g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f5489a = new Path();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b f5496h = new b();

    public s(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.b bVar, com.airbnb.lottie.model.content.m mVar) {
        this.f5490b = mVar.b();
        this.f5491c = mVar.d();
        this.f5492d = lottieDrawable;
        com.airbnb.lottie.animation.keyframe.m mVarA = mVar.c().a();
        this.f5493e = mVarA;
        bVar.i(mVarA);
        mVarA.a(this);
    }

    private void b() {
        this.f5495g = false;
        this.f5492d.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.b
    public void d() {
        b();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0026  */
    /* JADX WARN: Code duplicated, block: B:12:0x002a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:13:0x002c  */
    /* JADX WARN: Code duplicated, block: B:21:0x0036 A[SYNTHETIC] */
    @Override // com.airbnb.lottie.animation.content.c
    public void e(List<c> list, List<c> list2) {
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = list.get(i10);
            if (cVar instanceof v) {
                v vVar = (v) cVar;
                if (vVar.getType() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f5496h.a(vVar);
                    vVar.b(this);
                } else if (!(cVar instanceof t)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((t) cVar);
                }
            } else if (!(cVar instanceof t)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add((t) cVar);
            }
        }
        this.f5493e.q(arrayList);
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f5490b;
    }

    @Override // com.airbnb.lottie.animation.content.n
    public Path getPath() {
        if (this.f5495g) {
            return this.f5489a;
        }
        this.f5489a.reset();
        if (this.f5491c) {
            this.f5495g = true;
            return this.f5489a;
        }
        Path pathH = this.f5493e.h();
        if (pathH == null) {
            return this.f5489a;
        }
        this.f5489a.set(pathH);
        this.f5489a.setFillType(Path.FillType.EVEN_ODD);
        this.f5496h.b(this.f5489a);
        this.f5495g = true;
        return this.f5489a;
    }
}
