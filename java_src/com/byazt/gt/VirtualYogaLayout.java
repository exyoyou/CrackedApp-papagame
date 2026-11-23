package com.byazt.gt;

import android.view.View;
import android.view.ViewGroup;
import com.byazt.bj.da;
import com.byazt.bj.sl;
import com.byazt.bj.sp;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 195, 2406})
public class VirtualYogaLayout extends ViewGroup {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<View> f14728c;
    public final Map<View, da> tt;
    public final da ve;

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof VirtualYogaLayout) {
            VirtualYogaLayout virtualYogaLayout = (VirtualYogaLayout) view;
            virtualYogaLayout.c(this);
            da yogaNode = virtualYogaLayout.getYogaNode();
            da daVar = this.ve;
            daVar.c(yogaNode, daVar.c());
            return;
        }
        da daVarC = sl.c();
        YogaLayout.c(new YogaLayout.c(layoutParams), daVarC, view);
        daVarC.c(view);
        daVarC.c((sp) new YogaLayout.tt());
        da daVar2 = this.ve;
        daVar2.c(daVarC, daVar2.c());
        c(view, daVarC);
    }

    public void c(View view, da daVar) {
        this.f14728c.add(view);
        this.tt.put(view, daVar);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof YogaLayout.c;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new YogaLayout.c(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new YogaLayout.c(layoutParams);
    }

    public da getYogaNode() {
        return this.ve;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        throw new RuntimeException("Attempting to layout a VirtualYogaLayout");
    }

    public void c(ViewGroup viewGroup) {
        if (viewGroup instanceof VirtualYogaLayout) {
            for (View view : this.f14728c) {
                ((VirtualYogaLayout) viewGroup).c(view, this.tt.get(view));
            }
        } else if (viewGroup instanceof YogaLayout) {
            for (View view2 : this.f14728c) {
                ((YogaLayout) viewGroup).c(view2, this.tt.get(view2));
            }
        } else {
            throw new RuntimeException("VirtualYogaLayout cannot transfer children to ViewGroup of type " + viewGroup.getClass().getCanonicalName() + ".  Must either be a VirtualYogaLayout or a YogaLayout.");
        }
        this.f14728c.clear();
    }
}
