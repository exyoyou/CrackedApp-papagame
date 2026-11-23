package com.airsaid.pickerviewlibrary.widget.wheelview;

import java.util.TimerTask;

/* JADX INFO: loaded from: classes7.dex */
final class a extends TimerTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    float f6285b = 2.1474836E9f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final float f6286c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final WheelView f6287d;

    a(WheelView wheelView, float f10) {
        this.f6287d = wheelView;
        this.f6286c = f10;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        if (this.f6285b == 2.1474836E9f) {
            if (Math.abs(this.f6286c) <= 2000.0f) {
                this.f6285b = this.f6286c;
            } else if (this.f6286c > 0.0f) {
                this.f6285b = 2000.0f;
            } else {
                this.f6285b = -2000.0f;
            }
        }
        if (Math.abs(this.f6285b) >= 0.0f && Math.abs(this.f6285b) <= 20.0f) {
            this.f6287d.a();
            this.f6287d.f6261c.sendEmptyMessage(2000);
            return;
        }
        int i10 = (int) ((this.f6285b * 10.0f) / 1000.0f);
        WheelView wheelView = this.f6287d;
        wheelView.f6282x -= i10;
        if (!wheelView.f6278t) {
            float f10 = wheelView.f6274p;
            float f11 = (-wheelView.f6283y) * f10;
            int itemsCount = wheelView.getItemsCount() - 1;
            WheelView wheelView2 = this.f6287d;
            float f12 = (itemsCount - wheelView2.f6283y) * f10;
            int i11 = wheelView2.f6282x;
            double d10 = ((double) f10) * 0.3d;
            if (((double) i11) - d10 < f11) {
                f11 = i10 + i11;
            } else if (((double) i11) + d10 > f12) {
                f12 = i10 + i11;
            }
            if (i11 <= f11) {
                this.f6285b = 40.0f;
                wheelView2.f6282x = (int) f11;
            } else if (i11 >= f12) {
                wheelView2.f6282x = (int) f12;
                this.f6285b = -40.0f;
            }
        }
        float f13 = this.f6285b;
        if (f13 < 0.0f) {
            this.f6285b = f13 + 20.0f;
        } else {
            this.f6285b = f13 - 20.0f;
        }
        this.f6287d.f6261c.sendEmptyMessage(1000);
    }
}
