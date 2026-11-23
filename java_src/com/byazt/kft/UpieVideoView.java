package com.byazt.kft;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.ga.LottieAnimationView;
import com.byazt.ga.gt;
import com.byazt.ga.rl;
import com.byazt.ga.uj;
import com.byazt.jr.SSRenderTextureView;
import com.byazt.rs.i;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, 1366})
public class UpieVideoView extends FrameLayout implements com.byazt.jr.tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Runnable f16188a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.jr.tt f16189c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Handler f16190n;
    public com.byazt.jr.tt.c sp;
    public final LottieAnimationView tt;
    public final Map<String, Integer> uj;
    public final Map<String, Bitmap> ve;

    public UpieVideoView(final Context context, final com.byazt.cph.c cVar) {
        super(context);
        this.ve = new HashMap();
        this.uj = new HashMap();
        this.f16190n = new Handler(Looper.getMainLooper());
        this.f16188a = new Runnable() { // from class: com.byazt.kft.UpieVideoView.6
            @Override // java.lang.Runnable
            public void run() {
                if (UpieVideoView.this.tt != null && UpieVideoView.this.tt.n()) {
                    UpieVideoView.this.tt.invalidate();
                }
                UpieVideoView.this.f16190n.postDelayed(UpieVideoView.this.f16188a, 40L);
            }
        };
        SSRenderTextureView sSRenderTextureView = new SSRenderTextureView(context);
        this.f16189c = sSRenderTextureView;
        addView(sSRenderTextureView.getView());
        sSRenderTextureView.getView().setTranslationX(2.1474836E9f);
        LottieAnimationView lottieAnimationView = new LottieAnimationView(context);
        this.tt = lottieAnimationView;
        lottieAnimationView.setImageAssetDelegate(new uj() { // from class: com.byazt.kft.UpieVideoView.1
            /* JADX WARN: Code restructure failed: missing block: B:15:0x0035, code lost:
            
                if (r1.startsWith("http") != false) goto L17;
             */
            @Override // com.byazt.ga.uj
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public android.graphics.Bitmap c(com.byazt.ga.i r6) {
                /*
                    r5 = this;
                    r0 = 0
                    if (r6 == 0) goto L56
                    java.lang.String r1 = r6.u()
                    boolean r2 = android.text.TextUtils.isEmpty(r1)
                    if (r2 != 0) goto L56
                    java.lang.String r2 = "${"
                    boolean r2 = r1.startsWith(r2)
                    if (r2 == 0) goto L38
                    java.lang.String r2 = "}"
                    boolean r2 = r1.endsWith(r2)
                    if (r2 == 0) goto L38
                    com.byazt.cph.c r2 = r2
                    if (r2 == 0) goto L37
                    org.json.JSONObject r2 = r2.sp()
                    java.lang.String r1 = com.byazt.qk.c.c(r1, r2)
                    boolean r2 = android.text.TextUtils.isEmpty(r1)
                    if (r2 != 0) goto L37
                    java.lang.String r2 = "http"
                    boolean r2 = r1.startsWith(r2)
                    if (r2 != 0) goto L38
                L37:
                    return r0
                L38:
                    com.byazt.kft.UpieVideoView r2 = com.byazt.kft.UpieVideoView.this
                    java.util.Map r2 = com.byazt.kft.UpieVideoView.c(r2)
                    java.lang.Object r2 = r2.get(r1)
                    android.graphics.Bitmap r2 = (android.graphics.Bitmap) r2
                    if (r2 == 0) goto L47
                    return r2
                L47:
                    com.byazt.kft.UpieVideoView r2 = com.byazt.kft.UpieVideoView.this
                    android.content.Context r3 = r3
                    int r4 = r6.c()
                    int r6 = r6.tt()
                    com.byazt.kft.UpieVideoView.c(r2, r3, r1, r4, r6)
                L56:
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.byazt.kft.UpieVideoView.AnonymousClass1.c(com.byazt.ga.i):android.graphics.Bitmap");
            }
        });
        lottieAnimationView.setTextDelegate(new gt(lottieAnimationView) { // from class: com.byazt.kft.UpieVideoView.2
            @Override // com.byazt.ga.gt
            public String c(String str) {
                com.byazt.cph.c cVar2 = cVar;
                return com.byazt.qk.c.c(str, cVar2 != null ? cVar2.sp() : null);
            }
        });
        lottieAnimationView.setViewDelegate(new rl() { // from class: com.byazt.kft.UpieVideoView.3
            @Override // com.byazt.ga.rl
            public View c(String str, Map<String, Object> map) {
                if ("videoview:".equals(str)) {
                    return UpieVideoView.this.f16189c.getView();
                }
                return null;
            }
        });
        lottieAnimationView.setRepeatMode(1);
        lottieAnimationView.setRepeatCount(-1);
        lottieAnimationView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        lottieAnimationView.setClickable(false);
        lottieAnimationView.c(new Animator.AnimatorListener() { // from class: com.byazt.kft.UpieVideoView.4
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
                if (UpieVideoView.this.tt != null) {
                    UpieVideoView.this.tt.tt(this);
                }
                UpieVideoView.this.uj();
            }
        });
        lottieAnimationView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.kft.UpieVideoView.5
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (UpieVideoView.this.tt == view) {
                    UpieVideoView.this.ve();
                }
            }
        });
        addView(lottieAnimationView, new FrameLayout.LayoutParams(-1, -2));
    }

    public SurfaceHolder getHolder() {
        return null;
    }

    public LottieAnimationView getLottieAnimationView() {
        return this.tt;
    }

    @Override // com.byazt.jr.tt
    public View getView() {
        return this;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        LottieAnimationView lottieAnimationView = this.tt;
        if (lottieAnimationView != null) {
            lottieAnimationView.invalidate();
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
    }

    public void setWindowVisibilityChangedListener(com.byazt.jr.tt.c cVar) {
        this.sp = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj() {
        ve();
        if (this.tt != null) {
            this.f16190n.postDelayed(this.f16188a, 40L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve() {
        this.f16190n.removeCallbacksAndMessages(null);
    }

    public void tt() {
        com.byazt.qk.tt.c(new Runnable() { // from class: com.byazt.kft.UpieVideoView.9
            @Override // java.lang.Runnable
            public void run() {
                UpieVideoView.this.ve();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final Context context, final String str, final int i10, final int i11) {
        Integer num = this.uj.get(str);
        if (num == null || num.intValue() != 1) {
            this.uj.put(str, 1);
            this.tt.c(str, new i() { // from class: com.byazt.kft.UpieVideoView.7
                @Override // com.byazt.rs.i
                public void c(Bitmap bitmap) {
                    UpieVideoView.this.c(bitmap, str, i10, i11);
                }

                @Override // com.byazt.rs.i
                public void c() {
                    com.byazt.cph.tt.c().c(context, str, new com.byazt.cph.tt.c<Bitmap>() { // from class: com.byazt.kft.UpieVideoView.7.1
                        @Override // com.byazt.cph.tt.c
                        public void c(Bitmap bitmap) {
                            AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                            UpieVideoView.this.c(bitmap, str, i10, i11);
                        }

                        @Override // com.byazt.cph.tt.c
                        public void c(int i12, String str2) {
                            UpieVideoView.this.uj.put(str, 2);
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
            this.ve.put(str, bitmap);
        }
    }

    @Override // com.byazt.jr.tt
    public void c(com.byazt.jr.c cVar) {
        com.byazt.jr.tt ttVar = this.f16189c;
        if (ttVar != null) {
            ttVar.c(cVar);
        }
    }

    @Override // com.byazt.jr.tt
    public void c(int i10, int i11) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i11;
        layoutParams.width = i10;
        setLayoutParams(layoutParams);
    }

    public void c() {
        com.byazt.qk.tt.c(new Runnable() { // from class: com.byazt.kft.UpieVideoView.8
            @Override // java.lang.Runnable
            public void run() {
                UpieVideoView.this.uj();
            }
        });
    }
}
