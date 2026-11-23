package com.xpleemoon.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IntRange;
import androidx.viewpager.widget.PagerAdapter;
import com.xpleemoon.view.CarouselViewPager;

/* JADX INFO: loaded from: classes8.dex */
public abstract class a<V extends CarouselViewPager> extends PagerAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f90167b = 10;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private V f90168a;

    public a(V v10) {
        this.f90168a = v10;
    }

    @IntRange(from = 0)
    public abstract int b();

    public abstract Object c(ViewGroup viewGroup, int i10);

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void destroyItem(ViewGroup viewGroup, int i10, Object obj) {
        viewGroup.removeView((View) obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void finishUpdate(ViewGroup viewGroup) {
        if (getCount() <= 1) {
            return;
        }
        int currentItem = this.f90168a.getCurrentItem();
        if (currentItem == 0) {
            this.f90168a.setCurrentItem(b(), false);
        } else if (currentItem == getCount() - 1) {
            this.f90168a.setCurrentItem(b() - 1, false);
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final int getCount() {
        long jB = b();
        if (jB > 1) {
            jB = b() * 10;
            if (jB > 2147483647L) {
                jB = 2147483647L;
            }
        }
        return (int) jB;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final Object instantiateItem(ViewGroup viewGroup, int i10) {
        return c(viewGroup, i10 % b());
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }
}
