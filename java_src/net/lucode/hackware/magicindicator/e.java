package net.lucode.hackware.magicindicator;

import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes.dex */
public class e {

    static class a implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MagicIndicator f94893b;

        a(MagicIndicator magicIndicator) {
            this.f94893b = magicIndicator;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
            this.f94893b.a(i10);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i10, float f10, int i11) {
            this.f94893b.b(i10, f10, i11);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            this.f94893b.c(i10);
        }
    }

    public static void a(MagicIndicator magicIndicator, ViewPager viewPager) {
        viewPager.addOnPageChangeListener(new a(magicIndicator));
    }
}
