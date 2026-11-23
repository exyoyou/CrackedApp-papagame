package com.join.mgps.adapter;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class g3 extends PagerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<View> f62207a;

    public g3() {
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup container, int position, Object object) {
        container.removeView((View) object);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        List<View> list = this.f62207a;
        if (list == null || list.size() <= 0) {
            return 0;
        }
        return this.f62207a.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object object) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup container, int position) {
        container.addView(this.f62207a.get(position));
        return this.f62207a.get(position);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View arg0, Object arg1) {
        return arg0 == arg1;
    }

    public g3(List<View> list) {
        this.f62207a = list;
    }
}
