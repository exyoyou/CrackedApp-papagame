package com.join.mgps.fragment;

import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes3.dex */
public class c0 implements b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewPager f69136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FragmentManager f69137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.join.mgps.adapter.h0 f69138c;

    public c0(ViewPager pager, FragmentManager manager) {
        this.f69136a = pager;
        this.f69137b = manager;
        if (pager != null) {
            this.f69138c = (com.join.mgps.adapter.h0) pager.getAdapter();
        } else {
            this.f69138c = new com.join.mgps.adapter.h0(manager);
        }
    }

    private static String b(int viewId, long id2) {
        return "android:switcher:" + viewId + ":" + id2;
    }

    @Override // com.join.mgps.fragment.b0
    @Nullable
    public v1 a() {
        int currentItem = this.f69136a.getCurrentItem();
        if (currentItem < 0 || currentItem >= this.f69138c.getCount()) {
            return null;
        }
        Fragment fragmentFindFragmentByTag = this.f69137b.findFragmentByTag(b(this.f69136a.getId(), this.f69138c.getItemId(currentItem)));
        if (fragmentFindFragmentByTag != null) {
            return (v1) fragmentFindFragmentByTag;
        }
        return null;
    }
}
