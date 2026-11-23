package com.join.mgps.customview;

import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes3.dex */
public interface g0 extends ViewPager.OnPageChangeListener {
    void notifyDataSetChanged();

    void setCurrentItem(int item);

    void setOnPageChangeListener(ViewPager.OnPageChangeListener listener);

    void setViewPager(ViewPager view);

    void setViewPager(ViewPager view, int initialPosition);
}
