package com.facebook.imageformat;

import com.facebook.common.internal.ImmutableList;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f27532a = new c("JPEG", "jpeg");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final c f27533b = new c("PNG", "png");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f27534c = new c("GIF", "gif");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f27535d = new c("BMP", "bmp");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c f27536e = new c("ICO", "ico");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final c f27537f = new c("WEBP_SIMPLE", "webp");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final c f27538g = new c("WEBP_LOSSLESS", "webp");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final c f27539h = new c("WEBP_EXTENDED", "webp");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final c f27540i = new c("WEBP_EXTENDED_WITH_ALPHA", "webp");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final c f27541j = new c("WEBP_ANIMATED", "webp");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final c f27542k = new c("HEIF", "heif");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final c f27543l = new c("DNG", "dng");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static ImmutableList<c> f27544m;

    private b() {
    }

    public static List<c> a() {
        if (f27544m == null) {
            ArrayList arrayList = new ArrayList(9);
            arrayList.add(f27532a);
            arrayList.add(f27533b);
            arrayList.add(f27534c);
            arrayList.add(f27535d);
            arrayList.add(f27536e);
            arrayList.add(f27537f);
            arrayList.add(f27538g);
            arrayList.add(f27539h);
            arrayList.add(f27540i);
            arrayList.add(f27541j);
            arrayList.add(f27542k);
            f27544m = ImmutableList.copyOf((List) arrayList);
        }
        return f27544m;
    }

    public static boolean b(c imageFormat) {
        return imageFormat == f27537f || imageFormat == f27538g || imageFormat == f27539h || imageFormat == f27540i;
    }

    public static boolean c(c imageFormat) {
        return b(imageFormat) || imageFormat == f27541j;
    }
}
