package net.lucode.hackware.magicindicator.buildins.commonnavigator.titles;

import android.content.Context;
import sc.a;

/* JADX INFO: loaded from: classes.dex */
public class ColorTransitionPagerTitleView extends SimplePagerTitleView {
    public ColorTransitionPagerTitleView(Context context) {
        super(context);
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, tc.d
    public void a(int i10, int i11, float f10, boolean z10) {
        setTextColor(a.a(f10, this.f94873c, this.f94872b));
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, tc.d
    public void b(int i10, int i11) {
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, tc.d
    public void c(int i10, int i11) {
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, tc.d
    public void d(int i10, int i11, float f10, boolean z10) {
        setTextColor(a.a(f10, this.f94872b, this.f94873c));
    }
}
