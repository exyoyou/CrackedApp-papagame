package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.annotation.RequiresApi;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes7.dex */
public class LottieAnimationView extends AppCompatImageView {
    private static final String G = "LottieAnimationView";
    private static final y0<Throwable> H = new y0() { // from class: com.airbnb.lottie.h
        @Override // com.airbnb.lottie.y0
        public final void onResult(Object obj) {
            LottieAnimationView.B((Throwable) obj);
        }
    };
    private boolean A;
    private boolean B;
    private final Set<UserActionTaken> C;
    private final Set<a1> D;

    @Nullable
    private e1<j> E;

    @Nullable
    private j F;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final y0<j> f5306s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final y0<Throwable> f5307t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private y0<Throwable> f5308u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @DrawableRes
    private int f5309v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final LottieDrawable f5310w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f5311x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @RawRes
    private int f5312y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f5313z;

    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f5314b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f5315c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f5316d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f5317e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f5318f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f5319g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f5320h;

        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        /* synthetic */ SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f5314b);
            parcel.writeFloat(this.f5316d);
            parcel.writeInt(this.f5317e ? 1 : 0);
            parcel.writeString(this.f5318f);
            parcel.writeInt(this.f5319g);
            parcel.writeInt(this.f5320h);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f5314b = parcel.readString();
            this.f5316d = parcel.readFloat();
            this.f5317e = parcel.readInt() == 1;
            this.f5318f = parcel.readString();
            this.f5319g = parcel.readInt();
            this.f5320h = parcel.readInt();
        }
    }

    private enum UserActionTaken {
        SET_ANIMATION,
        SET_PROGRESS,
        SET_REPEAT_MODE,
        SET_REPEAT_COUNT,
        SET_IMAGE_ASSETS,
        PLAY_OPTION
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class a<T> extends com.airbnb.lottie.value.j<T> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.airbnb.lottie.value.l f5321d;

        a(com.airbnb.lottie.value.l lVar) {
            this.f5321d = lVar;
        }

        @Override // com.airbnb.lottie.value.j
        public T a(com.airbnb.lottie.value.b<T> bVar) {
            return (T) this.f5321d.a(bVar);
        }
    }

    private static class b implements y0<Throwable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<LottieAnimationView> f5323a;

        public b(LottieAnimationView lottieAnimationView) {
            this.f5323a = new WeakReference<>(lottieAnimationView);
        }

        @Override // com.airbnb.lottie.y0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onResult(Throwable th) {
            LottieAnimationView lottieAnimationView = this.f5323a.get();
            if (lottieAnimationView == null) {
                return;
            }
            if (lottieAnimationView.f5309v != 0) {
                lottieAnimationView.setImageResource(lottieAnimationView.f5309v);
            }
            (lottieAnimationView.f5308u == null ? LottieAnimationView.H : lottieAnimationView.f5308u).onResult(th);
        }
    }

    private static class c implements y0<j> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<LottieAnimationView> f5324a;

        public c(LottieAnimationView lottieAnimationView) {
            this.f5324a = new WeakReference<>(lottieAnimationView);
        }

        @Override // com.airbnb.lottie.y0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onResult(j jVar) {
            LottieAnimationView lottieAnimationView = this.f5324a.get();
            if (lottieAnimationView == null) {
                return;
            }
            lottieAnimationView.setComposition(jVar);
        }
    }

    public LottieAnimationView(Context context) {
        super(context);
        this.f5306s = new c(this);
        this.f5307t = new b(this);
        this.f5309v = 0;
        this.f5310w = new LottieDrawable();
        this.f5313z = false;
        this.A = false;
        this.B = true;
        this.C = new HashSet();
        this.D = new HashSet();
        w(null, R.attr.lottieAnimationViewStyle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ c1 A(int i10) throws Exception {
        return this.B ? d0.N(getContext(), i10) : d0.O(getContext(), i10, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void B(Throwable th) {
        if (!com.airbnb.lottie.utils.l.k(th)) {
            throw new IllegalStateException("Unable to parse composition", th);
        }
        com.airbnb.lottie.utils.f.f("Unable to load composition.", th);
    }

    private void P() {
        boolean zX = x();
        setImageDrawable(null);
        setImageDrawable(this.f5310w);
        if (zX) {
            this.f5310w.S0();
        }
    }

    private void Q(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, boolean z10) {
        if (z10) {
            this.C.add(UserActionTaken.SET_PROGRESS);
        }
        this.f5310w.t1(f10);
    }

    private void n() {
        e1<j> e1Var = this.E;
        if (e1Var != null) {
            e1Var.j(this.f5306s);
            this.E.i(this.f5307t);
        }
    }

    private void o() {
        this.F = null;
        this.f5310w.A();
    }

    private e1<j> s(final String str) {
        if (isInEditMode()) {
            return new e1<>(new Callable() { // from class: com.airbnb.lottie.i
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f5659b.z(str);
                }
            }, true);
        }
        return this.B ? d0.v(getContext(), str) : d0.w(getContext(), str, null);
    }

    private void setCompositionTask(e1<j> e1Var) {
        this.C.add(UserActionTaken.SET_ANIMATION);
        o();
        n();
        this.E = e1Var.d(this.f5306s).c(this.f5307t);
    }

    private e1<j> t(@RawRes final int i10) {
        if (isInEditMode()) {
            return new e1<>(new Callable() { // from class: com.airbnb.lottie.g
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f5646b.A(i10);
                }
            }, true);
        }
        return this.B ? d0.L(getContext(), i10) : d0.M(getContext(), i10, null);
    }

    private void w(@Nullable AttributeSet attributeSet, @AttrRes int i10) {
        String string;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.LottieAnimationView, i10, 0);
        this.B = typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_cacheComposition, true);
        int i11 = R.styleable.LottieAnimationView_lottie_rawRes;
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i11);
        int i12 = R.styleable.LottieAnimationView_lottie_fileName;
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(i12);
        int i13 = R.styleable.LottieAnimationView_lottie_url;
        boolean zHasValue3 = typedArrayObtainStyledAttributes.hasValue(i13);
        if (zHasValue && zHasValue2) {
            throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
        }
        if (zHasValue) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(i11, 0);
            if (resourceId != 0) {
                setAnimation(resourceId);
            }
        } else if (zHasValue2) {
            String string2 = typedArrayObtainStyledAttributes.getString(i12);
            if (string2 != null) {
                setAnimation(string2);
            }
        } else if (zHasValue3 && (string = typedArrayObtainStyledAttributes.getString(i13)) != null) {
            setAnimationFromUrl(string);
        }
        setFallbackResource(typedArrayObtainStyledAttributes.getResourceId(R.styleable.LottieAnimationView_lottie_fallbackRes, 0));
        if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_autoPlay, false)) {
            this.A = true;
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_loop, false)) {
            this.f5310w.v1(-1);
        }
        int i14 = R.styleable.LottieAnimationView_lottie_repeatMode;
        if (typedArrayObtainStyledAttributes.hasValue(i14)) {
            setRepeatMode(typedArrayObtainStyledAttributes.getInt(i14, 1));
        }
        int i15 = R.styleable.LottieAnimationView_lottie_repeatCount;
        if (typedArrayObtainStyledAttributes.hasValue(i15)) {
            setRepeatCount(typedArrayObtainStyledAttributes.getInt(i15, -1));
        }
        int i16 = R.styleable.LottieAnimationView_lottie_speed;
        if (typedArrayObtainStyledAttributes.hasValue(i16)) {
            setSpeed(typedArrayObtainStyledAttributes.getFloat(i16, 1.0f));
        }
        int i17 = R.styleable.LottieAnimationView_lottie_clipToCompositionBounds;
        if (typedArrayObtainStyledAttributes.hasValue(i17)) {
            setClipToCompositionBounds(typedArrayObtainStyledAttributes.getBoolean(i17, true));
        }
        int i18 = R.styleable.LottieAnimationView_lottie_defaultFontFileExtension;
        if (typedArrayObtainStyledAttributes.hasValue(i18)) {
            setDefaultFontFileExtension(typedArrayObtainStyledAttributes.getString(i18));
        }
        setImageAssetsFolder(typedArrayObtainStyledAttributes.getString(R.styleable.LottieAnimationView_lottie_imageAssetsFolder));
        int i19 = R.styleable.LottieAnimationView_lottie_progress;
        Q(typedArrayObtainStyledAttributes.getFloat(i19, 0.0f), typedArrayObtainStyledAttributes.hasValue(i19));
        r(typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove, false));
        int i20 = R.styleable.LottieAnimationView_lottie_colorFilter;
        if (typedArrayObtainStyledAttributes.hasValue(i20)) {
            k(new com.airbnb.lottie.model.d("**"), b1.K, new com.airbnb.lottie.value.j(new i1(AppCompatResources.getColorStateList(getContext(), typedArrayObtainStyledAttributes.getResourceId(i20, -1)).getDefaultColor())));
        }
        int i21 = R.styleable.LottieAnimationView_lottie_renderMode;
        if (typedArrayObtainStyledAttributes.hasValue(i21)) {
            RenderMode renderMode = RenderMode.AUTOMATIC;
            int iOrdinal = typedArrayObtainStyledAttributes.getInt(i21, renderMode.ordinal());
            if (iOrdinal >= RenderMode.values().length) {
                iOrdinal = renderMode.ordinal();
            }
            setRenderMode(RenderMode.values()[iOrdinal]);
        }
        int i22 = R.styleable.LottieAnimationView_lottie_asyncUpdates;
        if (typedArrayObtainStyledAttributes.hasValue(i22)) {
            AsyncUpdates asyncUpdates = AsyncUpdates.AUTOMATIC;
            int iOrdinal2 = typedArrayObtainStyledAttributes.getInt(i22, asyncUpdates.ordinal());
            if (iOrdinal2 >= RenderMode.values().length) {
                iOrdinal2 = asyncUpdates.ordinal();
            }
            setAsyncUpdates(AsyncUpdates.values()[iOrdinal2]);
        }
        setIgnoreDisabledSystemAnimations(typedArrayObtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_ignoreDisabledSystemAnimations, false));
        int i23 = R.styleable.LottieAnimationView_lottie_useCompositionFrameRate;
        if (typedArrayObtainStyledAttributes.hasValue(i23)) {
            setUseCompositionFrameRate(typedArrayObtainStyledAttributes.getBoolean(i23, false));
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f5310w.z1(Boolean.valueOf(com.airbnb.lottie.utils.l.f(getContext()) != 0.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ c1 z(String str) throws Exception {
        return this.B ? d0.x(getContext(), str) : d0.y(getContext(), str, null);
    }

    @Deprecated
    public void C(boolean z10) {
        this.f5310w.v1(z10 ? -1 : 0);
    }

    @MainThread
    public void D() {
        this.A = false;
        this.f5310w.J0();
    }

    @MainThread
    public void E() {
        this.C.add(UserActionTaken.PLAY_OPTION);
        this.f5310w.K0();
    }

    public void F() {
        this.f5310w.L0();
    }

    public void G() {
        this.D.clear();
    }

    public void H() {
        this.f5310w.M0();
    }

    public void I(Animator.AnimatorListener animatorListener) {
        this.f5310w.N0(animatorListener);
    }

    @RequiresApi(api = 19)
    public void J(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f5310w.O0(animatorPauseListener);
    }

    public boolean K(@NonNull a1 a1Var) {
        return this.D.remove(a1Var);
    }

    public void L(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f5310w.P0(animatorUpdateListener);
    }

    public List<com.airbnb.lottie.model.d> M(com.airbnb.lottie.model.d dVar) {
        return this.f5310w.R0(dVar);
    }

    @MainThread
    public void N() {
        this.C.add(UserActionTaken.PLAY_OPTION);
        this.f5310w.S0();
    }

    public void O() {
        this.f5310w.T0();
    }

    @Nullable
    public Bitmap R(String str, @Nullable Bitmap bitmap) {
        return this.f5310w.D1(str, bitmap);
    }

    public void g(Animator.AnimatorListener animatorListener) {
        this.f5310w.s(animatorListener);
    }

    public AsyncUpdates getAsyncUpdates() {
        return this.f5310w.M();
    }

    public boolean getAsyncUpdatesEnabled() {
        return this.f5310w.N();
    }

    public boolean getClipToCompositionBounds() {
        return this.f5310w.P();
    }

    @Nullable
    public j getComposition() {
        return this.F;
    }

    public long getDuration() {
        j jVar = this.F;
        if (jVar != null) {
            return (long) jVar.d();
        }
        return 0L;
    }

    public int getFrame() {
        return this.f5310w.S();
    }

    @Nullable
    public String getImageAssetsFolder() {
        return this.f5310w.V();
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.f5310w.X();
    }

    public float getMaxFrame() {
        return this.f5310w.Y();
    }

    public float getMinFrame() {
        return this.f5310w.Z();
    }

    @Nullable
    public h1 getPerformanceTracker() {
        return this.f5310w.a0();
    }

    @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
    public float getProgress() {
        return this.f5310w.b0();
    }

    public RenderMode getRenderMode() {
        return this.f5310w.c0();
    }

    public int getRepeatCount() {
        return this.f5310w.d0();
    }

    public int getRepeatMode() {
        return this.f5310w.e0();
    }

    public float getSpeed() {
        return this.f5310w.f0();
    }

    @RequiresApi(api = 19)
    public void h(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f5310w.t(animatorPauseListener);
    }

    public void i(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f5310w.u(animatorUpdateListener);
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        Drawable drawable = getDrawable();
        if ((drawable instanceof LottieDrawable) && ((LottieDrawable) drawable).c0() == RenderMode.SOFTWARE) {
            this.f5310w.invalidateSelf();
        }
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable drawable2 = getDrawable();
        LottieDrawable lottieDrawable = this.f5310w;
        if (drawable2 == lottieDrawable) {
            super.invalidateDrawable(lottieDrawable);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    public boolean j(@NonNull a1 a1Var) {
        j jVar = this.F;
        if (jVar != null) {
            a1Var.a(jVar);
        }
        return this.D.add(a1Var);
    }

    public <T> void k(com.airbnb.lottie.model.d dVar, T t10, com.airbnb.lottie.value.j<T> jVar) {
        this.f5310w.v(dVar, t10, jVar);
    }

    public <T> void l(com.airbnb.lottie.model.d dVar, T t10, com.airbnb.lottie.value.l<T> lVar) {
        this.f5310w.v(dVar, t10, new a(lVar));
    }

    @MainThread
    public void m() {
        this.C.add(UserActionTaken.PLAY_OPTION);
        this.f5310w.z();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode() || !this.A) {
            return;
        }
        this.f5310w.K0();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        int i10;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f5311x = savedState.f5314b;
        Set<UserActionTaken> set = this.C;
        UserActionTaken userActionTaken = UserActionTaken.SET_ANIMATION;
        if (!set.contains(userActionTaken) && !TextUtils.isEmpty(this.f5311x)) {
            setAnimation(this.f5311x);
        }
        this.f5312y = savedState.f5315c;
        if (!this.C.contains(userActionTaken) && (i10 = this.f5312y) != 0) {
            setAnimation(i10);
        }
        if (!this.C.contains(UserActionTaken.SET_PROGRESS)) {
            Q(savedState.f5316d, false);
        }
        if (!this.C.contains(UserActionTaken.PLAY_OPTION) && savedState.f5317e) {
            E();
        }
        if (!this.C.contains(UserActionTaken.SET_IMAGE_ASSETS)) {
            setImageAssetsFolder(savedState.f5318f);
        }
        if (!this.C.contains(UserActionTaken.SET_REPEAT_MODE)) {
            setRepeatMode(savedState.f5319g);
        }
        if (this.C.contains(UserActionTaken.SET_REPEAT_COUNT)) {
            return;
        }
        setRepeatCount(savedState.f5320h);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f5314b = this.f5311x;
        savedState.f5315c = this.f5312y;
        savedState.f5316d = this.f5310w.b0();
        savedState.f5317e = this.f5310w.m0();
        savedState.f5318f = this.f5310w.V();
        savedState.f5319g = this.f5310w.e0();
        savedState.f5320h = this.f5310w.d0();
        return savedState;
    }

    public <T> void p(com.airbnb.lottie.model.d dVar, T t10) {
        this.f5310w.v(dVar, t10, null);
    }

    @Deprecated
    public void q() {
        this.f5310w.E();
    }

    public void r(boolean z10) {
        this.f5310w.H(z10);
    }

    public void setAnimation(@RawRes int i10) {
        this.f5312y = i10;
        this.f5311x = null;
        setCompositionTask(t(i10));
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        setAnimationFromJson(str, null);
    }

    public void setAnimationFromUrl(String str) {
        setCompositionTask(this.B ? d0.P(getContext(), str) : d0.Q(getContext(), str, null));
    }

    public void setApplyingOpacityToLayersEnabled(boolean z10) {
        this.f5310w.V0(z10);
    }

    public void setAsyncUpdates(AsyncUpdates asyncUpdates) {
        this.f5310w.W0(asyncUpdates);
    }

    public void setCacheComposition(boolean z10) {
        this.B = z10;
    }

    public void setClipToCompositionBounds(boolean z10) {
        this.f5310w.X0(z10);
    }

    public void setComposition(@NonNull j jVar) {
        if (e.f5612a) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Set Composition \n");
            sb2.append(jVar);
        }
        this.f5310w.setCallback(this);
        this.F = jVar;
        this.f5313z = true;
        boolean zY0 = this.f5310w.Y0(jVar);
        this.f5313z = false;
        if (getDrawable() != this.f5310w || zY0) {
            if (!zY0) {
                P();
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator<a1> it2 = this.D.iterator();
            while (it2.hasNext()) {
                it2.next().a(jVar);
            }
        }
    }

    public void setDefaultFontFileExtension(String str) {
        this.f5310w.Z0(str);
    }

    public void setFailureListener(@Nullable y0<Throwable> y0Var) {
        this.f5308u = y0Var;
    }

    public void setFallbackResource(@DrawableRes int i10) {
        this.f5309v = i10;
    }

    public void setFontAssetDelegate(com.airbnb.lottie.b bVar) {
        this.f5310w.a1(bVar);
    }

    public void setFontMap(@Nullable Map<String, Typeface> map) {
        this.f5310w.b1(map);
    }

    public void setFrame(int i10) {
        this.f5310w.c1(i10);
    }

    public void setIgnoreDisabledSystemAnimations(boolean z10) {
        this.f5310w.d1(z10);
    }

    public void setImageAssetDelegate(com.airbnb.lottie.c cVar) {
        this.f5310w.e1(cVar);
    }

    public void setImageAssetsFolder(String str) {
        this.f5310w.f1(str);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        n();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        n();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i10) {
        n();
        super.setImageResource(i10);
    }

    public void setMaintainOriginalImageBounds(boolean z10) {
        this.f5310w.g1(z10);
    }

    public void setMaxFrame(int i10) {
        this.f5310w.h1(i10);
    }

    public void setMaxProgress(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        this.f5310w.j1(f10);
    }

    public void setMinAndMaxFrame(String str) {
        this.f5310w.l1(str);
    }

    public void setMinAndMaxProgress(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11) {
        this.f5310w.n1(f10, f11);
    }

    public void setMinFrame(int i10) {
        this.f5310w.o1(i10);
    }

    public void setMinProgress(float f10) {
        this.f5310w.q1(f10);
    }

    public void setOutlineMasksAndMattes(boolean z10) {
        this.f5310w.r1(z10);
    }

    public void setPerformanceTrackingEnabled(boolean z10) {
        this.f5310w.s1(z10);
    }

    public void setProgress(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        Q(f10, true);
    }

    public void setRenderMode(RenderMode renderMode) {
        this.f5310w.u1(renderMode);
    }

    public void setRepeatCount(int i10) {
        this.C.add(UserActionTaken.SET_REPEAT_COUNT);
        this.f5310w.v1(i10);
    }

    public void setRepeatMode(int i10) {
        this.C.add(UserActionTaken.SET_REPEAT_MODE);
        this.f5310w.w1(i10);
    }

    public void setSafeMode(boolean z10) {
        this.f5310w.x1(z10);
    }

    public void setSpeed(float f10) {
        this.f5310w.y1(f10);
    }

    public void setTextDelegate(j1 j1Var) {
        this.f5310w.A1(j1Var);
    }

    public void setUseCompositionFrameRate(boolean z10) {
        this.f5310w.B1(z10);
    }

    public boolean u() {
        return this.f5310w.i0();
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        LottieDrawable lottieDrawable;
        if (!this.f5313z && drawable == (lottieDrawable = this.f5310w) && lottieDrawable.l0()) {
            D();
        } else if (!this.f5313z && (drawable instanceof LottieDrawable)) {
            LottieDrawable lottieDrawable2 = (LottieDrawable) drawable;
            if (lottieDrawable2.l0()) {
                lottieDrawable2.J0();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    public boolean v() {
        return this.f5310w.j0();
    }

    public boolean x() {
        return this.f5310w.l0();
    }

    public boolean y() {
        return this.f5310w.p0();
    }

    public void setAnimationFromJson(String str, @Nullable String str2) {
        setAnimation(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void setMaxFrame(String str) {
        this.f5310w.i1(str);
    }

    public void setMinAndMaxFrame(String str, String str2, boolean z10) {
        this.f5310w.m1(str, str2, z10);
    }

    public void setMinFrame(String str) {
        this.f5310w.p1(str);
    }

    public void setMinAndMaxFrame(int i10, int i11) {
        this.f5310w.k1(i10, i11);
    }

    public void setAnimation(String str) {
        this.f5311x = str;
        this.f5312y = 0;
        setCompositionTask(s(str));
    }

    public void setAnimationFromUrl(String str, @Nullable String str2) {
        setCompositionTask(d0.Q(getContext(), str, str2));
    }

    public void setAnimation(InputStream inputStream, @Nullable String str) {
        setCompositionTask(d0.A(inputStream, str));
    }

    public void setAnimation(ZipInputStream zipInputStream, @Nullable String str) {
        setCompositionTask(d0.V(zipInputStream, str));
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5306s = new c(this);
        this.f5307t = new b(this);
        this.f5309v = 0;
        this.f5310w = new LottieDrawable();
        this.f5313z = false;
        this.A = false;
        this.B = true;
        this.C = new HashSet();
        this.D = new HashSet();
        w(attributeSet, R.attr.lottieAnimationViewStyle);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f5306s = new c(this);
        this.f5307t = new b(this);
        this.f5309v = 0;
        this.f5310w = new LottieDrawable();
        this.f5313z = false;
        this.A = false;
        this.B = true;
        this.C = new HashSet();
        this.D = new HashSet();
        w(attributeSet, i10);
    }
}
