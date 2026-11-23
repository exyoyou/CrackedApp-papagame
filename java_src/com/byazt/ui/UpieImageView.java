package com.byazt.ui;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.ga.LottieAnimationView;
import com.byazt.ga.gt;
import com.byazt.ga.i;
import com.byazt.ga.uj;
import com.byazt.jzl.tt;
import com.byazt.jzl.ve;
import com.byazt.nr.m;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2, 1375})
public class UpieImageView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, Bitmap> f20569a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f20570c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public c f20571da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f20572i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Bitmap f20573n;
    public long sl;
    public final Map<String, Integer> sp;
    public ImageView tt;
    public String uj;
    public volatile LottieAnimationView ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f20574x;

    public UpieImageView(Context context, com.byazt.cph.c cVar, tt ttVar, c cVar2) {
        super(context);
        this.f20569a = new HashMap();
        this.sp = new HashMap();
        this.f20574x = 0;
        this.f20572i = 0;
        this.f20570c = context;
        this.f20571da = cVar2;
        c(cVar, ttVar, cVar2);
    }

    public static /* synthetic */ int ve(UpieImageView upieImageView) {
        int i10 = upieImageView.f20572i;
        upieImageView.f20572i = i10 + 1;
        return i10;
    }

    public static /* synthetic */ int x(UpieImageView upieImageView) {
        int i10 = upieImageView.f20574x;
        upieImageView.f20574x = i10 + 1;
        return i10;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.ve == null || this.uj == null) {
            return;
        }
        this.ve.c();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.ve != null) {
            this.ve.a();
        }
    }

    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType != null) {
            if (this.ve != null) {
                this.ve.setScaleType(scaleType);
                return;
            }
            ImageView imageView = this.tt;
            if (imageView != null) {
                imageView.setScaleType(scaleType);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(final String str) {
        if (TextUtils.isEmpty(str)) {
            new ve(60008, 10002, "广告主图url为空");
        } else {
            com.byazt.cph.tt.c().tt(str, new com.byazt.cph.tt.c<Bitmap>() { // from class: com.byazt.ui.UpieImageView.4
                @Override // com.byazt.cph.tt.c
                public void c(Bitmap bitmap) {
                    UpieImageView.this.f20573n = bitmap;
                    final Bitmap bitmapC = com.byazt.or.tt.c(UpieImageView.this.f20570c, UpieImageView.this.f20573n, 25);
                    com.byazt.qk.tt.tt(new Runnable() { // from class: com.byazt.ui.UpieImageView.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (UpieImageView.this.ve != null) {
                                UpieImageView.this.ve.invalidate();
                            }
                            UpieImageView.this.tt.setImageBitmap(UpieImageView.this.f20573n);
                            UpieImageView.this.tt.setScaleType(ImageView.ScaleType.FIT_CENTER);
                            if (bitmapC != null) {
                                UpieImageView.this.tt.setBackground(new BitmapDrawable(bitmapC));
                            }
                        }
                    });
                }

                @Override // com.byazt.cph.tt.c
                public void c(int i10, String str2) {
                    UpieImageView.x(UpieImageView.this);
                    if (UpieImageView.this.f20574x <= 3) {
                        UpieImageView.this.tt(str);
                    } else {
                        new ve(60008, 10003, "广告主图url加载失败");
                    }
                }
            });
        }
    }

    public synchronized void c(final com.byazt.cph.c cVar, tt ttVar, c cVar2) {
        if (cVar == null) {
            return;
        }
        if (this.ve != null) {
            return;
        }
        this.f20571da = cVar2;
        final String strVe = cVar.ve();
        String strC = cVar.c();
        if (!TextUtils.isEmpty(strC)) {
            this.ve = new LottieAnimationView(this.f20570c);
            this.ve.setVideoStats(ttVar);
            this.ve.setRepeatCount(-1);
            this.ve.setRepeatMode(1);
            this.ve.setClickable(false);
            this.ve.setImageAssetDelegate(new uj() { // from class: com.byazt.ui.UpieImageView.1
                @Override // com.byazt.ga.uj
                public Bitmap c(i iVar) {
                    if (iVar != null) {
                        String strU = iVar.u();
                        if (!TextUtils.isEmpty(strU)) {
                            if (strU.startsWith("${") && strU.endsWith("}")) {
                                strU = com.byazt.qk.c.c(strU, cVar.sp());
                                if (TextUtils.isEmpty(strU)) {
                                    return null;
                                }
                                if (TextUtils.equals(strVe, strU)) {
                                    Bitmap bitmap = UpieImageView.this.f20573n;
                                    if (bitmap != null && (bitmap.getWidth() != iVar.c() || bitmap.getHeight() != iVar.tt())) {
                                        UpieImageView.this.f20573n = Bitmap.createScaledBitmap(bitmap, iVar.c(), iVar.tt(), false);
                                    }
                                    return UpieImageView.this.f20573n;
                                }
                            }
                            Bitmap bitmap2 = (Bitmap) UpieImageView.this.f20569a.get(strU);
                            if (bitmap2 != null) {
                                return bitmap2;
                            }
                            UpieImageView.this.c(strU, iVar.c(), iVar.tt());
                        }
                    }
                    return null;
                }
            });
            this.ve.setTextDelegate(new gt(this.ve) { // from class: com.byazt.ui.UpieImageView.2
                @Override // com.byazt.ga.gt
                public String c(String str) {
                    return com.byazt.qk.c.c(str, cVar.sp());
                }
            });
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        ImageView imageView = new ImageView(this.f20570c);
        this.tt = imageView;
        addView(imageView, layoutParams);
        if (this.ve != null) {
            addView(this.ve, layoutParams);
        }
        this.sl = SystemClock.elapsedRealtime();
        c(strC);
        tt(strVe);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final String str) {
        if (TextUtils.isEmpty(str)) {
            c(10000, "lottieJsonUrl为空");
        } else {
            com.byazt.qk.tt.ve(new Runnable() { // from class: com.byazt.ui.UpieImageView.3
                @Override // java.lang.Runnable
                public void run() {
                    String strC = com.byazt.cph.tt.c().c(str);
                    if (TextUtils.isEmpty(strC)) {
                        com.byazt.cph.tt.c().c(str, new com.byazt.cph.tt.c<String>() { // from class: com.byazt.ui.UpieImageView.3.1
                            @Override // com.byazt.cph.tt.c
                            public void c(String str2) {
                                m.c("UpieImageView", "--==-- lottie jsonStr ok");
                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                UpieImageView.this.c(str2, str);
                            }

                            @Override // com.byazt.cph.tt.c
                            public void c(int i10, String str2) {
                                m.c("UpieImageView", "--==-- lottie jsonStr load fail: " + i10 + ", " + str2);
                                if (i10 == 10006) {
                                    UpieImageView.this.c(i10, str2);
                                    return;
                                }
                                UpieImageView.ve(UpieImageView.this);
                                if (UpieImageView.this.f20572i > 3) {
                                    UpieImageView.this.c(i10, str2);
                                } else {
                                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                    UpieImageView.this.c(str);
                                }
                            }
                        });
                    } else {
                        UpieImageView.this.c(strC, str);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final String str, final int i10, final int i11) {
        Integer num = this.sp.get(str);
        if (num == null || num.intValue() != 1) {
            this.sp.put(str, 1);
            this.ve.c(str, new com.byazt.rs.i() { // from class: com.byazt.ui.UpieImageView.5
                @Override // com.byazt.rs.i
                public void c(Bitmap bitmap) {
                    UpieImageView.this.c(bitmap, str, i10, i11);
                }

                @Override // com.byazt.rs.i
                public void c() {
                    com.byazt.cph.tt.c().c(UpieImageView.this.f20570c, str, new com.byazt.cph.tt.c<Bitmap>() { // from class: com.byazt.ui.UpieImageView.5.1
                        @Override // com.byazt.cph.tt.c
                        public void c(Bitmap bitmap) {
                            AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                            UpieImageView.this.c(bitmap, str, i10, i11);
                        }

                        @Override // com.byazt.cph.tt.c
                        public void c(int i12, String str2) {
                            UpieImageView.this.sp.put(str, 2);
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Bitmap bitmap, String str, int i10, int i11) {
        if (bitmap != null) {
            if (bitmap.getWidth() != i10 || bitmap.getHeight() != i11) {
                bitmap = Bitmap.createScaledBitmap(bitmap, i10, i11, false);
            }
            this.f20569a.put(str, bitmap);
            com.byazt.qk.tt.c(new Runnable() { // from class: com.byazt.ui.UpieImageView.6
                @Override // java.lang.Runnable
                public void run() {
                    if (UpieImageView.this.ve != null) {
                        UpieImageView.this.ve.invalidate();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, String str) {
        c cVar = this.f20571da;
        if (cVar != null) {
            cVar.c(i10, str);
        }
        com.byazt.qk.tt.c(new Runnable() { // from class: com.byazt.ui.UpieImageView.7
            @Override // java.lang.Runnable
            public void run() {
                if (UpieImageView.this.ve != null) {
                    UpieImageView upieImageView = UpieImageView.this;
                    upieImageView.removeView(upieImageView.ve);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j10) {
        if (this.f20571da != null) {
            HashMap map = new HashMap();
            map.put("duration", Long.valueOf(j10 - this.sl));
            this.f20571da.c(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final String str, final String str2) {
        this.uj = str;
        com.byazt.qk.tt.c(new Runnable() { // from class: com.byazt.ui.UpieImageView.8
            @Override // java.lang.Runnable
            public void run() {
                if (UpieImageView.this.ve != null) {
                    UpieImageView.this.ve.c(str, str2);
                    UpieImageView.this.ve.c(new Animator.AnimatorListener() { // from class: com.byazt.ui.UpieImageView.8.1
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            UpieImageView.this.ve.tt(this);
                            UpieImageView.this.c(SystemClock.elapsedRealtime());
                        }
                    });
                    UpieImageView.this.ve.c();
                }
            }
        });
    }
}
