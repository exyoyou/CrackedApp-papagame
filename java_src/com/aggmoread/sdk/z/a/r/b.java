package com.aggmoread.sdk.z.a.r;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.Window;
import com.aggmoread.sdk.z.a.t.g;
import com.aggmoread.sdk.z.a.u.k;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class b implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f3819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f3820b = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.t.d f3821c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.t.c.b f3822d;

    class a implements g.b {
        a() {
        }

        @Override // com.aggmoread.sdk.z.a.t.g.b
        public void a(int i10, String str) {
        }

        @Override // com.aggmoread.sdk.z.a.t.g.b
        public void a(String str) {
            if (b.this.f3822d != null) {
                b.this.f3822d.onVideoCached();
            }
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.r.b$b, reason: collision with other inner class name */
    class C0090b implements com.aggmoread.sdk.z.a.t.c.b {
        C0090b() {
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void a() {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoPresenter", "onRewardClose ");
            if (b.this.f3822d != null) {
                b.this.f3822d.a();
            }
            b.this.f3819a.finish();
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void b() {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoPresenter", "onVideoSkipClosed ");
            if (b.this.f3822d != null) {
                b.this.f3822d.b();
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void c() {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoPresenter", "onVideoClosed ");
            if (b.this.f3822d != null) {
                b.this.f3822d.c();
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void d() {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoPresenter", "onVideoExposure ");
            if (b.this.f3822d != null) {
                b.this.f3822d.d();
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void onVideoCached() {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoPresenter", "onVideoCached ");
            if (b.this.f3822d != null) {
                b.this.f3822d.onVideoCached();
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void onVideoComplete() {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoPresenter", "onRewardComplete ");
            if (b.this.f3822d != null) {
                b.this.f3822d.onVideoComplete();
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void a(float f10, int i10) {
            if (b.this.f3822d != null) {
                b.this.f3822d.a(f10, i10);
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void a(Activity activity) {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoPresenter", "onRewardClick ");
            if (b.this.f3822d != null) {
                b.this.f3822d.a(activity);
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void a(com.aggmoread.sdk.z.a.s.a aVar) {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoPresenter", "onVideoShow ");
            if (b.this.f3822d != null) {
                b.this.f3822d.a(aVar);
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void a(String str) {
            if (b.this.f3822d != null) {
                b.this.f3822d.a(str);
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.c.b
        public void a(Map<String, Object> map) {
            com.aggmoread.sdk.z.a.d.d("ApiRewardVideoPresenter", "onRewardReward ");
            if (b.this.f3822d != null) {
                b.this.f3822d.a(map);
            }
        }
    }

    private void c() {
        this.f3819a.requestWindowFeature(1);
        Window window = this.f3819a.getWindow();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            window.setFlags(1024, 1024);
            window.getAttributes().layoutInDisplayCutoutMode = 0;
        } else {
            window.addFlags(Integer.MIN_VALUE);
            window.clearFlags(67108864);
        }
        if (i10 > 23) {
            window.setStatusBarColor(0);
        }
        window.getDecorView().setSystemUiVisibility(window.getDecorView().getSystemUiVisibility() | 13314);
    }

    @Override // com.aggmoread.sdk.z.a.u.k
    public void onPause() {
        c cVar = this.f3820b;
        if (cVar != null) {
            cVar.c();
        }
    }

    @Override // com.aggmoread.sdk.z.a.u.k
    public void onResume() {
        c cVar = this.f3820b;
        if (cVar != null) {
            cVar.d();
        }
    }

    @Override // com.aggmoread.sdk.z.a.u.k
    public void a(Activity activity) {
        this.f3819a = activity;
    }

    @Override // com.aggmoread.sdk.z.a.u.k
    public void b() {
        c cVar = this.f3820b;
        if (cVar != null) {
            cVar.a();
        }
        a((Activity) null);
        this.f3819a = null;
    }

    public void a(Context context, String str) {
        this.f3820b.a(context, str, new a());
    }

    @Override // com.aggmoread.sdk.z.a.u.k
    public void a(Intent intent) {
    }

    @Override // com.aggmoread.sdk.z.a.u.k
    public void a(Bundle bundle) {
        Intent intent = this.f3819a.getIntent();
        if (intent != null) {
            c();
            Bundle bundleExtra = intent.getBundleExtra("data");
            if (bundleExtra != null && this.f3821c == null) {
                com.aggmoread.sdk.z.a.t.d dVar = new com.aggmoread.sdk.z.a.t.d();
                this.f3821c = dVar;
                dVar.f3980b = bundleExtra.getString("videoUrl");
                this.f3821c.f3983e = bundleExtra.getString("adIconUrl");
                this.f3821c.f3981c = bundleExtra.getString("adTitle");
                this.f3821c.f3982d = bundleExtra.getString("adDesc");
                this.f3821c.f3984f = bundleExtra.getInt("skip");
                this.f3821c.f3985g = bundleExtra.getInt("skipMinTime");
                this.f3821c.f3986h = bundleExtra.getInt("showCountDownView");
                this.f3821c.f3988j = bundleExtra.getString("endCardPicUrl");
                this.f3821c.f3989k = bundleExtra.getString("endIconUrl");
                this.f3821c.f3990l = bundleExtra.getString("endCardTitle");
                this.f3821c.f3991m = bundleExtra.getString("endCardDesc");
                this.f3821c.f3987i = bundleExtra.getString("videoBackGroundPic");
            }
            com.aggmoread.sdk.z.a.t.d dVar2 = this.f3821c;
            if (dVar2 == null) {
                com.aggmoread.sdk.z.a.d.d("ApiRewardVideoPresenter", "视频素材信息为空");
                com.aggmoread.sdk.z.a.t.c.b bVar = this.f3822d;
                if (bVar != null) {
                    bVar.a("视频素材信息为空");
                    return;
                }
                return;
            }
            this.f3820b.a(this.f3819a, dVar2);
            this.f3820b.a(true);
            this.f3820b.a(new C0090b());
            this.f3820b.e();
            if (this.f3821c.f3994p) {
                this.f3819a.setRequestedOrientation(1);
            }
        }
    }

    public void a(com.aggmoread.sdk.z.a.t.c.b bVar) {
        this.f3822d = bVar;
    }

    public void a(com.aggmoread.sdk.z.a.t.d dVar) {
        this.f3821c = dVar;
    }

    @Override // com.aggmoread.sdk.z.a.u.k
    public boolean a() {
        return true;
    }

    @Override // com.aggmoread.sdk.z.a.u.k
    public boolean a(MotionEvent motionEvent) {
        return false;
    }
}
