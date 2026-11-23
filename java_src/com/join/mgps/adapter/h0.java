package com.join.mgps.adapter;

import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.fragment.app.FragmentTransaction;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class h0 extends FragmentPagerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    FragmentManager f62224a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<a> f62225b;

    public interface b {
        Fragment a();
    }

    public h0(FragmentManager fm2) {
        super(fm2);
        this.f62224a = fm2;
    }

    public void b() {
        FragmentManager fragmentManager = this.f62224a;
        if (fragmentManager == null) {
            return;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        for (int i10 = 0; i10 < getCount(); i10++) {
            fragmentTransactionBeginTransaction.detach(getItem(i10));
        }
        if (c() != null) {
            c().clear();
            notifyDataSetChanged();
        }
    }

    public List<a> c() {
        return this.f62225b;
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup container, int position, Object object) {
        super.destroyItem(container, position, object);
    }

    public void e(List<a> mItems) {
        this.f62225b = mItems;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        List<a> list = this.f62225b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int position) {
        return this.f62225b.get(position).f62228c;
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public long getItemId(int position) {
        return super.getItemId(position);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int position) {
        return this.f62225b.get(position).f62226a;
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62226a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        b f62227b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Fragment f62228c;

        public a(String name, b provider) {
            this.f62226a = name;
            this.f62227b = provider;
        }

        public a(String name, Fragment fragment) {
            this.f62226a = name;
            this.f62228c = fragment;
        }
    }

    public h0(FragmentManager fm2, List<a> items) {
        super(fm2);
        this.f62224a = fm2;
        this.f62225b = items;
    }
}
