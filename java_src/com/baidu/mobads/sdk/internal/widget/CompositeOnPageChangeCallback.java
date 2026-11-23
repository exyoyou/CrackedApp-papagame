package com.baidu.mobads.sdk.internal.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Px;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
final class CompositeOnPageChangeCallback extends ViewPager2.OnPageChangeCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final List<ViewPager2.OnPageChangeCallback> f7948a;

    CompositeOnPageChangeCallback(int i10) {
        this.f7948a = new ArrayList(i10);
    }

    void a(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.f7948a.add(onPageChangeCallback);
    }

    void b(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.f7948a.remove(onPageChangeCallback);
    }

    @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrollStateChanged(int i10) {
        try {
            Iterator<ViewPager2.OnPageChangeCallback> it2 = this.f7948a.iterator();
            while (it2.hasNext()) {
                it2.next().onPageScrollStateChanged(i10);
            }
        } catch (ConcurrentModificationException e10) {
            a(e10);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrolled(int i10, float f10, @Px int i11) {
        try {
            Iterator<ViewPager2.OnPageChangeCallback> it2 = this.f7948a.iterator();
            while (it2.hasNext()) {
                it2.next().onPageScrolled(i10, f10, i11);
            }
        } catch (ConcurrentModificationException e10) {
            a(e10);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
    public void onPageSelected(int i10) {
        try {
            Iterator<ViewPager2.OnPageChangeCallback> it2 = this.f7948a.iterator();
            while (it2.hasNext()) {
                it2.next().onPageSelected(i10);
            }
        } catch (ConcurrentModificationException e10) {
            a(e10);
        }
    }

    private void a(ConcurrentModificationException concurrentModificationException) {
        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", concurrentModificationException);
    }
}
