package com.windmill.sdk.banner.animation;

import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: com.windmill.sdk.banner.animation.a$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f86554a;

        static {
            int[] iArr = new int[h.values().length];
            f86554a = iArr;
            try {
                iArr[h.FADE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f86554a[h.PUSH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f86554a[h.MOVEIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f86554a[h.REVEAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static f a(h type, long duration, g direction) {
        h hVar = h.RANDOM;
        if (type == hVar) {
            ArrayList arrayList = new ArrayList();
            Collections.addAll(arrayList, h.values());
            arrayList.remove(h.NONE);
            arrayList.remove(hVar);
            Collections.shuffle(arrayList);
            type = (h) arrayList.get(0);
        }
        int i10 = AnonymousClass1.f86554a[type.ordinal()];
        if (i10 == 1) {
            return new b(duration);
        }
        if (i10 == 2) {
            return new d(duration, direction);
        }
        if (i10 == 3) {
            return new c(duration, direction);
        }
        if (i10 != 4) {
            return null;
        }
        return new e(duration, direction);
    }
}
