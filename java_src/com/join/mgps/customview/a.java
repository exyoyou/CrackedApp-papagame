package com.join.mgps.customview;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IntRange;
import androidx.viewpager.widget.PagerAdapter;
import com.join.mgps.customview.CarouselViewPager2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a<V extends CarouselViewPager2> extends PagerAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f66257b = 10;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private V f66258a;

    public a(V viewPager) {
        this.f66258a = viewPager;
    }

    @IntRange(from = 0)
    public abstract int b();

    public abstract Object c(ViewGroup container, int position);

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void destroyItem(ViewGroup container, int position, Object object) {
        container.removeView((View) object);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void finishUpdate(ViewGroup container) {
        if (getCount() <= 1) {
            return;
        }
        int currentItem = this.f66258a.getCurrentItem();
        if (currentItem == 0) {
            this.f66258a.setCurrentItem(b(), false);
        } else if (currentItem == getCount() - 1) {
            this.f66258a.setCurrentItem(b() - 1, false);
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
    public final Object instantiateItem(ViewGroup container, int position) {
        return c(container, position % b());
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean isViewFromObject(View view, Object object) {
        return view == object;
    }
}
