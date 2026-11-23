package com.join.kotlin.module.hmcloud.pad;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewGroupKt;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.beizi.fusion.widget.ScrollClickView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.fa0;
import com.join.kotlin.utils.extention.ViewKt;
import com.join.mgps.Util.l3;
import com.join.mgps.dto.hmcloud.HMKeyItem;
import com.tencent.cos.common.COSHttpResponseKey;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0004\u0010\bJ\"\u0010P\u001a\u0004\u0018\u00010\u001f2\u0006\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020\n2\u0006\u0010T\u001a\u00020\nH\u0002J\u0016\u0010U\u001a\u00020B2\u0006\u0010A\u001a\u00020\u001f2\u0006\u0010V\u001a\u00020\u001fJ\u000e\u0010W\u001a\u00020B2\u0006\u0010A\u001a\u00020\u001fJ\f\u0010X\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eJ0\u0010Y\u001a\u00020B2\u0006\u0010Z\u001a\u00020!2\u0006\u0010[\u001a\u0002052\u0006\u0010\\\u001a\u0002052\u0006\u0010]\u001a\u0002052\u0006\u0010^\u001a\u000205H\u0014J(\u0010_\u001a\u00020B2\u0006\u0010`\u001a\u0002052\u0006\u0010a\u001a\u0002052\u0006\u0010b\u001a\u0002052\u0006\u0010c\u001a\u000205H\u0014J\u0012\u0010d\u001a\u00020B2\b\u0010e\u001a\u0004\u0018\u00010fH\u0014J7\u0010g\u001a\u00020B2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010h\u001a\u0004\u0018\u0001052\b\u0010i\u001a\u0004\u0018\u0001052\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0j¢\u0006\u0002\u0010kJ\b\u0010n\u001a\u00020BH\u0002Jr\u0010u\u001a\u00020B2j\u0010v\u001af\u0012\u0013\u0012\u00110\n¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(\t\u0012\u0015\u0012\u0013\u0018\u000105¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(h\u0012\u0015\u0012\u0013\u0018\u000105¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(i\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u001f0j¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020B0pJ\b\u0010w\u001a\u00020BH\u0002J\u0016\u0010x\u001a\u00020B2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eH\u0002J\u0010\u0010y\u001a\u00020,2\u0006\u0010A\u001a\u00020\u001fH\u0002J\u0018\u0010z\u001a\u00020B2\u0006\u0010I\u001a\u00020,2\u0006\u0010A\u001a\u00020\u001fH\u0002J\u0010\u0010{\u001a\u00020\n2\u0006\u0010A\u001a\u00020\u001fH\u0002J\u0018\u0010|\u001a\u00020B2\u0006\u0010A\u001a\u00020\u001f2\u0006\u0010I\u001a\u00020,H\u0002J\u0010\u0010}\u001a\u00020J2\u0006\u0010A\u001a\u00020\u001fH\u0002J\u0018\u0010~\u001a\u00020B2\u0006\u0010I\u001a\u00020,2\u0006\u0010A\u001a\u00020\u001fH\u0002J\u0014\u0010\u007f\u001a\u00020!2\n\u0010\u0080\u0001\u001a\u0005\u0018\u00010\u0081\u0001H\u0016J\u0015\u0010\u0082\u0001\u001a\u00020!2\n\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0081\u0001H\u0016J\u0019\u0010\u0084\u0001\u001a\u00020B2\u0006\u0010I\u001a\u00020,2\u0006\u0010A\u001a\u00020\u001fH\u0002J\t\u0010\u0085\u0001\u001a\u00020BH\u0002J\u0007\u0010\u0086\u0001\u001a\u00020BJ%\u0010\u0087\u0001\u001a\u00020B2\u0014\u0010\u0088\u0001\u001a\u000b\u0012\u0006\b\u0001\u0012\u00020,0\u0089\u0001\"\u00020,H\u0002¢\u0006\u0003\u0010\u008a\u0001J\u000f\u0010\u008b\u0001\u001a\u00020,2\u0006\u0010A\u001a\u00020\u001fR\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010 \u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\"\"\u0004\b#\u0010$R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u00100\u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\"\"\u0004\b1\u0010$R\u0012\u00102\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0004\n\u0002\u00103R\u0012\u00104\u001a\u0004\u0018\u000105X\u0082\u000e¢\u0006\u0004\n\u0002\u00106R\u0012\u00107\u001a\u0004\u0018\u000105X\u0082\u000e¢\u0006\u0004\n\u0002\u00106R\u001a\u00108\u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\"\"\u0004\b9\u0010$R\u000e\u0010:\u001a\u000205X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010;\u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\"\"\u0004\b<\u0010$R9\u0010=\u001a!\u0012\u0015\u0012\u0013\u0018\u00010\u001f¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(A\u0012\u0004\u0012\u00020B\u0018\u00010>X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FRa\u0010G\u001aI\u0012\u0013\u0012\u00110\u001f¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(A\u0012\u0013\u0012\u00110,¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(I\u0012\u0013\u0012\u00110J¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(K\u0012\u0004\u0012\u00020B\u0018\u00010HX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR\u001a\u0010l\u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bl\u0010\"\"\u0004\bm\u0010$R\u0080\u0001\u0010o\u001ah\u0012\u0013\u0012\u00110\n¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(\t\u0012\u0015\u0012\u0013\u0018\u000105¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(h\u0012\u0015\u0012\u0013\u0018\u000105¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(i\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u001f0j¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020B\u0018\u00010pX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bq\u0010r\"\u0004\bs\u0010t¨\u0006\u008c\u0001"}, d2 = {"Lcom/join/kotlin/module/hmcloud/pad/HMOpView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "density", "", "onEventListener", "Lcom/join/kotlin/module/hmcloud/pad/OnHMOpEventListener;", "getOnEventListener", "()Lcom/join/kotlin/module/hmcloud/pad/OnHMOpEventListener;", "setOnEventListener", "(Lcom/join/kotlin/module/hmcloud/pad/OnHMOpEventListener;)V", "skinWrapper", "Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinWrapper;", "getSkinWrapper", "()Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinWrapper;", "setSkinWrapper", "(Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinWrapper;)V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadBinding;)V", COSHttpResponseKey.Data.KEYS, "", "Lcom/join/mgps/dto/hmcloud/HMKeyItem;", "isIntercept", "", "()Z", "setIntercept", "(Z)V", "gestureDetector", "Landroid/view/GestureDetector;", "getGestureDetector", "()Landroid/view/GestureDetector;", "setGestureDetector", "(Landroid/view/GestureDetector;)V", "draggingView", "Landroid/view/View;", "offsetX", "offsetY", "editItem", "isVibrate", "setVibrate", "baseDensity", "Ljava/lang/Float;", "baseWidth", "", "Ljava/lang/Integer;", "baseHeight", "isPreventResize", "setPreventResize", "retryCount", "isEditMode", "setEditMode", "onEditKey", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "item", "", "getOnEditKey", "()Lkotlin/jvm/functions/Function1;", "setOnEditKey", "(Lkotlin/jvm/functions/Function1;)V", "onItemLayout", "Lkotlin/Function3;", "view", "Landroid/widget/FrameLayout$LayoutParams;", "lp", "getOnItemLayout", "()Lkotlin/jvm/functions/Function3;", "setOnItemLayout", "(Lkotlin/jvm/functions/Function3;)V", "findEditItem", "key", "", "x", "y", "change", TypedValues.AttributesType.S_TARGET, "remove", "getKeys", "onLayout", "changed", ScrollClickView.DIR_LEFT, "top", ScrollClickView.DIR_RIGHT, "bottom", "onSizeChanged", IAdInterListener.AdReqParam.WIDTH, "h", "oldw", "oldh", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "loadKeys", "width", "height", "", "(Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V", "isCorrected", "setCorrected", "correctItemInsets", "onInsetsChanged", "Lkotlin/Function4;", "getOnInsetsChanged", "()Lkotlin/jvm/functions/Function4;", "setOnInsetsChanged", "(Lkotlin/jvm/functions/Function4;)V", "retrieveChanged", com.alipay.sdk.authjs.a.f7124i, "refreshKeys", "loadKeysInner", "layoutKey", "scaleTextSize", "calculateTextSizeScale", "applyNewViewLayout", "computeLayoutParams", "loadKeySkin", "onInterceptTouchEvent", "ev", "Landroid/view/MotionEvent;", "onTouchEvent", NotificationCompat.CATEGORY_EVENT, "attachEventCallback", HmDataChannelManager.VIBRATE, "loadKeysDefault", "genDefaultKeyConfig", "views", "", "([Landroid/view/View;)V", "generateView", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMOpView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMOpView.kt\ncom/join/kotlin/module/hmcloud/pad/HMOpView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,762:1\n774#2:763\n865#2,2:764\n295#2,2:766\n774#2:768\n865#2,2:769\n1869#2,2:771\n774#2:773\n865#2,2:774\n1869#2,2:776\n1869#2,2:779\n1869#2,2:781\n1563#2:789\n1634#2,3:790\n1#3:778\n1321#4,2:783\n1321#4,2:787\n13472#5,2:785\n*S KotlinDebug\n*F\n+ 1 HMOpView.kt\ncom/join/kotlin/module/hmcloud/pad/HMOpView\n*L\n108#1:763\n108#1:764,2\n108#1:766,2\n122#1:768\n122#1:769,2\n124#1:771,2\n135#1:773\n135#1:774,2\n137#1:776,2\n240#1:779,2\n281#1:781,2\n431#1:789\n431#1:790,3\n389#1:783,2\n314#1:787,2\n475#1:785,2\n*E\n"})
public final class HMOpView extends FrameLayout {

