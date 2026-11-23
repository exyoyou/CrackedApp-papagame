package com.aggmoread.sdk.z.a.r;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.media.MediaPlayer;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class d {
    private ImageView A;
    private ImageView B;
    private ImageView C;
    private ImageView D;
    private TextView E;
    private TextView F;
    private ImageView G;
    private TextView H;
    private TextView I;
    private TextView J;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f3826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.t.c.b f3827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.t.f f3828c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.t.b f3829d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.m.m f3831f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CountDownTimer f3832g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextView f3833h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TextView f3834i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f3835j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ViewGroup f3836k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ViewGroup f3837l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ViewGroup f3838m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ViewGroup f3839n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View f3840o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private View f3841p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private View f3842q;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.t.d f3850y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.s.a f3851z;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3830e = true;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f3843r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f3844s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final AtomicBoolean f3845t = new AtomicBoolean();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final AtomicBoolean f3846u = new AtomicBoolean();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final AtomicBoolean f3847v = new AtomicBoolean();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private AtomicBoolean f3848w = new AtomicBoolean();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f3849x = 0;
    private boolean K = true;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.v();
        }
    }

    class b implements p<Bitmap> {
        b() {
        }

        @Override // com.aggmoread.sdk.z.a.r.d.p
        public void a(Bitmap bitmap) {
            if (bitmap == null || d.this.f3848w == null || !d.this.f3848w.compareAndSet(false, true)) {
                return;
            }
            d.this.C.setImageBitmap(bitmap);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (d.this.f3827b != null) {
                d.this.f3827b.a();
            }
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.r.d$d, reason: collision with other inner class name */
    class RunnableC0091d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f3855b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ p f3856c;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.r.d$d$a */
        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Bitmap f3857b;

            a(Bitmap bitmap) {
                this.f3857b = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                p pVar = RunnableC0091d.this.f3856c;
                if (pVar != null) {
                    pVar.a(this.f3857b);
                }
            }
        }

        RunnableC0091d(d dVar, String str, p pVar) {
            this.f3855b = str;
            this.f3856c = pVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                URL url = new URL(this.f3855b);
                com.aggmoread.sdk.z.a.d.a("ApiRewardVideoViewTAG", "DD", url.toString());
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.getDoInput();
                httpURLConnection.connect();
                new Handler(Looper.getMainLooper()).post(new a(BitmapFactory.decodeStream(httpURLConnection.getInputStream())));
            } catch (MalformedURLException | IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    class e implements p<Bitmap> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f3859a;

        e(d dVar, ImageView imageView) {
            this.f3859a = imageView;
        }

        @Override // com.aggmoread.sdk.z.a.r.d.p
        public void a(Bitmap bitmap) {
            if (bitmap != null) {
                this.f3859a.setImageBitmap(bitmap);
            }
        }
    }

    class f extends CountDownTimer {
        f(long j10, long j11) {
            super(j10, j11);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoViewTAG", "startTimeOutCountDown onTimerFinish");
            d.this.a();
            if (d.this.f3827b != null) {
                d.this.f3827b.a("视频资源加载超时，广告播放失败!");
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j10) {
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.f3828c.a(d.this.n());
            d.this.f3828c.d();
            d.this.F();
        }
    }

    class h implements com.aggmoread.sdk.z.a.t.a.h {
        h() {
        }

        @Override // com.aggmoread.sdk.z.a.t.a.h
        public void a(float f10, int i10) {
            if (d.this.f3827b != null) {
                d.this.f3827b.a(f10, i10);
            }
        }
    }

    class i implements MediaPlayer.OnCompletionListener {
        i() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            if (d.this.f3827b != null) {
                d.this.f3827b.onVideoComplete();
            }
            d.this.f3844s = true;
            d.this.a();
        }
    }

    class j implements MediaPlayer.OnErrorListener {
        j() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
            if (d.this.f3827b == null) {
                return false;
            }
            d.this.f3827b.a("视频播放失败: " + i10);
            return false;
        }
    }

    class k implements com.aggmoread.sdk.z.a.t.f.j {

        class a extends com.aggmoread.sdk.z.a.m.m {

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ long f3866f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(long j10, long j11, long j12) {
                super(j10, j11);
                this.f3866f = j12;
            }

            @Override // com.aggmoread.sdk.z.a.m.m
            public void a(long j10, long j11) {
                com.aggmoread.sdk.z.a.d.d("ApiRewardVideoViewTAG", "onTimerTick millisUntilFinished " + j10 + ", duration " + j11 + ", videoCountDownTimer = " + d.this.f3831f);
                if (j11 >= 2000 && d.this.f3827b != null && d.this.f3847v.compareAndSet(false, true)) {
                    d.this.f3827b.d();
                }
                if (j10 <= 1000) {
                    d.this.f3833h.setVisibility(4);
                } else {
                    d.this.f3833h.setText(String.format("%ss", Long.valueOf(j10 / 1000)));
                }
                d.this.b(j11);
                if (d.this.f3843r) {
                    return;
                }
                long jK = d.this.k();
                if (jK <= this.f3866f && jK > 0) {
                    j10 = jK - j11;
                }
                if (j10 >= 1000) {
                    d.this.a(j10);
                } else {
                    d.this.L();
                }
            }

            @Override // com.aggmoread.sdk.z.a.m.m
            public void c() {
                com.aggmoread.sdk.z.a.d.d("ApiRewardVideoViewTAG", "onTimerFinish ");
                d.this.I();
            }
        }

        k() {
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void a(MediaPlayer mediaPlayer) {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoViewTAG", "onStart");
            d.this.K = true;
            long jE = d.this.f3828c.e();
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoViewTAG", "videoDuration " + jE);
            d.this.H();
            if (d.this.f3846u.compareAndSet(false, true) && d.this.f3827b != null) {
                d.this.f3827b.a(d.this.f3851z);
            }
            if (d.this.f3831f == null) {
                d.this.f3831f = new a(jE, 1000L, jE);
            }
            d.this.G();
            d.this.J();
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void b(MediaPlayer mediaPlayer) {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoViewTAG", "onBufferingEnd");
            d.this.D();
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void c(MediaPlayer mediaPlayer) {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoViewTAG", "onBufferingStart");
            d.this.x();
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void d(MediaPlayer mediaPlayer) {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoViewTAG", "onStartLoading");
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void e(MediaPlayer mediaPlayer) {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoViewTAG", "onResume");
            d.this.K = true;
            d.this.D();
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void f(MediaPlayer mediaPlayer) {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoViewTAG", "onPause");
            d.this.K = false;
            d.this.x();
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void g(MediaPlayer mediaPlayer) {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoViewTAG", "onCached");
            if (d.this.f3827b != null) {
                d.this.f3827b.onVideoCached();
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void a(boolean z10) {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoViewTAG", "onScaleChange ");
        }
    }

    class l implements MediaPlayer.OnInfoListener {
        l() {
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
            if (i10 != 805) {
                return false;
            }
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoViewTAG", "ApiVideoViewTAG MEDIA_INFO_VIDEO_NOT_PLAYING ");
            d.this.f3828c.b();
            d.this.f3828c.q();
            if (d.this.f3827b == null) {
                return false;
            }
            d.this.f3827b.a("视频素材播放失败!");
            return false;
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.v();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.a();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d dVar = d.this;
            dVar.f3830e = !dVar.f3830e;
            d.this.M();
        }
    }

    public interface p<T> {
        void a(T t10);
    }

    private void A() {
        this.f3841p.setVisibility(4);
        this.f3840o.setVisibility(8);
    }

    private void B() {
        TextView textView;
        int i10;
        this.f3835j.setVisibility(4);
        this.f3835j.setOnClickListener(new n());
        this.A.setOnClickListener(new o());
        M();
        if (u()) {
            textView = this.f3833h;
            i10 = 0;
        } else {
            textView = this.f3833h;
            i10 = 8;
        }
        textView.setVisibility(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        com.aggmoread.sdk.z.a.m.m mVar = this.f3831f;
        if (mVar == null || !this.K) {
            return;
        }
        mVar.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        com.aggmoread.sdk.z.a.d.d("ApiRewardVideoViewTAG", "startTimeOutCountDown");
        CountDownTimer countDownTimer = this.f3832g;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        f fVar = new f(15000L, 1000L);
        this.f3832g = fVar;
        fVar.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        com.aggmoread.sdk.z.a.m.m mVar = this.f3831f;
        if (mVar != null) {
            mVar.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        com.aggmoread.sdk.z.a.d.d("ApiRewardVideoViewTAG", "stopTimeOutCountDown");
        CountDownTimer countDownTimer = this.f3832g;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.f3832g = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        com.aggmoread.sdk.z.a.m.m mVar = this.f3831f;
        if (mVar != null) {
            mVar.g();
            this.f3831f = null;
        }
        TextView textView = this.f3833h;
        if (textView != null) {
            textView.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        if (this.f3842q.getVisibility() != 0) {
            this.f3842q.setVisibility(0);
        }
    }

    private void K() {
        AtomicBoolean atomicBoolean;
        if (this.C != null && (atomicBoolean = this.f3848w) != null) {
            if (atomicBoolean.get()) {
                this.C.setVisibility(0);
            } else {
                this.C.setVisibility(4);
                this.f3848w = null;
            }
        }
        ViewGroup viewGroup = this.f3839n;
        if (viewGroup != null) {
            viewGroup.setVisibility(0);
        }
        ViewGroup viewGroup2 = this.f3837l;
        if (viewGroup2 != null) {
            viewGroup2.setVisibility(8);
            this.f3837l.removeAllViews();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L() {
        this.f3843r = true;
        if (this.f3841p.getVisibility() != 0) {
            this.f3841p.setVisibility(0);
        }
        ViewGroup viewGroup = this.f3838m;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
        View view = this.f3840o;
        if (view != null) {
            view.setVisibility(0);
        }
        com.aggmoread.sdk.z.a.t.c.b bVar = this.f3827b;
        if (bVar != null) {
            bVar.a(new HashMap());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        ImageView imageView;
        String str;
        if (this.f3830e) {
            imageView = this.A;
            str = "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAe1JREFUWEftlj1oVEEUhb9T2QexkQSxE8UmoE0QG0ljG/wBRQhooRb+lCoK2ihqIYhgoaJiEAtL2SadiGCn2ETsYiF2Wsox9zELw8t7mQ2bvLXYgYXdnTf3fHvuz6wY8dKI9RkDjB1YtwO2LwLngT/AG0nXhynkdQHYvgdcyAS/SNrTCYDtk8CzJHYKeBrvtWLBpgPY3gt8BLYAVyTdsu0uAT4A+4EXkk6EcGcAth8BZ4BlSdv7ducAtg8CT4Dnkq7VU2J7DngNXJZ0N99flT/bO1by23/NAzPpwFZJv1oA4vnvae++pOiUamXi8fFGvWuaAD4DuzPKZWBO0vucvJ6CmtBjSadL4lUNNdhVFRfwFngHvJT0u+25vAtqggvA0XRu1S/vx2sFKLVXWxHWIBptL9XAQO31XwJsaAqAA8CSpB9Nk24zizBabSITXZB0bK0iTHNgcaPa8BJwGJgCdqagPUmzbW1oezpuxsIguh13SXEO1ESOAHeASeCmpKtNg6gpRYN+V7zJbB8CeingcUmv0oQbqFtKIEWAJHYOeJCCzUrqdXYZZZYHQID8BfYBn6pR2sX/gQwiUhEp+QrsAn5K2layea39gVKQAUQxRlFGccZ6KOlsZwAZSLRnuP9tGPEqhcMGGPb8GGDkDvwD88z/ISmS/mAAAAAASUVORK5CYII=";
        } else {
            imageView = this.A;
            str = "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAqNJREFUWEftlk2ITlEYx3//lZVEYhBJUT43JjYSRWMhFkKIRA2FBVKzIB+RGrIRMRvUiKLIhmZDTSRMSWSDrAb5SBoLCz3uM513Ol736503vZv31K3bvfec53f+z/95zhUNHmpwfJoATQVqVsDM9gF7gJ/ATUlH6jFyTQBmdgbYGwV8JWlONYCZzQBOA2+Bo5K+Z0GWBjCzLcCVsNBW4LLfK5EgBWA88DE8fx4gbqdBlAIws3nAE2AEcFDSCTOzLAB/bmarglpLQuB1km5UQ5QFeAwsBLolbQ4BcgEqgczsJNCRBVEIYGYXgB1Av6RJ0cL/AJjZTqCl2phm5qnzFPZJao1VSMvf1CS/lWs7sChMGCvpawHAfcAlv5UAt0v6EtSaADwDJvpmJHVV1kkDeAnMjij7gbWSHsXkaR4ws1nAMWAN8FTSggjYy/Uw0CtpcR7AoLSAu/YecFXSQIrTMz1gZt3AJmCppAdBhflBhTeSphcCpJVXkQLRbr1MLwHnJe0KAKOBb8CApJGNABgFeEP6JKnlfwOkpWAu8ALokdRWCAC4UTxfH9I62DBM2A5c9BYt6UAegJfamCjodUkbypjQzCpl2Ot1L+l95AsvQzdiq6S+PID9iVtXAlOAaeHDv2QLpspqRMuAbZJ+pJRgV6KoN7WhkdsJzWw9cAqYDByXdChatGwrrtT/O2C1JO8z5QDCTpe7ccKMjZKuZSlQVaaec79c9l/AikpPqAkgBNsNnA0T2yT15J2GZubt2P3g4yHQKelOmpkLD6NIcgdwkN+At9hBI2X8D3hLPpecoHcldaYFzjRh3sdm5qnwlLwGZgKfJY3Lm1P0rrQCIRVuRjelm9PHUKstCpT1viaAKB1enq6+//PVNYYFUFfEqslNgIYr8Ad+qj8wE2M/IAAAAABJRU5ErkJggg==";
        }
        com.aggmoread.sdk.z.a.m.j.a(imageView, str);
        com.aggmoread.sdk.z.a.t.f fVar = this.f3828c;
        if (fVar != null) {
            fVar.b(this.f3830e);
        }
    }

    private String e() {
        com.aggmoread.sdk.z.a.t.d dVar = this.f3850y;
        return dVar != null ? dVar.d() : "";
    }

    private String g() {
        com.aggmoread.sdk.z.a.t.d dVar = this.f3850y;
        return dVar != null ? dVar.e() : "";
    }

    private Bitmap i() {
        com.aggmoread.sdk.z.a.t.d dVar = this.f3850y;
        if (dVar != null) {
            return dVar.f3992n;
        }
        return null;
    }

    private String j() {
        com.aggmoread.sdk.z.a.t.d dVar = this.f3850y;
        return dVar != null ? dVar.b() : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long k() {
        com.aggmoread.sdk.z.a.t.d dVar = this.f3850y;
        if (dVar != null) {
            return ((long) dVar.h()) * 1000;
        }
        return 0L;
    }

    private int m() {
        com.aggmoread.sdk.z.a.t.d dVar = this.f3850y;
        if (dVar != null) {
            return dVar.i();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String n() {
        com.aggmoread.sdk.z.a.t.d dVar = this.f3850y;
        return dVar != null ? dVar.j() : "";
    }

    private View o() {
        LinearLayout linearLayout = new LinearLayout(this.f3826a);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        layoutParams.leftMargin = com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 20.0d);
        layoutParams.rightMargin = com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 20.0d);
        layoutParams.bottomMargin = com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 20.0d);
        int iA = com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 15.0d);
        linearLayout.setPadding(iA, iA, iA, iA);
        linearLayout.setOrientation(1);
        linearLayout.setBackground(com.aggmoread.sdk.z.a.m.b.a(Color.parseColor("#ffffff"), 1.0f, com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 20.0d), 0, 0));
        linearLayout.setLayoutParams(layoutParams);
        LinearLayout linearLayout2 = new LinearLayout(this.f3826a);
        linearLayout2.setGravity(16);
        linearLayout2.setOrientation(0);
        linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        ImageView imageView = new ImageView(this.f3826a);
        this.B = imageView;
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        this.B.setLayoutParams(new ViewGroup.LayoutParams(com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 80.0d), com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 80.0d)));
        com.aggmoread.sdk.z.a.m.j.a(this.B, "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");
        ColorDrawable colorDrawable = new ColorDrawable(Color.parseColor("#707070"));
        colorDrawable.setAlpha(33);
        this.B.setBackground(colorDrawable);
        linearLayout2.addView(this.B);
        LinearLayout linearLayout3 = new LinearLayout(this.f3826a);
        linearLayout3.setOrientation(1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams2.leftMargin = com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 8.0d);
        linearLayout3.setLayoutParams(layoutParams2);
        this.E = new TextView(this.f3826a);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 1.0f;
        this.E.setSingleLine();
        this.E.setTextSize(16.0f);
        this.E.setGravity(16);
        this.E.setTextColor(Color.parseColor("#515151"));
        this.E.setText("Title");
        this.E.setLayoutParams(layoutParams3);
        linearLayout3.addView(this.E);
        this.F = new TextView(this.f3826a);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams4.weight = 1.0f;
        this.F.setSingleLine();
        this.F.setTextSize(14.0f);
        this.F.setGravity(16);
        this.F.setTextColor(Color.parseColor("#8a8a8a"));
        this.F.setText("Desc");
        this.F.setLayoutParams(layoutParams4);
        linearLayout3.addView(this.F);
        linearLayout2.addView(linearLayout3);
        linearLayout.addView(linearLayout2);
        TextView textView = new TextView(this.f3826a);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        int iA2 = com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 10.0d);
        layoutParams5.topMargin = iA2;
        textView.setLayoutParams(layoutParams5);
        textView.setText("查看详情");
        textView.setTextColor(Color.parseColor("#ffffff"));
        textView.setTextSize(15.0f);
        textView.setPadding(iA2, iA2, iA2, iA2);
        textView.setGravity(17);
        textView.setBackground(com.aggmoread.sdk.z.a.m.b.a(Color.parseColor("#0a81fc"), 1.0f, com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 6.0d), 0, 0));
        linearLayout.addView(textView);
        return linearLayout;
    }

    private ViewGroup p() {
        int iA = com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 10.0d);
        int iA2 = com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 20.0d);
        FrameLayout frameLayout = new FrameLayout(this.f3826a);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.setBackgroundColor(Color.parseColor("#000000"));
        ImageView imageView = new ImageView(this.f3826a);
        this.C = imageView;
        imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.C.setScaleType(ImageView.ScaleType.CENTER_CROP);
        frameLayout.addView(this.C);
        RelativeLayout relativeLayout = new RelativeLayout(this.f3826a);
        relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ColorDrawable colorDrawable = new ColorDrawable(Color.parseColor("#000000"));
        colorDrawable.setAlpha(216);
        relativeLayout.setBackground(colorDrawable);
        relativeLayout.setPadding(iA2, iA2, iA2, iA2);
        this.D = new ImageView(this.f3826a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 24.0d), com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 24.0d));
        layoutParams.addRule(11, -1);
        this.D.setLayoutParams(layoutParams);
        com.aggmoread.sdk.z.a.m.j.a(this.D, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAmZJREFUWEfVlzloFmEQhp+30FIQQVAUBK9ORLQQDyKS1IKaWkjpFQUbU6igQbTQJJYGe2PAq9LCI9opqJ0HaCEKKe3ldT+ZHzabvRIDiwvbfNc8O/POzLei40cd2+f/ArC9ExgA+oG1wJrw4E/gB3APmJH0oa1nW3nA9j7gNHC4cPA34DewsTA+DYxJmmkCaQSwfQU4Hwe9A14Bb4HnkhIAttcBu+M9CGyL9ROSTtVB1ALYTsb2xAHXgcuSftUdaHs1cAs4Guu+SNpctacSwPZnYFNsHJD0tMmd+XnbKWQ3Y+y1pL1l+0sBbI8DJ9MGSY1havCIY35U0khx7bzDQ3AvY+GwpLGFfHlxre2UMU9ifH9RmGUAKZWS2qckDfYOtN2XCa8vc8jFhi8eBu73BBoivQacA6YlHcnvnwNgO6n3PZDyuF/SbA4gGb5QBCvE/W6I71Ie1PYK4EUGth3YJelNb18R4Hgo+Eam9rMl7uwZmOOd+MrKuZifAE4AI5JGqwCeJTcDg5Kmylxte56hsrES+GPAnagfB6oAPgJbgPWSvlfFOm8w1qScn+eVQng2AF+BT5K2VgGkIjMrqZf/lXrLQaQ1tcZzOkoAqyQlTfx9ihroHGAxIVgGHGrygu1WIViwCG0vBx5Fm64Mhe1WIlxUGtpeCTwEUr0vhbDdKg3rCtEQcLvGQGrJDzKQHcAZSb1GlNp1u0IUBaO0FMfckKTJmvRM6XU1S+NJSY9z6m9XisNIuv1014wCort2nHNbdxeSHER3V7IcRHeX0hxEd9fyQkfr5seksiUuwcQ/3XiXwH73P6d/AMNtZjBWZp4QAAAAAElFTkSuQmCC");
        relativeLayout.addView(this.D);
        LinearLayout linearLayout = new LinearLayout(this.f3826a);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.rightMargin = com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 50.0d);
        layoutParams2.leftMargin = com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 50.0d);
        layoutParams2.addRule(13, -1);
        linearLayout.setLayoutParams(layoutParams2);
        linearLayout.setGravity(1);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(0);
        ImageView imageView2 = new ImageView(this.f3826a);
        this.G = imageView2;
        imageView2.setLayoutParams(new ViewGroup.LayoutParams(com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 64.0d), com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 64.0d)));
        this.G.setScaleType(ImageView.ScaleType.FIT_XY);
        com.aggmoread.sdk.z.a.m.j.a(this.G, "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");
        linearLayout.addView(this.G);
        this.H = new TextView(this.f3826a);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.topMargin = iA2;
        this.H.setLayoutParams(layoutParams3);
        this.H.setGravity(17);
        this.H.setTextSize(20.0f);
        this.H.setTextColor(Color.parseColor("#ffffff"));
        linearLayout.addView(this.H);
        this.I = new TextView(this.f3826a);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.topMargin = iA2;
        this.I.setLayoutParams(layoutParams4);
        this.I.setGravity(17);
        this.I.setTextSize(15.0f);
        this.I.setTextColor(Color.parseColor("#BFBDBD"));
        linearLayout.addView(this.I);
        this.J = new TextView(this.f3826a);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams5.topMargin = iA2;
        this.J.setLayoutParams(layoutParams5);
        this.J.setGravity(17);
        this.J.setPadding(iA, iA, iA, iA);
        this.J.setText("立即查看");
        this.J.setTextColor(Color.parseColor("#ffffff"));
        this.J.setBackground(com.aggmoread.sdk.z.a.m.b.a(Color.parseColor("#0a81fc"), 1.0f, com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 30.0d), 0, 0));
        linearLayout.addView(this.J);
        relativeLayout.addView(linearLayout);
        frameLayout.addView(relativeLayout);
        return frameLayout;
    }

    private View q() {
        int iA = com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 8.0d);
        FrameLayout frameLayout = new FrameLayout(this.f3826a);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.topMargin = com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 20.0d);
        layoutParams.setMarginStart(com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 60.0d));
        frameLayout.setLayoutParams(layoutParams);
        frameLayout.setPadding(iA, iA, iA, iA);
        frameLayout.setBackground(com.aggmoread.sdk.z.a.m.b.a(Color.parseColor("#000000"), 0.5f, com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 40.0d), 0, 0));
        LinearLayout linearLayout = new LinearLayout(this.f3826a);
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        ImageView imageView = new ImageView(this.f3826a);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        com.aggmoread.sdk.z.a.m.j.a(imageView, "iVBORw0KGgoAAAANSUhEUgAAACMAAAAgCAYAAACYTcH3AAAAAXNSR0IArs4c6QAAAoZJREFUWEftljtoU2EUx38n98akD5qhFAS1vgVBoQ/TFrRNOzhUUKuCixW1g1u3Tk5dHBwU8TE4KahLhyIIDlW0Jm2hiYo66qiIUDXWtkmaxz0S04c3t4mli4L3wOHyfedx//d/vnO+K5QR1UEPsafXQUKgm4BxLK5KW3ikXNyiTaOh86C3gI/AB5QRaQ0PloqVsmDed/uIz6UcPqL9EozcKBsbDd0GPVvk81BawkfWBuZZZzVV1syKwarHpDXyYCWbTrZfROSC8yP4JMHwhj+C0ckDu6R17N3vjvq4qQ3J3cQihdeTxlexFdPcvODzGq+nSxpHv9tiYqFuVB/92lOF+fkY6fkUllWL6U0SqOqT5sjbpVK+aq+TpshUfm0rk8Y6+rDoxUMUlXHi8Q7UGrB9iWm8JBDYg+IDeYNoxGZXbQTZTzrzhLnZHahusdmrqw/hW1cPBFHZJy3PGxbtjjOjk+3XEOlfSjA9nSGX8xZRG6cm8A3TqALWO2hPJodIJk869isqIK/L0ist4fsOMBrtbECsMyingDpbonQaEgmwLHv+QGAKw7D7JpIxUsmgzdHrhcpKMIxifBN49C4zxj3pGp0V7el9AdKM34JAdln9ag/M5pdZEAtyUtDdCdiYA1kgOJuBsQBkPGBoQTNeMAWKccwY8N2EabPwVBDtOV301nINW2Q7/BX2zto3L9UXgK5BXDAl54xbphLU/HNnZsg2VwzTv+pGOP55Ozvn7HPmyrYomXz/r0JyWdsl7JzA5wa+ALWrSAVHJ8D/w+46fBAyjuG2cjrVE3Ln8nDp68AFU+DGLdPSAXLPTKnWdJlxmckz4E7gPAvu3VSqG/43ZqaBmr/xP/MTU9yfSEAUaIgAAAAASUVORK5CYII=");
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 20.0d), com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 20.0d));
        layoutParams2.gravity = 16;
        imageView.setLayoutParams(layoutParams2);
        linearLayout.addView(imageView);
        this.f3834i = new TextView(this.f3826a);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 16;
        layoutParams3.leftMargin = com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 5.0d);
        this.f3834i.setLayoutParams(layoutParams3);
        this.f3834i.setText("Xs后可领取奖励");
        this.f3834i.setTextColor(Color.parseColor("#ffffff"));
        linearLayout.addView(this.f3834i);
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(this.f3826a);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 16;
        layoutParams4.leftMargin = com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 5.0d);
        textView.setLayoutParams(layoutParams4);
        textView.setText("已领取奖励");
        textView.setTextColor(Color.parseColor("#E3E1E1"));
        frameLayout.addView(textView);
        this.f3838m = linearLayout;
        this.f3840o = textView;
        return frameLayout;
    }

    private View s() {
        LinearLayout linearLayout = new LinearLayout(this.f3826a);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        RelativeLayout relativeLayout = new RelativeLayout(this.f3826a);
        int iA = com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 8.0d);
        int iA2 = com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 15.0d);
        int iA3 = com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 24.0d);
        int i10 = iA2 + iA;
        relativeLayout.setPadding(i10, iA, i10, iA);
        ImageView imageView = new ImageView(this.f3826a);
        this.A = imageView;
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        com.aggmoread.sdk.z.a.m.j.a(this.A, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAqNJREFUWEftlk2ITlEYx3//lZVEYhBJUT43JjYSRWMhFkKIRA2FBVKzIB+RGrIRMRvUiKLIhmZDTSRMSWSDrAb5SBoLCz3uM513Ol736503vZv31K3bvfec53f+z/95zhUNHmpwfJoATQVqVsDM9gF7gJ/ATUlH6jFyTQBmdgbYGwV8JWlONYCZzQBOA2+Bo5K+Z0GWBjCzLcCVsNBW4LLfK5EgBWA88DE8fx4gbqdBlAIws3nAE2AEcFDSCTOzLAB/bmarglpLQuB1km5UQ5QFeAwsBLolbQ4BcgEqgczsJNCRBVEIYGYXgB1Av6RJ0cL/AJjZTqCl2phm5qnzFPZJao1VSMvf1CS/lWs7sChMGCvpawHAfcAlv5UAt0v6EtSaADwDJvpmJHVV1kkDeAnMjij7gbWSHsXkaR4ws1nAMWAN8FTSggjYy/Uw0CtpcR7AoLSAu/YecFXSQIrTMz1gZt3AJmCppAdBhflBhTeSphcCpJVXkQLRbr1MLwHnJe0KAKOBb8CApJGNABgFeEP6JKnlfwOkpWAu8ALokdRWCAC4UTxfH9I62DBM2A5c9BYt6UAegJfamCjodUkbypjQzCpl2Ot1L+l95AsvQzdiq6S+PID9iVtXAlOAaeHDv2QLpspqRMuAbZJ+pJRgV6KoN7WhkdsJzWw9cAqYDByXdChatGwrrtT/O2C1JO8z5QDCTpe7ccKMjZKuZSlQVaaec79c9l/AikpPqAkgBNsNnA0T2yT15J2GZubt2P3g4yHQKelOmpkLD6NIcgdwkN+At9hBI2X8D3hLPpecoHcldaYFzjRh3sdm5qnwlLwGZgKfJY3Lm1P0rrQCIRVuRjelm9PHUKstCpT1viaAKB1enq6+//PVNYYFUFfEqslNgIYr8Ad+qj8wE2M/IAAAAABJRU5ErkJggg==");
        relativeLayout.addView(this.A, new RelativeLayout.LayoutParams(iA3, iA3));
        LinearLayout linearLayout2 = new LinearLayout(this.f3826a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(21, -1);
        layoutParams.addRule(15, -1);
        linearLayout2.setLayoutParams(layoutParams);
        linearLayout2.setOrientation(0);
        TextView textView = new TextView(this.f3826a);
        this.f3833h = textView;
        textView.setText("60s");
        this.f3833h.setTextSize(15.0f);
        this.f3833h.setTextColor(Color.parseColor("#ffffff"));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMarginEnd(com.aggmoread.sdk.z.a.m.b.a(this.f3826a, 6.0d));
        linearLayout2.addView(this.f3833h, layoutParams2);
        TextView textView2 = new TextView(this.f3826a);
        this.f3835j = textView2;
        textView2.setText("跳过");
        this.f3835j.setTextSize(15.0f);
        this.f3835j.setTextColor(Color.parseColor("#ffffff"));
        linearLayout2.addView(this.f3835j, new LinearLayout.LayoutParams(-2, -2));
        relativeLayout.addView(linearLayout2);
        linearLayout.addView(relativeLayout, new ViewGroup.LayoutParams(-1, -2));
        FrameLayout frameLayout = new FrameLayout(this.f3826a);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 1.0f;
        frameLayout.setBackgroundColor(Color.parseColor("#ffffff"));
        frameLayout.getBackground().setAlpha(127);
        frameLayout.setLayoutParams(layoutParams3);
        this.f3828c = new com.aggmoread.sdk.z.a.t.f(this.f3826a);
        frameLayout.addView(this.f3828c, new FrameLayout.LayoutParams(-1, -1));
        this.f3829d = new com.aggmoread.sdk.z.a.t.b(this.f3826a);
        frameLayout.addView(this.f3829d, new FrameLayout.LayoutParams(-1, -1));
        linearLayout.addView(frameLayout);
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        if (this.f3827b == null || !this.f3847v.get() || System.currentTimeMillis() - this.f3849x <= 5000) {
            return;
        }
        this.f3827b.a(this.f3826a);
        this.f3849x = System.currentTimeMillis();
    }

    private void y() {
        this.f3842q.setVisibility(8);
        if (TextUtils.isEmpty(j())) {
            this.B.setVisibility(8);
        } else {
            this.B.setVisibility(0);
            a(this.B, j());
        }
        this.E.setText(d());
        this.F.setText(c());
        this.f3842q.setOnClickListener(new m());
    }

    private void z() {
        AtomicBoolean atomicBoolean;
        this.f3839n.setVisibility(8);
        this.C.setVisibility(8);
        if (TextUtils.isEmpty(f())) {
            this.G.setVisibility(8);
        } else {
            this.G.setVisibility(0);
            a(this.G, f());
        }
        this.H.setText(h());
        this.I.setText(e());
        this.f3839n.setOnClickListener(new a());
        if (TextUtils.isEmpty(g())) {
            Bitmap bitmapI = i();
            if (bitmapI != null && (atomicBoolean = this.f3848w) != null && atomicBoolean.compareAndSet(false, true)) {
                this.C.setImageBitmap(bitmapI);
            }
        } else {
            a(g(), new b());
        }
        this.D.setOnClickListener(new c());
    }

    public void C() {
        com.aggmoread.sdk.z.a.t.f fVar = this.f3828c;
        if (fVar != null) {
            fVar.p();
        }
    }

    public void E() {
        if (this.f3845t.get()) {
            this.f3828c.post(new g());
        }
    }

    public View l() {
        t();
        return this.f3836k;
    }

    public void w() {
        com.aggmoread.sdk.z.a.t.f fVar = this.f3828c;
        if (fVar == null || !fVar.a()) {
            return;
        }
        this.f3828c.b();
    }

    private String c() {
        com.aggmoread.sdk.z.a.t.d dVar = this.f3850y;
        return dVar != null ? dVar.a() : "";
    }

    private String d() {
        com.aggmoread.sdk.z.a.t.d dVar = this.f3850y;
        return dVar != null ? dVar.c() : "";
    }

    private String f() {
        com.aggmoread.sdk.z.a.t.d dVar = this.f3850y;
        return dVar != null ? dVar.g() : "";
    }

    private String h() {
        com.aggmoread.sdk.z.a.t.d dVar = this.f3850y;
        return dVar != null ? dVar.f() : "";
    }

    private void r() {
        this.f3829d.a(0);
        this.f3829d.a("素材加载中...");
        this.f3829d.c(false);
        this.f3829d.setEnabled(false);
        this.f3829d.a(new h());
        this.f3828c.a(this.f3829d);
        this.f3828c.e(true);
        this.f3828c.a(this.f3830e ? 0.0f : 1.0f);
        this.f3828c.a(com.aggmoread.sdk.z.a.t.f.i.TYPE_CLIP_VIDEO);
        this.f3828c.a(new i());
        this.f3828c.a(new j());
        this.f3828c.a(new k());
        this.f3828c.a(new l());
    }

    private void t() {
        FrameLayout frameLayout = new FrameLayout(this.f3826a);
        frameLayout.setBackgroundColor(-16777216);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f3836k = frameLayout;
        this.f3851z = com.aggmoread.sdk.z.a.s.a.a(frameLayout, null);
        FrameLayout frameLayout2 = new FrameLayout(this.f3826a);
        this.f3837l = frameLayout2;
        frameLayout2.setBackgroundColor(-16777216);
        this.f3836k.addView(this.f3837l, new FrameLayout.LayoutParams(-1, -1));
        this.f3837l.addView(s());
        View viewQ = q();
        this.f3841p = viewQ;
        viewQ.setVisibility(0);
        this.f3837l.addView(this.f3841p);
        View viewO = o();
        this.f3842q = viewO;
        this.f3837l.addView(viewO);
        ViewGroup viewGroupP = p();
        this.f3839n = viewGroupP;
        this.f3836k.addView(viewGroupP);
    }

    private boolean u() {
        com.aggmoread.sdk.z.a.t.d dVar = this.f3850y;
        if (dVar != null) {
            return dVar.k();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        com.aggmoread.sdk.z.a.m.m mVar = this.f3831f;
        if (mVar != null) {
            mVar.d();
        }
    }

    public void b() {
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        K();
        com.aggmoread.sdk.z.a.t.f fVar = this.f3828c;
        if (fVar != null) {
            if (fVar.a()) {
                this.f3828c.b();
            }
            this.f3828c.q();
        }
        I();
        com.aggmoread.sdk.z.a.t.c.b bVar = this.f3827b;
        if (bVar != null) {
            if (this.f3844s) {
                bVar.c();
            } else {
                bVar.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(long j10) {
        if (this.f3835j.getVisibility() == 0 || j10 <= m()) {
            return;
        }
        this.f3835j.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j10) {
        this.f3834i.setText(String.format("%s后可领取奖励", Long.valueOf(j10 / 1000)));
        if (this.f3841p.getVisibility() != 0) {
            this.f3841p.setVisibility(0);
        }
    }

    public void a(Activity activity) {
        this.f3826a = activity;
    }

    private void a(ImageView imageView, String str) {
        a(str, new e(this, imageView));
    }

    public void a(com.aggmoread.sdk.z.a.t.c.b bVar) {
        this.f3827b = bVar;
        if (this.f3845t.compareAndSet(false, true)) {
            r();
            y();
            B();
            A();
            z();
        }
    }

    public void a(com.aggmoread.sdk.z.a.t.d dVar) {
        this.f3850y = dVar;
    }

    private void a(String str, p<Bitmap> pVar) {
        if (TextUtils.isEmpty(str) || pVar == null) {
            return;
        }
        new Thread(new RunnableC0091d(this, str, pVar)).start();
    }

    public void a(boolean z10) {
        this.f3830e = z10;
    }
}
