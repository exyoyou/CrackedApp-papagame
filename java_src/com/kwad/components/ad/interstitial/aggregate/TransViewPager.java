package com.kwad.components.ad.interstitial.aggregate;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.widget.f;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TransViewPager extends f {
    private float lY;

    @SlideType
    private int lZ;
    private Map<Integer, com.kwad.components.ad.interstitial.h.c> map;

    public TransViewPager(@NonNull Context context) {
        this(context, null);
    }

    private void a(View view, View view2, float f10) {
        if (this.lZ == 0 && f10 != 0.0f) {
            float f11 = this.lY;
            if (f11 != 0.0f) {
                if (f10 > f11) {
                    this.lZ = 1;
                } else {
                    this.lZ = 2;
                }
            }
        }
        if (this.lZ == 1 && view2 != null) {
            if (f10 > 0.5d || f10 <= 0.0f) {
                view2.setTranslationX((1.0f - f10) * 240.0f);
            } else {
                view2.setTranslationX(240.0f * f10);
            }
        }
        if (this.lZ == 2 && view != null) {
            if (f10 > 0.5d || f10 < 0.0f) {
                view.setTranslationX((1.0f - f10) * (-240.0f));
            } else {
                view.setTranslationX((-240.0f) * f10);
            }
        }
        this.lY = f10;
        if (f10 == 0.0f) {
            this.lZ = 0;
        }
    }

    public final com.kwad.components.ad.interstitial.h.c U(int i10) {
        return this.map.get(Integer.valueOf(i10));
    }

    @Override // androidx.viewpager.widget.ViewPager
    protected void onPageScrolled(int i10, float f10, int i11) {
        a(U(i10), U(i10 + 1), f10);
        super.onPageScrolled(i10, f10, i11);
    }

    public TransViewPager(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.map = new HashMap();
        this.lZ = 0;
    }

    public final void a(int i10, com.kwad.components.ad.interstitial.h.c cVar) {
        this.map.put(Integer.valueOf(i10), cVar);
    }
}
