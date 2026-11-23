package com.bykv.vk.component.ttvideo.utils;

/* JADX INFO: loaded from: classes9.dex */
public class AVUtils {

    public static class ScaleInfo {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f23281h;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public int f23282w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f23283x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f23284y;
    }

    public static final ScaleInfo getScaleInfoFromSize(float f10, float f11, float f12, float f13) {
        ScaleInfo scaleInfo = new ScaleInfo();
        float f14 = f10 / f11;
        scaleInfo.f23282w = (int) f12;
        int i10 = (int) (f12 / f14);
        scaleInfo.f23281h = i10;
        if (i10 < f13) {
            scaleInfo.f23281h = (int) f13;
            scaleInfo.f23282w = (int) (f14 * f13);
        }
        int i11 = scaleInfo.f23281h;
        int i12 = ((int) (i11 - f13)) >> 1;
        scaleInfo.f23284y = i12;
        int i13 = scaleInfo.f23282w;
        int i14 = ((int) (i13 - f12)) >> 1;
        scaleInfo.f23283x = i14;
        if (i11 > f13) {
            scaleInfo.f23284y = 0 - i12;
        }
        if (i13 > f12) {
            scaleInfo.f23283x = 0 - i14;
        }
        return scaleInfo;
    }
}
