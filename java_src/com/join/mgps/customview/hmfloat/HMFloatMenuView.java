package com.join.mgps.customview.hmfloat;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.haima.hmcp.beans.ResolutionInfo;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.FlowLayout;
import com.umeng.analytics.pro.bm;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0005_`abcB\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u0004\u0010\u000bJ\b\u0010?\u001a\u00020@H\u0016J\b\u0010A\u001a\u00020BH\u0016J\u0006\u0010C\u001a\u00020@J\"\u0010D\u001a\u00020@2\u000e\u0010E\u001a\n\u0012\u0004\u0012\u00020:\u0018\u00010F2\n\b\u0002\u0010G\u001a\u0004\u0018\u00010:J\u0010\u0010H\u001a\u00020B2\u0006\u0010I\u001a\u00020:H\u0002J\b\u0010J\u001a\u00020BH\u0002J\u0018\u0010K\u001a\u00020@2\u0006\u0010L\u001a\u00020\r2\u0006\u0010M\u001a\u00020BH\u0002J\u0010\u0010N\u001a\u00020@2\b\u0010O\u001a\u0004\u0018\u00010PJ\u0010\u0010Q\u001a\u0004\u0018\u00010:2\u0006\u0010O\u001a\u00020PJ\u000e\u0010R\u001a\u00020@2\u0006\u0010S\u001a\u00020TJ\u0012\u0010[\u001a\u00020@2\b\u0010\u0002\u001a\u0004\u0018\u00010\\H\u0016J\u0010\u0010]\u001a\u00020@2\b\b\u0002\u0010^\u001a\u00020BJ\b\u0010]\u001a\u00020@H\u0016R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.¢\u0006\u0002\n\u0000R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001c\u0010&\u001a\u0004\u0018\u00010'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001c\u0010,\u001a\u0004\u0018\u00010-X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001c\u00102\u001a\u0004\u0018\u000103X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R \u00108\u001a\b\u0012\u0004\u0012\u00020:09X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001a\u0010U\u001a\u00020BX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bU\u0010V\"\u0004\bW\u0010XR\u001a\u0010Y\u001a\u00020BX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bY\u0010V\"\u0004\bZ\u0010X¨\u0006d"}, d2 = {"Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;", "Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "mSettings", "Landroid/view/View;", "mFeedback", "mExit", "mAvatar", "Lcom/facebook/drawee/view/SimpleDraweeView;", "mUserName", "Landroid/widget/TextView;", "mRemainTime", "mCharge", "mResolutionTitle", "main", "mFlowLayout", "Lcom/join/mgps/customview/FlowLayout;", "onResolutionListener", "Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$OnResolutionListener;", "getOnResolutionListener", "()Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$OnResolutionListener;", "setOnResolutionListener", "(Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$OnResolutionListener;)V", "onFeedbackListener", "Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$OnFeedbackListener;", "getOnFeedbackListener", "()Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$OnFeedbackListener;", "setOnFeedbackListener", "(Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$OnFeedbackListener;)V", "onExitListener", "Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$OnExitListener;", "getOnExitListener", "()Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$OnExitListener;", "setOnExitListener", "(Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$OnExitListener;)V", "onChargeListener", "Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$OnChargeListener;", "getOnChargeListener", "()Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$OnChargeListener;", "setOnChargeListener", "(Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$OnChargeListener;)V", "onHideListener", "Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$OnHideListener;", "getOnHideListener", "()Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$OnHideListener;", "setOnHideListener", "(Lcom/join/mgps/customview/hmfloat/HMFloatMenuView$OnHideListener;)V", "mResolutions", "", "Lcom/haima/hmcp/beans/ResolutionInfo;", "getMResolutions", "()Ljava/util/List;", "setMResolutions", "(Ljava/util/List;)V", "init", "", "performClick", "", com.sigmob.sdk.base.n.f79591r, "setResolutionList", "list", "", "current", "isPaidResolution", bm.f84423z, "isCloudVip", "setResolutionTagState", "view", "selected", "setCurrentResolution", "id", "", "getResolutionById", "setRemainTime", "time", "", "isDismissing", "()Z", "setDismissing", "(Z)V", "isShowing", "setShowing", "show", "Landroid/app/Activity;", "hide", "immediate", "OnResolutionListener", "OnFeedbackListener", "OnChargeListener", "OnExitListener", "OnHideListener", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMFloatMenuView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMFloatMenuView.kt\ncom/join/mgps/customview/hmfloat/HMFloatMenuView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,311:1\n1056#2:312\n1869#2,2:313\n360#2,7:315\n295#2,2:322\n*S KotlinDebug\n*F\n+ 1 HMFloatMenuView.kt\ncom/join/mgps/customview/hmfloat/HMFloatMenuView\n*L\n115#1:312\n119#1:313,2\n183#1:315,7\n192#1:322,2\n*E\n"})
public final class HMFloatMenuView extends HMFloatingBaseView {
    private boolean A;
    private boolean B;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f66490k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f66491l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f66492m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private SimpleDraweeView f66493n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TextView f66494o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private TextView f66495p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private View f66496q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private View f66497r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private View f66498s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private FlowLayout f66499t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private e f66500u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private c f66501v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private b f66502w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Nullable
    private a f66503x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @Nullable
    private d f66504y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NotNull
    private List<ResolutionInfo> f66505z;

    public interface a {
        void a();
    }

    public interface b {
        void a();
    }

    public interface c {
        void a();
    }

    public interface d {
        void a();
    }

    public interface e {
        void a(@NotNull ResolutionInfo resolutionInfo);
    }

    public static final class f implements Animator.AnimatorListener {
        f() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
            HMFloatMenuView.this.setDismissing(false);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
            j f66515g = HMFloatMenuView.this.getF66515g();
            if (f66515g != null) {
                f66515g.z();
            }
            HMFloatMenuView.this.setDismissing(false);
            d f66504y = HMFloatMenuView.this.getF66504y();
            if (f66504y != null) {
                f66504y.a();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
        }
    }

    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 HMFloatMenuView.kt\ncom/join/mgps/customview/hmfloat/HMFloatMenuView\n*L\n1#1,102:1\n115#2:103\n*E\n"})
    public static final class g<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ComparisonsKt__ComparisonsKt.compareValues(((ResolutionInfo) t10).f33828id, ((ResolutionInfo) t11).f33828id);
        }
    }

    public static final class h implements Animator.AnimatorListener {
        h() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
            HMFloatMenuView.this.setShowing(false);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
            HMFloatMenuView.this.setShowing(false);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMFloatMenuView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f66505z = CollectionsKt___CollectionsKt.toMutableList((Collection) CollectionsKt__CollectionsKt.emptyList());
    }

    public static /* synthetic */ void o(HMFloatMenuView hMFloatMenuView, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        hMFloatMenuView.n(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean p(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(HMFloatMenuView hMFloatMenuView, View view) {
        c cVar = hMFloatMenuView.f66501v;
        if (cVar != null) {
            cVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(HMFloatMenuView hMFloatMenuView, View view) {
        b bVar = hMFloatMenuView.f66502w;
        if (bVar != null) {
            bVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(HMFloatMenuView hMFloatMenuView, View view) {
        a aVar = hMFloatMenuView.f66503x;
        if (aVar != null) {
            aVar.a();
        }
    }

    public static /* synthetic */ void setResolutionList$default(HMFloatMenuView hMFloatMenuView, List list, ResolutionInfo resolutionInfo, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            resolutionInfo = null;
        }
        hMFloatMenuView.setResolutionList(list, resolutionInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean t(HMFloatMenuView hMFloatMenuView, View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 1) {
            return true;
        }
        Rect rect = new Rect();
        View view2 = hMFloatMenuView.f66498s;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("main");
            view2 = null;
        }
        view2.getGlobalVisibleRect(rect);
        if (!rect.contains((int) motionEvent.getX(), (int) motionEvent.getY()) && !hMFloatMenuView.B) {
            hMFloatMenuView.b();
        }
        return true;
    }

    private final boolean u() {
        return com.join.mgps.Util.b.pivc(AccountUtil_.getInstance_(getContext()).getAccountData());
    }

    private final boolean w(ResolutionInfo resolutionInfo) {
        return Intrinsics.areEqual(resolutionInfo.name, "超清");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(boolean z10, HMFloatMenuView hMFloatMenuView, ResolutionInfo resolutionInfo, View view) {
        if (z10) {
            a aVar = hMFloatMenuView.f66503x;
            if (aVar != null) {
                aVar.a();
                return;
            }
            return;
        }
        e eVar = hMFloatMenuView.f66500u;
        if (eVar != null) {
            eVar.a(resolutionInfo);
        }
        hMFloatMenuView.setCurrentResolution(resolutionInfo.f33828id);
    }

    private final void z(View view, boolean z10) {
        TextView textView = (TextView) view.findViewById(R.id.tvName);
        if (z10) {
            view.setBackgroundResource(R.drawable.btn_hm_selected);
            textView.setTextColor(Color.parseColor("#ff69B5FF"));
        } else {
            view.setBackgroundResource(R.drawable.btn_hm_default);
            textView.setTextColor(-1);
        }
    }

    @Override // com.join.mgps.customview.hmfloat.HMFloatingBaseView
    public void b() {
        if (this.A || this.B) {
            return;
        }
        this.A = true;
        this.B = false;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "translationX", 0.0f, getMeasuredWidth() * (-0.75f));
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, "alpha", 1.0f, 0.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimatorOfFloat).with(objectAnimatorOfFloat2);
        animatorSet.setDuration(400L);
        animatorSet.setInterpolator(new AccelerateInterpolator());
        animatorSet.start();
        animatorSet.addListener(new f());
    }

    @Override // com.join.mgps.customview.hmfloat.HMFloatingBaseView
    public void c() {
        super.c();
        setMLastX(0.0f);
        setMLastY(0.0f);
        j f66515g = getF66515g();
        if (f66515g != null) {
            f66515g.update(0, 0);
        }
        View view = null;
        View viewInflate = View.inflate(getContext(), R.layout.layout_hm_float_menu, null);
        addView(viewInflate);
        viewInflate.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f66490k = findViewById(R.id.llSettings);
        this.f66491l = findViewById(R.id.llFeedback);
        this.f66492m = findViewById(R.id.llExit);
        this.f66493n = (SimpleDraweeView) findViewById(R.id.sdv_image);
        this.f66494o = (TextView) findViewById(R.id.tv_nickname);
        this.f66495p = (TextView) findViewById(R.id.tvRemainTime);
        this.f66496q = findViewById(R.id.tvRenew);
        this.f66499t = (FlowLayout) findViewById(R.id.flTags);
        this.f66497r = findViewById(R.id.tv_resolution_title);
        setOnTouchListener(new View.OnTouchListener() { // from class: com.join.mgps.customview.hmfloat.c
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return HMFloatMenuView.p(view2, motionEvent);
            }
        });
        View view2 = this.f66491l;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mFeedback");
            view2 = null;
        }
        view2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.customview.hmfloat.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                HMFloatMenuView.q(this.f66523b, view3);
            }
        });
        View view3 = this.f66492m;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mExit");
            view3 = null;
        }
        view3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.customview.hmfloat.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                HMFloatMenuView.r(this.f66524b, view4);
            }
        });
        View view4 = this.f66496q;
        if (view4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mCharge");
        } else {
            view = view4;
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.customview.hmfloat.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view5) {
                HMFloatMenuView.s(this.f66525b, view5);
            }
        });
        this.f66498s = findViewById(R.id.main);
        setOnTouchListener(new View.OnTouchListener() { // from class: com.join.mgps.customview.hmfloat.g
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view5, MotionEvent motionEvent) {
                return HMFloatMenuView.t(this.f66526b, view5, motionEvent);
            }
        });
        update();
    }

    @Override // com.join.mgps.customview.hmfloat.HMFloatingBaseView
    public void f(@Nullable Activity activity) {
        if (activity == null) {
            return;
        }
        if (!Intrinsics.areEqual(getF66518j(), activity)) {
            if (getParent() != null && (getParent() instanceof ViewGroup)) {
                ViewParent parent = getParent();
                Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                ((ViewGroup) parent).removeView(this);
            }
            j f66515g = getF66515g();
            if (f66515g != null) {
                f66515g.z();
            }
            d();
            setMWindowToken(activity);
        }
        if (getF66515g() == null) {
            d();
        }
        if (this.B || this.A) {
            return;
        }
        this.B = true;
        j f66515g2 = getF66515g();
        if (f66515g2 != null) {
            f66515g2.M(activity, this, 0, 0, -1, -1);
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "translationX", getMeasuredWidth() * (-0.75f), 0.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, "alpha", 0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimatorOfFloat).with(objectAnimatorOfFloat2);
        animatorSet.setDuration(400L);
        animatorSet.setInterpolator(new AccelerateInterpolator());
        animatorSet.start();
        animatorSet.addListener(new h());
    }

    @NotNull
    public final List<ResolutionInfo> getMResolutions() {
        return this.f66505z;
    }

    @Nullable
    /* JADX INFO: renamed from: getOnChargeListener, reason: from getter */
    public final a getF66503x() {
        return this.f66503x;
    }

    @Nullable
    /* JADX INFO: renamed from: getOnExitListener, reason: from getter */
    public final b getF66502w() {
        return this.f66502w;
    }

    @Nullable
    /* JADX INFO: renamed from: getOnFeedbackListener, reason: from getter */
    public final c getF66501v() {
        return this.f66501v;
    }

    @Nullable
    /* JADX INFO: renamed from: getOnHideListener, reason: from getter */
    public final d getF66504y() {
        return this.f66504y;
    }

    @Nullable
    /* JADX INFO: renamed from: getOnResolutionListener, reason: from getter */
    public final e getF66500u() {
        return this.f66500u;
    }

    @Nullable
    public final ResolutionInfo m(@NotNull String id2) {
        Object next;
        Intrinsics.checkNotNullParameter(id2, "id");
        Iterator<T> it2 = this.f66505z.iterator();
        while (it2.hasNext()) {
            next = it2.next();
            if (Intrinsics.areEqual(((ResolutionInfo) next).f33828id, id2)) {
                return (ResolutionInfo) next;
            }
        }
        next = null;
        return (ResolutionInfo) next;
    }

    public final void n(boolean z10) {
        if (!z10) {
            b();
            return;
        }
        if (this.A || this.B) {
            return;
        }
        j f66515g = getF66515g();
        if (f66515g != null) {
            f66515g.z();
        }
        this.A = false;
    }

    @Override // com.join.mgps.customview.hmfloat.HMFloatingBaseView, android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    public final void setCurrentResolution(@Nullable String id2) {
        if (this.f66505z.isEmpty() || id2 == null) {
            return;
        }
        Iterator<ResolutionInfo> it2 = this.f66505z.iterator();
        int i10 = 0;
        while (true) {
            if (!it2.hasNext()) {
                i10 = -1;
                break;
            } else if (Intrinsics.areEqual(it2.next().f33828id, id2)) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 == -1) {
            return;
        }
        FlowLayout flowLayout = this.f66499t;
        if (flowLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mFlowLayout");
            flowLayout = null;
        }
        int childCount = flowLayout.getChildCount();
        int i11 = 0;
        while (i11 < childCount) {
            FlowLayout flowLayout2 = this.f66499t;
            if (flowLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mFlowLayout");
                flowLayout2 = null;
            }
            View childAt = flowLayout2.getChildAt(i11);
            Intrinsics.checkNotNull(childAt);
            z(childAt, i10 == i11);
            i11++;
        }
    }

    public final void setDismissing(boolean z10) {
        this.A = z10;
    }

    public final void setMResolutions(@NotNull List<ResolutionInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.f66505z = list;
    }

    public final void setOnChargeListener(@Nullable a aVar) {
        this.f66503x = aVar;
    }

    public final void setOnExitListener(@Nullable b bVar) {
        this.f66502w = bVar;
    }

    public final void setOnFeedbackListener(@Nullable c cVar) {
        this.f66501v = cVar;
    }

    public final void setOnHideListener(@Nullable d dVar) {
        this.f66504y = dVar;
    }

    public final void setOnResolutionListener(@Nullable e eVar) {
        this.f66500u = eVar;
    }

    public final void setRemainTime(long time) {
        TextView textView = null;
        if (time <= 0) {
            TextView textView2 = this.f66495p;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mRemainTime");
            } else {
                textView = textView2;
            }
            textView.setText("已到期");
            return;
        }
        TextView textView3 = this.f66495p;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mRemainTime");
        } else {
            textView = textView3;
        }
        textView.setText("剩余时间：" + com.join.android.app.common.utils.i.e(time));
    }

    public final void setResolutionList(@Nullable List<? extends ResolutionInfo> list, @Nullable ResolutionInfo current) {
        if ((!this.f66505z.isEmpty()) && Intrinsics.areEqual(this.f66505z, list)) {
            return;
        }
        FlowLayout flowLayout = null;
        if (list == null) {
            View view = this.f66497r;
            if (view == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mResolutionTitle");
                view = null;
            }
            view.setVisibility(8);
            FlowLayout flowLayout2 = this.f66499t;
            if (flowLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mFlowLayout");
            } else {
                flowLayout = flowLayout2;
            }
            flowLayout.setVisibility(8);
            return;
        }
        this.f66505z.clear();
        this.f66505z.addAll(CollectionsKt___CollectionsKt.sortedWith(list, new g()));
        View view2 = this.f66497r;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mResolutionTitle");
            view2 = null;
        }
        view2.setVisibility(0);
        FlowLayout flowLayout3 = this.f66499t;
        if (flowLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mFlowLayout");
            flowLayout3 = null;
        }
        flowLayout3.setVisibility(0);
        FlowLayout flowLayout4 = this.f66499t;
        if (flowLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mFlowLayout");
            flowLayout4 = null;
        }
        flowLayout4.removeAllViews();
        for (final ResolutionInfo resolutionInfo : this.f66505z) {
            View viewInflate = View.inflate(getContext(), R.layout.item_hm_resolution, null);
            ImageView imageView = (ImageView) viewInflate.findViewById(R.id.iv);
            TextView textView = (TextView) viewInflate.findViewById(R.id.tvName);
            final boolean z10 = w(resolutionInfo) && !u();
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.customview.hmfloat.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    HMFloatMenuView.y(z10, this, resolutionInfo, view3);
                }
            });
            textView.setText(resolutionInfo.name);
            ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
            marginLayoutParams.bottomMargin = a(25);
            marginLayoutParams.setMarginEnd(a(25));
            viewInflate.setLayoutParams(marginLayoutParams);
            if (z10) {
                imageView.setVisibility(0);
                textView.setTextColor(Color.parseColor("#ffFF7B15"));
            } else {
                imageView.setVisibility(8);
                if (current == null || !Intrinsics.areEqual(current.f33828id, resolutionInfo.f33828id)) {
                    viewInflate.setBackgroundResource(R.drawable.btn_hm_default);
                    textView.setTextColor(-1);
                } else {
                    viewInflate.setBackgroundResource(R.drawable.btn_hm_selected);
                    textView.setTextColor(Color.parseColor("#ff69B5FF"));
                }
            }
            FlowLayout flowLayout5 = this.f66499t;
            if (flowLayout5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mFlowLayout");
                flowLayout5 = null;
            }
            flowLayout5.addView(viewInflate);
        }
    }

    public final void setShowing(boolean z10) {
        this.B = z10;
    }

    public final void update() {
        UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
        if (accountData != null) {
            TextView textView = this.f66494o;
            SimpleDraweeView simpleDraweeView = null;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mUserName");
                textView = null;
            }
            textView.setText(accountData.getNickname());
            SimpleDraweeView simpleDraweeView2 = this.f66493n;
            if (simpleDraweeView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAvatar");
            } else {
                simpleDraweeView = simpleDraweeView2;
            }
            com.join.android.app.common.utils.l.h(simpleDraweeView, accountData.getAvatarSrc());
        }
    }

    /* JADX INFO: renamed from: v, reason: from getter */
    public final boolean getA() {
        return this.A;
    }

    /* JADX INFO: renamed from: x, reason: from getter */
    public final boolean getB() {
        return this.B;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMFloatMenuView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f66505z = CollectionsKt___CollectionsKt.toMutableList((Collection) CollectionsKt__CollectionsKt.emptyList());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMFloatMenuView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f66505z = CollectionsKt___CollectionsKt.toMutableList((Collection) CollectionsKt__CollectionsKt.emptyList());
    }
}
