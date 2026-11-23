package com.byazt.oz;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.ImageView;
import com.byazt.pc.i;
import com.byazt.yj.da;
import com.byazt.yj.gr;
import com.byazt.yj.gt;
import com.byazt.yj.m;
import com.byazt.yj.or;
import com.byazt.yj.t;
import com.byazt.yj.yp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 213, 54})
public final class ve implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ImageView.ScaleType f18573a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Future<?> f18574c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f18575d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public da f18576da;
    public gt eo;
    public com.byazt.oz.c gr;
    public boolean gt;
    public a gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ExecutorService f18577h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f18578i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public or f18579m;
    public boolean md;
    public final Handler my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public gr f18580n;
    public int nu;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f18581p;
    public int qy;
    public Queue<i> rh;
    public com.byazt.yj.x rl;
    public int sl;
    public Bitmap.Config sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public WeakReference<ImageView> f18582t;
    public String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile boolean f18583u;
    public String uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f18584x;
    public boolean yp;
    public int yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f18585z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public boolean f18586zb;
    public com.byazt.yj.tt zm;

    @com.byazt.zqa.c(c = {0, 1, 213, 24})
    private class c implements gr {
        public gr tt;

        public c(gr grVar) {
            this.tt = grVar;
        }

        @Override // com.byazt.yj.gr
        public void onFailed(final int i10, final String str, final Throwable th) {
            if (ve.this.nu == 5) {
                ve.this.my.post(new Runnable() { // from class: com.byazt.oz.ve.c.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (c.this.tt != null) {
                            c.this.tt.onFailed(i10, str, th);
                        }
                    }
                });
                return;
            }
            gr grVar = this.tt;
            if (grVar != null) {
                grVar.onFailed(i10, str, th);
            }
        }

        @Override // com.byazt.yj.gr
        public void onSuccess(final m mVar) {
            Bitmap bitmapCoverterTo;
            final ImageView imageView = (ImageView) ve.this.f18582t.get();
            if (imageView != null && ve.this.sl != 3 && c(imageView) && (mVar.getResult() instanceof Bitmap)) {
                final Bitmap bitmap = (Bitmap) mVar.getResult();
                ve.this.my.post(new Runnable() { // from class: com.byazt.oz.ve.c.1
                    @Override // java.lang.Runnable
                    public void run() {
                        imageView.setImageBitmap(bitmap);
                    }
                });
            }
            try {
                if (ve.this.f18576da != null && (mVar.getResult() instanceof Bitmap) && (bitmapCoverterTo = ve.this.f18576da.coverterTo((Bitmap) mVar.getResult())) != null) {
                    mVar.setResult(bitmapCoverterTo);
                }
            } catch (Throwable unused) {
            }
            if (ve.this.nu == 5) {
                ve.this.my.postAtFrontOfQueue(new Runnable() { // from class: com.byazt.oz.ve.c.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (c.this.tt != null) {
                            c.this.tt.onSuccess(mVar);
                        }
                    }
                });
                return;
            }
            gr grVar = this.tt;
            if (grVar != null) {
                grVar.onSuccess(mVar);
            }
        }

        private boolean c(ImageView imageView) {
            Object tag;
            return (imageView == null || (tag = imageView.getTag(1094453505)) == null || !tag.equals(ve.this.ve)) ? false : true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public t rh() {
        try {
            a aVar = this.gu;
            if (aVar == null) {
                gr grVar = this.f18580n;
                if (grVar != null) {
                    grVar.onFailed(1005, "not init !", null);
                }
                return this;
            }
            ExecutorService executorServiceA = this.f18577h == null ? aVar.a() : null;
            Runnable runnable = new Runnable() { // from class: com.byazt.oz.ve.1
                @Override // java.lang.Runnable
                public void run() {
                    i iVar;
                    while (!ve.this.f18583u && (iVar = (i) ve.this.rh.poll()) != null) {
                        try {
                            if (ve.this.f18579m != null) {
                                ve.this.f18579m.onStepStart(iVar.c(), ve.this);
                            }
                            iVar.c(ve.this);
                            if (ve.this.f18579m != null) {
                                ve.this.f18579m.onStepEnd(iVar.c(), ve.this);
                            }
                        } catch (Throwable th) {
                            ve.this.c(2000, th.getMessage(), th);
                            if (ve.this.f18579m != null) {
                                ve.this.f18579m.onStepEnd("exception", ve.this);
                                return;
                            }
                            return;
                        }
                    }
                    if (ve.this.f18583u) {
                        ve.this.c(1003, "canceled", null);
                    }
                }
            };
            if (this.f18575d) {
                runnable.run();
            } else {
                ExecutorService executorService = this.f18577h;
                if (executorService != null) {
                    this.f18574c = executorService.submit(runnable);
                } else if (executorServiceA != null) {
                    this.f18574c = executorServiceA.submit(runnable);
                }
            }
            return this;
        } catch (Exception e10) {
            com.byazt.nr.m.uj("ImageRequest", e10.getMessage());
        }
    }

    @Override // com.byazt.yj.t
    public boolean cancelRequest() {
        this.f18583u = true;
        Future<?> future = this.f18574c;
        if (future != null) {
            return future.cancel(true);
        }
        return true;
    }

    @Override // com.byazt.yj.t
    public Bitmap.Config getBitmapConfig() {
        return this.sp;
    }

    @Override // com.byazt.yj.t
    public int getHeight() {
        return this.f18578i;
    }

    @Override // com.byazt.yj.t
    public String getMemoryCacheKey() {
        return this.ve;
    }

    @Override // com.byazt.yj.t
    public String getRawCacheKey() {
        return this.uj;
    }

    @Override // com.byazt.yj.t
    public ImageView.ScaleType getScaleType() {
        return this.f18573a;
    }

    @Override // com.byazt.yj.t
    public String getUrl() {
        return this.tt;
    }

    @Override // com.byazt.yj.t
    public int getWidth() {
        return this.f18584x;
    }

    public gt m() {
        return this.eo;
    }

    public String nu() {
        return getRawCacheKey();
    }

    public int sl() {
        return this.qy;
    }

    public com.byazt.oz.c t() {
        return this.gr;
    }

    public a u() {
        return this.gu;
    }

    public com.byazt.yj.tt yp() {
        return this.zm;
    }

    public boolean z() {
        return this.md;
    }

    @com.byazt.zqa.c(c = {0, 1, 213, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD})
    public static class tt implements yp {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Bitmap.Config f18592a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public gr f18593c;
        public boolean gr;
        public boolean gt;
        public gt gu;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public a f18596m;
        public int my;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public ImageView.ScaleType f18597n;
        public da nu;
        public boolean qy;
        public int rh;
        public ExecutorService rl;
        public or sl;
        public int sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public boolean f18598t;
        public ImageView tt;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public boolean f18599u;
        public String uj;
        public String ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f18600x;
        public String yp;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public com.byazt.yj.tt f18601z;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f18595i = 1;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public int f18594da = 5;

        public tt(a aVar) {
            this.f18596m = aVar;
        }

        @Override // com.byazt.yj.yp
        public yp cache(com.byazt.yj.tt ttVar) {
            this.f18601z = ttVar;
            return this;
        }

        @Override // com.byazt.yj.yp
        public yp cacheDir(String str) {
            this.yp = str;
            return this;
        }

        @Override // com.byazt.yj.yp
        public yp config(Bitmap.Config config) {
            this.f18592a = config;
            return this;
        }

        @Override // com.byazt.yj.yp
        public yp converter(da daVar) {
            this.nu = daVar;
            return this;
        }

        @Override // com.byazt.yj.yp
        public yp from(String str) {
            this.uj = str;
            return this;
        }

        @Override // com.byazt.yj.yp
        public yp headers(boolean z10) {
            this.f18598t = z10;
            return this;
        }

        @Override // com.byazt.yj.yp
        public yp height(int i10) {
            this.f18600x = i10;
            return this;
        }

        @Override // com.byazt.yj.yp
        public yp isLocalRes(boolean z10) {
            this.gr = z10;
            return this;
        }

        @Override // com.byazt.yj.yp
        public yp key(String str) {
            this.ve = str;
            return this;
        }

        @Override // com.byazt.yj.yp
        public yp loadSetp(gt gtVar) {
            this.gu = gtVar;
            return this;
        }

        @Override // com.byazt.yj.yp
        public yp maxHeight(int i10) {
            this.my = i10;
            return this;
        }

        @Override // com.byazt.yj.yp
        public yp maxWidth(int i10) {
            this.rh = i10;
            return this;
        }

        @Override // com.byazt.yj.yp
        public yp requestTime(boolean z10) {
            this.f18599u = z10;
            return this;
        }

        @Override // com.byazt.yj.yp
        public yp runIn(ExecutorService executorService) {
            this.rl = executorService;
            return this;
        }

        @Override // com.byazt.yj.yp
        public yp scaleType(ImageView.ScaleType scaleType) {
            this.f18597n = scaleType;
            return this;
        }

        @Override // com.byazt.yj.yp
        public yp sync(boolean z10) {
            this.qy = z10;
            return this;
        }

        @Override // com.byazt.yj.yp
        public t to(gr grVar, int i10) {
            this.f18594da = i10;
            return to(grVar);
        }

        @Override // com.byazt.yj.yp
        public yp track(or orVar) {
            this.sl = orVar;
            return this;
        }

        @Override // com.byazt.yj.yp
        public yp type(int i10) {
            this.f18595i = i10;
            return this;
        }

        @Override // com.byazt.yj.yp
        public yp width(int i10) {
            this.sp = i10;
            return this;
        }

        @Override // com.byazt.yj.yp
        public t to(gr grVar) {
            this.f18593c = grVar;
            return new ve(this).rh();
        }

        @Override // com.byazt.yj.yp
        public t to(ImageView imageView) {
            this.tt = imageView;
            return new ve(this).rh();
        }
    }

    private ve(tt ttVar) {
        this.rh = new LinkedBlockingQueue();
        this.my = new Handler(Looper.getMainLooper());
        this.gt = true;
        this.tt = ttVar.uj;
        this.f18580n = new c(ttVar.f18593c);
        this.f18582t = new WeakReference<>(ttVar.tt);
        this.f18573a = ttVar.f18597n;
        this.sp = ttVar.f18592a;
        this.f18584x = ttVar.sp;
        this.f18578i = ttVar.f18600x;
        this.sl = ttVar.f18595i;
        this.nu = ttVar.f18594da;
        this.f18579m = ttVar.sl;
        this.zm = c(ttVar);
        if (!TextUtils.isEmpty(ttVar.ve)) {
            tt(ttVar.ve);
            c(ttVar.ve);
        }
        this.yp = ttVar.f18598t;
        this.f18585z = ttVar.f18599u;
        this.gu = ttVar.f18596m;
        this.f18576da = ttVar.nu;
        this.f18581p = ttVar.my;
        this.yv = ttVar.rh;
        this.f18577h = ttVar.rl;
        this.md = ttVar.gt;
        this.f18575d = ttVar.qy;
        this.eo = ttVar.gu;
        this.f18586zb = ttVar.gr;
        this.rh.add(new com.byazt.pc.ve());
    }

    public boolean a() {
        return this.yp;
    }

    public com.byazt.yj.x da() {
        return this.rl;
    }

    public boolean i() {
        return this.f18586zb;
    }

    public int n() {
        return this.sl;
    }

    public boolean sp() {
        return this.f18585z;
    }

    public int tt() {
        return this.f18581p;
    }

    public Bitmap.Config uj() {
        return this.sp;
    }

    public gr ve() {
        return this.f18580n;
    }

    public boolean x() {
        return this.gt;
    }

    private com.byazt.yj.tt c(tt ttVar) {
        if (ttVar.f18601z != null) {
            return ttVar.f18601z;
        }
        if (!TextUtils.isEmpty(ttVar.yp)) {
            return com.byazt.ep.c.c(new File(ttVar.yp));
        }
        return com.byazt.ep.c.c();
    }

    public void tt(String str) {
        WeakReference<ImageView> weakReference = this.f18582t;
        if (weakReference != null && weakReference.get() != null) {
            this.f18582t.get().setTag(1094453505, str);
        }
        this.ve = str;
    }

    public int c() {
        return this.yv;
    }

    public void c(String str) {
        this.uj = str;
    }

    public void c(boolean z10) {
        this.gt = z10;
    }

    public void c(com.byazt.yj.x xVar) {
        this.rl = xVar;
    }

    public void c(int i10) {
        this.qy = i10;
    }

    public void c(com.byazt.oz.c cVar) {
        this.gr = cVar;
    }

    public boolean c(i iVar) {
        if (this.f18583u) {
            return false;
        }
        return this.rh.add(iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, String str, Throwable th) {
        new com.byazt.pc.x(i10, str, th).c(this);
        this.rh.clear();
    }
}
