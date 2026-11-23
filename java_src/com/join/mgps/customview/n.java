package com.join.mgps.customview;

import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.viewpager.widget.PagerAdapter;

/* JADX INFO: loaded from: classes3.dex */
public class n extends PagerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private PagerAdapter f66690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SparseArray<a> f66691b = new SparseArray<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f66692c;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewGroup f66693a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f66694b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Object f66695c;

        public a(ViewGroup container, int position, Object object) {
            this.f66693a = container;
            this.f66694b = position;
            this.f66695c = object;
        }
    }

    n(PagerAdapter adapter) {
        this.f66690a = adapter;
    }

    private int d() {
        return 1;
    }

    private int e() {
        return (d() + c()) - 1;
    }

    public PagerAdapter b() {
        return this.f66690a;
    }

    public int c() {
        return this.f66690a.getCount();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup container, int position, Object object) {
        int iD = d();
        int iE = e();
        PagerAdapter pagerAdapter = this.f66690a;
        int iH = ((pagerAdapter instanceof FragmentPagerAdapter) || (pagerAdapter instanceof FragmentStatePagerAdapter)) ? position : h(position);
        if (this.f66692c && (position == iD || position == iE)) {
            this.f66691b.put(position, new a(container, iH, object));
        } else {
            this.f66690a.destroyItem(container, iH, object);
        }
    }

    void f(boolean flag) {
        this.f66692c = flag;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void finishUpdate(ViewGroup container) {
        this.f66690a.finishUpdate(container);
    }

    public int g(int realPosition) {
        return realPosition + 1;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f66690a.getCount() + 2;
    }

    int h(int position) {
        int iC = c();
        if (iC == 0) {
            return 0;
        }
        int i10 = (position - 1) % iC;
        return i10 < 0 ? i10 + iC : i10;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup container, int position) {
        a aVar;
        PagerAdapter pagerAdapter = this.f66690a;
        int iH = ((pagerAdapter instanceof FragmentPagerAdapter) || (pagerAdapter instanceof FragmentStatePagerAdapter)) ? position : h(position);
        if (!this.f66692c || (aVar = this.f66691b.get(position)) == null) {
            return this.f66690a.instantiateItem(container, iH);
        }
        this.f66691b.remove(position);
        return aVar.f66695c;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object object) {
        return this.f66690a.isViewFromObject(view, object);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void notifyDataSetChanged() {
        this.f66691b = new SparseArray<>();
        super.notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(Parcelable bundle, ClassLoader classLoader) {
        this.f66690a.restoreState(bundle, classLoader);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Parcelable saveState() {
        return this.f66690a.saveState();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(ViewGroup container, int position, Object object) {
        this.f66690a.setPrimaryItem(container, position, object);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(ViewGroup container) {
        this.f66690a.startUpdate(container);
    }
}
