package com.join.mgps.activity;

import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.beans.GameArchitectureType;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.ka0;
import com.join.android.app.mgsim.wufun.databinding.o90;
import com.join.android.app.mgsim.wufun.databinding.w90;
import com.join.kotlin.module.hmcloud.bean.GuideState;
import com.join.kotlin.module.hmcloud.dialog.HMBaseFragmentDialog;
import com.join.kotlin.module.hmcloud.dialog.HMLoadingDialog;
import com.join.kotlin.module.hmcloud.menu.HMKeyGuideFragment;
import com.join.kotlin.module.hmcloud.menu.HMMenuFragment;
import com.join.kotlin.module.hmcloud.menu.HMOpEditFragment;
import com.join.kotlin.module.hmcloud.pad.HMDpadDirection;
import com.join.kotlin.module.hmcloud.pad.HMKeyboardView;
import com.join.kotlin.module.hmcloud.pad.HMOpEventMapper;
import com.join.kotlin.module.hmcloud.pad.HMOpView;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudSignViewModel;
import com.join.kotlin.utils.extention.FloatKt;
import com.join.kotlin.utils.extention.ViewKt;
import com.join.mgps.customview.guideview.GuideBuilder;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.hmcloud.HMMenuAction;
import com.join.mgps.dto.hmcloud.HMOpConfig;
import com.papa.controller.core.BaseEvent;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.psk.kotlin.ext.CommonExtKt;
import com.umeng.analytics.pro.bm;
import dagger.hilt.android.AndroidEntryPoint;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¬\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010:\u001a\u00020;2\b\u0010<\u001a\u0004\u0018\u00010=H\u0014J\u0010\u0010>\u001a\u00020;2\u0006\u0010?\u001a\u00020@H\u0016J\b\u0010A\u001a\u00020;H\u0016J\u0006\u0010B\u001a\u00020;J\u0006\u0010C\u001a\u00020;J\b\u0010D\u001a\u00020;H\u0002J\b\u0010E\u001a\u00020;H\u0002J\b\u0010F\u001a\u00020;H\u0014J\u0006\u0010G\u001a\u00020;J\u0006\u0010H\u001a\u00020;J\u0006\u0010I\u001a\u00020;J\u0006\u0010J\u001a\u00020;J\u0010\u0010K\u001a\u00020;2\u0006\u0010L\u001a\u00020MH\u0002J\u0010\u0010N\u001a\u00020;2\u0006\u0010L\u001a\u00020MH\u0002J\u0006\u0010O\u001a\u00020;J\b\u0010P\u001a\u00020;H\u0016J\u0006\u0010Q\u001a\u00020;J\u0012\u0010R\u001a\u00020;2\b\u0010S\u001a\u0004\u0018\u00010TH\u0016J\b\u0010U\u001a\u00020;H\u0016J\u0010\u0010V\u001a\u00020;2\u0006\u0010W\u001a\u00020TH\u0016J\b\u0010X\u001a\u00020;H\u0016J\b\u0010Y\u001a\u00020;H\u0014J\u0018\u0010Z\u001a\u00020;2\u0006\u0010[\u001a\u00020@2\u0006\u0010\\\u001a\u00020TH\u0016J\u000e\u0010]\u001a\u00020;2\u0006\u0010^\u001a\u00020@J\u001a\u0010_\u001a\u00020;2\b\b\u0002\u0010W\u001a\u00020@2\b\b\u0002\u0010L\u001a\u00020MJ9\u0010`\u001a\u0004\u0018\u0001Ha\"\b\b\u0000\u0010a*\u00020b2\b\u0010c\u001a\u0004\u0018\u0001Ha2\u0006\u0010d\u001a\u00020T2\f\u0010e\u001a\b\u0012\u0004\u0012\u0002Ha0fH\u0002¢\u0006\u0002\u0010gJ/\u0010h\u001a\u0004\u0018\u00010i2\u0006\u0010j\u001a\u00020k2\n\b\u0002\u0010l\u001a\u0004\u0018\u00010m2\n\b\u0002\u0010n\u001a\u0004\u0018\u00010@H\u0014¢\u0006\u0002\u0010oJ\b\u0010p\u001a\u00020;H\u0002J\b\u0010q\u001a\u00020;H\u0004J\b\u0010r\u001a\u00020;H\u0014J\b\u0010s\u001a\u00020;H\u0014J\u0018\u0010t\u001a\u00020;2\u0006\u0010u\u001a\u00020@2\u0006\u0010v\u001a\u00020@H\u0004J\u0006\u0010w\u001a\u00020;J\u0006\u0010x\u001a\u00020;J\u0010\u0010y\u001a\u00020M2\u0006\u0010z\u001a\u00020{H\u0016J\u0012\u0010|\u001a\u00020M2\b\u0010}\u001a\u0004\u0018\u00010~H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u001dX\u0084.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020#X\u0084.¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001c\u0010(\u001a\u0004\u0018\u00010)X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010/X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001c\u00104\u001a\u0004\u0018\u000105X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109¨\u0006\u007f"}, d2 = {"Lcom/join/mgps/activity/HMCloudMenuActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmMenuHolderBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmMenuHolderBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmMenuHolderBinding;)V", "keyGuideFragment", "Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;", "getKeyGuideFragment", "()Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;", "setKeyGuideFragment", "(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V", "menuFragment", "Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;", "getMenuFragment", "()Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;", "setMenuFragment", "(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V", "opEditFragment", "Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;", "getOpEditFragment", "()Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;", "setOpEditFragment", "(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;)V", "viewModel", "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "getViewModel", "()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;", "setViewModel", "(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)V", "signViewModel", "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;", "getSignViewModel", "()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;", "setSignViewModel", "(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;)V", "closeLoadingDialog", "Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;", "getCloseLoadingDialog", "()Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;", "setCloseLoadingDialog", "(Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;)V", "preVipAction", "Lcom/join/mgps/dto/hmcloud/HMMenuAction;", "getPreVipAction", "()Lcom/join/mgps/dto/hmcloud/HMMenuAction;", "setPreVipAction", "(Lcom/join/mgps/dto/hmcloud/HMMenuAction;)V", "mCustomToast", "Landroid/widget/Toast;", "getMCustomToast", "()Landroid/widget/Toast;", "setMCustomToast", "(Landroid/widget/Toast;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "setContentView", "layoutResID", "", "initObserver", "checkGuide", "showGuide0", "refreshOpContainerVisible", "showExitLoading", "onExit", "showEditOp", "closeEditOp", "showKeyboard", "hideKeyboard", "setBtnKeyboard", "show", "", "setBtnSettings", "refreshKeyboardVisible", "showMenu", "closeMenu", "goCharge", "from", "", "relaunchGame", "onSwitchResolution", "id", "locateUploadArchive", "refreshResolutionInfo", "setLatency", bm.aX, "loss", "setWindowBrightness", "brightness", "setContent", "showDialogOnce", "T", "Landroidx/fragment/app/DialogFragment;", "current", TagGameListActivity_.TAG_EXTRA, "factory", "Lkotlin/Function0;", "(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/fragment/app/DialogFragment;", "showPopup", "Landroid/widget/PopupWindow;", "view", "Landroid/view/View;", "duration", "", "offsetY", "(Landroid/view/View;Ljava/lang/Long;Ljava/lang/Integer;)Landroid/widget/PopupWindow;", "setupWindowAttr", "onVipStateChanged", "onStop", "onResume", "resizeOpContainer", IAdInterListener.AdReqParam.WIDTH, "h", "showGuide2", "showPeripheralToast", "dispatchKeyEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "dispatchGenericMotionEvent", "ev", "Landroid/view/MotionEvent;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@AndroidEntryPoint
@SourceDebugExtension({"SMAP\nHMCloudMenuActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMenuActivity.kt\ncom/join/mgps/activity/HMCloudMenuActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,714:1\n1#2:715\n470#3:716\n470#3:717\n470#3:718\n1878#4,3:719\n*S KotlinDebug\n*F\n+ 1 HMCloudMenuActivity.kt\ncom/join/mgps/activity/HMCloudMenuActivity\n*L\n447#1:716\n448#1:717\n449#1:718\n480#1:719,3\n*E\n"})
public class HMCloudMenuActivity extends Hilt_HMCloudMenuActivity {
    public w90 binding;

    @Nullable
    private HMLoadingDialog closeLoadingDialog;

    @Nullable
    private HMKeyGuideFragment keyGuideFragment;

    @Nullable
    private Toast mCustomToast;

    @Nullable
    private HMMenuFragment menuFragment;

    @Nullable
    private HMOpEditFragment opEditFragment;

    @Nullable
    private HMMenuAction preVipAction;
    protected HMCloudSignViewModel signViewModel;
    protected HMCloudMainViewModel viewModel;

    public static final class a implements Animation.AnimationListener {
        a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            HMCloudMenuActivity.this.getBinding().f46693e.setVisibility(8);
            HMCloudMenuActivity.this.setBtnSettings(true);
            HMCloudMenuActivity.this.setBtnKeyboard(true);
            HMCloudMenuActivity.this.getBinding().f46696h.setVisibility(Intrinsics.areEqual(HMCloudMenuActivity.this.getViewModel().isLatencyOn().getValue(), Boolean.TRUE) ? 0 : 8);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    static final class b implements Observer, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f53675a;

        b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f53675a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return this.f53675a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f53675a.invoke(obj);
        }
    }

    @SourceDebugExtension({"SMAP\nHMCloudMenuActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudMenuActivity.kt\ncom/join/mgps/activity/HMCloudMenuActivity$setContentView$4$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,714:1\n1869#2,2:715\n*S KotlinDebug\n*F\n+ 1 HMCloudMenuActivity.kt\ncom/join/mgps/activity/HMCloudMenuActivity$setContentView$4$1\n*L\n119#1:715,2\n*E\n"})
    public static final class c extends HMOpEventMapper {
        c() {
        }

        @Override // com.join.kotlin.module.hmcloud.pad.HMOpEventMapper, com.join.kotlin.module.hmcloud.pad.OnHMOpEventListener
        public void onCombineKey(List<String> keys, boolean z10) {
            Intrinsics.checkNotNullParameter(keys, "keys");
            HMCloudMenuActivity hMCloudMenuActivity = HMCloudMenuActivity.this;
            Iterator<T> it2 = keys.iterator();
            while (it2.hasNext()) {
                hMCloudMenuActivity.getViewModel().performClick((String) it2.next(), z10);
            }
        }

        @Override // com.join.kotlin.module.hmcloud.pad.HMOpEventMapper, com.join.kotlin.module.hmcloud.pad.OnHMOpEventListener
        public void onDpad(String name, List<? extends HMDpadDirection> directions) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(directions, "directions");
            HMCloudMenuActivity.this.getViewModel().performDirection(name, directions);
        }

        @Override // com.join.kotlin.module.hmcloud.pad.HMOpEventMapper, com.join.kotlin.module.hmcloud.pad.OnHMOpEventListener
        public void onKeyPress(String name, boolean z10) {
            Intrinsics.checkNotNullParameter(name, "name");
            HMCloudMenuActivity.this.getViewModel().performClick(name, z10);
        }

        @Override // com.join.kotlin.module.hmcloud.pad.HMOpEventMapper, com.join.kotlin.module.hmcloud.pad.OnHMOpEventListener
        public void onTrackball(String name, float f10, float f11) {
            Intrinsics.checkNotNullParameter(name, "name");
            HMCloudMenuActivity.this.getViewModel().performTrackball(name, f10, f11);
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.activity.HMCloudMenuActivity$checkGuide$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.mgps.activity.HMCloudMenuActivity$checkGuide$3", f = "HMCloudMenuActivity.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_INDEX_CACHE}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<kotlinx.coroutines.l0, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f53677b;

        /* JADX INFO: renamed from: com.join.mgps.activity.HMCloudMenuActivity$checkGuide$3$a */
        static final class a<T> implements kotlinx.coroutines.flow.f {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ HMCloudMenuActivity f53679b;

            a(HMCloudMenuActivity hMCloudMenuActivity) {
                this.f53679b = hMCloudMenuActivity;
            }

            @Override // kotlinx.coroutines.flow.f
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object emit(BaseEvent baseEvent, Continuation<? super Unit> continuation) {
                if (baseEvent != null) {
                    this.f53679b.getViewModel().performInputEvent(baseEvent);
                }
                return Unit.INSTANCE;
            }
        }

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HMCloudMenuActivity.this.new AnonymousClass3(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.f53677b;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.i<BaseEvent> inputEventData = HMCloudMenuActivity.this.getViewModel().getInputEventData();
                a aVar = new a(HMCloudMenuActivity.this);
                this.f53677b = 1;
                if (inputEventData.a(aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            throw new KotlinNothingValueException();
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    public static final class d implements com.join.mgps.customview.guideview.b {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f53680k;

        d(Function0<Unit> function0) {
            this.f53680k = function0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(Function0 function0, View view) {
            function0.invoke();
        }

        @Override // com.join.mgps.customview.guideview.b
        public int getAnchor() {
            return 1;
        }

        @Override // com.join.mgps.customview.guideview.b
        public int getFitPosition() {
            return 16;
        }

        @Override // com.join.mgps.customview.guideview.b
        public View getView(LayoutInflater layoutInflater) {
            if (layoutInflater == null) {
                return null;
            }
            final Function0<Unit> function0 = this.f53680k;
            o90 o90VarInflate = o90.inflate(layoutInflater);
            Intrinsics.checkNotNullExpressionValue(o90VarInflate, "inflate(...)");
            o90VarInflate.f42730e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.v5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HMCloudMenuActivity.d.b(function0, view);
                }
            });
            return o90VarInflate.getRoot();
        }

        @Override // com.join.mgps.customview.guideview.b
        public int getXOffset() {
            return 0;
        }

        @Override // com.join.mgps.customview.guideview.b
        public int getYOffset() {
            return 0;
        }
    }

    public static final class e implements Animation.AnimationListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupWindow f53681b;

        e(PopupWindow popupWindow) {
            this.f53681b = popupWindow;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f53681b.dismiss();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit checkGuide$lambda$23(HMCloudMenuActivity hMCloudMenuActivity, GuideState guideState) {
        if (guideState != null && (guideState instanceof GuideState.Page)) {
            GuideState.Page page = (GuideState.Page) guideState;
            if (page.getIndex() == 0) {
                hMCloudMenuActivity.showGuide0();
            } else if (page.getIndex() == 2) {
                hMCloudMenuActivity.showGuide2();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit checkGuide$lambda$24(HMCloudMenuActivity hMCloudMenuActivity, Integer num) {
        if (hMCloudMenuActivity.getViewModel().useInputDevice()) {
            hMCloudMenuActivity.showPeripheralToast();
        }
        hMCloudMenuActivity.refreshOpContainerVisible();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void hideKeyboard$lambda$33(HMCloudMenuActivity hMCloudMenuActivity) {
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, 1.0f);
        translateAnimation.setDuration(300L);
        translateAnimation.setAnimationListener(hMCloudMenuActivity.new a());
        hMCloudMenuActivity.getBinding().f46693e.startAnimation(translateAnimation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$10(HMCloudMenuActivity hMCloudMenuActivity, String str) {
        Intrinsics.checkNotNull(str);
        if (str.length() > 0) {
            CommonExtKt.toast(hMCloudMenuActivity, str);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$11(HMCloudMenuActivity hMCloudMenuActivity, Integer num) {
        Intrinsics.checkNotNull(num);
        hMCloudMenuActivity.setWindowBrightness(num.intValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$12(HMCloudMenuActivity hMCloudMenuActivity, Boolean bool) {
        hMCloudMenuActivity.getBinding().f46696h.setVisibility(bool.booleanValue() ? 0 : 8);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$13(HMCloudMenuActivity hMCloudMenuActivity, HMMenuAction hMMenuAction) {
        if (hMMenuAction instanceof HMMenuAction.RelaunchGame) {
            hMCloudMenuActivity.relaunchGame();
        } else if (hMMenuAction instanceof HMMenuAction.BackToApp) {
            hMCloudMenuActivity.showExitLoading();
        } else if (hMMenuAction instanceof HMMenuAction.OnSwitchResolution) {
            hMCloudMenuActivity.onSwitchResolution(((HMMenuAction.OnSwitchResolution) hMMenuAction).getId());
        } else if (hMMenuAction instanceof HMMenuAction.AddTime) {
            hMCloudMenuActivity.preVipAction = hMMenuAction;
            hMCloudMenuActivity.goCharge("checkTime");
        } else if (hMMenuAction instanceof HMMenuAction.ShowUploadArchive) {
            hMCloudMenuActivity.closeMenu();
            hMCloudMenuActivity.locateUploadArchive();
        } else if (hMMenuAction instanceof HMMenuAction.EditOp) {
            hMCloudMenuActivity.showEditOp();
        } else if (hMMenuAction instanceof HMMenuAction.EditOpClose) {
            hMCloudMenuActivity.closeEditOp();
            if (((HMMenuAction.EditOpClose) hMMenuAction).getSuccess()) {
                CommonExtKt.toast(hMCloudMenuActivity, "保存成功");
            }
        } else if (hMMenuAction instanceof HMMenuAction.ChargeCloudVip) {
            hMCloudMenuActivity.preVipAction = hMMenuAction;
            hMCloudMenuActivity.goCharge(((HMMenuAction.ChargeCloudVip) hMMenuAction).getChatId());
        } else if (hMMenuAction instanceof HMMenuAction.MenuClose) {
            hMCloudMenuActivity.closeMenu();
        } else if (hMMenuAction instanceof HMMenuAction.RefreshResolutionInfo) {
            hMCloudMenuActivity.refreshResolutionInfo();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$14(HMCloudMenuActivity hMCloudMenuActivity, Boolean bool) {
        hMCloudMenuActivity.refreshKeyboardVisible();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$15(HMCloudMenuActivity hMCloudMenuActivity, Boolean bool) {
        hMCloudMenuActivity.refreshKeyboardVisible();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$16(HMCloudMenuActivity hMCloudMenuActivity, Float f10) {
        HMOpView hMOpView = hMCloudMenuActivity.getBinding().f46700l;
        Intrinsics.checkNotNull(f10);
        hMOpView.setAlpha(f10.floatValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$17(HMCloudMenuActivity hMCloudMenuActivity, Boolean bool) {
        hMCloudMenuActivity.refreshOpContainerVisible();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$18(HMCloudMenuActivity hMCloudMenuActivity, Boolean bool) {
        hMCloudMenuActivity.getBinding().f46693e.setVibrate(bool.booleanValue());
        hMCloudMenuActivity.getBinding().f46700l.setVibrate(bool.booleanValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$21(HMCloudMenuActivity hMCloudMenuActivity, List list) {
        HMOpView hMOpView = hMCloudMenuActivity.getBinding().f46700l;
        if (GameArchitectureType.X86 == HmcpManager.getInstance().getGameArchitectureType()) {
            final HMOpConfig value = hMCloudMenuActivity.getViewModel().getCurrentOpConfig().getValue();
            hMOpView.setOnInsetsChanged(new Function4() { // from class: com.join.mgps.activity.z4
                @Override // kotlin.jvm.functions.Function4
                public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                    return HMCloudMenuActivity.initObserver$lambda$21$lambda$20$lambda$19(value, ((Float) obj).floatValue(), (Integer) obj2, (Integer) obj3, (List) obj4);
                }
            });
            Float density = value != null ? value.getDensity() : null;
            Integer layoutWidth = value != null ? value.getLayoutWidth() : null;
            Integer layoutHeight = value != null ? value.getLayoutHeight() : null;
            Intrinsics.checkNotNull(list);
            hMOpView.loadKeys(density, layoutWidth, layoutHeight, list);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initObserver$lambda$21$lambda$20$lambda$19(HMOpConfig hMOpConfig, float f10, Integer num, Integer num2, List keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        if (hMOpConfig != null) {
            hMOpConfig.setDensity(Float.valueOf(f10));
        }
        if (hMOpConfig != null) {
            hMOpConfig.setLayoutWidth(num);
        }
        if (hMOpConfig != null) {
            hMOpConfig.setLayoutHeight(num2);
        }
        return Unit.INSTANCE;
    }

    private final void refreshOpContainerVisible() {
        w90 binding = getBinding();
        Boolean value = getViewModel().getKeyHide().getValue();
        binding.f46700l.setVisibility(((value != null ? value.booleanValue() : false) || getViewModel().useInputDevice()) ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setBtnKeyboard(boolean show) {
        ViewParent parent = getBinding().f46691c.getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        ((ViewGroup) parent).setVisibility(show ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setBtnSettings(boolean show) {
        ViewParent parent = getBinding().f46692d.getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        ((ViewGroup) parent).setVisibility(show ? 0 : 8);
    }

    public static /* synthetic */ void setContent$default(HMCloudMenuActivity hMCloudMenuActivity, int i10, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setContent");
        }
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        hMCloudMenuActivity.setContent(i10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HMMenuFragment setContent$lambda$35() {
        return new HMMenuFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HMOpEditFragment setContent$lambda$37() {
        return new HMOpEditFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setContentView$lambda$1(HMCloudMenuActivity hMCloudMenuActivity, View view, MotionEvent motionEvent) {
        if (hMCloudMenuActivity.getViewModel().isKeyboardEnable() && hMCloudMenuActivity.getBinding().f46693e.getVisibility() == 0 && motionEvent.getAction() == 0) {
            HMKeyboardView keyboard = hMCloudMenuActivity.getBinding().f46693e;
            Intrinsics.checkNotNullExpressionValue(keyboard, "keyboard");
            Intrinsics.checkNotNull(motionEvent);
            if (!ViewKt.isTouchInView(keyboard, motionEvent)) {
                hMCloudMenuActivity.hideKeyboard();
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setContentView$lambda$5$lambda$2(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setContentView$lambda$5$lambda$3(HMCloudMenuActivity hMCloudMenuActivity, String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        hMCloudMenuActivity.getViewModel().performClick(key, z10);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setContentView$lambda$7$lambda$6(HMCloudMenuActivity hMCloudMenuActivity, HMOpView hMOpView) {
        hMCloudMenuActivity.getViewModel().setOpLayoutSize(hMOpView.getMeasuredWidth(), hMOpView.getMeasuredHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setContentView$lambda$9(HMCloudMenuActivity hMCloudMenuActivity, View view) {
        hMCloudMenuActivity.getBinding().f46692d.requestDisallowInterceptTouchEvent(true);
        hMCloudMenuActivity.showMenu();
        com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(hMCloudMenuActivity);
        Event event = Event.commonClick;
        Ext ext = new Ext();
        ext.setTypeCode("btnSet");
        ext.setChatId("cloudGame");
        ext.setResourceId(hMCloudMenuActivity.getViewModel().getGameId());
        if (hMCloudMenuActivity.getViewModel().isCloudVip()) {
            ext.setResultCode("cloudGameVip");
        }
        Unit unit = Unit.INSTANCE;
        tVarL.R1(event, ext);
    }

    private final void setupWindowAttr() {
        Window window = getWindow();
        if (window != null) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 29) {
                window.setStatusBarContrastEnforced(false);
                window.setNavigationBarContrastEnforced(false);
            }
            if (i10 >= 30) {
                WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(window, window.getDecorView());
                Intrinsics.checkNotNullExpressionValue(insetsController, "getInsetsController(...)");
                insetsController.hide(WindowInsetsCompat.Type.systemBars());
                insetsController.setSystemBarsBehavior(2);
                window.setDecorFitsSystemWindows(false);
            } else {
                window.getDecorView().setSystemUiVisibility(5378);
            }
            if (i10 >= 28) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                window.setAttributes(attributes);
            }
        }
    }

    private final <T extends DialogFragment> T showDialogOnce(T current, String tag, Function0<? extends T> factory) {
        Fragment fragmentFindFragmentByTag = getSupportFragmentManager().findFragmentByTag(tag);
        T t10 = fragmentFindFragmentByTag instanceof DialogFragment ? (T) fragmentFindFragmentByTag : null;
        if (t10 != null) {
            return t10;
        }
        if (current == null || current.isAdded() || current.isRemoving()) {
            current = factory.invoke();
        }
        try {
            if (!current.isAdded()) {
                current.show(getSupportFragmentManager(), tag);
            }
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
        return current;
    }

    private final void showExitLoading() {
        if (this.closeLoadingDialog == null) {
            this.closeLoadingDialog = new HMLoadingDialog(this);
            Unit unit = Unit.INSTANCE;
        }
        HMLoadingDialog hMLoadingDialog = this.closeLoadingDialog;
        if (hMLoadingDialog != null) {
            hMLoadingDialog.show();
        }
        HMLoadingDialog hMLoadingDialog2 = this.closeLoadingDialog;
        if (hMLoadingDialog2 != null) {
            hMLoadingDialog2.setOnTimeUp(new Function0() { // from class: com.join.mgps.activity.e5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return HMCloudMenuActivity.showExitLoading$lambda$30(this.f57129b);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showExitLoading$lambda$30(HMCloudMenuActivity hMCloudMenuActivity) {
        hMCloudMenuActivity.onExit();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showGuide0$lambda$27$lambda$25(HMCloudMenuActivity hMCloudMenuActivity, Ref.ObjectRef<com.join.mgps.customview.guideview.d> objectRef) {
        HMCloudMainViewModel.guideNext$default(hMCloudMenuActivity.getViewModel(), false, 1, null);
        hMCloudMenuActivity.showMenu();
        com.join.mgps.customview.guideview.d dVar = objectRef.element;
        if (dVar != null) {
            dVar.e();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void showGuide0$lambda$27$lambda$26(Ref.ObjectRef objectRef, HMCloudMenuActivity hMCloudMenuActivity) {
        ((com.join.mgps.customview.guideview.d) objectRef.element).m(hMCloudMenuActivity);
        ExtBean extBeanBuildScene = new ExtBean().setChatId("cloudGame").setTypeCode("popup").setScenesCode("下一步").buildScene();
        Intrinsics.checkNotNullExpressionValue(extBeanBuildScene, "buildScene(...)");
        com.papa.sim.statistic.t.l(hMCloudMenuActivity).R1(Event.commonExp, extBeanBuildScene.toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HMKeyGuideFragment showGuide2$lambda$43() {
        return new HMKeyGuideFragment();
    }

    public static /* synthetic */ PopupWindow showPopup$default(HMCloudMenuActivity hMCloudMenuActivity, View view, Long l10, Integer num, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showPopup");
        }
        if ((i10 & 2) != 0) {
            l10 = 10000L;
        }
        if ((i10 & 4) != 0) {
            num = null;
        }
        return hMCloudMenuActivity.showPopup(view, l10, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showPopup$lambda$40$lambda$39(AnimationSet animationSet, View view, PopupWindow popupWindow) {
        animationSet.setAnimationListener(new e(popupWindow));
        view.startAnimation(animationSet);
    }

    public final void checkGuide() {
        getViewModel().getGuideState().observe(this, new b(new Function1() { // from class: com.join.mgps.activity.x4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMCloudMenuActivity.checkGuide$lambda$23(this.f58206b, (GuideState) obj);
            }
        }));
        getViewModel().getInputDeviceSize().observe(this, new b(new Function1() { // from class: com.join.mgps.activity.y4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMCloudMenuActivity.checkGuide$lambda$24(this.f58243b, (Integer) obj);
            }
        }));
        kotlinx.coroutines.j.f(ViewModelKt.getViewModelScope(getViewModel()), null, null, new AnonymousClass3(null), 3, null);
    }

    public final void closeEditOp() {
        setContent(1, false);
        w90 binding = getBinding();
        setBtnSettings(true);
        setBtnKeyboard(true);
        binding.f46696h.setVisibility(Intrinsics.areEqual(getViewModel().isLatencyOn().getValue(), Boolean.TRUE) ? 0 : 8);
        binding.f46700l.setVisibility(0);
    }

    public final void closeMenu() {
        setContent(0, false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchGenericMotionEvent(@Nullable MotionEvent ev) {
        return super.dispatchGenericMotionEvent(ev) | getViewModel().dispatchEvent(ev);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(@NotNull KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return super.dispatchKeyEvent(event) | getViewModel().dispatchEvent(event);
    }

    @NotNull
    public final w90 getBinding() {
        w90 w90Var = this.binding;
        if (w90Var != null) {
            return w90Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Nullable
    public final HMLoadingDialog getCloseLoadingDialog() {
        return this.closeLoadingDialog;
    }

    @Nullable
    public final HMKeyGuideFragment getKeyGuideFragment() {
        return this.keyGuideFragment;
    }

    @Nullable
    public final Toast getMCustomToast() {
        return this.mCustomToast;
    }

    @Nullable
    public final HMMenuFragment getMenuFragment() {
        return this.menuFragment;
    }

    @Nullable
    public final HMOpEditFragment getOpEditFragment() {
        return this.opEditFragment;
    }

    @Nullable
    public final HMMenuAction getPreVipAction() {
        return this.preVipAction;
    }

    @NotNull
    protected final HMCloudSignViewModel getSignViewModel() {
        HMCloudSignViewModel hMCloudSignViewModel = this.signViewModel;
        if (hMCloudSignViewModel != null) {
            return hMCloudSignViewModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("signViewModel");
        return null;
    }

    @NotNull
    protected final HMCloudMainViewModel getViewModel() {
        HMCloudMainViewModel hMCloudMainViewModel = this.viewModel;
        if (hMCloudMainViewModel != null) {
            return hMCloudMainViewModel;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
        return null;
    }

    public void goCharge(@Nullable String from) {
    }

    public final void hideKeyboard() {
        getBinding().f46693e.post(new Runnable() { // from class: com.join.mgps.activity.l5
            @Override // java.lang.Runnable
            public final void run() {
                HMCloudMenuActivity.hideKeyboard$lambda$33(this.f57400b);
            }
        });
    }

    public void initObserver() {
        getViewModel().getToast().observe(this, new b(new Function1() { // from class: com.join.mgps.activity.a5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMCloudMenuActivity.initObserver$lambda$10(this.f56459b, (String) obj);
            }
        }));
        getViewModel().getBrightness().observe(this, new b(new Function1() { // from class: com.join.mgps.activity.b5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMCloudMenuActivity.initObserver$lambda$11(this.f56868b, (Integer) obj);
            }
        }));
        getViewModel().getScreenBrightness(this);
        getViewModel().isLatencyOn().observe(this, new b(new Function1() { // from class: com.join.mgps.activity.c5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMCloudMenuActivity.initObserver$lambda$12(this.f56880b, (Boolean) obj);
            }
        }));
        getViewModel().getMenuAction().observe(this, new b(new Function1() { // from class: com.join.mgps.activity.d5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMCloudMenuActivity.initObserver$lambda$13(this.f57078b, (HMMenuAction) obj);
            }
        }));
        getViewModel().loadGameLocalConfig();
        getViewModel().isHmCloudPc().observe(this, new b(new Function1() { // from class: com.join.mgps.activity.f5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMCloudMenuActivity.initObserver$lambda$14(this.f57211b, (Boolean) obj);
            }
        }));
        getViewModel().getKeyboardInput().observe(this, new b(new Function1() { // from class: com.join.mgps.activity.g5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMCloudMenuActivity.initObserver$lambda$15(this.f57225b, (Boolean) obj);
            }
        }));
        getViewModel().getKeyAlpha().observe(this, new b(new Function1() { // from class: com.join.mgps.activity.h5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMCloudMenuActivity.initObserver$lambda$16(this.f57261b, (Float) obj);
            }
        }));
        getViewModel().getKeyHide().observe(this, new b(new Function1() { // from class: com.join.mgps.activity.i5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMCloudMenuActivity.initObserver$lambda$17(this.f57337b, (Boolean) obj);
            }
        }));
        getViewModel().getKeyVibrate().observe(this, new b(new Function1() { // from class: com.join.mgps.activity.j5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMCloudMenuActivity.initObserver$lambda$18(this.f57349b, (Boolean) obj);
            }
        }));
        getViewModel().getCurrentKeys().observe(this, new b(new Function1() { // from class: com.join.mgps.activity.k5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMCloudMenuActivity.initObserver$lambda$21(this.f57382b, (List) obj);
            }
        }));
        getViewModel().loadLastOpConfig();
    }

    public void locateUploadArchive() {
    }

    @Override // com.join.mgps.activity.Hilt_HMCloudMenuActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setupWindowAttr();
        setViewModel((HMCloudMainViewModel) new ViewModelProvider(this).get(HMCloudMainViewModel.class));
        setSignViewModel((HMCloudSignViewModel) new ViewModelProvider(this).get(HMCloudSignViewModel.class));
    }

    protected void onExit() {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        getViewModel().requestPlaytimeSummary();
        getViewModel().startInputMonitor();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        getViewModel().saveLastOpConfig();
        getViewModel().saveLastCommonConfig();
        getViewModel().stopInputMonitor();
    }

    public void onSwitchResolution(@NotNull String id2) {
        Intrinsics.checkNotNullParameter(id2, "id");
    }

    protected final void onVipStateChanged() {
        HMMenuAction hMMenuAction = this.preVipAction;
        if (hMMenuAction == null) {
            return;
        }
        if (!getViewModel().isCloudVip()) {
            this.preVipAction = null;
            return;
        }
        if (hMMenuAction instanceof HMMenuAction.ChargeCloudVip) {
            this.preVipAction = null;
            HMMenuAction.ChargeCloudVip chargeCloudVip = (HMMenuAction.ChargeCloudVip) hMMenuAction;
            String chatId = chargeCloudVip.getChatId();
            if (chatId != null && StringsKt__StringsJVMKt.startsWith$default(chatId, "video_", false, 2, null)) {
                getViewModel().onSwitchResolution(chargeCloudVip.getId(), chargeCloudVip.getName());
            }
        }
    }

    public final void refreshKeyboardVisible() {
        if (getViewModel().isKeyboardEnable()) {
            setBtnKeyboard(true);
        } else {
            setBtnKeyboard(false);
        }
    }

    protected void refreshResolutionInfo() {
    }

    public void relaunchGame() {
    }

    protected final void resizeOpContainer(int w10, int h10) {
        HMOpView hMOpView = getBinding().f46700l;
        hMOpView.layout(0, 0, w10, h10);
        hMOpView.requestLayout();
        hMOpView.invalidate();
        hMOpView.measure(View.MeasureSpec.makeMeasureSpec(w10, 1073741824), View.MeasureSpec.makeMeasureSpec(h10, 1073741824));
    }

    public final void setBinding(@NotNull w90 w90Var) {
        Intrinsics.checkNotNullParameter(w90Var, "<set-?>");
        this.binding = w90Var;
    }

    public final void setCloseLoadingDialog(@Nullable HMLoadingDialog hMLoadingDialog) {
        this.closeLoadingDialog = hMLoadingDialog;
    }

    public final void setContent(int id2, boolean show) {
        int i10 = 0;
        for (Object obj : CollectionsKt__CollectionsKt.listOf((Object[]) new HMBaseFragmentDialog[]{this.menuFragment, this.opEditFragment})) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            HMBaseFragmentDialog hMBaseFragmentDialog = (HMBaseFragmentDialog) obj;
            if ((i10 != 0 || !show) && hMBaseFragmentDialog != null) {
                hMBaseFragmentDialog.dismiss();
            }
            i10 = i11;
        }
        if (id2 == 0) {
            if (show) {
                HMMenuFragment hMMenuFragment = this.menuFragment;
                String simpleName = HMMenuFragment.class.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
                this.menuFragment = (HMMenuFragment) showDialogOnce(hMMenuFragment, simpleName, new Function0() { // from class: com.join.mgps.activity.v4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return HMCloudMenuActivity.setContent$lambda$35();
                    }
                });
            } else {
                HMMenuFragment hMMenuFragment2 = this.menuFragment;
                if (hMMenuFragment2 != null) {
                    hMMenuFragment2.dismissAllowingStateLoss();
                }
            }
        }
        if (id2 == 1) {
            if (show) {
                HMOpEditFragment hMOpEditFragment = this.opEditFragment;
                String simpleName2 = HMOpEditFragment.class.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName2, "getSimpleName(...)");
                this.opEditFragment = (HMOpEditFragment) showDialogOnce(hMOpEditFragment, simpleName2, new Function0() { // from class: com.join.mgps.activity.w4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return HMCloudMenuActivity.setContent$lambda$37();
                    }
                });
                return;
            }
            HMOpEditFragment hMOpEditFragment2 = this.opEditFragment;
            if (hMOpEditFragment2 != null) {
                hMOpEditFragment2.dismissAllowingStateLoss();
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        setBinding(w90.bind(findViewById(R.id.menu_layer)));
        getBinding().f46691c.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.n5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f57779b.showKeyboard();
            }
        });
        getBinding().f46694f.setOnTouchListener(new View.OnTouchListener() { // from class: com.join.mgps.activity.o5
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return HMCloudMenuActivity.setContentView$lambda$1(this.f57810b, view, motionEvent);
            }
        });
        final HMKeyboardView hMKeyboardView = getBinding().f46693e;
        hMKeyboardView.setFunctionLayerVisibility(8);
        hMKeyboardView.setOnTouchListener(new View.OnTouchListener() { // from class: com.join.mgps.activity.p5
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return HMCloudMenuActivity.setContentView$lambda$5$lambda$2(view, motionEvent);
            }
        });
        hMKeyboardView.setOnKeyClick(new Function2() { // from class: com.join.mgps.activity.q5
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return HMCloudMenuActivity.setContentView$lambda$5$lambda$3(this.f57908b, (String) obj, ((Boolean) obj2).booleanValue());
            }
        });
        hMKeyboardView.post(new Runnable() { // from class: com.join.mgps.activity.r5
            @Override // java.lang.Runnable
            public final void run() {
                hMKeyboardView.setVisibility(8);
            }
        });
        final HMOpView hMOpView = getBinding().f46700l;
        hMOpView.setOnEventListener(new c());
        hMOpView.post(new Runnable() { // from class: com.join.mgps.activity.s5
            @Override // java.lang.Runnable
            public final void run() {
                HMCloudMenuActivity.setContentView$lambda$7$lambda$6(this.f58094b, hMOpView);
            }
        });
        getBinding().f46692d.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.t5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HMCloudMenuActivity.setContentView$lambda$9(this.f58110b, view);
            }
        });
    }

    public final void setKeyGuideFragment(@Nullable HMKeyGuideFragment hMKeyGuideFragment) {
        this.keyGuideFragment = hMKeyGuideFragment;
    }

    public void setLatency(int latency, @NotNull String loss) {
        Intrinsics.checkNotNullParameter(loss, "loss");
        getBinding().f46695g.setText(latency + "ms");
        getBinding().f46697i.setText(loss + '%');
        int color = Color.parseColor("#ff5FFF6F");
        int color2 = Color.parseColor("#ffFF6868");
        int color3 = Color.parseColor("#ffFFB14C");
        if (latency <= 50) {
            getBinding().f46695g.setTextColor(color);
        } else if (latency <= 150) {
            getBinding().f46695g.setTextColor(color3);
        } else {
            getBinding().f46695g.setTextColor(color2);
        }
        float f10 = Float.parseFloat(loss.length() == 0 ? "0.00" : StringsKt__StringsKt.trim((CharSequence) loss).toString());
        if (f10 <= 1.0f) {
            getBinding().f46697i.setTextColor(color);
        } else if (f10 <= 5.0f) {
            getBinding().f46697i.setTextColor(color3);
        } else {
            getBinding().f46697i.setTextColor(color2);
        }
    }

    public final void setMCustomToast(@Nullable Toast toast) {
        this.mCustomToast = toast;
    }

    public final void setMenuFragment(@Nullable HMMenuFragment hMMenuFragment) {
        this.menuFragment = hMMenuFragment;
    }

    public final void setOpEditFragment(@Nullable HMOpEditFragment hMOpEditFragment) {
        this.opEditFragment = hMOpEditFragment;
    }

    public final void setPreVipAction(@Nullable HMMenuAction hMMenuAction) {
        this.preVipAction = hMMenuAction;
    }

    protected final void setSignViewModel(@NotNull HMCloudSignViewModel hMCloudSignViewModel) {
        Intrinsics.checkNotNullParameter(hMCloudSignViewModel, "<set-?>");
        this.signViewModel = hMCloudSignViewModel;
    }

    protected final void setViewModel(@NotNull HMCloudMainViewModel hMCloudMainViewModel) {
        Intrinsics.checkNotNullParameter(hMCloudMainViewModel, "<set-?>");
        this.viewModel = hMCloudMainViewModel;
    }

    public final void setWindowBrightness(int brightness) {
        float f10 = brightness / 255.0f;
        float fCoerceIn = RangesKt___RangesKt.coerceIn(FloatKt.round$default(f10, 0, 1, null), 0.0f, 1.0f);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        if (attributes.screenBrightness == fCoerceIn) {
            return;
        }
        attributes.screenBrightness = f10;
        getWindow().setAttributes(attributes);
    }

    public final void showEditOp() {
        setContent$default(this, 1, false, 2, null);
        w90 binding = getBinding();
        setBtnSettings(false);
        setBtnKeyboard(false);
        binding.f46696h.setVisibility(8);
        binding.f46700l.setVisibility(8);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [T, com.join.mgps.customview.guideview.d] */
    public final void showGuide0() {
        w90 binding = getBinding();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Function0 function0 = new Function0() { // from class: com.join.mgps.activity.u5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HMCloudMenuActivity.showGuide0$lambda$27$lambda$25(this.f58156b, objectRef);
            }
        };
        GuideBuilder guideBuilder = new GuideBuilder();
        guideBuilder.t(binding.f46692d).c(150).d(false).h(20).j(10);
        guideBuilder.a(new d(function0));
        ?? B = guideBuilder.b();
        objectRef.element = B;
        B.l(true);
        binding.f46692d.post(new Runnable() { // from class: com.join.mgps.activity.u4
            @Override // java.lang.Runnable
            public final void run() {
                HMCloudMenuActivity.showGuide0$lambda$27$lambda$26(objectRef, this);
            }
        });
    }

    public final void showGuide2() {
        HMKeyGuideFragment hMKeyGuideFragment = this.keyGuideFragment;
        String simpleName = HMKeyGuideFragment.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        this.keyGuideFragment = (HMKeyGuideFragment) showDialogOnce(hMKeyGuideFragment, simpleName, new Function0() { // from class: com.join.mgps.activity.t4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HMCloudMenuActivity.showGuide2$lambda$43();
            }
        });
    }

    public final void showKeyboard() {
        setBtnSettings(false);
        setBtnKeyboard(false);
        getBinding().f46696h.setVisibility(8);
        getBinding().f46693e.setVisibility(0);
        AnimationSet animationSet = new AnimationSet(true);
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 1.0f, 1, 0.0f);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(alphaAnimation);
        animationSet.setDuration(300L);
        getBinding().f46693e.startAnimation(animationSet);
    }

    public void showMenu() {
        setContent(0, true);
    }

    public final void showPeripheralToast() {
        if (this.mCustomToast == null) {
            this.mCustomToast = new Toast(this);
            Unit unit = Unit.INSTANCE;
        }
        ka0 ka0VarInflate = ka0.inflate(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(ka0VarInflate, "inflate(...)");
        LinearLayout root = ka0VarInflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        Toast toast = this.mCustomToast;
        if (toast != null) {
            toast.setView(root);
            toast.setDuration(0);
            toast.setGravity(81, 0, 100);
            toast.show();
        }
    }

    @Nullable
    protected PopupWindow showPopup(@NotNull final View view, @Nullable Long duration, @Nullable Integer offsetY) {
        Intrinsics.checkNotNullParameter(view, "view");
        int iIntValue = offsetY != null ? offsetY.intValue() : com.join.mgps.ad.q.a(this, 37);
        final PopupWindow popupWindow = new PopupWindow(view, -2, -2, false);
        popupWindow.setOutsideTouchable(false);
        popupWindow.setClippingEnabled(false);
        AnimationSet animationSet = new AnimationSet(true);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 20.0f, 0.0f);
        animationSet.addAnimation(alphaAnimation);
        animationSet.addAnimation(translateAnimation);
        animationSet.setDuration(300L);
        animationSet.setFillAfter(true);
        final AnimationSet animationSet2 = new AnimationSet(true);
        AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
        TranslateAnimation translateAnimation2 = new TranslateAnimation(0.0f, 0.0f, 0.0f, 20.0f);
        animationSet2.addAnimation(alphaAnimation2);
        animationSet2.addAnimation(translateAnimation2);
        animationSet2.setDuration(200L);
        animationSet2.setFillAfter(true);
        View viewFindViewById = getWindow().getDecorView().findViewById(android.R.id.content);
        if (!isFinishing() && !isDestroyed()) {
            popupWindow.showAtLocation(viewFindViewById, 49, 0, iIntValue);
            view.startAnimation(animationSet);
            if (duration != null) {
                view.postDelayed(new Runnable() { // from class: com.join.mgps.activity.m5
                    @Override // java.lang.Runnable
                    public final void run() {
                        HMCloudMenuActivity.showPopup$lambda$40$lambda$39(animationSet2, view, popupWindow);
                    }
                }, duration.longValue());
            }
        }
        return popupWindow;
    }
}
