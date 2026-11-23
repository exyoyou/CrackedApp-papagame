package com.airsaid.pickerviewlibrary.widget.wheelview;

/* JADX INFO: loaded from: classes7.dex */
final class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final WheelView f6293b;

    d(WheelView wheelView) {
        this.f6293b = wheelView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WheelView wheelView = this.f6293b;
        wheelView.f6263e.a(wheelView.getCurrentItem());
    }
}
