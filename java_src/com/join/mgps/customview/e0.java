package com.join.mgps.customview;

import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class e0 extends FragmentStatePagerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<String> f66337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<Fragment> f66338b;

    public e0(FragmentManager fm2, ArrayList<? extends Fragment> mPages, List<String> titles) {
        super(fm2);
        this.f66337a = new ArrayList(0);
        this.f66338b = new ArrayList<>(0);
        d(mPages, titles);
    }

    public Fragment b(int position) {
        return this.f66338b.get(position);
    }

    public ArrayList<Fragment> c() {
        return this.f66338b;
    }

    public void d(List<? extends Fragment> _mPages, List<String> _titles) {
        if (_mPages == null) {
            return;
        }
        this.f66338b.clear();
        this.f66338b.addAll(_mPages);
        if (_titles == null) {
            return;
        }
        this.f66337a.clear();
        this.f66337a.addAll(_titles);
    }

    public void e(List<String> titles) {
        if (titles == null) {
            return;
        }
        this.f66337a.clear();
        this.f66337a.addAll(titles);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f66337a.size();
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter
    public Fragment getItem(int position) {
        return this.f66338b.get(position);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object object) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int position) {
        return this.f66337a.get(position);
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter, androidx.viewpager.widget.PagerAdapter
    public Parcelable saveState() {
        return null;
    }
}
