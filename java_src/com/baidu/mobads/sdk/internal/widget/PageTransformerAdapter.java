package com.baidu.mobads.sdk.internal.widget;

import android.view.View;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
final class PageTransformerAdapter extends ViewPager2.OnPageChangeCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayoutManager f7957a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewPager2.PageTransformer f7958b;

    PageTransformerAdapter(LinearLayoutManager linearLayoutManager) {
        this.f7957a = linearLayoutManager;
    }

    ViewPager2.PageTransformer a() {
        return this.f7958b;
    }

    @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrollStateChanged(int i10) {
    }

    @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrolled(int i10, float f10, int i11) {
        if (this.f7958b == null) {
            return;
        }
        float f11 = -f10;
        for (int i12 = 0; i12 < this.f7957a.getChildCount(); i12++) {
            View childAt = this.f7957a.getChildAt(i12);
            if (childAt == null) {
                throw new IllegalStateException(String.format(Locale.US, "LayoutManager returned a null child at pos %d/%d while transforming pages", Integer.valueOf(i12), Integer.valueOf(this.f7957a.getChildCount())));
            }
            this.f7958b.transformPage(childAt, (this.f7957a.getPosition(childAt) - i10) + f11);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
    public void onPageSelected(int i10) {
    }

    void a(@Nullable ViewPager2.PageTransformer pageTransformer) {
        this.f7958b = pageTransformer;
    }
}
