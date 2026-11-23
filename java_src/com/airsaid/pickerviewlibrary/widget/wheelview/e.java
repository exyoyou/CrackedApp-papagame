package com.airsaid.pickerviewlibrary.widget.wheelview;

import java.util.TimerTask;

/* JADX INFO: loaded from: classes7.dex */
final class e extends TimerTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f6294b = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f6295c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f6296d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final WheelView f6297e;

    e(WheelView wheelView, int i10) {
        this.f6297e = wheelView;
        this.f6296d = i10;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        if (this.f6294b == Integer.MAX_VALUE) {
            this.f6294b = this.f6296d;
        }
        int i10 = this.f6294b;
        int i11 = (int) (i10 * 0.1f);
        this.f6295c = i11;
        if (i11 == 0) {
            if (i10 < 0) {
                this.f6295c = -1;
            } else {
                this.f6295c = 1;
            }
        }
        if (Math.abs(i10) <= 1) {
            this.f6297e.a();
            this.f6297e.f6261c.sendEmptyMessage(3000);
            return;
        }
        WheelView wheelView = this.f6297e;
        wheelView.f6282x += this.f6295c;
        if (!wheelView.f6278t) {
            float f10 = wheelView.f6274p;
            float f11 = (-wheelView.f6283y) * f10;
            int itemsCount = wheelView.getItemsCount() - 1;
            WheelView wheelView2 = this.f6297e;
            float f12 = (itemsCount - wheelView2.f6283y) * f10;
            int i12 = wheelView2.f6282x;
            if (i12 <= f11 || i12 >= f12) {
                wheelView2.f6282x = i12 - this.f6295c;
                wheelView2.a();
                this.f6297e.f6261c.sendEmptyMessage(3000);
                return;
            }
        }
        this.f6297e.f6261c.sendEmptyMessage(1000);
        this.f6294b -= this.f6295c;
    }
}
