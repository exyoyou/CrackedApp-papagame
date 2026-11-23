package com.join.mgps.customview;

import android.os.Parcelable;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.fragment.app.FragmentTransaction;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class f0 extends FragmentStatePagerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<String> f66351a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<Fragment> f66352b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private FragmentManager f66353c;

    public f0(FragmentManager fm2, ArrayList<Fragment> mPages, List<String> titles) {
        super(fm2);
        this.f66351a = new ArrayList(0);
        this.f66352b = new ArrayList<>(0);
        this.f66353c = fm2;
        d(mPages, titles);
    }

    public Fragment b(int position) {
        return this.f66352b.get(position);
    }

    public ArrayList<Fragment> c() {
        return this.f66352b;
    }

    public void d(List<Fragment> _mPages, List<String> _titles) {
        if (_mPages == null) {
            return;
        }
        this.f66352b.clear();
        this.f66352b.addAll(_mPages);
        if (_titles == null) {
            return;
        }
        this.f66351a.clear();
        this.f66351a.addAll(_titles);
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter, androidx.viewpager.widget.PagerAdapter
    public void destroyItem(@NonNull ViewGroup container, int position, @NonNull Object object) {
        container.removeView(this.f66352b.get(position).getView());
    }

    public void e(List<String> titles) {
        if (titles == null) {
            return;
        }
        this.f66351a.clear();
        this.f66351a.addAll(titles);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f66351a.size();
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter
    public Fragment getItem(int position) {
        return this.f66352b.get(position);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object object) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int position) {
        return this.f66351a.get(position);
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter, androidx.viewpager.widget.PagerAdapter
    @NonNull
    public Object instantiateItem(@NonNull ViewGroup container, int position) {
        Fragment fragment = this.f66352b.get(position);
        if (!fragment.isAdded()) {
            FragmentTransaction fragmentTransactionBeginTransaction = this.f66353c.beginTransaction();
            fragmentTransactionBeginTransaction.add(fragment, fragment.getClass().getSimpleName());
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
            this.f66353c.executePendingTransactions();
        }
        if (fragment.getView().getParent() == null) {
            container.addView(fragment.getView());
        }
        return fragment.getView();
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter, androidx.viewpager.widget.PagerAdapter
    public Parcelable saveState() {
        return null;
    }
}
