package com.yatoooon.screenadaptation;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.kuaishou.weapon.p0.t;

/* JADX INFO: loaded from: classes8.dex */
public class d extends a {
    public d(Context context, int i10, int i11, float f10, String str) {
        super(context, i10, i11, f10, str);
    }

    private float k(float f10) {
        if ("px".equals(this.f90213h)) {
            return f10 * (this.f90208c / this.f90210e);
        }
        if (!t.f74892q.equals(this.f90213h)) {
            return 0.0f;
        }
        return (this.f90211f / 160.0f) * xa.b.c(this.f90206a, f10) * (this.f90208c / this.f90210e);
    }

    private void l(View view) {
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            textView.setTextSize(0, m(textView));
        }
    }

    private float m(TextView textView) {
        return k(textView.getTextSize() * this.f90212g);
    }

    private int n(int i10) {
        if (i10 == 0) {
            return 0;
        }
        if (i10 == 1) {
            return 1;
        }
        return (int) k(i10);
    }

    @Override // com.yatoooon.screenadaptation.a
    public int a(int i10) {
        return n(i10);
    }

    @Override // com.yatoooon.screenadaptation.a
    public void b(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.leftMargin = n(marginLayoutParams.leftMargin);
            marginLayoutParams.topMargin = n(marginLayoutParams.topMargin);
            marginLayoutParams.rightMargin = n(marginLayoutParams.rightMargin);
            marginLayoutParams.bottomMargin = n(marginLayoutParams.bottomMargin);
            view.setLayoutParams(marginLayoutParams);
        }
    }

    @Override // com.yatoooon.screenadaptation.a
    public void c(View view) {
        xa.a.g(view, n(xa.a.b(view)));
        xa.a.f(view, n(xa.a.a(view)));
    }

    @Override // com.yatoooon.screenadaptation.a
    public void d(View view) {
        xa.a.i(view, n(xa.a.d(view)));
        xa.a.h(view, n(xa.a.c(view)));
    }

    @Override // com.yatoooon.screenadaptation.a
    public void e(View view) {
        view.setPadding(n(view.getPaddingLeft()), n(view.getPaddingTop()), n(view.getPaddingRight()), n(view.getPaddingBottom()));
    }

    @Override // com.yatoooon.screenadaptation.a
    public void h(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i10 = layoutParams.width;
        if (i10 > 0) {
            layoutParams.width = n(i10);
        }
        int i11 = layoutParams.height;
        if (i11 > 0) {
            layoutParams.height = n(i11);
        }
        l(view);
    }
}