    @Nullable
    private Float baseDensity;

    @Nullable
    private Integer baseHeight;

    @Nullable
    private Integer baseWidth;

    @Nullable
    private fa0 binding;
    private float density;

    @Nullable
    private View draggingView;

    @Nullable
    private HMKeyItem editItem;

    @Nullable
    private GestureDetector gestureDetector;
    private boolean isCorrected;
    private boolean isEditMode;
    private boolean isIntercept;
    private boolean isPreventResize;
    private boolean isVibrate;

    @NotNull
    private final List<HMKeyItem> keys;
    private float offsetX;
    private float offsetY;

    @Nullable
    private Function1<? super HMKeyItem, Unit> onEditKey;

    @Nullable
    private OnHMOpEventListener onEventListener;

    @Nullable
    private Function4<? super Float, ? super Integer, ? super Integer, ? super List<HMKeyItem>, Unit> onInsetsChanged;

    @Nullable
    private Function3<? super HMKeyItem, ? super View, ? super FrameLayout.LayoutParams, Unit> onItemLayout;
    private int retryCount;

    @Nullable
    private HMOpSkinWrapper skinWrapper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMOpView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.density = getResources().getDisplayMetrics().density;
        this.skinWrapper = HMOpSkin.INSTANCE.getDefault();
        this.keys = new ArrayList();
        this.gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.join.kotlin.module.hmcloud.pad.HMOpView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent e10) {
                HMKeyItem hMKeyItemFindEditItem;
                Intrinsics.checkNotNullParameter(e10, "e");
                if (HMOpView.this.getIsEditMode()) {
                    HMOpView.this.editItem = null;
                    HMOpView.this.draggingView = null;
                    List<View> listReversed = CollectionsKt___CollectionsKt.reversed(SequencesKt___SequencesKt.toList(ViewGroupKt.getChildren(HMOpView.this)));
                    HMOpView hMOpView = HMOpView.this;
                    for (View view : listReversed) {
                        if (ViewKt.isTouchInView(view, e10)) {
                            hMOpView.draggingView = view;
                            if (view.getTag() instanceof HMKeyItem) {
                                Object tag = view.getTag();
                                Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.join.mgps.dto.hmcloud.HMKeyItem");
                                hMKeyItemFindEditItem = (HMKeyItem) tag;
                            } else {
                                Object tag2 = view.getTag();
                                Intrinsics.checkNotNull(tag2, "null cannot be cast to non-null type kotlin.String");
                                hMKeyItemFindEditItem = hMOpView.findEditItem((String) tag2, e10.getX(), e10.getY());
                            }
                            hMOpView.editItem = hMKeyItemFindEditItem;
                            hMOpView.offsetX = e10.getX() - view.getX();
                            hMOpView.offsetY = e10.getY() - view.getY();
                            return true;
                        }
                    }
                }
                return super.onDown(e10);
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent e10, MotionEvent e11, float distanceX, float distanceY) {
                Intrinsics.checkNotNullParameter(e11, "e2");
                if (!HMOpView.this.getIsEditMode()) {
                    return super.onScroll(e10, e11, distanceX, distanceY);
                }
                View view = HMOpView.this.draggingView;
                if (view == null) {
                    return false;
                }
                view.offsetLeftAndRight(-((int) distanceX));
                view.offsetTopAndBottom(-((int) distanceY));
                HMKeyItem hMKeyItem = HMOpView.this.editItem;
                if (hMKeyItem == null) {
                    return true;
                }
                HMOpView.this.applyNewViewLayout(hMKeyItem, view);
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent e10) {
                Function1<HMKeyItem, Unit> onEditKey;
                Intrinsics.checkNotNullParameter(e10, "e");
                if (!HMOpView.this.getIsEditMode()) {
                    return super.onSingleTapUp(e10);
                }
                HMKeyItem hMKeyItem = HMOpView.this.editItem;
                if (hMKeyItem != null && (onEditKey = HMOpView.this.getOnEditKey()) != null) {
                    onEditKey.invoke(hMKeyItem);
                }
                HMOpView.this.editItem = null;
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void applyNewViewLayout(final HMKeyItem item, final View view) {
        view.post(new Runnable() { // from class: com.join.kotlin.module.hmcloud.pad.i
            @Override // java.lang.Runnable
            public final void run() {
                HMOpView.applyNewViewLayout$lambda$23(this.f48816b, item, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void applyNewViewLayout$lambda$23(HMOpView hMOpView, HMKeyItem hMKeyItem, View view) {
        int measuredWidth = hMOpView.getMeasuredWidth();
        int measuredHeight = hMOpView.getMeasuredHeight();
        hMKeyItem.setX(RangesKt___RangesKt.coerceIn(view.getLeft(), 0, measuredWidth - view.getMeasuredWidth()));
        hMKeyItem.setY(RangesKt___RangesKt.coerceIn(view.getTop(), 0, measuredHeight - view.getMeasuredHeight()));
        if (view.getRight() - (view.getMeasuredWidth() / 2) > measuredWidth / 2) {
            hMKeyItem.setLeft(null);
            hMKeyItem.setRight(Integer.valueOf(measuredWidth - view.getRight()));
        } else {
            hMKeyItem.setLeft(Integer.valueOf(view.getLeft()));
            hMKeyItem.setRight(null);
        }
        if (view.getBottom() - (view.getMeasuredHeight() / 2) > measuredHeight / 2) {
            hMKeyItem.setTop(null);
            hMKeyItem.setBottom(Integer.valueOf(measuredHeight - view.getBottom()));
        } else {
            hMKeyItem.setTop(Integer.valueOf(view.getTop()));
            hMKeyItem.setBottom(null);
        }
    }

    private final void attachEventCallback(View view, final HMKeyItem item) {
        if ((view instanceof HMDpadView) || (view instanceof HMAnalogWasdView) || (view instanceof HMAnalogArrowView)) {
            ((HMControllerView) view).setOnDpad(new Function1() { // from class: com.join.kotlin.module.hmcloud.pad.j
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return HMOpView.attachEventCallback$lambda$26(this.f48819b, item, (List) obj);
                }
            });
            return;
        }
        if (view instanceof HMAnalogDpadView) {
            view.setOnTouchListener(null);
            HMAnalogDpadView hMAnalogDpadView = (HMAnalogDpadView) view;
            hMAnalogDpadView.setOnMove(new Function2() { // from class: com.join.kotlin.module.hmcloud.pad.k
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return HMOpView.attachEventCallback$lambda$27(this.f48821b, item, ((Float) obj).floatValue(), ((Float) obj2).floatValue());
                }
            });
            hMAnalogDpadView.setOnDpad(new Function1() { // from class: com.join.kotlin.module.hmcloud.pad.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return HMOpView.attachEventCallback$lambda$28(this.f48823b, item, (List) obj);
                }
            });
            return;
        }
        if (view instanceof HMAnalogView) {
            view.setOnTouchListener(null);
            ((HMAnalogView) view).setOnMove(new Function2() { // from class: com.join.kotlin.module.hmcloud.pad.m
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return HMOpView.attachEventCallback$lambda$29(this.f48825b, item, ((Float) obj).floatValue(), ((Float) obj2).floatValue());
                }
            });
            return;
        }
        if (view instanceof HMButtonView) {
            final Function1 function1 = new Function1() { // from class: com.join.kotlin.module.hmcloud.pad.n
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return HMOpView.attachEventCallback$lambda$31(item, this, ((Boolean) obj).booleanValue());
                }
            };
            DefaultButtonTouchDelegate defaultButtonTouchDelegate = new DefaultButtonTouchDelegate(new Rect(), view);
            defaultButtonTouchDelegate.setOnClick(new Function1() { // from class: com.join.kotlin.module.hmcloud.pad.o
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return HMOpView.attachEventCallback$lambda$33$lambda$32(this.f48829b, function1, ((Boolean) obj).booleanValue());
                }
            });
            ((HMButtonView) view).setTouchDelegate(defaultButtonTouchDelegate);
            return;
        }
        Rect rect = new Rect();
        view.getHitRect(rect);
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.join.kotlin.module.hmcloud.pad.p
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return HMOpView.attachEventCallback$lambda$34(view2, motionEvent);
            }
        });
        DefaultButtonTouchDelegate defaultButtonTouchDelegate2 = new DefaultButtonTouchDelegate(rect, view);
        defaultButtonTouchDelegate2.setOnClick(new Function1() { // from class: com.join.kotlin.module.hmcloud.pad.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMOpView.attachEventCallback$lambda$36$lambda$35(this.f48831b, item, ((Boolean) obj).booleanValue());
            }
        });
        view.setTouchDelegate(defaultButtonTouchDelegate2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit attachEventCallback$lambda$26(HMOpView hMOpView, HMKeyItem hMKeyItem, List it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        OnHMOpEventListener onHMOpEventListener = hMOpView.onEventListener;
        if (onHMOpEventListener != null) {
            onHMOpEventListener.onKeyItem(hMKeyItem);
        }
        OnHMOpEventListener onHMOpEventListener2 = hMOpView.onEventListener;
        if (onHMOpEventListener2 != null) {
            onHMOpEventListener2.onDpad(hMKeyItem.getKey(), it2);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit attachEventCallback$lambda$27(HMOpView hMOpView, HMKeyItem hMKeyItem, float f10, float f11) {
        OnHMOpEventListener onHMOpEventListener = hMOpView.onEventListener;
        if (onHMOpEventListener != null) {
            onHMOpEventListener.onKeyItem(hMKeyItem);
        }
        OnHMOpEventListener onHMOpEventListener2 = hMOpView.onEventListener;
        if (onHMOpEventListener2 != null) {
            onHMOpEventListener2.onTrackball(hMKeyItem.getKey(), f10, f11);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit attachEventCallback$lambda$28(HMOpView hMOpView, HMKeyItem hMKeyItem, List it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        OnHMOpEventListener onHMOpEventListener = hMOpView.onEventListener;
        if (onHMOpEventListener != null) {
            onHMOpEventListener.onKeyItem(hMKeyItem);
        }
        OnHMOpEventListener onHMOpEventListener2 = hMOpView.onEventListener;
        if (onHMOpEventListener2 != null) {
            onHMOpEventListener2.onDpad(hMKeyItem.getKey(), it2);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit attachEventCallback$lambda$29(HMOpView hMOpView, HMKeyItem hMKeyItem, float f10, float f11) {
        OnHMOpEventListener onHMOpEventListener = hMOpView.onEventListener;
        if (onHMOpEventListener != null) {
            onHMOpEventListener.onKeyItem(hMKeyItem);
        }
        OnHMOpEventListener onHMOpEventListener2 = hMOpView.onEventListener;
        if (onHMOpEventListener2 != null) {
            onHMOpEventListener2.onTrackball(hMKeyItem.getKey(), f10, f11);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit attachEventCallback$lambda$31(HMKeyItem hMKeyItem, HMOpView hMOpView, boolean z10) {
        List<String> listEmptyList;
        List<HMKeyItem> combine = hMKeyItem.getCombine();
        boolean z11 = false;
        if (combine != null && (!combine.isEmpty())) {
            z11 = true;
        }
        if (!z11) {
            OnHMOpEventListener onHMOpEventListener = hMOpView.onEventListener;
            if (onHMOpEventListener != null) {
                onHMOpEventListener.onKeyItem(hMKeyItem);
            }
            OnHMOpEventListener onHMOpEventListener2 = hMOpView.onEventListener;
            if (onHMOpEventListener2 == null) {
                return null;
            }
            onHMOpEventListener2.onKeyPress(hMKeyItem.getKey(), z10);
            return Unit.INSTANCE;
        }
        OnHMOpEventListener onHMOpEventListener3 = hMOpView.onEventListener;
        if (onHMOpEventListener3 != null) {
            onHMOpEventListener3.onKeyItem(hMKeyItem);
        }
        OnHMOpEventListener onHMOpEventListener4 = hMOpView.onEventListener;
        if (onHMOpEventListener4 == null) {
            return null;
        }
        List<HMKeyItem> combine2 = hMKeyItem.getCombine();
        if (combine2 != null) {
            List<HMKeyItem> list = combine2;
            listEmptyList = new ArrayList<>(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                listEmptyList.add(((HMKeyItem) it2.next()).getKey());
            }
        } else {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        onHMOpEventListener4.onCombineKey(listEmptyList, z10);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit attachEventCallback$lambda$33$lambda$32(HMOpView hMOpView, Function1 function1, boolean z10) {
        if (z10) {
            hMOpView.vibrate();
        }
        function1.invoke(Boolean.valueOf(z10));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean attachEventCallback$lambda$34(View view, MotionEvent motionEvent) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit attachEventCallback$lambda$36$lambda$35(HMOpView hMOpView, HMKeyItem hMKeyItem, boolean z10) {
        if (z10) {
            hMOpView.vibrate();
        }
        OnHMOpEventListener onHMOpEventListener = hMOpView.onEventListener;
        if (onHMOpEventListener != null) {
            onHMOpEventListener.onKeyItem(hMKeyItem);
        }
        OnHMOpEventListener onHMOpEventListener2 = hMOpView.onEventListener;
        if (onHMOpEventListener2 != null) {
            onHMOpEventListener2.onKeyPress(hMKeyItem.getKey(), z10);
        }
        return Unit.INSTANCE;
    }

    private final float calculateTextSizeScale(HMKeyItem item) {
        float measuredWidth;
        Float f10 = this.baseDensity;
        float fFloatValue = (f10 != null ? f10.floatValue() : this.density) / this.density;
        Float scale = item.getScale();
        float measuredHeight = 1.0f;
        float fFloatValue2 = fFloatValue * (scale != null ? scale.floatValue() : 1.0f);
        Integer num = this.baseWidth;
        if (num != null) {
            measuredWidth = getMeasuredWidth() / num.intValue();
        } else {
            measuredWidth = 1.0f;
        }
        Integer num2 = this.baseHeight;
        if (num2 != null) {
            measuredHeight = getMeasuredHeight() / num2.intValue();
        }
        return fFloatValue2 * Math.min(measuredWidth, measuredHeight);
    }

    private final FrameLayout.LayoutParams computeLayoutParams(HMKeyItem item) {
        int x10 = item.getX();
        int y10 = item.getY();
        float width = item.getWidth();
        Float scale = item.getScale();
        int iFloatValue = (int) (width * (scale != null ? scale.floatValue() : 1.0f));
        float height = item.getHeight();
        Float scale2 = item.getScale();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iFloatValue, (int) (height * (scale2 != null ? scale2.floatValue() : 1.0f)));
        layoutParams.leftMargin = x10;
        layoutParams.topMargin = y10;
        layoutParams.bottomMargin = 0;
        layoutParams.rightMargin = 0;
        return layoutParams;
    }

    private final void correctItemInsets() {
        float f10;
        float f11;
        if (this.isCorrected || getMeasuredWidth() == 0 || getMeasuredHeight() == 0 || this.baseWidth == null || this.baseHeight == null) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int i10 = getResources().getDisplayMetrics().widthPixels;
        int i11 = getResources().getDisplayMetrics().heightPixels;
        Integer num = this.baseWidth;
        if (num != null) {
            float fIntValue = num.intValue();
            float f12 = measuredWidth;
            if (fIntValue == 0.0f) {
                fIntValue = f12;
            }
            f10 = (f12 / fIntValue) * 1.0f;
        } else {
            f10 = 1.0f;
        }
        Integer num2 = this.baseHeight;
        if (num2 != null) {
            float fIntValue2 = num2.intValue();
            float f13 = measuredHeight;
            if (fIntValue2 == 0.0f) {
                fIntValue2 = f13;
            }
            f11 = (f13 / fIntValue2) * 1.0f;
        } else {
            f11 = 1.0f;
        }
        if (f10 == 1.0f) {
            if (f11 == 1.0f) {
                return;
            }
        }
        for (HMKeyItem hMKeyItem : this.keys) {
            float fMin = Math.min(f10, f11);
            int width = (int) (hMKeyItem.getWidth() * fMin);
            int height = (int) (hMKeyItem.getHeight() * fMin);
            hMKeyItem.setWidth(width);
            hMKeyItem.setHeight(height);
            int x10 = (int) (hMKeyItem.getX() * f10);
            float f14 = measuredWidth;
            float f15 = width;
            Float scale = hMKeyItem.getScale();
            hMKeyItem.setX(RangesKt___RangesKt.coerceIn(x10, 0, (int) Math.max(0.0f, f14 - (f15 * (scale != null ? scale.floatValue() : 1.0f)))));
            int y10 = (int) (hMKeyItem.getY() * f11);
            float f16 = measuredHeight;
            float f17 = height;
            Float scale2 = hMKeyItem.getScale();
            hMKeyItem.setY(RangesKt___RangesKt.coerceIn(y10, 0, (int) Math.max(0.0f, f16 - (f17 * (scale2 != null ? scale2.floatValue() : 1.0f)))));
            if (hMKeyItem.getLeft() != null) {
                Integer left = hMKeyItem.getLeft();
                Intrinsics.checkNotNull(left);
                hMKeyItem.setLeft(Integer.valueOf((int) (left.intValue() * f10)));
            }
            if (hMKeyItem.getTop() != null) {
                Integer top = hMKeyItem.getTop();
                Intrinsics.checkNotNull(top);
                hMKeyItem.setTop(Integer.valueOf((int) (top.intValue() * f11)));
            }
            if (hMKeyItem.getRight() != null) {
                Integer right = hMKeyItem.getRight();
                Intrinsics.checkNotNull(right);
                hMKeyItem.setRight(Integer.valueOf((int) (right.intValue() * f10)));
            }
            if (hMKeyItem.getBottom() != null) {
                Integer bottom = hMKeyItem.getBottom();
                Intrinsics.checkNotNull(bottom);
                hMKeyItem.setBottom(Integer.valueOf((int) (bottom.intValue() * f11)));
            }
        }
        this.baseDensity = Float.valueOf(this.density);
        this.baseWidth = Integer.valueOf(measuredWidth);
        this.baseHeight = Integer.valueOf(measuredHeight);
        Function4<? super Float, ? super Integer, ? super Integer, ? super List<HMKeyItem>, Unit> function4 = this.onInsetsChanged;
        if (function4 != null) {
            function4.invoke(Float.valueOf(this.density), Integer.valueOf(measuredWidth), Integer.valueOf(measuredHeight), this.keys);
        }
        this.isCorrected = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x005d  */
    public final HMKeyItem findEditItem(String key, float x10, float y10) {
        Object next;
        boolean z10;
        List<HMKeyItem> list = this.keys;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (Intrinsics.areEqual(((HMKeyItem) obj).getKey(), key)) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            next = it2.next();
            FrameLayout.LayoutParams layoutParamsComputeLayoutParams = computeLayoutParams((HMKeyItem) next);
            int i10 = layoutParamsComputeLayoutParams.leftMargin;
            if (x10 < i10 || x10 > i10 + layoutParamsComputeLayoutParams.width) {
                z10 = false;
            } else {
                int i11 = layoutParamsComputeLayoutParams.topMargin;
                if (y10 < i11 || y10 > i11 + layoutParamsComputeLayoutParams.height) {
                    z10 = false;
                } else {
                    z10 = true;
                }
            }
            if (z10) {
                return (HMKeyItem) next;
            }
        }
        next = null;
        return (HMKeyItem) next;
    }

    private final void genDefaultKeyConfig(View... views) {
        this.keys.clear();
        for (View view : views) {
            HMKeyItem hMKeyItem = new HMKeyItem();
            hMKeyItem.setKey(view.getTag().toString());
            hMKeyItem.setWidth(view.getMeasuredWidth());
            hMKeyItem.setHeight(view.getMeasuredHeight());
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            hMKeyItem.setX(iArr[0]);
            hMKeyItem.setY(iArr[1]);
            int measuredWidth = (view.getMeasuredWidth() / 2) + hMKeyItem.getX();
            int measuredHeight = (view.getMeasuredHeight() / 2) + hMKeyItem.getY();
            int measuredWidth2 = getMeasuredWidth();
            int measuredHeight2 = getMeasuredHeight();
            if (measuredWidth > measuredWidth2 / 2) {
                hMKeyItem.setRight(Integer.valueOf(measuredWidth2 - (hMKeyItem.getX() + hMKeyItem.getWidth())));
            }
            if (measuredHeight > measuredHeight2 / 2) {
                hMKeyItem.setBottom(Integer.valueOf(measuredHeight2 - (hMKeyItem.getY() + hMKeyItem.getHeight())));
            }
            this.keys.add(hMKeyItem);
        }
    }

    private final View layoutKey(HMKeyItem item) {
        View viewGenerateView = generateView(item);
        FrameLayout.LayoutParams layoutParamsComputeLayoutParams = computeLayoutParams(item);
        viewGenerateView.setLayoutParams(layoutParamsComputeLayoutParams);
        addView(viewGenerateView, layoutParamsComputeLayoutParams);
        int i10 = layoutParamsComputeLayoutParams.leftMargin;
        int i11 = layoutParamsComputeLayoutParams.topMargin;
        viewGenerateView.layout(i10, i11, layoutParamsComputeLayoutParams.width + i10, layoutParamsComputeLayoutParams.height + i11);
        viewGenerateView.requestLayout();
        viewGenerateView.invalidate();
        Function3<? super HMKeyItem, ? super View, ? super FrameLayout.LayoutParams, Unit> function3 = this.onItemLayout;
        if (function3 != null) {
            function3.invoke(item, viewGenerateView, layoutParamsComputeLayoutParams);
        }
        return viewGenerateView;
    }

    private final void loadKeySkin(View view, HMKeyItem item) {
        HMOpSkinWrapper hMOpSkinWrapper = this.skinWrapper;
        if (hMOpSkinWrapper != null) {
            hMOpSkinWrapper.load(view, item);
        }
    }

    private final void loadKeysInner(List<HMKeyItem> keys) {
        synchronized (this.keys) {
            this.keys.clear();
            this.keys.addAll(keys);
            refreshKeys();
            Unit unit = Unit.INSTANCE;
        }
    }

    private final void refreshKeys() {
        removeAllViews();
        correctItemInsets();
        for (HMKeyItem hMKeyItem : this.keys) {
            View viewLayoutKey = layoutKey(hMKeyItem);
            loadKeySkin(viewLayoutKey, hMKeyItem);
            attachEventCallback(viewLayoutKey, hMKeyItem);
        }
        this.retryCount++;
    }

    private final void scaleTextSize(final View view, final HMKeyItem item) {
        if (view instanceof ViewGroup) {
            view.post(new Runnable() { // from class: com.join.kotlin.module.hmcloud.pad.h
                @Override // java.lang.Runnable
                public final void run() {
                    HMOpView.scaleTextSize$lambda$20(this.f48813b, item, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void scaleTextSize$lambda$20(HMOpView hMOpView, HMKeyItem hMKeyItem, View view) {
        float fCalculateTextSizeScale = hMOpView.calculateTextSizeScale(hMKeyItem);
        for (View view2 : ViewGroupKt.getChildren((ViewGroup) view)) {
            if (view2 instanceof ViewGroup) {
                hMOpView.scaleTextSize(view2, hMKeyItem);
            } else if (view2 instanceof TextView) {
                TextView textView = (TextView) view2;
                textView.setTextSize(0, textView.getTextSize() * fCalculateTextSizeScale);
            }
        }
    }

    private final void vibrate() {
        if (this.isVibrate) {
            l3 l3Var = l3.f49800a;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            l3.b(l3Var, context, 0L, 2, null);
        }
    }

    public final void change(@NotNull HMKeyItem item, @NotNull HMKeyItem target) {
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(target, "target");
        synchronized (this.keys) {
            List<HMKeyItem> list = this.keys;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (Intrinsics.areEqual(((HMKeyItem) obj).getKey(), item.getKey())) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : arrayList) {
                HMKeyItem hMKeyItem = (HMKeyItem) obj2;
                if (hMKeyItem.getX() == item.getX() && hMKeyItem.getY() == item.getY() && hMKeyItem.getWidth() == item.getWidth() && hMKeyItem.getHeight() == item.getHeight() && Intrinsics.areEqual(hMKeyItem.getLeft(), item.getLeft()) && Intrinsics.areEqual(hMKeyItem.getRight(), item.getRight()) && Intrinsics.areEqual(hMKeyItem.getTop(), item.getTop()) && Intrinsics.areEqual(hMKeyItem.getBottom(), item.getBottom())) {
                    arrayList2.add(obj2);
                }
            }
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                int iIndexOf = this.keys.indexOf((HMKeyItem) it2.next());
                if (iIndexOf >= 0) {
                    this.keys.set(iIndexOf, target);
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0166  */
    @NotNull
    public final View generateView(@NotNull HMKeyItem item) {
        View hMAnalogView;
        Intrinsics.checkNotNullParameter(item, "item");
        String key = item.getKey();
        if (Intrinsics.areEqual(key, HMKeyData.Dpad.getKey())) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            hMAnalogView = new HMDpadView(context);
        } else if (Intrinsics.areEqual(key, HMKeyData.JoyL.getKey()) || Intrinsics.areEqual(key, HMKeyData.JoyR.getKey())) {
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            hMAnalogView = new HMAnalogView(context2);
        } else if (Intrinsics.areEqual(key, HMKeyData.JoyDpad.getKey())) {
            Context context3 = getContext();
            Intrinsics.checkNotNullExpressionValue(context3, "getContext(...)");
            hMAnalogView = new HMAnalogDpadView(context3);
        } else if (Intrinsics.areEqual(key, HMKeyData.JoyWasd.getKey())) {
            Context context4 = getContext();
            Intrinsics.checkNotNullExpressionValue(context4, "getContext(...)");
            hMAnalogView = new HMAnalogWasdView(context4);
        } else if (Intrinsics.areEqual(key, HMKeyData.JoyArrow.getKey())) {
            Context context5 = getContext();
            Intrinsics.checkNotNullExpressionValue(context5, "getContext(...)");
            hMAnalogView = new HMAnalogArrowView(context5);
        } else if (Intrinsics.areEqual(key, HMKeyData.MouseLeft.getKey()) || Intrinsics.areEqual(key, HMKeyData.MouseRight.getKey()) || Intrinsics.areEqual(key, HMKeyData.MouseMiddle.getKey()) || Intrinsics.areEqual(key, HMKeyData.MouseMoveUp.getKey()) || Intrinsics.areEqual(key, HMKeyData.MouseMoveDown.getKey())) {
            Context context6 = getContext();
            Intrinsics.checkNotNullExpressionValue(context6, "getContext(...)");
            HMButtonView hMButtonView = new HMButtonView(context6);
            hMButtonView.setClickable(true);
            hMAnalogView = hMButtonView;
        } else {
            HMOpSkin.Companion companion = HMOpSkin.INSTANCE;
            if ((companion.getDefault() instanceof HMOpSkinDefault) && ((HMOpSkinDefault) companion.getDefault()).getGamepad().containsKey(item.getKey())) {
                String nickname = item.getNickname();
                if (nickname == null || nickname.length() == 0) {
                    ImageView imageView = new ImageView(getContext());
                    imageView.setClickable(true);
                    imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    hMAnalogView = imageView;
                } else {
                    Context context7 = getContext();
                    Intrinsics.checkNotNullExpressionValue(context7, "getContext(...)");
                    HMButtonView hMButtonView2 = new HMButtonView(context7);
                    hMButtonView2.setClickable(true);
                    hMAnalogView = hMButtonView2;
                }
            } else {
                List<HMKeyItem> combine = item.getCombine();
                if (combine != null && (combine.isEmpty() ^ true)) {
                    Context context8 = getContext();
                    Intrinsics.checkNotNullExpressionValue(context8, "getContext(...)");
                    HMButtonView hMButtonView3 = new HMButtonView(context8);
                    hMButtonView3.setClickable(true);
                    hMAnalogView = hMButtonView3;
                } else {
                    String name = item.getName();
                    if (name == null || name.length() == 0) {
                        String nickname2 = item.getNickname();
                        if (nickname2 == null || nickname2.length() == 0) {
                            ImageView imageView2 = new ImageView(getContext());
                            imageView2.setClickable(true);
                            imageView2.setScaleType(ImageView.ScaleType.FIT_XY);
                            hMAnalogView = imageView2;
                        } else {
                            Context context9 = getContext();
                            Intrinsics.checkNotNullExpressionValue(context9, "getContext(...)");
                            HMButtonView hMButtonView4 = new HMButtonView(context9);
                            hMButtonView4.setClickable(true);
                            hMAnalogView = hMButtonView4;
                        }
                    } else {
                        Context context10 = getContext();
                        Intrinsics.checkNotNullExpressionValue(context10, "getContext(...)");
                        HMButtonView hMButtonView5 = new HMButtonView(context10);
                        hMButtonView5.setClickable(true);
                        hMAnalogView = hMButtonView5;
                    }
                }
            }
        }
        hMAnalogView.setTag(item);
        return hMAnalogView;
    }

    @Nullable
    public final fa0 getBinding() {
        return this.binding;
    }

    @Nullable
    public final GestureDetector getGestureDetector() {
        return this.gestureDetector;
    }

    @NotNull
    public final List<HMKeyItem> getKeys() {
        List<HMKeyItem> list;
        synchronized (this.keys) {
            list = this.keys;
        }
        return list;
    }

    @Nullable
    public final Function1<HMKeyItem, Unit> getOnEditKey() {
        return this.onEditKey;
    }

    @Nullable
    public final OnHMOpEventListener getOnEventListener() {
        return this.onEventListener;
    }

    @Nullable
    public final Function4<Float, Integer, Integer, List<HMKeyItem>, Unit> getOnInsetsChanged() {
        return this.onInsetsChanged;
    }

    @Nullable
    public final Function3<HMKeyItem, View, FrameLayout.LayoutParams, Unit> getOnItemLayout() {
        return this.onItemLayout;
    }

    @Nullable
    public final HMOpSkinWrapper getSkinWrapper() {
        return this.skinWrapper;
    }

    /* JADX INFO: renamed from: isCorrected, reason: from getter */
    public final boolean getIsCorrected() {
        return this.isCorrected;
    }

    /* JADX INFO: renamed from: isEditMode, reason: from getter */
    public final boolean getIsEditMode() {
        return this.isEditMode;
    }

    /* JADX INFO: renamed from: isIntercept, reason: from getter */
    public final boolean getIsIntercept() {
        return this.isIntercept;
    }

    /* JADX INFO: renamed from: isPreventResize, reason: from getter */
    public final boolean getIsPreventResize() {
        return this.isPreventResize;
    }

    /* JADX INFO: renamed from: isVibrate, reason: from getter */
    public final boolean getIsVibrate() {
        return this.isVibrate;
    }

    public final void loadKeys(@Nullable Float density, @Nullable Integer width, @Nullable Integer height, @NotNull List<HMKeyItem> keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        this.isCorrected = false;
        this.retryCount = 0;
        if (density != null) {
            this.baseDensity = Float.valueOf(density.floatValue());
        }
        if (width != null) {
            this.baseWidth = Integer.valueOf(width.intValue());
        }
        if (height != null) {
            this.baseHeight = Integer.valueOf(height.intValue());
        }
        loadKeysInner(CollectionsKt___CollectionsKt.toMutableList((Collection) keys));
    }

    public final void loadKeysDefault() {
        removeAllViews();
        fa0 fa0VarInflate = fa0.inflate(LayoutInflater.from(getContext()), this, false);
        this.binding = fa0VarInflate;
        addView(fa0VarInflate != null ? fa0VarInflate.getRoot() : null, -1, -1);
        fa0 fa0Var = this.binding;
        if (fa0Var != null) {
            fa0Var.f38310c.setStickResource(R.drawable.hm_ana_stick_l);
            fa0Var.f38311d.setStickResource(R.drawable.hm_ana_stick_r);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(@Nullable Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        refreshKeys();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@Nullable MotionEvent ev) {
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        refreshKeys();
    }

    @Override // android.view.View
    public boolean onTouchEvent(@Nullable MotionEvent event) {
        boolean zOnTouchEventInternal;
        GestureDetector gestureDetector;
        if (this.isIntercept) {
            return true;
        }
        if (this.isEditMode) {
            if (event != null && (gestureDetector = this.gestureDetector) != null) {
                gestureDetector.onTouchEvent(event);
            }
            return true;
        }
        boolean z10 = false;
        for (View view : ViewGroupKt.getChildren(this)) {
            if (view instanceof HMControllerView) {
                zOnTouchEventInternal = ((HMControllerView) view).onTouchEventInternal(event);
            } else if (view.getTouchDelegate() != null && (view.getTouchDelegate() instanceof DefaultButtonTouchDelegate)) {
                TouchDelegate touchDelegate = view.getTouchDelegate();
                Intrinsics.checkNotNull(touchDelegate, "null cannot be cast to non-null type com.join.kotlin.module.hmcloud.pad.DefaultButtonTouchDelegate");
                zOnTouchEventInternal = ((DefaultButtonTouchDelegate) touchDelegate).onTouchEventInternal(view, event);
            }
            z10 |= zOnTouchEventInternal;
        }
        if (!z10) {
            return super.onTouchEvent(event);
        }
        invalidate();
        return true;
    }

    public final void remove(@NotNull HMKeyItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        synchronized (this.keys) {
            List<HMKeyItem> list = this.keys;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (Intrinsics.areEqual(((HMKeyItem) obj).getKey(), item.getKey())) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : arrayList) {
                HMKeyItem hMKeyItem = (HMKeyItem) obj2;
                if (hMKeyItem.getX() == item.getX() && hMKeyItem.getY() == item.getY() && hMKeyItem.getWidth() == item.getWidth() && hMKeyItem.getHeight() == item.getHeight() && Intrinsics.areEqual(hMKeyItem.getLeft(), item.getLeft()) && Intrinsics.areEqual(hMKeyItem.getRight(), item.getRight()) && Intrinsics.areEqual(hMKeyItem.getTop(), item.getTop()) && Intrinsics.areEqual(hMKeyItem.getBottom(), item.getBottom())) {
                    arrayList2.add(obj2);
                }
            }
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                this.keys.remove((HMKeyItem) it2.next());
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void retrieveChanged(@NotNull Function4<? super Float, ? super Integer, ? super Integer, ? super List<HMKeyItem>, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.invoke(Float.valueOf(this.density), Integer.valueOf(getMeasuredWidth()), Integer.valueOf(getMeasuredHeight()), this.keys);
    }

    public final void setBinding(@Nullable fa0 fa0Var) {
        this.binding = fa0Var;
    }

    public final void setCorrected(boolean z10) {
        this.isCorrected = z10;
    }

    public final void setEditMode(boolean z10) {
        this.isEditMode = z10;
    }

    public final void setGestureDetector(@Nullable GestureDetector gestureDetector) {
        this.gestureDetector = gestureDetector;
    }

    public final void setIntercept(boolean z10) {
        this.isIntercept = z10;
    }

    public final void setOnEditKey(@Nullable Function1<? super HMKeyItem, Unit> function1) {
        this.onEditKey = function1;
    }

    public final void setOnEventListener(@Nullable OnHMOpEventListener onHMOpEventListener) {
        this.onEventListener = onHMOpEventListener;
    }

    public final void setOnInsetsChanged(@Nullable Function4<? super Float, ? super Integer, ? super Integer, ? super List<HMKeyItem>, Unit> function4) {
        this.onInsetsChanged = function4;
    }

    public final void setOnItemLayout(@Nullable Function3<? super HMKeyItem, ? super View, ? super FrameLayout.LayoutParams, Unit> function3) {
        this.onItemLayout = function3;
    }

    public final void setPreventResize(boolean z10) {
        this.isPreventResize = z10;
    }

    public final void setSkinWrapper(@Nullable HMOpSkinWrapper hMOpSkinWrapper) {
        this.skinWrapper = hMOpSkinWrapper;
    }

    public final void setVibrate(boolean z10) {
        this.isVibrate = z10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMOpView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.density = getResources().getDisplayMetrics().density;
        this.skinWrapper = HMOpSkin.INSTANCE.getDefault();
        this.keys = new ArrayList();
        this.gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.join.kotlin.module.hmcloud.pad.HMOpView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent e10) {
                HMKeyItem hMKeyItemFindEditItem;
                Intrinsics.checkNotNullParameter(e10, "e");
                if (HMOpView.this.getIsEditMode()) {
                    HMOpView.this.editItem = null;
                    HMOpView.this.draggingView = null;
                    List<View> listReversed = CollectionsKt___CollectionsKt.reversed(SequencesKt___SequencesKt.toList(ViewGroupKt.getChildren(HMOpView.this)));
                    HMOpView hMOpView = HMOpView.this;
                    for (View view : listReversed) {
                        if (ViewKt.isTouchInView(view, e10)) {
                            hMOpView.draggingView = view;
                            if (view.getTag() instanceof HMKeyItem) {
                                Object tag = view.getTag();
                                Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.join.mgps.dto.hmcloud.HMKeyItem");
                                hMKeyItemFindEditItem = (HMKeyItem) tag;
                            } else {
                                Object tag2 = view.getTag();
                                Intrinsics.checkNotNull(tag2, "null cannot be cast to non-null type kotlin.String");
                                hMKeyItemFindEditItem = hMOpView.findEditItem((String) tag2, e10.getX(), e10.getY());
                            }
                            hMOpView.editItem = hMKeyItemFindEditItem;
                            hMOpView.offsetX = e10.getX() - view.getX();
                            hMOpView.offsetY = e10.getY() - view.getY();
                            return true;
                        }
                    }
                }
                return super.onDown(e10);
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent e10, MotionEvent e11, float distanceX, float distanceY) {
                Intrinsics.checkNotNullParameter(e11, "e2");
                if (!HMOpView.this.getIsEditMode()) {
                    return super.onScroll(e10, e11, distanceX, distanceY);
                }
                View view = HMOpView.this.draggingView;
                if (view == null) {
                    return false;
                }
                view.offsetLeftAndRight(-((int) distanceX));
                view.offsetTopAndBottom(-((int) distanceY));
                HMKeyItem hMKeyItem = HMOpView.this.editItem;
                if (hMKeyItem == null) {
                    return true;
                }
                HMOpView.this.applyNewViewLayout(hMKeyItem, view);
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent e10) {
                Function1<HMKeyItem, Unit> onEditKey;
                Intrinsics.checkNotNullParameter(e10, "e");
                if (!HMOpView.this.getIsEditMode()) {
                    return super.onSingleTapUp(e10);
                }
                HMKeyItem hMKeyItem = HMOpView.this.editItem;
                if (hMKeyItem != null && (onEditKey = HMOpView.this.getOnEditKey()) != null) {
                    onEditKey.invoke(hMKeyItem);
                }
                HMOpView.this.editItem = null;
                return true;
            }
        });
    }
}
