package com.aggmoread.sdk.z.a.s;

import android.os.CountDownTimer;
import android.view.View;
import android.widget.TextView;

/* JADX INFO: loaded from: classes7.dex */
public class i extends CountDownTimer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    View f3940a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    a f3941b;

    public interface a {
        void a();

        void a(long j10);
    }

    public i(View view, a aVar, long j10, long j11) {
        super(j10, j11);
        this.f3940a = view;
        this.f3941b = aVar;
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
        this.f3941b.a();
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j10) {
        View view = this.f3940a;
        if (view instanceof TextView) {
            ((TextView) view).setText("跳过" + (j10 / 1000) + "s");
        }
        a aVar = this.f3941b;
        if (aVar != null) {
            aVar.a(j10);
        }
    }
}
