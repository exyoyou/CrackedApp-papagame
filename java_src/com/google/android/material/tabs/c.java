package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.internal.p0;

/* JADX INFO: loaded from: classes5.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Dimension(unit = 0)
    private static final int f32059a = 24;

    c() {
    }

    static RectF a(TabLayout tabLayout, @Nullable View view) {
        if (view == null) {
            return new RectF();
        }
        return (tabLayout.H() || !(view instanceof TabLayout.TabView)) ? new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()) : b((TabLayout.TabView) view, 24);
    }

    static RectF b(@NonNull TabLayout.TabView tabView, @Dimension(unit = 0) int i10) {
        int contentWidth = tabView.getContentWidth();
        int contentHeight = tabView.getContentHeight();
        int i11 = (int) p0.i(tabView.getContext(), i10);
        if (contentWidth < i11) {
            contentWidth = i11;
        }
        int left = (tabView.getLeft() + tabView.getRight()) / 2;
        int top = (tabView.getTop() + tabView.getBottom()) / 2;
        int i12 = contentWidth / 2;
        return new RectF(left - i12, top - (contentHeight / 2), i12 + left, top + (left / 2));
    }

    void c(TabLayout tabLayout, View view, @NonNull Drawable drawable) {
        RectF rectFA = a(tabLayout, view);
        drawable.setBounds((int) rectFA.left, drawable.getBounds().top, (int) rectFA.right, drawable.getBounds().bottom);
    }

    void d(TabLayout tabLayout, View view, View view2, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, @NonNull Drawable drawable) {
        RectF rectFA = a(tabLayout, view);
        RectF rectFA2 = a(tabLayout, view2);
        drawable.setBounds(com.google.android.material.animation.b.c((int) rectFA.left, (int) rectFA2.left, f10), drawable.getBounds().top, com.google.android.material.animation.b.c((int) rectFA.right, (int) rectFA2.right, f10), drawable.getBounds().bottom);
    }
}
