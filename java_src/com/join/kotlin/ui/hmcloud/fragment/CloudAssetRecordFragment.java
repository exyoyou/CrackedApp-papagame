package com.join.kotlin.ui.hmcloud.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.zk;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.fragment.BaseVmDbFragment;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.ui.hmcloud.adapter.CloudAssetRecordAdapter;
import com.join.kotlin.ui.hmcloud.model.MultiCloudRecordBean;
import com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel;
import com.join.mgps.dto.ExtBean;
import com.papa.sim.statistic.Event;
import com.papa91.arc.ext.ToastManager;
import com.wufan.user.service.protobuf.MessageCloudGamingPropResponse;
import java.io.Serializable;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0018H\u0016J\u000e\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001eJ\b\u0010\u001f\u001a\u00020\u0018H\u0016J\b\u0010 \u001a\u00020\u0018H\u0016J\u000e\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020#R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012¨\u0006$"}, d2 = {"Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;", "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;", "Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/FragmentCloudAssetRecordBinding;", "<init>", "()V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "mAdapter", "Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;", "getMAdapter", "()Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;", "mAdapter$delegate", "Lkotlin/Lazy;", "parentExtBean", "Lcom/join/mgps/dto/ExtBean;", "getParentExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setParentExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "extBean", "getExtBean", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "createObserver", "onPageSelected", "position", "", "onDestroy", "lazyLoadData", "loadData", "refresh", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudAssetRecordFragment extends BaseVmDbFragment<CloudAssetRecordViewModel, zk> {
    private com.kingja.loadsir.core.b<Object> loadSir;

    @Nullable
    private ExtBean parentExtBean;

    /* JADX INFO: renamed from: mAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.hmcloud.fragment.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CloudAssetRecordFragment.mAdapter_delegate$lambda$0();
        }
    });

    @NotNull
    private final ExtBean extBean = new ExtBean();

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$8(CloudAssetRecordFragment cloudAssetRecordFragment, ListDataUiState listDataUiState) {
        Intrinsics.checkNotNull(listDataUiState);
        CloudAssetRecordAdapter mAdapter = cloudAssetRecordFragment.getMAdapter();
        com.kingja.loadsir.core.b<Object> bVar = cloudAssetRecordFragment.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        XQuickRecyclerView xrvList = cloudAssetRecordFragment.getMDatabind().f48283c;
        Intrinsics.checkNotNullExpressionValue(xrvList, "xrvList");
        CustomViewExtKt.loadListData$default(listDataUiState, mAdapter, bVar, xrvList, null, 16, null);
        return Unit.INSTANCE;
    }

    private final CloudAssetRecordAdapter getMAdapter() {
        return (CloudAssetRecordAdapter) this.mAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$1(CloudAssetRecordFragment cloudAssetRecordFragment) {
        cloudAssetRecordFragment.loadData(true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void initView$lambda$6(final CloudAssetRecordFragment cloudAssetRecordFragment, BaseQuickAdapter adapter, View view, final int i10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        final MultiCloudRecordBean item = cloudAssetRecordFragment.getMAdapter().getItem(i10);
        if (item != null && item.getViewType() == 5) {
            Object data = item.getData();
            final MessageCloudGamingPropResponse.PropLog propLog = data instanceof MessageCloudGamingPropResponse.PropLog ? (MessageCloudGamingPropResponse.PropLog) data : null;
            com.papa.sim.statistic.t.l(cloudAssetRecordFragment.requireContext()).R1(Event.commonClick, cloudAssetRecordFragment.extBean.copy().setParent(cloudAssetRecordFragment.parentExtBean).setResourceId(propLog != null ? propLog.getCardId() : null).setTypeCode("btnUse").setScenesCode(propLog != null ? propLog.getTitle() : null).buildScene().toExt());
            ((CloudAssetRecordViewModel) cloudAssetRecordFragment.getMViewModel()).propUse(String.valueOf(propLog != null ? propLog.getCardId() : null), propLog != null ? propLog.getCardNo() : 0, new Function1() { // from class: com.join.kotlin.ui.hmcloud.fragment.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CloudAssetRecordFragment.initView$lambda$6$lambda$5(item, propLog, cloudAssetRecordFragment, i10, (MessageCloudGamingPropResponse.MessageCloudGamingPropUseResponse) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:22:0x0059  */
    /* JADX WARN: Code duplicated, block: B:23:0x005e  */
    /* JADX WARN: Code duplicated, block: B:26:0x0065  */
    /* JADX WARN: Code duplicated, block: B:27:0x006a  */
    /* JADX WARN: Code duplicated, block: B:30:0x0077  */
    /* JADX WARN: Code duplicated, block: B:31:0x007a  */
    /* JADX WARN: Code duplicated, block: B:34:0x0082 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x0084  */
    /* JADX WARN: Code duplicated, block: B:36:0x0089 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x008b  */
    /* JADX WARN: Code duplicated, block: B:38:0x008e  */
    public static final Unit initView$lambda$6$lambda$5(MultiCloudRecordBean multiCloudRecordBean, MessageCloudGamingPropResponse.PropLog propLog, CloudAssetRecordFragment cloudAssetRecordFragment, int i10, MessageCloudGamingPropResponse.MessageCloudGamingPropUseResponse messageCloudGamingPropUseResponse) {
        boolean z10;
        MessageCloudGamingPropResponse.PropLog.b builder;
        MessageCloudGamingPropResponse.PropLog.b status;
        MessageCloudGamingPropResponse.PropLog.b useTime;
        String cardId;
        String title;
        String str;
        String errorMsg = null;
        if (messageCloudGamingPropUseResponse != null) {
            if (messageCloudGamingPropUseResponse.getStatus()) {
                z10 = true;
                multiCloudRecordBean.setData((propLog == null || (builder = propLog.toBuilder()) == null || (status = builder.setStatus(1)) == null || (useTime = status.setUseTime(com.join.mgps.Util.e0.k())) == null) ? null : useTime.build());
                cloudAssetRecordFragment.getMAdapter().notifyItemChanged(i10);
            } else {
                ToastManager.show(messageCloudGamingPropUseResponse.getErrorMsg());
            }
            com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(cloudAssetRecordFragment.requireContext());
            Event event = Event.commonReport;
            ExtBean parent = cloudAssetRecordFragment.extBean.copy().setParent(cloudAssetRecordFragment.parentExtBean);
            if (propLog != null) {
                cardId = propLog.getCardId();
            } else {
                cardId = null;
            }
            ExtBean resourceId = parent.setResourceId(cardId);
            if (propLog != null) {
                title = propLog.getTitle();
            } else {
                title = null;
            }
            ExtBean typeCode = resourceId.setScenesCode(title).setTypeCode("btnUse");
            if (z10) {
                str = "succ";
            } else {
                str = "fail";
            }
            ExtBean resultCode = typeCode.setResultCode(str);
            if (z10) {
                if (propLog != null) {
                    errorMsg = propLog.getTitle();
                }
            } else if (messageCloudGamingPropUseResponse == null) {
                errorMsg = "未知";
            } else {
                errorMsg = messageCloudGamingPropUseResponse.getErrorMsg();
            }
            tVarL.R1(event, resultCode.setReMarks(errorMsg).buildScene().toExt());
            return Unit.INSTANCE;
        }
        ToastManager.show("使用失败,请重试");
        z10 = false;
        com.papa.sim.statistic.t tVarL2 = com.papa.sim.statistic.t.l(cloudAssetRecordFragment.requireContext());
        Event event2 = Event.commonReport;
        ExtBean parent2 = cloudAssetRecordFragment.extBean.copy().setParent(cloudAssetRecordFragment.parentExtBean);
        if (propLog != null) {
            cardId = propLog.getCardId();
        } else {
            cardId = null;
        }
        ExtBean resourceId2 = parent2.setResourceId(cardId);
        if (propLog != null) {
            title = propLog.getTitle();
        } else {
            title = null;
        }
        ExtBean typeCode2 = resourceId2.setScenesCode(title).setTypeCode("btnUse");
        if (z10) {
            str = "succ";
        } else {
            str = "fail";
        }
        ExtBean resultCode2 = typeCode2.setResultCode(str);
        if (z10) {
            if (propLog != null) {
                errorMsg = propLog.getTitle();
            }
        } else if (messageCloudGamingPropUseResponse == null) {
            errorMsg = "未知";
        } else {
            errorMsg = messageCloudGamingPropUseResponse.getErrorMsg();
        }
        tVarL2.R1(event2, resultCode2.setReMarks(errorMsg).buildScene().toExt());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$7(CloudAssetRecordFragment cloudAssetRecordFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        MultiCloudRecordBean multiCloudRecordBean = (MultiCloudRecordBean) adapter.getItem(i10);
        if ((multiCloudRecordBean == null || multiCloudRecordBean.getCollapse()) ? false : true) {
            multiCloudRecordBean.setCollapse(true);
        } else if (multiCloudRecordBean != null) {
            multiCloudRecordBean.setCollapse(false);
        }
        cloudAssetRecordFragment.getMAdapter().notifyItemChanged(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CloudAssetRecordAdapter mAdapter_delegate$lambda$0() {
        return new CloudAssetRecordAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPageSelected$lambda$9(int i10, CloudAssetRecordFragment cloudAssetRecordFragment) {
        String str = "cloudGameTimeRecord";
        if (i10 != 0) {
            if (i10 == 1) {
                str = "cloudGameDiamondRecord";
            } else if (i10 == 2) {
                str = "cloudGameCoinRecord";
            } else if (i10 == 3) {
                str = "cloudGamePropRecord";
            }
        }
        cloudAssetRecordFragment.extBean.setChatId(str).setParent(cloudAssetRecordFragment.parentExtBean).buildScene();
        com.papa.sim.statistic.t.l(cloudAssetRecordFragment.requireActivity()).R1(Event.commonExp, cloudAssetRecordFragment.extBean.toExt());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void createObserver() {
        ((CloudAssetRecordViewModel) getMViewModel()).getListData().observe(this, new CloudAssetRecordFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.hmcloud.fragment.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CloudAssetRecordFragment.createObserver$lambda$8(this.f49180b, (ListDataUiState) obj);
            }
        }));
    }

    @NotNull
    public final ExtBean getExtBean() {
        return this.extBean;
    }

    @Nullable
    public final ExtBean getParentExtBean() {
        return this.parentExtBean;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void initView(@Nullable Bundle savedInstanceState) {
        getMDatabind().n((CloudAssetRecordViewModel) getMViewModel());
        ConstraintLayout clContainer = getMDatabind().f48282b;
        Intrinsics.checkNotNullExpressionValue(clContainer, "clContainer");
        this.loadSir = CustomViewExtKt.loadServiceInit(clContainer, new Function0() { // from class: com.join.kotlin.ui.hmcloud.fragment.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CloudAssetRecordFragment.initView$lambda$1(this.f49187b);
            }
        });
        Bundle arguments = getArguments();
        if (arguments != null) {
            ((CloudAssetRecordViewModel) getMViewModel()).setType(arguments.getInt("_type", 1));
            Serializable serializable = arguments.getSerializable("parentExtBean");
            this.parentExtBean = serializable instanceof ExtBean ? (ExtBean) serializable : null;
        }
        XQuickRecyclerView xQuickRecyclerView = getMDatabind().f48283c;
        xQuickRecyclerView.setAdapter(getMAdapter());
        xQuickRecyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        xQuickRecyclerView.setLoadingListener(new XQuickRecyclerView.LoadingListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.CloudAssetRecordFragment$initView$3$1$1
            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onLoadMore() {
                this.this$0.loadData(false);
            }

            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onRefresh() {
                this.this$0.loadData(true);
            }
        });
        xQuickRecyclerView.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.ui.hmcloud.fragment.CloudAssetRecordFragment$initView$3$1$2
            @Override // com.join.mgps.base.decoration.b
            public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int i10) {
                com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
                aVar.f64116f = 0;
                aVar.f64120d = (int) this.this$0.requireContext().getResources().getDimension(R.dimen.wdp25);
                return aVar;
            }
        });
        getMAdapter().addOnItemChildClickListener(R.id.tv_btn_1, new BaseQuickAdapter.b() { // from class: com.join.kotlin.ui.hmcloud.fragment.f
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.b
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                CloudAssetRecordFragment.initView$lambda$6(this.f49190a, baseQuickAdapter, view, i10);
            }
        });
        getMAdapter().addOnItemChildClickListener(R.id.tv_text_3, new BaseQuickAdapter.b() { // from class: com.join.kotlin.ui.hmcloud.fragment.g
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.b
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                CloudAssetRecordFragment.initView$lambda$7(this.f49193a, baseQuickAdapter, view, i10);
            }
        });
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void lazyLoadData() {
        com.kingja.loadsir.core.b<Object> bVar = this.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        loadData(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void loadData(boolean refresh) {
        if (((CloudAssetRecordViewModel) getMViewModel()).getType() == 1) {
            ((CloudAssetRecordViewModel) getMViewModel()).playtimeRecord(refresh);
            return;
        }
        if (((CloudAssetRecordViewModel) getMViewModel()).getType() == 2) {
            ((CloudAssetRecordViewModel) getMViewModel()).diamondRecord(refresh);
        } else if (((CloudAssetRecordViewModel) getMViewModel()).getType() == 3) {
            ((CloudAssetRecordViewModel) getMViewModel()).coinRecord(refresh);
        } else if (((CloudAssetRecordViewModel) getMViewModel()).getType() == 4) {
            ((CloudAssetRecordViewModel) getMViewModel()).propRecord(refresh);
        }
    }

    @Override // com.join.kotlin.base.fragment.BaseVmDbFragment, com.join.kotlin.base.fragment.BaseVmFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        getMHandler().removeCallbacksAndMessages(null);
    }

    public final void onPageSelected(final int position) {
        if (this.extBean.hasExplore()) {
            return;
        }
        getMHandler().postDelayed(new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.b
            @Override // java.lang.Runnable
            public final void run() {
                CloudAssetRecordFragment.onPageSelected$lambda$9(position, this);
            }
        }, 800L);
        this.extBean.setHasExplore(true);
    }

    public final void setParentExtBean(@Nullable ExtBean extBean) {
        this.parentExtBean = extBean;
    }
}
