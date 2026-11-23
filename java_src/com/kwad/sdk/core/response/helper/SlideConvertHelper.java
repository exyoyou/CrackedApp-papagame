package com.kwad.sdk.core.response.helper;

import androidx.annotation.NonNull;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;

/* JADX INFO: loaded from: classes2.dex */
public final class SlideConvertHelper {

    public enum SlideDirection {
        UP(0),
        DOWN(1),
        LEFT(2),
        RIGHT(3);

        public int value;

        SlideDirection(int i10) {
            this.value = i10;
        }
    }

    public static boolean a(@NonNull AdTemplate adTemplate, float f10, float f11, float f12, float f13) {
        SlideDirection slideDirection;
        AdInfo adInfoEO = e.eO(adTemplate);
        boolean zED = d.eD(adTemplate);
        String strAs = a.as(adInfoEO);
        int iAr = a.ar(adInfoEO);
        double d10 = f12 - f10;
        double d11 = f13 - f11;
        float fPx2dip = com.kwad.sdk.c.a.a.px2dip(ServiceProvider.getContext(), (float) Math.sqrt(Math.pow(d10, 2.0d) + Math.pow(d11, 2.0d)));
        if (Math.abs(d10) >= Math.abs(d11)) {
            slideDirection = d10 > 0.0d ? SlideDirection.RIGHT : SlideDirection.LEFT;
        } else {
            slideDirection = d11 > 0.0d ? SlideDirection.DOWN : SlideDirection.UP;
        }
        return zED && fPx2dip > ((float) iAr) && strAs.charAt(slideDirection.value) == '1';
    }
}
