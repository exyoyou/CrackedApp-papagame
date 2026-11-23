package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;

/* JADX INFO: loaded from: classes7.dex */
public class MergePaths implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5759a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final MergePathsMode f5760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f5761c;

    public enum MergePathsMode {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS;

        public static MergePathsMode forId(int i10) {
            if (i10 == 1) {
                return MERGE;
            }
            if (i10 == 2) {
                return ADD;
            }
            if (i10 == 3) {
                return SUBTRACT;
            }
            if (i10 != 4) {
                return i10 != 5 ? MERGE : EXCLUDE_INTERSECTIONS;
            }
            return INTERSECT;
        }
    }

    public MergePaths(String str, MergePathsMode mergePathsMode, boolean z10) {
        this.f5759a = str;
        this.f5760b = mergePathsMode;
        this.f5761c = z10;
    }

    @Override // com.airbnb.lottie.model.content.c
    @Nullable
    public com.airbnb.lottie.animation.content.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.j jVar, com.airbnb.lottie.model.layer.b bVar) {
        if (lottieDrawable.I()) {
            return new com.airbnb.lottie.animation.content.l(this);
        }
        com.airbnb.lottie.utils.f.e("Animation contains merge paths but they are disabled.");
        return null;
    }

    public MergePathsMode b() {
        return this.f5760b;
    }

    public String c() {
        return this.f5759a;
    }

    public boolean d() {
        return this.f5761c;
    }

    public String toString() {
        return "MergePaths{mode=" + this.f5760b + '}';
    }
}
