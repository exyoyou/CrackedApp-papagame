package com.aggmoread.sdk.z.a.u;

import android.os.CountDownTimer;
import android.widget.TextView;

/* JADX INFO: loaded from: classes7.dex */
public class r extends CountDownTimer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    TextView f4201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    a f4202b;

    public interface a {
        void a();

        void a(long j10);
    }

    public r(a aVar, long j10, long j11) {
        super(j10, j11);
        this.f4202b = aVar;
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
        this.f4202b.a();
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j10) {
        this.f4202b.a(j10);
        TextView textView = this.f4201a;
        if (textView != null) {
            textView.setText("跳过(" + (j10 / 1000) + ")");
        }
    }
}
