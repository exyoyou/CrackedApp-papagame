package com.byazt.nz;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.internal.view.SupportMenu;
import com.byazt.nw.tt;
import com.byazt.zqa.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@c(c = {0, 1, 817, 980})
public abstract class BaseIndicator extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f17735a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f17736c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public float f17737da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17738i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f17739n;
    public float sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f17740t;
    public int tt;
    public List<View> uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f17741x;

    public BaseIndicator(Context context) {
        super(context);
        this.f17739n = SupportMenu.CATEGORY_MASK;
        this.f17735a = -16776961;
        this.sp = 5;
        this.tt = 40;
        this.ve = 20;
        this.f17740t = "row";
        this.f17736c = context;
        this.uj = new ArrayList();
        setOrientation(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve() {
        FrameLayout frameLayout = (FrameLayout) getParent();
        if (frameLayout == null) {
            return;
        }
        float width = frameLayout.getWidth();
        float height = frameLayout.getHeight();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        float width2 = getWidth();
        float height2 = getHeight();
        float f10 = this.sl;
        layoutParams.topMargin = (int) (((int) ((height * f10) / 100.0f)) - ((height2 * f10) / 100.0f));
        float f11 = this.f17737da;
        layoutParams.leftMargin = (int) (((int) ((width * f11) / 100.0f)) - ((width2 * f11) / 100.0f));
        setLayoutParams(layoutParams);
    }

    public int getSize() {
        return this.uj.size();
    }

    public void setIndicatorDirection(String str) {
        this.f17740t = str;
        if (TextUtils.equals(str, "column")) {
            setOrientation(1);
        } else {
            setOrientation(0);
        }
    }

    public void setIndicatorHeight(int i10) {
        this.ve = i10;
    }

    public void setIndicatorWidth(int i10) {
        this.tt = i10;
    }

    public void setIndicatorX(float f10) {
        this.f17737da = f10;
    }

    public void setIndicatorY(float f10) {
        this.sl = f10;
    }

    public void setLoop(boolean z10) {
        this.f17741x = z10;
    }

    public void setSelectedColor(int i10) {
        this.f17739n = i10;
    }

    public void setUnSelectedColor(int i10) {
        this.f17735a = i10;
    }

    public abstract Drawable tt(int i10);

    public void tt() {
        View view = new View(getContext());
        view.setClickable(false);
        if (this instanceof DotIndicator) {
            this.ve = this.tt;
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.tt, this.ve);
        if (getOrientation() == 1) {
            int i10 = this.sp;
            layoutParams.topMargin = i10;
            layoutParams.bottomMargin = i10;
        } else {
            int i11 = this.sp;
            layoutParams.leftMargin = i11;
            layoutParams.rightMargin = i11;
        }
        addView(view, layoutParams);
        view.setBackground(tt(this.f17735a));
        this.uj.add(view);
    }

    public void c(int i10, int i11) {
        Iterator<View> it2 = this.uj.iterator();
        while (it2.hasNext()) {
            it2.next().setBackground(tt(this.f17735a));
        }
        if (i10 < 0 || i10 >= this.uj.size()) {
            i10 = 0;
        }
        if (this.uj.size() > 0) {
            this.uj.get(i10).setBackground(tt(this.f17739n));
            this.f17738i = i11;
        }
    }

    public void c() {
        post(new Runnable() { // from class: com.byazt.nz.BaseIndicator.1
            @Override // java.lang.Runnable
            public void run() {
                BaseIndicator.this.ve();
            }
        });
    }

    public void c(int i10) {
        if (this instanceof DotIndicator) {
            this.ve = this.tt;
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.tt, this.ve);
        if (getOrientation() == 1) {
            int i11 = this.sp;
            layoutParams.topMargin = i11;
            layoutParams.bottomMargin = i11;
        } else {
            int i12 = this.sp;
            layoutParams.leftMargin = i12;
            layoutParams.rightMargin = i12;
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(this.tt, this.ve);
        if (getOrientation() == 1) {
            int i13 = this.sp;
            layoutParams2.topMargin = i13;
            layoutParams2.bottomMargin = i13;
        } else {
            int i14 = this.sp;
            layoutParams2.leftMargin = i14;
            layoutParams2.rightMargin = i14;
        }
        int iC = tt.c(this.f17741x, this.f17738i, this.uj.size());
        int iC2 = tt.c(this.f17741x, i10, this.uj.size());
        if (this.uj.size() == 0) {
            iC2 = 0;
        }
        if (!this.uj.isEmpty() && tt.c(iC, this.uj) && tt.c(iC2, this.uj)) {
            this.uj.get(iC).setBackground(tt(this.f17735a));
            this.uj.get(iC).setLayoutParams(layoutParams2);
            this.uj.get(iC2).setBackground(tt(this.f17739n));
            this.uj.get(iC2).setLayoutParams(layoutParams);
            this.f17738i = i10;
        }
    }
}
