package com.byazt.zk;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.byazt.ga.LottieAnimationView;
import com.byazt.ga.gt;
import com.byazt.nr.m;
import com.umeng.analytics.pro.bm;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 909, 13})
public class tt extends sp {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.ts.uj f22853da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f22854i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Runnable f22855m;
    public com.byazt.fk.sp.c sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile boolean f22856t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public c f22857u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f22858x;
    public LottieAnimationView yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final Handler f22859z;

    @com.byazt.zqa.c(c = {0, 1, 909, 194})
    private static class c extends TextureView {
        public c(Context context) {
            super(context);
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x006a  */
    public tt(com.byazt.ga.x xVar, x xVar2, final Context context) {
        JSONObject jSONObject;
        super(xVar, xVar2);
        this.f22858x = -1.0f;
        this.f22854i = -1.0f;
        this.f22859z = new Handler(Looper.getMainLooper());
        this.f22855m = new Runnable() { // from class: com.byazt.zk.tt.4
            @Override // java.lang.Runnable
            public void run() {
                if (tt.this.yp != null) {
                    tt.this.yp.invalidate();
                }
                tt.this.f22859z.postDelayed(tt.this.f22855m, 40L);
            }
        };
        if (((sp) this).sp == null || xVar == null || context == null) {
            return;
        }
        LottieAnimationView lottieAnimationViewTt = xVar.tt();
        this.yp = lottieAnimationViewTt;
        if (lottieAnimationViewTt == null) {
            return;
        }
        float fC = com.byazt.kk.da.c();
        this.f22858x = (int) (((sp) this).sp.c() * fC);
        this.f22854i = (int) (((sp) this).sp.tt() * fC);
        gt gtVarZm = xVar.zm();
        if (gtVarZm != null) {
            String strC = gtVarZm.c(((sp) this).sp.u());
            if (TextUtils.isEmpty(strC)) {
                jSONObject = null;
            } else {
                try {
                    jSONObject = new JSONObject(strC);
                } catch (JSONException e10) {
                    m.c(e10);
                    jSONObject = null;
                }
            }
        } else {
            jSONObject = null;
        }
        if (jSONObject != null) {
            final String strOptString = jSONObject.optString("file_hash");
            final String strOptString2 = jSONObject.optString("video_url");
            jSONObject.optString("video_duration");
            jSONObject.optString(bm.f84423z);
            if (TextUtils.isEmpty(strOptString2)) {
                return;
            }
            c cVar = new c(context);
            this.f22857u = cVar;
            cVar.setSurfaceTextureListener(new TextureView.SurfaceTextureListener() { // from class: com.byazt.zk.tt.1
                @Override // android.view.TextureView.SurfaceTextureListener
                public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
                    tt.this.c(strOptString2, strOptString, context, surfaceTexture);
                    tt.this.rh();
                }

                @Override // android.view.TextureView.SurfaceTextureListener
                public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                    tt.this.z();
                    surfaceTexture.release();
                    tt.this.nu();
                    return true;
                }

                @Override // android.view.TextureView.SurfaceTextureListener
                public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
                }

                @Override // android.view.TextureView.SurfaceTextureListener
                public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                }
            });
            this.yp.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.zk.tt.2
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    if (tt.this.yp == view) {
                        if (tt.this.tt()) {
                            tt.this.yp.removeOnAttachStateChangeListener(this);
                        } else {
                            tt.this.c(new Runnable() { // from class: com.byazt.zk.tt.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    tt.this.m();
                                }
                            });
                        }
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                    if (tt.this.yp == view) {
                        tt.this.c(new Runnable() { // from class: com.byazt.zk.tt.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                ViewParent parent = tt.this.f22857u.getParent();
                                if (parent instanceof ViewGroup) {
                                    ((ViewGroup) parent).removeView(tt.this.f22857u);
                                }
                            }
                        });
                    }
                }
            });
            m();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        ViewParent parent = this.f22857u.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f22857u);
        }
        ViewParent parent2 = this.yp.getParent();
        if (parent2 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent2;
            int i10 = 0;
            while (i10 < viewGroup.getChildCount()) {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt instanceof c) {
                    viewGroup.removeView(childAt);
                    i10--;
                }
                i10++;
            }
            this.f22857u.setTranslationX(2.1474836E9f);
            viewGroup.addView(this.f22857u);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nu() {
        this.f22859z.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rh() {
        nu();
        if (this.yp != null) {
            this.f22859z.postDelayed(this.f22855m, 40L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        if (this.f22853da != null) {
            if (this.f22856t) {
                this.f22853da.stop();
            }
            this.f22853da.release();
            this.f22853da = null;
        }
    }

    @Override // com.byazt.zk.sp, com.byazt.zk.ve
    public void tt(Canvas canvas, Matrix matrix, int i10) {
        if (this.f22858x <= 0.0f || this.f22857u == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        c(i10);
        float fX = x();
        c(this.f22857u, (int) this.f22858x, (int) this.f22854i);
        this.f22857u.setAlpha(fX);
        this.f22857u.draw(canvas);
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, String str2, Context context, SurfaceTexture surfaceTexture) {
        z();
        LottieAnimationView lottieAnimationView = this.yp;
        com.byazt.ts.uj ujVar = new com.byazt.ts.uj("uttie", lottieAnimationView != null ? lottieAnimationView.getVideoStats() : null);
        this.f22853da = ujVar;
        ujVar.setSurface(surfaceTexture);
        com.byazt.fk.sp.c cVar = new com.byazt.fk.sp.c() { // from class: com.byazt.zk.tt.3
            @Override // com.byazt.fk.sp.c
            public void onBufferEnd(com.byazt.fk.sp spVar, int i10) {
            }

            @Override // com.byazt.fk.sp.c
            public void onBufferStart(com.byazt.fk.sp spVar, int i10, int i11, int i12) {
            }

            @Override // com.byazt.fk.sp.c
            public void onBufferingUpdate(com.byazt.fk.sp spVar, int i10) {
            }

            @Override // com.byazt.fk.sp.c
            public void onCompletion(com.byazt.fk.sp spVar) {
            }

            @Override // com.byazt.fk.sp.c
            public void onError(com.byazt.fk.sp spVar, com.byazt.fk.ve veVar) {
                m.uj("uttie-video", veVar.getCode() + ":" + veVar.getExtraCode() + ":" + veVar.getMsg());
            }

            @Override // com.byazt.fk.sp.c
            public void onMonitorLog(com.byazt.fk.sp spVar, JSONObject jSONObject, String str3) {
            }

            @Override // com.byazt.fk.sp.c
            public void onPause(com.byazt.fk.sp spVar) {
            }

            @Override // com.byazt.fk.sp.c
            public void onPlayPositionUpdate(com.byazt.fk.sp spVar, long j10, long j11) {
            }

            @Override // com.byazt.fk.sp.c
            public void onPrepared(com.byazt.fk.sp spVar) {
                tt.this.f22856t = true;
                spVar.setLoop(true);
            }

            @Override // com.byazt.fk.sp.c
            public void onRelease(com.byazt.fk.sp spVar) {
            }

            @Override // com.byazt.fk.sp.c
            public void onRenderStart(com.byazt.fk.sp spVar, long j10) {
            }

            @Override // com.byazt.fk.sp.c
            public void onResume(com.byazt.fk.sp spVar) {
            }

            @Override // com.byazt.fk.sp.c
            public void onSeekCompletion(com.byazt.fk.sp spVar, boolean z10) {
            }

            @Override // com.byazt.fk.sp.c
            public void onStart(com.byazt.fk.sp spVar) {
            }

            @Override // com.byazt.fk.sp.c
            public void onVideoSizeChanged(com.byazt.fk.sp spVar, int i10, int i11) {
            }
        };
        this.sl = cVar;
        this.f22853da.addIVideoPlayerCallback(cVar);
        com.byazt.jzl.uj ujVar2 = new com.byazt.jzl.uj();
        ujVar2.setVideo_url(str);
        ujVar2.setFileHash(str2);
        this.f22853da.setDataSource(new com.byazt.jzl.a(com.byazt.kk.ve.tt(context), ujVar2, null, 0, 0));
        this.f22853da.setQuietPlay(true);
        this.f22853da.start(true, 0L, true);
    }

    private static void c(View view, int i10, int i11) {
        view.layout(0, 0, i10, i11);
        view.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }
}
