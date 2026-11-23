package com.join.mgps.adapter;

import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import com.join.mgps.dto.GameDiscoverBean;
import com.join.mgps.fragment.CardFragment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class d extends FragmentStatePagerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<GameDiscoverBean> f61392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<Fragment> f61393b;

    public d(FragmentManager paramFragmentManager, List<GameDiscoverBean> paramList) {
        super(paramFragmentManager);
        this.f61393b = new ArrayList();
        for (GameDiscoverBean gameDiscoverBean : paramList) {
            gameDiscoverBean.set_from(105);
            CardFragment cardFragmentO = CardFragment.O(gameDiscoverBean);
            cardFragmentO.R(gameDiscoverBean);
            this.f61393b.add(cardFragmentO);
        }
        this.f61392a = paramList;
    }

    public void b(List<GameDiscoverBean> cardList) {
        ArrayList arrayList = new ArrayList();
        Iterator<GameDiscoverBean> it2 = cardList.iterator();
        while (it2.hasNext()) {
            arrayList.add(CardFragment.O(it2.next()));
        }
        if (this.f61393b == null) {
            this.f61393b = new ArrayList();
        }
        this.f61393b.addAll(arrayList);
        this.f61392a.addAll(cardList);
    }

    public List<GameDiscoverBean> c() {
        return this.f61392a;
    }

    public List<Fragment> d() {
        return this.f61393b;
    }

    public void e(List<GameDiscoverBean> cardList) {
        ArrayList arrayList = new ArrayList();
        Iterator<GameDiscoverBean> it2 = cardList.iterator();
        while (it2.hasNext()) {
            arrayList.add(CardFragment.O(it2.next()));
        }
        this.f61393b = arrayList;
        this.f61392a = cardList;
    }

    public void f(List<Fragment> paramList) {
        this.f61393b = paramList;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f61393b.size();
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter
    public Fragment getItem(int paramInt) {
        return this.f61393b.get(paramInt);
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter, androidx.viewpager.widget.PagerAdapter
    @Nullable
    public Parcelable saveState() {
        return null;
    }
}
