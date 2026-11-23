package com.airsaid.pickerviewlibrary.widget.wheelview;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes7.dex */
final class c extends Handler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f6289b = 1000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f6290c = 2000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f6291d = 3000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final WheelView f6292a;

    c(WheelView wheelView) {
        this.f6292a = wheelView;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == 1000) {
            this.f6292a.invalidate();
        } else if (i10 == 2000) {
            this.f6292a.m(WheelView.ACTION.FLING);
        } else {
            if (i10 != 3000) {
                return;
            }
            this.f6292a.j();
        }
    }
}
