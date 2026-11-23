package com.join.kotlin.zone;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.layoutmanager.QuickGridLayoutManager;
import com.join.android.app.component.video.h;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.b0;
import com.join.kotlin.base.activity.BaseVmDbActivity;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.notice.ClickProxy;
import com.join.kotlin.zone.adapter.CommonZoneAdapter;
import com.join.kotlin.zone.model.bean.GameZoneDataBean;
import com.join.kotlin.zone.model.bean.ZoneComponentsBean;
import com.join.kotlin.zone.model.bean.ZoneMultiEntry;
import com.join.kotlin.zone.viewmodel.CommonZoneViewModel;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.t2;
import com.join.mgps.dto.BTActivityBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.event.r;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.papa91.arc.ext.ToastManager;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.j;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.o1;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0010\u0010$\u001a\u00020!2\u0006\u0010%\u001a\u00020&H\u0016J\b\u0010'\u001a\u00020!H\u0014J\b\u0010(\u001a\u00020!H\u0014J\u0006\u0010)\u001a\u00020!J\b\u0010*\u001a\u00020!H\u0014J\b\u0010+\u001a\u00020!H\u0016J\b\u0010,\u001a\u00020!H\u0016J\u0010\u0010-\u001a\u00020!2\u0006\u0010.\u001a\u00020/H\u0016J\b\u00100\u001a\u00020!H\u0016J\b\u00101\u001a\u00020!H\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001b\u0010\u000e\u001a\u00020\u000f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u00062"}, d2 = {"Lcom/join/kotlin/zone/CommonZoneActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbActivity;", "Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityCommonZoneBinding;", "Lcom/join/kotlin/ui/notice/ClickProxy;", "Lcom/join/kotlin/domain/common/LoadBindClickProxy;", "<init>", "()V", "videoHelper", "Lcom/join/android/app/component/video/RvListVideoHelper;", "getVideoHelper", "()Lcom/join/android/app/component/video/RvListVideoHelper;", "setVideoHelper", "(Lcom/join/android/app/component/video/RvListVideoHelper;)V", "commonZoneAdapter", "Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;", "getCommonZoneAdapter", "()Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;", "commonZoneAdapter$delegate", "Lkotlin/Lazy;", "zoneId", "", "getZoneId", "()Ljava/lang/String;", "setZoneId", "(Ljava/lang/String;)V", "extBean", "Lcom/join/mgps/dto/ExtBean;", "getExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "onDownloadStatusChanged", NotificationCompat.CATEGORY_EVENT, "Lcom/join/mgps/event/DownloadTaskEvent;", "onPause", "onResume", "autoPlay", "onDestroy", "onClickReload", "onClickSetNetWork", "onClickItem", "data", "Lcom/join/mgps/dto/BTActivityBean;", "onClickBack", "createObserver", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCommonZoneActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonZoneActivity.kt\ncom/join/kotlin/zone/CommonZoneActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,299:1\n1869#2:300\n1869#2,2:301\n1870#2:303\n*S KotlinDebug\n*F\n+ 1 CommonZoneActivity.kt\ncom/join/kotlin/zone/CommonZoneActivity\n*L\n257#1:300\n267#1:301,2\n257#1:303\n*E\n"})
public final class CommonZoneActivity extends BaseVmDbActivity<CommonZoneViewModel, b0> implements ClickProxy, LoadBindClickProxy {

    @Nullable
    private ExtBean extBean;

    @Nullable
    private h videoHelper;

