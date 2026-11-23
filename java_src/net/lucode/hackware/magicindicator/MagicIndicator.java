package net.lucode.hackware.magicindicator;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class MagicIndicator extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private rc.a f94756b;

    public MagicIndicator(Context context) {
        super(context);
    }

    public void a(int i10) {
        rc.a aVar = this.f94756b;
        if (aVar != null) {
            aVar.onPageScrollStateChanged(i10);
        }
    }

    public void b(int i10, float f10, int i11) {
        rc.a aVar = this.f94756b;
        if (aVar != null) {
            aVar.onPageScrolled(i10, f10, i11);
        }
    }

    public void c(int i10) {
        rc.a aVar = this.f94756b;
        if (aVar != null) {
            aVar.onPageSelected(i10);
        }
    }

    public rc.a getNavigator() {
        return this.f94756b;
    }

    public void setNavigator(rc.a aVar) {
        rc.a aVar2 = this.f94756b;
        if (aVar2 == aVar) {
            return;
        }
        if (aVar2 != null) {
            aVar2.f();
        }
        this.f94756b = aVar;
        removeAllViews();
        if (this.f94756b instanceof View) {
            addView((View) this.f94756b, new FrameLayout.LayoutParams(-1, -1));
            this.f94756b.e();
        }
    }

    public MagicIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
