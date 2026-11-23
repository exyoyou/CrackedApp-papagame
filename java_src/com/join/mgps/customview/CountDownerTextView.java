package com.join.mgps.customview;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class CountDownerTextView extends TextView {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f64690c = 1000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f64691d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f64692e = 100;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f64693b;

    private static class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<CountDownerTextView> f64694a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f64695b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f64696c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f64697d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f64698e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f64699f;

        public a(CountDownerTextView view) {
            this.f64694a = new WeakReference<>(view);
        }

        public void a(int currentTime, int timeInterval, long delayTime, String part1, String part2) {
            this.f64695b = currentTime;
            this.f64696c = timeInterval;
            this.f64697d = delayTime;
            this.f64698e = part1;
            this.f64699f = part2;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            CountDownerTextView countDownerTextView;
            super.handleMessage(msg);
            if (msg.what != 100 || (countDownerTextView = this.f64694a.get()) == null) {
                return;
            }
            this.f64695b += this.f64696c;
            countDownerTextView.setText(this.f64698e + com.join.mgps.Util.e0.f(this.f64695b) + this.f64699f);
            sendEmptyMessageDelayed(100, this.f64697d);
        }
    }

    public CountDownerTextView(Context context) {
        super(context);
        b();
    }

    private int a(long startTime, int playSeconds) {
        return (int) ((((SystemClock.elapsedRealtime() - startTime) / 1000) + ((long) playSeconds)) - 1);
    }

    void b() {
        this.f64693b = new a(this);
    }

    public void c(int delayTime, int timeInterval, long startTime, int playSeconds, String part1, String part2) {
        int iA = a(startTime, playSeconds);
        setText(part1 + com.join.mgps.Util.e0.f(iA) + part2);
        if (this.f64693b == null) {
            this.f64693b = new a(this);
        }
        this.f64693b.a(iA, timeInterval, delayTime, part1, part2);
        this.f64693b.removeMessages(100);
        this.f64693b.sendEmptyMessage(100);
    }

    public void d(long startTime, int playSeconds, String part1, String part2) {
        c(1000, 1, startTime, playSeconds, part1, part2);
    }

    public void e() {
        a aVar = this.f64693b;
        if (aVar != null) {
            aVar.removeMessages(100);
            this.f64693b = null;
        }
    }

    public CountDownerTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        b();
    }
}
