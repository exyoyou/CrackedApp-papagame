package com.netease.nis.quicklogin.view;

import android.view.View;
import com.netease.nis.basesdk.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class a implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View.OnClickListener f76182a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f76183b = true;

    public a(View.OnClickListener onClickListener) {
        this.f76182a = onClickListener;
    }

    public void a(boolean z10) {
        this.f76183b = z10;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jLongValue = view.getTag(view.getId()) != null ? ((Long) view.getTag(view.getId())).longValue() : 0L;
        if (jLongValue == 0 || jCurrentTimeMillis - jLongValue > 1500) {
            View.OnClickListener onClickListener = this.f76182a;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
            view.setTag(view.getId(), Long.valueOf(jCurrentTimeMillis));
            return;
        }
        if (this.f76183b) {
            Logger.d("本次点击丢弃");
            return;
        }
        View.OnClickListener onClickListener2 = this.f76182a;
        if (onClickListener2 != null) {
            onClickListener2.onClick(view);
        }
    }
}
