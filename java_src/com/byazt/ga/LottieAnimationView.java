package com.byazt.ga;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.MainThread;
import com.bytedance.component.sdk.annotation.RawRes;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 256, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_AUDIO_WINDOW_SIZE})
public class LottieAnimationView extends ImageView {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f14297c = "LottieAnimationView";
    public static final da<Throwable> tt = new da<Throwable>() { // from class: com.byazt.ga.LottieAnimationView.1
        @Override // com.byazt.ga.da
        public void c(Throwable th) {
            if (com.byazt.kk.da.c(th)) {
                com.byazt.kk.a.c("Unable to load composition.", th);
            } else {
                com.byazt.kk.a.c("Unable to parse composition:", th);
            }
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f14298a;
    public JSONArray aw;
    public final Runnable bm;
    public int bx;
    public List<com.byazt.zk.t> cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Runnable f14299d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f14300da;
    public com.byazt.zk.a eo;
    public com.byazt.qm.tt gr;
    public com.byazt.zk.ve gt;
    public final com.byazt.qm.c gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile int f14301h;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public int f14302hd;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @RawRes
    public int f14303i;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public int f14304ic;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public c f14305l;
    public tt lr;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public a f14306m;
    public long md;
    public com.byazt.jzl.tt my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public da<Throwable> f14307n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public int f14308nb;
    public final Handler nu;
    public com.byazt.zk.t or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Handler f14309p;
    public int pf;
    public int qp;
    public final RectF qy;
    public final Handler rh;
    public final RectF rl;
    public boolean sl;
    public final x sp;
    public String sv;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f14310t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Set<uj> f14311u;
    public final da<Throwable> uj;
    public final da<a> ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f14312x;
    public final Set<Object> yp;
    public int yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public u<a> f14313z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public List<com.byazt.zk.a> f14314zb;
    public volatile boolean zm;

    /* JADX INFO: renamed from: com.byazt.ga.LottieAnimationView$8, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 256, AVMDLDataLoader.KeyIsIsDownloadSource})
    static /* synthetic */ class AnonymousClass8 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f14331c;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f14331c = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14331c[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14331c[ImageView.ScaleType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14331c[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public interface c {
        void c(Map<String, Object> map);

        void tt(Map<String, Object> map);
    }

    public interface tt {
        void c(String str, JSONArray jSONArray);
    }

    private enum uj {
        SET_ANIMATION,
        SET_PROGRESS,
        SET_REPEAT_MODE,
        SET_REPEAT_COUNT,
        SET_IMAGE_ASSETS,
        PLAY_OPTION
    }

    @com.byazt.zqa.c(c = {0, 1, 256, 1658})
    private static class ve extends View.BaseSavedState {
        public static final Parcelable.Creator<ve> CREATOR = new Parcelable.Creator<ve>() { // from class: com.byazt.ga.LottieAnimationView.ve.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public ve createFromParcel(Parcel parcel) {
                return new ve(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public ve[] newArray(int i10) {
                return new ve[i10];
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f14336a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f14337c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f14338n;
        public int sp;
        public int tt;
        public boolean uj;
        public float ve;

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f14337c);
            parcel.writeFloat(this.ve);
            parcel.writeInt(this.uj ? 1 : 0);
            parcel.writeString(this.f14338n);
            parcel.writeInt(this.f14336a);
            parcel.writeInt(this.sp);
        }

        public ve(Parcelable parcelable) {
            super(parcelable);
        }

        private ve(Parcel parcel) {
            super(parcel);
            this.f14337c = parcel.readString();
            this.ve = parcel.readFloat();
            this.uj = parcel.readInt() == 1;
            this.f14338n = parcel.readString();
            this.f14336a = parcel.readInt();
            this.sp = parcel.readInt();
        }
    }

    public LottieAnimationView(Context context) {
        super(context);
        this.ve = new da<a>() { // from class: com.byazt.ga.LottieAnimationView.9
            @Override // com.byazt.ga.da
            public void c(a aVar) {
                a.tt ttVarT = aVar.t();
                com.byazt.rs.uj ujVar = ttVarT != null ? ttVarT.f14356x : null;
                if (ujVar == null || com.byazt.rs.a.c().ve()) {
                    LottieAnimationView.this.setComposition(aVar);
                } else {
                    LottieAnimationView.this.c(aVar, ujVar);
                }
            }
        };
        this.uj = new da<Throwable>() { // from class: com.byazt.ga.LottieAnimationView.11
            @Override // com.byazt.ga.da
            public void c(Throwable th) {
                LottieAnimationView.this.c(th);
            }
        };
        this.f14298a = 0;
        this.sp = new x(this);
        this.f14300da = false;
        this.sl = false;
        this.f14310t = true;
        this.f14311u = new HashSet();
        this.yp = new HashSet();
        this.nu = new Handler(Looper.getMainLooper());
        this.rh = new Handler(Looper.getMainLooper());
        this.rl = new RectF();
        this.qy = new RectF();
        this.gu = new com.byazt.qm.c() { // from class: com.byazt.ga.LottieAnimationView.12
            @Override // com.byazt.qm.c
            public void c() {
                LottieAnimationView lottieAnimationView = LottieAnimationView.this;
                lottieAnimationView.c(lottieAnimationView.gt);
            }
        };
        this.zm = false;
        this.yv = 0;
        this.md = 0L;
        this.f14301h = 0;
        this.f14299d = new Runnable() { // from class: com.byazt.ga.LottieAnimationView.6
            @Override // java.lang.Runnable
            public void run() {
                LottieAnimationView.this.z();
                if (LottieAnimationView.this.f14301h == 0) {
                    return;
                }
                if (LottieAnimationView.this.isShown()) {
                    if (LottieAnimationView.this.f14301h == 1) {
                        LottieAnimationView.this.f14301h = 2;
                        LottieAnimationView.this.nu();
                        return;
                    }
                    return;
                }
                if (LottieAnimationView.this.f14301h == 2) {
                    LottieAnimationView.this.f14301h = 1;
                    LottieAnimationView.this.rh();
                }
            }
        };
        this.bm = new Runnable() { // from class: com.byazt.ga.LottieAnimationView.7
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nr.m.c("TMe", "--==--- timer callback, timer: " + LottieAnimationView.this.qp + ", " + LottieAnimationView.this.f14308nb);
                if (LottieAnimationView.this.qp > LottieAnimationView.this.f14308nb) {
                    LottieAnimationView.rl(LottieAnimationView.this);
                    LottieAnimationView.this.my();
                    LottieAnimationView.this.invalidate();
                    LottieAnimationView.this.nu();
                    return;
                }
                LottieAnimationView.this.f14301h = 0;
                LottieAnimationView.this.m();
                if (LottieAnimationView.this.pf < 0 || LottieAnimationView.this.bx < 0) {
                    com.byazt.nr.m.c("TMe", "--==--- timer end, frame invalid: " + LottieAnimationView.this.pf + "," + LottieAnimationView.this.bx);
                } else {
                    com.byazt.nr.m.c("TMe", "--==--- timer end, play anim, startframe: " + LottieAnimationView.this.pf);
                    LottieAnimationView.this.tt();
                    LottieAnimationView lottieAnimationView = LottieAnimationView.this;
                    lottieAnimationView.setFrame(lottieAnimationView.pf);
                    LottieAnimationView.this.c(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.ga.LottieAnimationView.7.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            if (LottieAnimationView.this.getFrame() < LottieAnimationView.this.bx - 1 || LottieAnimationView.this.getFrame() >= LottieAnimationView.this.bx + 2) {
                                return;
                            }
                            com.byazt.nr.m.c("TMe", "--==--- timer end, play anim, endframe: " + LottieAnimationView.this.bx);
                            LottieAnimationView.this.tt(this);
                            LottieAnimationView.this.sp();
                        }
                    });
                }
                if ((!TextUtils.isEmpty(LottieAnimationView.this.sv) || (LottieAnimationView.this.aw != null && LottieAnimationView.this.aw.length() > 0)) && LottieAnimationView.this.lr != null) {
                    LottieAnimationView.this.lr.c(LottieAnimationView.this.sv, LottieAnimationView.this.aw);
                }
            }
        };
        x();
    }

    private a.c getArea() {
        a aVarP;
        x xVar = this.sp;
        if (xVar == null || (aVarP = xVar.p()) == null) {
            return null;
        }
        return aVarP.da();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a.tt getGlobalConfig() {
        a aVarP;
        x xVar = this.sp;
        if (xVar == null || (aVarP = xVar.p()) == null) {
            return null;
        }
        return aVarP.t();
    }

    private a.ve getGlobalEvent() {
        a aVarP;
        x xVar = this.sp;
        if (xVar == null || (aVarP = xVar.p()) == null) {
            return null;
        }
        return aVarP.sl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPlayDelayedELExpressTimeS() {
        a aVarP;
        x xVar = this.sp;
        if (xVar == null || (aVarP = xVar.p()) == null) {
            return null;
        }
        return aVarP.i();
    }

    public static /* synthetic */ int rl(LottieAnimationView lottieAnimationView) {
        int i10 = lottieAnimationView.qp;
        lottieAnimationView.qp = i10 - 1;
        return i10;
    }

    private void setCompositionTask(u<a> uVar) {
        this.f14311u.add(uj.SET_ANIMATION);
        gt();
        u();
        this.f14313z = uVar.c(this.ve).ve(this.uj);
    }

    public static /* synthetic */ int uj(LottieAnimationView lottieAnimationView) {
        int i10 = lottieAnimationView.yv;
        lottieAnimationView.yv = i10 + 1;
        return i10;
    }

    public boolean getClipToCompositionBounds() {
        return this.sp.uj();
    }

    public a getComposition() {
        return this.f14306m;
    }

    public long getDuration() {
        a aVar = this.f14306m;
        if (aVar != null) {
            return (long) aVar.n();
        }
        return 0L;
    }

    public int getFrame() {
        return this.sp.gt();
    }

    public String getImageAssetsFolder() {
        return this.sp.n();
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.sp.a();
    }

    public float getMaxFrame() {
        return this.sp.m();
    }

    public float getMinFrame() {
        return this.sp.z();
    }

    public rh getPerformanceTracker() {
        return this.sp.i();
    }

    public float getProgress() {
        return this.sp.d();
    }

    public my getRenderMode() {
        return this.sp.sp();
    }

    public int getRepeatCount() {
        return this.sp.qy();
    }

    public int getRepeatMode() {
        return this.sp.rl();
    }

    public float getSpeed() {
        return this.sp.nu();
    }

    public com.byazt.jzl.tt getVideoStats() {
        return this.my;
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        Drawable drawable = getDrawable();
        if ((drawable instanceof x) && ((x) drawable).sp() == my.SOFTWARE) {
            this.sp.invalidateSelf();
        }
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        x xVar = this.sp;
        if (drawable2 == xVar) {
            super.invalidateDrawable(xVar);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode() || !this.sl) {
            return;
        }
        this.sp.t();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        rh();
        m();
        Handler handler = this.f14309p;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        uj();
        ve();
        a();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        int i10;
        if (!(parcelable instanceof ve)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ve veVar = (ve) parcelable;
        super.onRestoreInstanceState(veVar.getSuperState());
        this.f14312x = veVar.f14337c;
        Set<uj> set = this.f14311u;
        uj ujVar = uj.SET_ANIMATION;
        if (!set.contains(ujVar) && !TextUtils.isEmpty(this.f14312x)) {
            setAnimation(this.f14312x);
        }
        this.f14303i = veVar.tt;
        if (!this.f14311u.contains(ujVar) && (i10 = this.f14303i) != 0) {
            setAnimation(i10);
        }
        if (!this.f14311u.contains(uj.SET_PROGRESS)) {
            c(veVar.ve, false);
        }
        if (!this.f14311u.contains(uj.PLAY_OPTION) && veVar.uj) {
            c();
        }
        if (!this.f14311u.contains(uj.SET_IMAGE_ASSETS)) {
            setImageAssetsFolder(veVar.f14338n);
        }
        if (!this.f14311u.contains(uj.SET_REPEAT_MODE)) {
            setRepeatMode(veVar.f14336a);
        }
        if (this.f14311u.contains(uj.SET_REPEAT_COUNT)) {
            return;
        }
        setRepeatCount(veVar.sp);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        ve veVar = new ve(super.onSaveInstanceState());
        veVar.f14337c = this.f14312x;
        veVar.tt = this.f14303i;
        veVar.ve = this.sp.d();
        veVar.uj = this.sp.gr();
        veVar.f14338n = this.sp.n();
        veVar.f14336a = this.sp.rl();
        veVar.sp = this.sp.qy();
        return veVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
    
        if (r4 <= (r5 + r0.f14352x)) goto L19;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r14) {
        /*
            Method dump skipped, instruction units count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ga.LottieAnimationView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setAnimation(@RawRes int i10) {
        this.f14303i = i10;
        this.f14312x = null;
        setCompositionTask(c(i10));
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        c(str, (String) null);
    }

    public void setAnimationFromUrl(String str) {
        if (!this.zm) {
            throw new IllegalStateException("必须先设置setImageAssetDelegate，再setAnimationFromUrl");
        }
        setCompositionTask(this.f14310t ? sp.c(getContext(), str) : sp.c(getContext(), str, (String) null));
    }

    public void setApplyingOpacityToLayersEnabled(boolean z10) {
        this.sp.n(z10);
    }

    public void setAutoPlay(boolean z10) {
        this.sl = z10;
    }

    public void setCacheComposition(boolean z10) {
        this.f14310t = z10;
    }

    public void setClipToCompositionBounds(boolean z10) {
        this.sp.c(z10);
    }

    public void setComposition(a aVar) {
        boolean z10 = n.f14401c;
        this.sp.setCallback(this);
        this.f14306m = aVar;
        this.f14300da = true;
        boolean zC = this.sp.c(aVar, getContext().getApplicationContext());
        this.f14300da = false;
        if (getDrawable() != this.sp || zC) {
            if (!zC) {
                rl();
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator<Object> it2 = this.yp.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }

    public void setDefaultFontFileExtension(String str) {
        this.sp.sp(str);
    }

    public void setEventMonitorProxy(com.byazt.qm.tt ttVar) {
        this.gr = ttVar;
    }

    public void setFailureListener(da<Throwable> daVar) {
        this.f14307n = daVar;
    }

    public void setFallbackResource(int i10) {
        this.f14298a = i10;
    }

    public void setFontAssetDelegate(com.byazt.ga.ve veVar) {
        this.sp.c(veVar);
    }

    public void setFontMap(Map<String, Typeface> map) {
        this.sp.c(map);
    }

    public void setFrame(int i10) {
        this.sp.ve(i10);
    }

    public void setIgnoreDisabledSystemAnimations(boolean z10) {
        this.sp.sp(z10);
    }

    public void setImageAssetDelegate(com.byazt.ga.uj ujVar) {
        this.zm = true;
        this.sp.c(ujVar);
    }

    public void setImageAssetsFolder(String str) {
        this.sp.c(str);
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        u();
        super.setImageBitmap(bitmap);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        u();
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i10) {
        u();
        super.setImageResource(i10);
    }

    public void setLottieAnimListener(c cVar) {
        this.f14305l = cVar;
    }

    public void setLottieClicklistener(tt ttVar) {
        this.lr = ttVar;
    }

    public void setMaintainOriginalImageBounds(boolean z10) {
        this.sp.tt(z10);
    }

    public void setMaxFrame(int i10) {
        this.sp.tt(i10);
    }

    public void setMaxProgress(float f10) {
        this.sp.tt(f10);
    }

    public void setMinAndMaxFrame(String str) {
        this.sp.uj(str);
    }

    public void setMinFrame(int i10) {
        this.sp.c(i10);
    }

    public void setMinProgress(float f10) {
        this.sp.c(f10);
    }

    public void setOutlineMasksAndMattes(boolean z10) {
        this.sp.uj(z10);
    }

    public void setPerformanceTrackingEnabled(boolean z10) {
        this.sp.ve(z10);
    }

    public void setProgress(float f10) {
        c(f10, true);
    }

    public void setRenderMode(my myVar) {
        this.sp.c(myVar);
    }

    public void setRepeatCount(int i10) {
        this.f14311u.add(uj.SET_REPEAT_COUNT);
        this.sp.n(i10);
    }

    public void setRepeatMode(int i10) {
        this.f14311u.add(uj.SET_REPEAT_MODE);
        this.sp.uj(i10);
    }

    public void setSafeMode(boolean z10) {
        this.sp.a(z10);
    }

    public void setSpeed(float f10) {
        this.sp.ve(f10);
    }

    public void setTextDelegate(gt gtVar) {
        this.sp.c(gtVar);
    }

    public void setUseCompositionFrameRate(boolean z10) {
        this.sp.x(z10);
    }

    public void setVideoStats(com.byazt.jzl.tt ttVar) {
        this.my = ttVar;
    }

    public void setViewDelegate(rl rlVar) {
        this.sp.c(rlVar);
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        x xVar;
        if (!this.f14300da && drawable == (xVar = this.sp) && xVar.gu()) {
            sp();
        } else if (!this.f14300da && (drawable instanceof x)) {
            x xVar2 = (x) drawable;
            if (xVar2.gu()) {
                xVar2.h();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    private void da() {
        c(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.ga.LottieAnimationView.14
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Map<String, Object> map;
                int i10;
                Object animatedValue = valueAnimator.getAnimatedValue();
                if (!(animatedValue instanceof Float) || ((Float) animatedValue).floatValue() < 0.98f) {
                    return;
                }
                LottieAnimationView.uj(LottieAnimationView.this);
                a.tt globalConfig = LottieAnimationView.this.getGlobalConfig();
                if (globalConfig != null && (i10 = globalConfig.uj) > 0 && i10 > LottieAnimationView.this.yv) {
                    LottieAnimationView.this.yp();
                    LottieAnimationView.this.c();
                    LottieAnimationView.this.setProgress(0.0f);
                    return;
                }
                LottieAnimationView.this.tt(this);
                if (LottieAnimationView.this.f14305l != null) {
                    if (globalConfig == null || (map = globalConfig.ve) == null) {
                        map = null;
                    }
                    LottieAnimationView.this.f14305l.tt(map);
                }
            }
        });
    }

    private void gt() {
        this.f14306m = null;
        this.sp.sl();
    }

    private void i() {
        c(new Animator.AnimatorListener() { // from class: com.byazt.ga.LottieAnimationView.13
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
                LottieAnimationView.this.tt(this);
                LottieAnimationView.this.yp();
                LottieAnimationView.this.sl();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        this.rh.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void my() {
        String[] strArrSplit;
        String[] strArrSplit2;
        List<com.byazt.zk.a> list = this.f14314zb;
        if (list == null || list.size() != 3) {
            com.byazt.zk.a aVar = this.eo;
            if (aVar != null) {
                if (this.f14304ic == 1) {
                    aVar.c(tt(this.qp));
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.qp);
                    aVar.c(sb2.toString());
                }
            }
        } else {
            String strTt = tt(this.qp);
            if (!TextUtils.isEmpty(strTt) && (strArrSplit2 = strTt.split(":")) != null && strArrSplit2.length == 3) {
                for (int i10 = 0; i10 < 3; i10++) {
                    com.byazt.zk.a aVar2 = this.f14314zb.get(i10);
                    if (aVar2 != null) {
                        aVar2.c(strArrSplit2[i10]);
                    }
                }
            }
        }
        List<com.byazt.zk.t> list2 = this.cu;
        if (list2 == null || list2.size() != 3) {
            com.byazt.zk.t tVar = this.or;
            if (tVar != null) {
                if (this.f14304ic == 1) {
                    tVar.c(tt(this.qp));
                    return;
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append(this.qp);
                tVar.c(sb3.toString());
                return;
            }
            return;
        }
        String strTt2 = tt(this.qp);
        if (TextUtils.isEmpty(strTt2) || (strArrSplit = strTt2.split(":")) == null || strArrSplit.length != 3) {
            return;
        }
        for (int i11 = 0; i11 < 3; i11++) {
            com.byazt.zk.t tVar2 = this.cu.get(i11);
            if (tVar2 != null) {
                tVar2.c(strArrSplit[i11]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nu() {
        rh();
        this.nu.postDelayed(this.bm, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rh() {
        this.nu.removeCallbacksAndMessages(null);
    }

    private void rl() {
        boolean zN = n();
        setImageDrawable(null);
        setImageDrawable(this.sp);
        if (zN) {
            this.sp.yp();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sl() {
        final a.tt globalConfig = getGlobalConfig();
        if (globalConfig == null || globalConfig.f14355n <= 0) {
            return;
        }
        if (TextUtils.isEmpty(globalConfig.f14353a) && globalConfig.sp == null) {
            return;
        }
        int maxFrame = globalConfig.f14355n;
        if (maxFrame > getMaxFrame()) {
            maxFrame = (int) getMaxFrame();
        }
        final float maxFrame2 = maxFrame / getMaxFrame();
        c(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.ga.LottieAnimationView.15
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Object animatedValue = valueAnimator.getAnimatedValue();
                if (!(animatedValue instanceof Float) || ((Float) animatedValue).floatValue() < maxFrame2) {
                    return;
                }
                LottieAnimationView.this.tt(this);
                if (LottieAnimationView.this.lr != null) {
                    tt ttVar = LottieAnimationView.this.lr;
                    a.tt ttVar2 = globalConfig;
                    ttVar.c(ttVar2.f14353a, ttVar2.sp);
                }
            }
        });
    }

    private void t() {
        c(new Animator.AnimatorListener() { // from class: com.byazt.ga.LottieAnimationView.16
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
                gt gtVarZm;
                final long jElapsedRealtime = SystemClock.elapsedRealtime() - LottieAnimationView.this.md;
                LottieAnimationView.this.tt(this);
                String playDelayedELExpressTimeS = LottieAnimationView.this.getPlayDelayedELExpressTimeS();
                if (!TextUtils.isEmpty(playDelayedELExpressTimeS) && (gtVarZm = LottieAnimationView.this.sp.zm()) != null) {
                    try {
                        int i10 = Integer.parseInt(gtVarZm.c(playDelayedELExpressTimeS)) * 1000;
                        if (LottieAnimationView.this.md > 0) {
                            long jElapsedRealtime2 = (LottieAnimationView.this.md + ((long) i10)) - SystemClock.elapsedRealtime();
                            com.byazt.nr.m.c("TMe", "--==-- lottie delayed time: ".concat(String.valueOf(jElapsedRealtime2)));
                            if (jElapsedRealtime2 > 0) {
                                LottieAnimationView.this.sp();
                                LottieAnimationView.this.setVisibility(8);
                                if (LottieAnimationView.this.f14309p == null) {
                                    LottieAnimationView.this.f14309p = new Handler(Looper.getMainLooper());
                                }
                                LottieAnimationView.this.f14309p.removeCallbacksAndMessages(null);
                                LottieAnimationView.this.f14309p.postDelayed(new Runnable() { // from class: com.byazt.ga.LottieAnimationView.16.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        com.byazt.nr.m.c("TMe", "--==-- lottie real start play");
                                        LottieAnimationView.this.setVisibility(0);
                                        LottieAnimationView.this.c();
                                        LottieAnimationView.this.c(jElapsedRealtime);
                                    }
                                }, jElapsedRealtime2);
                                return;
                            }
                        }
                    } catch (NumberFormatException e10) {
                        com.byazt.nr.m.c(e10);
                    }
                }
                LottieAnimationView.this.c(jElapsedRealtime);
            }
        });
    }

    private void tt(RectF rectF, RectF rectF2) {
        float width = getWidth();
        float height = getHeight();
        float fWidth = this.sp.getBounds().width();
        float fHeight = this.sp.getBounds().height();
        if (width == 0.0f || height == 0.0f || fWidth == 0.0f || fHeight == 0.0f) {
            return;
        }
        Matrix matrix = new Matrix();
        int i10 = AnonymousClass8.f14331c[getScaleType().ordinal()];
        if (i10 == 1) {
            c(matrix, width, height, fWidth, fHeight);
        } else if (i10 == 2) {
            tt(matrix, width, height, fWidth, fHeight);
        } else if (i10 == 3) {
            ve(matrix, width, height, fWidth, fHeight);
        } else if (i10 == 4) {
            uj(matrix, width, height, fWidth, fHeight);
        }
        matrix.mapRect(rectF, rectF2);
    }

    private void u() {
        u<a> uVar = this.f14313z;
        if (uVar != null) {
            uVar.tt(this.ve);
            this.f14313z.uj(this.uj);
        }
    }

    private void uj(Matrix matrix, float f10, float f11, float f12, float f13) {
        if (f12 >= f10 || f13 >= f11) {
            if (f12 / f13 >= f10 / f11) {
                float f14 = f10 / f12;
                matrix.preScale(f14, f14);
                matrix.postTranslate(0.0f, (f11 - (f13 * f14)) / 2.0f);
                return;
            } else {
                float f15 = f11 / f13;
                matrix.preScale(f15, f15);
                matrix.postTranslate((f10 - (f12 * f15)) / 2.0f, 0.0f);
                return;
            }
        }
        if (f12 / f13 >= f10 / f11) {
            float f16 = f10 / f12;
            matrix.preScale(f16, f16);
            matrix.postTranslate(0.0f, (f11 - (f13 * f16)) / 2.0f);
        } else {
            float f17 = f11 / f13;
            matrix.preScale(f17, f17);
            matrix.postTranslate((f10 - (f12 * f17)) / 2.0f, 0.0f);
        }
    }

    private void ve(Matrix matrix, float f10, float f11, float f12, float f13) {
        matrix.postTranslate((f10 - f12) / 2.0f, (f11 - f13) / 2.0f);
    }

    private void x() {
        setSaveEnabled(false);
        this.f14310t = true;
        setFallbackResource(0);
        setImageAssetsFolder("");
        c(0.0f, false);
        c(false, getContext().getApplicationContext());
        setIgnoreDisabledSystemAnimations(false);
        this.sp.c(Boolean.valueOf(com.byazt.kk.da.c(getContext()) != 0.0f));
        i();
        da();
        t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void yp() {
        x xVar;
        int i10;
        int i11;
        int i12;
        if (this.f14306m == null || (xVar = this.sp) == null) {
            return;
        }
        gt gtVarZm = xVar.zm();
        final a.uj ujVarX = this.f14306m.x();
        if (ujVarX == null || gtVarZm == null) {
            return;
        }
        final int i13 = ujVarX.f14358c;
        if (i13 < 0) {
            com.byazt.nr.m.c("TMe", "--==--- timer fail, ke is invalid: " + i13);
            return;
        }
        int[] iArr = ujVarX.f14361n;
        final int i14 = -1;
        if (iArr == null || iArr.length < 2) {
            i10 = -1;
            i11 = -1;
        } else {
            i11 = iArr[0];
            i10 = iArr[1];
        }
        String strC = gtVarZm.c(ujVarX.ve);
        String strC2 = gtVarZm.c(ujVarX.uj);
        try {
            i12 = Integer.parseInt(strC);
            try {
                i14 = Integer.parseInt(strC2);
            } catch (NumberFormatException e10) {
                e = e10;
                com.byazt.nr.m.c(e);
            }
        } catch (NumberFormatException e11) {
            e = e11;
            i12 = -1;
        }
        com.byazt.nr.m.c("TMe", "--==--- prepare timer, startS: " + i12 + ", lenS: " + i14);
        if (ujVarX.sl == 2 && ujVarX.f14362t != null) {
            this.f14314zb = new ArrayList(3);
            this.cu = new ArrayList(3);
            for (String str : ujVarX.f14362t) {
                if (!TextUtils.isEmpty(str)) {
                    com.byazt.nr.m.c("TMe", "--==--- timers, id:" + ujVarX.tt);
                    com.byazt.zk.a aVarUj = uj(str);
                    if (aVarUj != null) {
                        this.f14314zb.add(aVarUj);
                    }
                    com.byazt.zk.t tVarVe = ve(str);
                    if (tVarVe != null) {
                        this.cu.add(tVarVe);
                    }
                }
            }
            if (this.f14314zb.size() != 3 && this.cu.size() != 3) {
                com.byazt.nr.m.c("TMe", "--==--- timer layers size != 3, is " + this.f14314zb.size() + ", timer is invalid");
                com.byazt.nr.m.c("TMe", "--==--- textTimer layers size != 3, is " + this.cu.size() + ", timer is invalid");
                return;
            }
        }
        if (!TextUtils.isEmpty(ujVarX.tt)) {
            com.byazt.nr.m.c("TMe", "--==--- timer, id:" + ujVarX.tt);
            this.eo = uj(ujVarX.tt);
            this.or = ve(ujVarX.tt);
        }
        if (this.f14314zb == null && this.eo == null && this.cu == null && this.or == null) {
            com.byazt.nr.m.c("TMe", "--==--- timer fail, id is invalid: " + ujVarX.tt);
            return;
        }
        com.byazt.nr.m.c("TMe", "--==--- timer success, timer tp: " + ujVarX.sl);
        this.f14304ic = ujVarX.sl;
        this.sv = ujVarX.f14357a;
        this.aw = ujVarX.sp;
        this.f14302hd = ujVarX.f14363u;
        this.qp = i12;
        this.f14308nb = i12 - i14;
        this.pf = i11;
        this.bx = i10;
        my();
        final int i15 = i12;
        c(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.ga.LottieAnimationView.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                JSONArray jSONArray;
                if (LottieAnimationView.this.getFrame() < i13 - 1 || LottieAnimationView.this.getFrame() >= i13 + 2) {
                    return;
                }
                com.byazt.nr.m.c("TMe", "--==--- enter timer point, frame: " + LottieAnimationView.this.getFrame());
                LottieAnimationView.this.tt(this);
                if (i15 < 0 || i14 < 0) {
                    com.byazt.nr.m.c("TMe", "--==--- enter timer callback, NOT start timer");
                } else {
                    com.byazt.nr.m.c("TMe", "--==--- enter timer callback, start timer");
                    LottieAnimationView.this.f14301h = 2;
                    if (ujVarX.f14359da == 1) {
                        LottieAnimationView.this.z();
                    }
                    LottieAnimationView.this.nu();
                    if ((!TextUtils.isEmpty(ujVarX.f14364x) || ((jSONArray = ujVarX.f14360i) != null && jSONArray.length() > 0)) && LottieAnimationView.this.lr != null) {
                        tt ttVar = LottieAnimationView.this.lr;
                        a.uj ujVar = ujVarX;
                        ttVar.c(ujVar.f14364x, ujVar.f14360i);
                    }
                }
                if (LottieAnimationView.this.f14302hd != 1) {
                    LottieAnimationView.this.sp();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        m();
        this.rh.postDelayed(this.f14299d, 500L);
    }

    @MainThread
    public void a() {
        this.f14311u.add(uj.PLAY_OPTION);
        this.sp.md();
    }

    public boolean n() {
        return this.sp.gu();
    }

    public void setMaxFrame(String str) {
        this.sp.ve(str);
    }

    public void setMinFrame(String str) {
        this.sp.tt(str);
    }

    @MainThread
    public void sp() {
        this.sl = false;
        this.sp.h();
    }

    private com.byazt.zk.t ve(String str) {
        com.byazt.zk.uj ujVarVe;
        x xVar = this.sp;
        if (xVar == null || (ujVarVe = xVar.ve()) == null) {
            return null;
        }
        return c(ujVarVe, str);
    }

    public void setAnimation(String str) {
        this.f14312x = str;
        this.f14303i = 0;
        setCompositionTask(tt(str));
    }

    public void ve() {
        this.sp.rh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final a aVar, com.byazt.rs.uj ujVar) {
        com.byazt.rs.a.c().c(ujVar, new com.byazt.rs.sp() { // from class: com.byazt.ga.LottieAnimationView.10
            @Override // com.byazt.rs.sp
            public void c(com.byazt.rs.uj ujVar2) {
                LottieAnimationView.this.setComposition(aVar);
            }

            @Override // com.byazt.rs.sp
            public void c(com.byazt.rs.uj ujVar2, int i10, String str) {
                LottieAnimationView.this.c(i10, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, String str) {
        c(new Exception("Lottie zip download failed, errorCode: " + i10 + ", errorDesc: " + str));
    }

    private com.byazt.zk.a uj(String str) {
        com.byazt.zk.uj ujVarVe;
        x xVar = this.sp;
        if (xVar == null || (ujVarVe = xVar.ve()) == null) {
            return null;
        }
        return tt(ujVarVe, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Throwable th) {
        int i10 = this.f14298a;
        if (i10 != 0) {
            setImageResource(i10);
        }
        da<Throwable> daVar = this.f14307n;
        if (daVar == null) {
            daVar = tt;
        }
        daVar.c(th);
    }

    private void tt(Matrix matrix, float f10, float f11, float f12, float f13) {
        if (f12 < f10 && f13 < f11) {
            matrix.postTranslate((f10 - f12) / 2.0f, (f11 - f13) / 2.0f);
            return;
        }
        if (f12 / f13 >= f10 / f11) {
            float f14 = f10 / f12;
            matrix.preScale(f14, f14);
            matrix.postTranslate(0.0f, (f11 - (f13 * f14)) / 2.0f);
        } else {
            float f15 = f11 / f13;
            matrix.preScale(f15, f15);
            matrix.postTranslate((f10 - (f12 * f15)) / 2.0f, 0.0f);
        }
    }

    public void uj() {
        this.sp.my();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j10) {
        Map<String, Object> map;
        a.tt globalConfig = getGlobalConfig();
        if (this.f14305l != null) {
            HashMap map2 = new HashMap();
            map2.put("duration", Long.valueOf(j10));
            if (globalConfig != null && (map = globalConfig.tt) != null && !map.isEmpty()) {
                map2.putAll(globalConfig.tt);
            }
            this.f14305l.c(map2);
        }
    }

    private u<a> tt(final String str) {
        if (isInEditMode()) {
            return new u<>(new Callable<t<a>>() { // from class: com.byazt.ga.LottieAnimationView.4
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public t<a> call() throws Exception {
                    return LottieAnimationView.this.f14310t ? sp.ve(LottieAnimationView.this.getContext(), str) : sp.ve(LottieAnimationView.this.getContext(), str, null);
                }
            }, true);
        }
        return this.f14310t ? sp.tt(getContext(), str) : sp.tt(getContext(), str, (String) null);
    }

    private i c(String str) {
        x xVar;
        a aVarP;
        Map<String, i> mapNu;
        if (TextUtils.isEmpty(str) || (xVar = this.sp) == null || (aVarP = xVar.p()) == null || (mapNu = aVarP.nu()) == null) {
            return null;
        }
        return mapNu.get(str);
    }

    public void tt(String str, String str2) {
        if (this.zm) {
            setCompositionTask(sp.c(getContext(), str, str2));
            return;
        }
        throw new IllegalStateException("必须先设置setImageAssetDelegate，再setAnimationFromUrl");
    }

    private com.byazt.zk.a tt(com.byazt.zk.uj ujVar, String str) {
        for (com.byazt.zk.ve veVar : ujVar.yp()) {
            if (veVar instanceof com.byazt.zk.uj) {
                com.byazt.zk.a aVarTt = tt((com.byazt.zk.uj) veVar, str);
                if (aVarTt != null) {
                    return aVarTt;
                }
            } else if (TextUtils.equals(str, veVar.sl()) && (veVar instanceof com.byazt.zk.a)) {
                return (com.byazt.zk.a) veVar;
            }
        }
        return null;
    }

    private void c(int[][] iArr) {
        if (iArr == null || iArr.length == 0) {
            return;
        }
        try {
            int[] iArr2 = iArr[0];
            int i10 = iArr2[0];
            final int i11 = iArr2[1];
            if (i10 < 0 || i11 < 0) {
                return;
            }
            com.byazt.nr.m.c("TMe", "--==--- inel enter, play anim, startframe: " + i10);
            rh();
            c();
            setFrame(i10);
            c(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.ga.LottieAnimationView.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    if (LottieAnimationView.this.getFrame() < i11 - 1 || LottieAnimationView.this.getFrame() >= i11 + 2) {
                        return;
                    }
                    com.byazt.nr.m.c("TMe", "--==--- inel enter, play anim end, endframe: " + i11 + ", realFrame: " + LottieAnimationView.this.getFrame());
                    LottieAnimationView.this.tt(this);
                    LottieAnimationView.this.sp();
                }
            });
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    private String tt(int i10) {
        int i11 = i10 / 3600;
        int i12 = i10 % 3600;
        int i13 = i12 / 60;
        int i14 = i12 % 60;
        StringBuilder sb2 = new StringBuilder();
        if (i11 < 10) {
            sb2.append("0");
        }
        sb2.append(i11);
        sb2.append(":");
        if (i13 < 10) {
            sb2.append("0");
        }
        sb2.append(i13);
        sb2.append(":");
        if (i14 < 10) {
            sb2.append("0");
        }
        sb2.append(i14);
        return sb2.toString();
    }

    private void c(a.c cVar) {
        cVar.f14351n = com.byazt.kk.da.c("x", cVar.f14350c, getWidth());
        cVar.f14349a = com.byazt.kk.da.c("y", cVar.tt, getHeight());
        cVar.sp = com.byazt.kk.da.c((String) null, cVar.ve, getWidth());
        cVar.f14352x = com.byazt.kk.da.c((String) null, cVar.uj, getHeight());
    }

    private boolean c(i iVar) {
        if (iVar != null) {
            if (!TextUtils.isEmpty(iVar.sp())) {
                return true;
            }
            if (iVar.i() != null && iVar.i().length() > 0) {
                return true;
            }
            if ((iVar.x() != null && iVar.x().length > 0) || !TextUtils.isEmpty(iVar.m())) {
                return true;
            }
        }
        a.ve globalEvent = getGlobalEvent();
        if (globalEvent == null) {
            return false;
        }
        if (!TextUtils.isEmpty(globalEvent.f14365c)) {
            return true;
        }
        JSONArray jSONArray = globalEvent.ve;
        if (jSONArray != null && jSONArray.length() > 0) {
            return true;
        }
        int[][] iArr = globalEvent.tt;
        return (iArr != null && iArr.length > 0) || !TextUtils.isEmpty(globalEvent.f14366n);
    }

    @MainThread
    public void tt() {
        this.f14311u.add(uj.PLAY_OPTION);
        this.sp.yp();
    }

    public void tt(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.sp.tt(animatorUpdateListener);
    }

    public void tt(Animator.AnimatorListener animatorListener) {
        this.sp.tt(animatorListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.zk.ve veVar) {
        int[][] iArr;
        int[][] iArrX;
        if (veVar == null) {
            return;
        }
        String strSl = veVar.sl();
        if (strSl != null && strSl.startsWith("CSJCLOSE")) {
            rh();
        }
        i iVarC = c(veVar.sp());
        if (iVarC != null && (iArrX = iVarC.x()) != null) {
            c(iArrX);
        } else {
            if (getGlobalEvent() == null || (iArr = getGlobalEvent().tt) == null) {
                return;
            }
            c(iArr);
        }
    }

    private com.byazt.zk.ve c(MotionEvent motionEvent) {
        com.byazt.zk.uj ujVarVe;
        x xVar = this.sp;
        if (xVar == null || (ujVarVe = xVar.ve()) == null) {
            return null;
        }
        return c(ujVarVe, motionEvent);
    }

    private com.byazt.zk.ve c(com.byazt.zk.uj ujVar, MotionEvent motionEvent) {
        com.byazt.zk.ve veVarC;
        for (com.byazt.zk.ve veVar : ujVar.yp()) {
            if (veVar instanceof com.byazt.zk.uj) {
                if (veVar.da() && veVar.x() > 0.0f) {
                    RectF rectF = new RectF();
                    veVar.c(rectF, veVar.a(), true);
                    if (rectF.width() >= 3.0f && rectF.height() >= 3.0f && (veVarC = c((com.byazt.zk.uj) veVar, motionEvent)) != null) {
                        return veVarC;
                    }
                }
            } else if (veVar.da() && veVar.x() > 0.0f) {
                RectF rectF2 = new RectF();
                x xVar = this.sp;
                if (xVar != null && xVar.x()) {
                    veVar.c(rectF2, veVar.a(), true);
                    RectF rectFEo = this.sp.eo();
                    if (rectFEo != null) {
                        c(rectF2, rectFEo);
                    }
                } else {
                    RectF rectF3 = new RectF();
                    veVar.c(rectF3, veVar.a(), true);
                    tt(rectF2, rectF3);
                }
                if (c(motionEvent, rectF2)) {
                    return veVar;
                }
            }
        }
        return null;
    }

    private boolean c(MotionEvent motionEvent, RectF rectF) {
        if (motionEvent != null && rectF != null) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (x10 >= rectF.left && x10 <= rectF.right && y10 >= rectF.top && y10 <= rectF.bottom) {
                return true;
            }
        }
        return false;
    }

    private void c(RectF rectF, RectF rectF2) {
        float width = getWidth();
        float height = getHeight();
        float fWidth = rectF2.width();
        float fHeight = rectF2.height();
        if (width == 0.0f || height == 0.0f || fWidth == 0.0f || fHeight == 0.0f) {
            return;
        }
        Matrix matrix = new Matrix();
        int i10 = AnonymousClass8.f14331c[getScaleType().ordinal()];
        if (i10 == 1) {
            c(matrix, width, height, fWidth, fHeight);
        } else if (i10 == 2) {
            tt(matrix, width, height, fWidth, fHeight);
        } else if (i10 == 3) {
            ve(matrix, width, height, fWidth, fHeight);
        } else if (i10 == 4) {
            uj(matrix, width, height, fWidth, fHeight);
        }
        matrix.mapRect(rectF);
    }

    private void c(Matrix matrix, float f10, float f11, float f12, float f13) {
        if (f12 / f13 >= f10 / f11) {
            float f14 = f11 / f13;
            matrix.preScale(f14, f14);
            matrix.postTranslate(-(((f12 * f14) - f10) / 2.0f), 0.0f);
        } else {
            float f15 = f10 / f12;
            matrix.preScale(f15, f15);
            matrix.postTranslate(0.0f, -(((f13 * f15) - f11) / 2.0f));
        }
    }

    public void c(boolean z10, Context context) {
        this.sp.c(z10, context);
    }

    private u<a> c(@RawRes final int i10) {
        if (isInEditMode()) {
            return new u<>(new Callable<t<a>>() { // from class: com.byazt.ga.LottieAnimationView.3
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public t<a> call() throws Exception {
                    return LottieAnimationView.this.f14310t ? sp.tt(LottieAnimationView.this.getContext(), i10) : sp.tt(LottieAnimationView.this.getContext(), i10, (String) null);
                }
            }, true);
        }
        return this.f14310t ? sp.c(getContext(), i10) : sp.c(getContext(), i10, (String) null);
    }

    public void c(String str, String str2) {
        if (this.zm) {
            c(new ByteArrayInputStream(str.getBytes()), str2);
            return;
        }
        throw new IllegalStateException("必须先设置setImageAssetDelegate，再setAnimationFromJson");
    }

    public void c(InputStream inputStream, String str) {
        setCompositionTask(sp.c(inputStream, str));
    }

    private com.byazt.zk.t c(com.byazt.zk.uj ujVar, String str) {
        for (com.byazt.zk.ve veVar : ujVar.yp()) {
            if (veVar instanceof com.byazt.zk.uj) {
                com.byazt.zk.t tVarC = c((com.byazt.zk.uj) veVar, str);
                if (tVarC != null) {
                    return tVarC;
                }
            } else if (TextUtils.equals(str, veVar.sl()) && (veVar instanceof com.byazt.zk.t)) {
                return (com.byazt.zk.t) veVar;
            }
        }
        return null;
    }

    @MainThread
    public void c() {
        if (this.md == 0) {
            this.md = SystemClock.elapsedRealtime();
        }
        this.f14311u.add(uj.PLAY_OPTION);
        this.sp.t();
    }

    public void c(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.sp.c(animatorUpdateListener);
    }

    public void c(Animator.AnimatorListener animatorListener) {
        this.sp.c(animatorListener);
    }

    @Deprecated
    public void c(boolean z10) {
        this.sp.n(z10 ? -1 : 0);
    }

    public Bitmap c(String str, Bitmap bitmap) {
        return this.sp.c(str, bitmap);
    }

    private void c(float f10, boolean z10) {
        if (z10) {
            this.f14311u.add(uj.SET_PROGRESS);
        }
        this.sp.uj(f10);
    }

    public void c(String str, com.byazt.rs.i iVar) {
        if (this.f14306m != null) {
            com.byazt.rs.c.c().c(this.f14306m.t(), str, iVar);
        } else if (iVar != null) {
            iVar.c();
        }
    }
}