    /* JADX INFO: renamed from: commonZoneAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy commonZoneAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.zone.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CommonZoneActivity.commonZoneAdapter_delegate$lambda$0(this.f49363b);
        }
    });

    @Nullable
    private String zoneId = "461506587";

    /* JADX INFO: renamed from: com.join.kotlin.zone.CommonZoneActivity$autoPlay$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.zone.CommonZoneActivity$autoPlay$1", f = "CommonZoneActivity.kt", i = {}, l = {187}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        int label;

        /* JADX INFO: renamed from: com.join.kotlin.zone.CommonZoneActivity$autoPlay$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "com.join.kotlin.zone.CommonZoneActivity$autoPlay$1$1", f = "CommonZoneActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C06611 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ CommonZoneActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C06611(CommonZoneActivity commonZoneActivity, Continuation<? super C06611> continuation) {
                super(2, continuation);
                this.this$0 = commonZoneActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C06611(this.this$0, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                h videoHelper = this.this$0.getVideoHelper();
                if (videoHelper != null) {
                    videoHelper.i(1);
                }
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
                return ((C06611) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }
        }

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CommonZoneActivity.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.b(500L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            j.f(o1.f93610b, z0.e(), null, new C06611(CommonZoneActivity.this, null), 2, null);
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CommonZoneAdapter commonZoneAdapter_delegate$lambda$0(CommonZoneActivity commonZoneActivity) {
        return new CommonZoneAdapter(commonZoneActivity.videoHelper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$18$lambda$17(final CommonZoneViewModel commonZoneViewModel, final CommonZoneActivity commonZoneActivity, ResultState resultState) {
        if (resultState == null) {
            commonZoneViewModel.getLoadBindData().setValue(new LoadBindindData(3));
        } else {
            BaseViewModelExtKt.parseState$default(commonZoneActivity, resultState, new Function1() { // from class: com.join.kotlin.zone.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CommonZoneActivity.createObserver$lambda$18$lambda$17$lambda$15(commonZoneViewModel, commonZoneActivity, (GameZoneDataBean) obj);
                }
            }, new Function1() { // from class: com.join.kotlin.zone.e
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CommonZoneActivity.createObserver$lambda$18$lambda$17$lambda$16(commonZoneViewModel, (AppException) obj);
                }
            }, (Function0) null, 8, (Object) null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit createObserver$lambda$18$lambda$17$lambda$15(CommonZoneViewModel commonZoneViewModel, CommonZoneActivity commonZoneActivity, GameZoneDataBean gameZoneDataBean) {
        ArrayList arrayList = new ArrayList();
        if (gameZoneDataBean == null) {
            commonZoneViewModel.getLoadBindData().setValue(new LoadBindindData(3));
        } else {
            commonZoneViewModel.getLoadBindData().setValue(new LoadBindindData(1));
        }
        if (gameZoneDataBean != null) {
            ((CommonZoneViewModel) commonZoneActivity.getMViewModel()).getTitle().setValue(gameZoneDataBean.getTitle());
            CommonGameInfoBean headAdInfo = gameZoneDataBean.getHeadAdInfo();
            if (headAdInfo != null) {
                gameZoneDataBean.getHeadAdInfo();
                headAdInfo.set_from_type(159);
                headAdInfo.set_from(159);
                arrayList.add(new ZoneMultiEntry(1, null, gameZoneDataBean.getHeadAdInfo(), 2, null));
            }
            if (gameZoneDataBean.getRecGameInfo() != null) {
                CommonGameInfoBean recGameInfo = gameZoneDataBean.getRecGameInfo();
                if (recGameInfo != null) {
                    recGameInfo.set_from_type(159);
                    recGameInfo.set_from(159);
                }
                CommonGameInfoBean recGameInfo2 = gameZoneDataBean.getRecGameInfo();
                arrayList.add(new ZoneMultiEntry(t2.i(recGameInfo2 != null ? recGameInfo2.getV_url() : null) ? 6 : 3, null, gameZoneDataBean.getRecGameInfo(), 2, null));
            }
            List<ZoneComponentsBean> components = gameZoneDataBean.getComponents();
            if (components != null) {
                for (ZoneComponentsBean zoneComponentsBean : components) {
                    String title = zoneComponentsBean.getTitle();
                    boolean z10 = false;
                    if (title != null) {
                        if (title.length() > 0) {
                            z10 = true;
                        }
                    }
                    if (z10) {
                        arrayList.add(new ZoneMultiEntry(2, null, zoneComponentsBean.getTitle(), 2, null));
                    }
                    if (zoneComponentsBean.getGameInfoList() != null) {
                        for (CommonGameInfoBean commonGameInfoBean : zoneComponentsBean.getGameInfoList()) {
                            if (commonGameInfoBean != null) {
                                commonGameInfoBean.set_from_type(159);
                                commonGameInfoBean.set_from(159);
                            }
                            arrayList.add(new ZoneMultiEntry(commonGameInfoBean.getTpl_type() == 1 ? 4 : 5, null, commonGameInfoBean, 2, null));
                        }
                    }
                }
            }
            ((CommonZoneViewModel) commonZoneActivity.getMViewModel()).setShowData(arrayList);
            commonZoneActivity.getCommonZoneAdapter().submitList(((CommonZoneViewModel) commonZoneActivity.getMViewModel()).getShowData());
            commonZoneActivity.getMDatabind().f36126d.loadMoreComplete();
            commonZoneActivity.autoPlay();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$18$lambda$17$lambda$16(CommonZoneViewModel commonZoneViewModel, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        ToastManager.show(it2.getErrorMsg());
        commonZoneViewModel.getLoadBindData().setValue(new LoadBindindData(3));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$4$lambda$3(CommonZoneActivity commonZoneActivity, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<unused var>");
        ZoneMultiEntry zoneMultiEntry = (ZoneMultiEntry) adapter.getItem(i10);
        Object data = zoneMultiEntry != null ? zoneMultiEntry.getData() : null;
        if (data instanceof CommonGameInfoBean) {
            boolean z10 = false;
            if (zoneMultiEntry != null && zoneMultiEntry.getViewType() == 1) {
                z10 = true;
            }
            if (z10) {
                t.l(commonZoneActivity).R1(Event.clickAD, new Ext().setFrom("1"));
            }
            IntentUtil.getInstance().intentActivity(commonZoneActivity, ((CommonGameInfoBean) data).getIntentDataBean());
        }
    }

    public final void autoPlay() {
        j.f(o1.f93610b, z0.c(), null, new AnonymousClass1(null), 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void createObserver() {
        final CommonZoneViewModel commonZoneViewModel = (CommonZoneViewModel) getMViewModel();
        commonZoneViewModel.getZoneData().observe(this, new CommonZoneActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.zone.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CommonZoneActivity.createObserver$lambda$18$lambda$17(commonZoneViewModel, this, (ResultState) obj);
            }
        }));
    }

    @NotNull
    public final CommonZoneAdapter getCommonZoneAdapter() {
        return (CommonZoneAdapter) this.commonZoneAdapter.getValue();
    }

    @Nullable
    public final ExtBean getExtBean() {
        return this.extBean;
    }

    @Nullable
    public final h getVideoHelper() {
        return this.videoHelper;
    }

    @Nullable
    public final String getZoneId() {
        return this.zoneId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        Intent intent = getIntent();
        if (intent != null) {
            Serializable serializableExtra = intent.getSerializableExtra("extBean");
            Intrinsics.checkNotNull(serializableExtra, "null cannot be cast to non-null type com.join.mgps.dto.ExtBean");
            ExtBean extBean = (ExtBean) serializableExtra;
            this.extBean = extBean;
            if (extBean != null) {
                t tVarL = t.l(this);
                Event event = Event.visitPCPageZone;
                Ext ext = new Ext();
                ExtBean extBean2 = this.extBean;
                Intrinsics.checkNotNull(extBean2);
                tVarL.R1(event, ext.setFrom(extBean2.getFrom()));
            }
            this.zoneId = intent.getStringExtra("zoneId");
        }
        if (t2.h(this.zoneId)) {
            finish();
            ToastManager.show("数据异常[zoneId==null]，请重试");
        } else {
            CommonZoneViewModel commonZoneViewModel = (CommonZoneViewModel) getMViewModel();
            String str = this.zoneId;
            Intrinsics.checkNotNull(str);
            commonZoneViewModel.getGameZone(str);
        }
        getMDatabind().B((CommonZoneViewModel) getMViewModel());
        getMDatabind().A(this);
        getMDatabind().z(this);
        this.videoHelper = new h(getMDatabind().f36126d, "CommonZoneActivityVideoHelper");
        XQuickRecyclerView xrvList = getMDatabind().f36126d;
        Intrinsics.checkNotNullExpressionValue(xrvList, "xrvList");
        final XQuickRecyclerView xQuickRecyclerViewInit$default = CustomViewExtKt.init$default(xrvList, (RecyclerView.LayoutManager) new QuickGridLayoutManager(this, 2), (RecyclerView.Adapter) getCommonZoneAdapter(), false, 4, (Object) null);
        xQuickRecyclerViewInit$default.setPullRefreshEnabled(false);
        xQuickRecyclerViewInit$default.setLoadingMoreEnabled(false);
        xQuickRecyclerViewInit$default.addItemDecoration(new com.join.mgps.base.decoration.a() { // from class: com.join.kotlin.zone.CommonZoneActivity$initView$2$1
            @Override // com.join.mgps.base.decoration.a
            public com.join.mgps.base.decoration.a.b getItemOffsets(int i10) {
                com.join.mgps.base.decoration.a.C0702a c0702a;
                CommonZoneAdapter commonZoneAdapter = this.this$0.getCommonZoneAdapter();
                XQuickRecyclerView xQuickRecyclerView = xQuickRecyclerViewInit$default;
                int itemViewType = commonZoneAdapter.getItemViewType(i10);
                if (itemViewType == 1 || itemViewType == 2 || itemViewType == 3 || itemViewType == 4 || itemViewType == 6) {
                    c0702a = new com.join.mgps.base.decoration.a.C0702a(2);
                    c0702a.f64111c = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp20);
                    c0702a.f64112d = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp20);
                } else {
                    c0702a = new com.join.mgps.base.decoration.a.C0702a(1);
                    if (isLeft(i10)) {
                        c0702a.f64111c = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp20);
                        c0702a.f64112d = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp10);
                    } else if (isRight(i10, 1)) {
                        c0702a.f64111c = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp10);
                        c0702a.f64112d = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp20);
                    } else {
                        c0702a.f64111c = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp10);
                        c0702a.f64112d = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp10);
                    }
                }
                c0702a.f64108h = 0;
                if (i10 == 0) {
                    c0702a.f64113e = (int) xQuickRecyclerViewInit$default.getResources().getDimension(R.dimen.wdp20);
                } else {
                    c0702a.f64113e = (int) xQuickRecyclerViewInit$default.getResources().getDimension(R.dimen.wdp12);
                }
                c0702a.f64114f = (int) xQuickRecyclerViewInit$default.getResources().getDimension(R.dimen.wdp12);
                return c0702a;
            }
        });
        getCommonZoneAdapter().setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.kotlin.zone.a
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                CommonZoneActivity.initView$lambda$4$lambda$3(this.f49362a, baseQuickAdapter, view, i10);
            }
        });
        getMDatabind().f36126d.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.zone.CommonZoneActivity.initView.4
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                h videoHelper;
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                if (newState != 0 || (videoHelper = CommonZoneActivity.this.getVideoHelper()) == null) {
                    return;
                }
                videoHelper.i(1);
            }
        });
    }

    @Override // com.join.kotlin.ui.notice.ClickProxy
    public void onClickBack() {
        finish();
    }

    @Override // com.join.kotlin.ui.notice.ClickProxy
    public void onClickItem(@NotNull BTActivityBean data) {
        Intrinsics.checkNotNullParameter(data, "data");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickReload() {
        if (this.zoneId != null) {
            CommonZoneViewModel commonZoneViewModel = (CommonZoneViewModel) getMViewModel();
            String str = this.zoneId;
            Intrinsics.checkNotNull(str);
            commonZoneViewModel.getGameZone(str);
        }
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickSetNetWork() {
        UtilsMy.N3(this);
    }

    @Override // com.join.kotlin.base.activity.BaseDownloadActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.x();
        }
        super.onDestroy();
    }

    @Override // com.join.kotlin.base.activity.BaseDownloadActivity
    public void onDownloadStatusChanged(@NotNull r event) {
        Intrinsics.checkNotNullParameter(event, "event");
        super.onDownloadStatusChanged(event);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.y();
        }
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.E();
        }
        super.onResume();
        UtilsMy.N4(this);
    }

    public final void setExtBean(@Nullable ExtBean extBean) {
        this.extBean = extBean;
    }

    public final void setVideoHelper(@Nullable h hVar) {
        this.videoHelper = hVar;
    }

    public final void setZoneId(@Nullable String str) {
        this.zoneId = str;
    }
}
