package com.kwad.components.core.video;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public final class VideoAdapters {

    /* JADX INFO: renamed from: com.kwad.components.core.video.VideoAdapters$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] anJ;

        static {
            int[] iArr = new int[AdaptType.values().length];
            anJ = iArr;
            try {
                iArr[AdaptType.PORTRAIT_VERTICAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                anJ[AdaptType.LANDSCAPE_HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                anJ[AdaptType.PORTRAIT_HORIZONTAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                anJ[AdaptType.LANDSCAPE_VERTICAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    enum AdaptType {
        PORTRAIT_VERTICAL,
        PORTRAIT_HORIZONTAL,
        LANDSCAPE_VERTICAL,
        LANDSCAPE_HORIZONTAL
    }

    public static abstract class a implements com.kwad.components.core.video.c {
        private static boolean F(View view) {
            return view.isInLayout() || view.isLayoutRequested();
        }

        private static boolean b(View view, View view2, int i10, int i11) {
            if (view == null || i10 == 0 || i11 == 0 || view2 == null) {
                return false;
            }
            return (view2.getWidth() == 0 || view2.getHeight() == 0) ? false : true;
        }

        @Override // com.kwad.components.core.video.c
        public final void a(final View view, View view2, int i10, int i11) {
            AdaptType adaptType;
            if (!b(view, view2, i10, i11)) {
                com.kwad.sdk.core.d.c.d("AbstractVideoViewAdapter", "adaptVideo checkArguments invalid");
                return;
            }
            d dVar = new d(view2.getWidth(), view2.getHeight());
            d dVar2 = new d(i10, i11);
            boolean z10 = dVar2.getRatio() >= 1.0f;
            boolean z11 = dVar.getRatio() >= 1.0f;
            if (z11 && z10) {
                adaptType = AdaptType.PORTRAIT_VERTICAL;
            } else if (z11) {
                adaptType = AdaptType.PORTRAIT_HORIZONTAL;
            } else {
                adaptType = z10 ? AdaptType.LANDSCAPE_VERTICAL : AdaptType.LANDSCAPE_HORIZONTAL;
            }
            final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            a(adaptType, layoutParams, dVar, dVar2);
            if (F(view)) {
                view.post(new Runnable() { // from class: com.kwad.components.core.video.VideoAdapters.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        view.setLayoutParams(layoutParams);
                    }
                });
            } else {
                view.setLayoutParams(layoutParams);
            }
        }

        protected abstract void a(@NonNull AdaptType adaptType, @NonNull ViewGroup.LayoutParams layoutParams, @NonNull d dVar, @NonNull d dVar2);
    }

    public static class b extends a {
        private float anM = 0.8f;
        private float anN = 0.9375f;
        private float anO = 1.1046f;

        @Override // com.kwad.components.core.video.VideoAdapters.a
        protected final void a(@NonNull AdaptType adaptType, @NonNull ViewGroup.LayoutParams layoutParams, @NonNull d dVar, @NonNull d dVar2) {
            float fXO;
            float f10;
            float fXP = dVar.xP();
            float fXP2 = dVar2.xP();
            float fXO2 = dVar.xO();
            float fXN = dVar.xN();
            com.kwad.sdk.core.d.c.d("FullHeightAdapter", "onAdaptVideo containerSize: " + fXN + ", " + fXO2);
            int i10 = AnonymousClass1.anJ[adaptType.ordinal()];
            if (i10 == 1 || i10 == 2) {
                if (fXP > fXP2) {
                    float fXN2 = dVar.xN();
                    float f11 = fXN2 / fXP2;
                    float f12 = fXO2 / f11;
                    float f13 = this.anM;
                    if (f12 >= f13) {
                        f10 = fXN2;
                        fXO = f11;
                    } else {
                        fXO = fXO2 / f13;
                        f10 = fXO * fXP2;
                    }
                } else {
                    fXO = dVar.xO();
                    f10 = fXP2 * fXO;
                    float f14 = fXN / f10;
                    float f15 = this.anN;
                    if (f14 < f15) {
                        f10 = fXN / f15;
                        fXO = f10 / fXP2;
                    }
                }
            } else if (i10 == 3 || i10 == 4) {
                f10 = fXO2 * this.anO;
                fXO = f10 / fXP2;
            } else {
                fXO = -2.1474836E9f;
                f10 = -2.1474836E9f;
            }
            com.kwad.sdk.core.d.c.d("FullHeightAdapter", "onAdaptVideo result: " + f10 + ", " + fXO);
            if (f10 == -2.1474836E9f || fXO == -2.1474836E9f) {
                return;
            }
            if (dVar2.getHeight() >= dVar2.getWidth()) {
                layoutParams.width = (int) fXO;
                layoutParams.height = (int) f10;
            } else {
                layoutParams.height = (int) fXO;
                layoutParams.width = (int) f10;
            }
        }
    }

    public static class c extends a {
        @Override // com.kwad.components.core.video.VideoAdapters.a
        protected final void a(@NonNull AdaptType adaptType, @NonNull ViewGroup.LayoutParams layoutParams, @NonNull d dVar, @NonNull d dVar2) {
            float fXN;
            float fXO;
            float fXP = dVar.xP();
            float fXP2 = dVar2.xP();
            int i10 = AnonymousClass1.anJ[adaptType.ordinal()];
            if (i10 == 1 || i10 == 2) {
                if (fXP >= fXP2) {
                    fXO = dVar.xO();
                    fXN = fXO * fXP2;
                } else {
                    fXN = dVar.xN();
                    fXO = fXN / fXP2;
                }
            } else if (i10 == 3 || i10 == 4) {
                fXN = dVar.xO();
                fXO = fXN / fXP2;
            } else {
                fXN = 0.0f;
                fXO = -2.1474836E9f;
            }
            if (fXO == -2.1474836E9f || fXN == -2.1474836E9f) {
                return;
            }
            if (dVar2.getHeight() > dVar2.getWidth()) {
                layoutParams.width = (int) fXO;
                layoutParams.height = (int) fXN;
            } else {
                layoutParams.height = (int) fXO;
                layoutParams.width = (int) fXN;
            }
        }
    }

    static class d {
        float anP;
        float height;
        float width;

        public d(float f10, float f11) {
            this.anP = -1.0f;
            this.width = f10;
            this.height = f11;
            if (f10 <= 0.0f || f11 <= 0.0f) {
                return;
            }
            this.anP = f11 / f10;
        }

        private boolean isValid() {
            return this.width > 0.0f && this.height > 0.0f;
        }

        public final float getHeight() {
            return this.height;
        }

        public final float getRatio() {
            return this.anP;
        }

        public final float getWidth() {
            return this.width;
        }

        public final String toString() {
            return "ViewSize{width=" + this.width + ", height=" + this.height + ", ratio=" + this.anP + '}';
        }

        public final float xN() {
            if (isValid()) {
                return Math.max(this.width, this.height);
            }
            return -1.0f;
        }

        public final float xO() {
            if (isValid()) {
                return Math.min(this.width, this.height);
            }
            return -1.0f;
        }

        public final float xP() {
            if (!isValid()) {
                return -1.0f;
            }
            float f10 = this.height;
            float f11 = this.width;
            return f10 > f11 ? f10 / f11 : f11 / f10;
        }
    }
}
