package com.byazt.wk;

import com.byazt.zqa.c;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 1, 1592, 2311})
public class UGenTestToolsPage extends BaseToolPage {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f21590c;

    @Override // com.byazt.wk.BaseToolPage
    public String getPageTitle() {
        return "UGen调试";
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f21590c = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f21590c = false;
    }
}
