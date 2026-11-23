package com.join.kotlin.quark;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.so;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.fragment.BaseVmDbFragment;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.quark.adapter.SourceHopeAdapter;
import com.join.kotlin.quark.callback.IChangeSortCallback;
import com.join.kotlin.quark.callback.impl.DialogShareSourceCallbackImpl;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.kotlin.quark.proxy.SourceHopeItemClickProxy;
import com.join.kotlin.quark.viewmodel.SourceHopeListViewModel;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.ResponseModel;
import com.papa91.arc.ext.ToastManager;
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
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0012H\u0016J\b\u0010\u0016\u001a\u00020\u0012H\u0016J\u000e\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019J\u0012\u0010\u001a\u001a\u00020\u00122\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u00122\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001e\u001a\u00020\u00122\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u000f\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0002\u0010!J\b\u0010\"\u001a\u00020\u0012H\u0016R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000e¨\u0006#"}, d2 = {"Lcom/join/kotlin/quark/SourceHopeFragment;", "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;", "Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/FragmentSourceHopeBinding;", "Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;", "Lcom/join/kotlin/quark/callback/IChangeSortCallback;", "<init>", "()V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "adapter", "Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;", "getAdapter", "()Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;", "adapter$delegate", "Lkotlin/Lazy;", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "createObserver", "lazyLoadData", "loadData", "refresh", "", "onUploadSourceClick", "item", "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "onWantClick", "onViewSourceClick", "getStatusState", "", "()Ljava/lang/Integer;", "onStatusChanged", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SourceHopeFragment extends BaseVmDbFragment<SourceHopeListViewModel, so> implements SourceHopeItemClickProxy, IChangeSortCallback {

    /* JADX INFO: renamed from: adapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy adapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.quark.g0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SourceHopeFragment.adapter_delegate$lambda$0();
        }
    });
    private com.kingja.loadsir.core.b<Object> loadSir;

    /* JADX INFO: Access modifiers changed from: private */
    public static final SourceHopeAdapter adapter_delegate$lambda$0() {
        return new SourceHopeAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$7$lambda$6(SourceHopeFragment sourceHopeFragment, ListDataUiState listDataUiState) {
        Intrinsics.checkNotNull(listDataUiState);
        SourceHopeAdapter adapter = sourceHopeFragment.getAdapter();
        com.kingja.loadsir.core.b<Object> bVar = sourceHopeFragment.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        XQuickRecyclerView xrvList = sourceHopeFragment.getMDatabind().f44891b;
        Intrinsics.checkNotNullExpressionValue(xrvList, "xrvList");
        CustomViewExtKt.loadListData$default(listDataUiState, adapter, bVar, xrvList, null, 16, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$4$lambda$3(BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$5(SourceHopeFragment sourceHopeFragment) {
        sourceHopeFragment.loadData(true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onWantClick$lambda$8(SourceHopeFragment sourceHopeFragment, ResponseModel responseModel) {
        if (responseModel != null ? Intrinsics.areEqual(responseModel.getData(), Boolean.TRUE) : false) {
            ToastManager.show("数据上传成功");
            sourceHopeFragment.loadData(true);
        } else {
            ToastManager.show("数据上传失败");
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onWantClick$lambda$9(Throwable it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        ToastManager.show(it2.getMessage());
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void createObserver() {
        ((SourceHopeListViewModel) getMViewModel()).getListData().observe(this, new SourceHopeFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.quark.f0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SourceHopeFragment.createObserver$lambda$7$lambda$6(this.f48864b, (ListDataUiState) obj);
            }
        }));
    }

    @NotNull
    public final SourceHopeAdapter getAdapter() {
        return (SourceHopeAdapter) this.adapter.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.quark.callback.IChangeSortCallback
    @Nullable
    public Integer getStatusState() {
        return ((SourceHopeListViewModel) getMViewModel()).getStatus();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void initView(@Nullable Bundle savedInstanceState) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            ((SourceHopeListViewModel) getMViewModel()).setKeyword(arguments.getString("_keyword", ""));
            ((SourceHopeListViewModel) getMViewModel()).setSortType(Integer.valueOf(arguments.getInt("_sortType", 1)));
            ((SourceHopeListViewModel) getMViewModel()).setType(Integer.valueOf(arguments.getInt("_type", 0)));
        }
        getMDatabind().n((SourceHopeListViewModel) getMViewModel());
        XQuickRecyclerView xrvList = getMDatabind().f44891b;
        Intrinsics.checkNotNullExpressionValue(xrvList, "xrvList");
        CustomViewExtKt.init$default(xrvList, (RecyclerView.LayoutManager) new LinearLayoutManager(getContext(), 1, false), (RecyclerView.Adapter) getAdapter(), false, 4, (Object) null);
        getAdapter().setSourceHopeItemClickProxy(this);
        final XQuickRecyclerView xQuickRecyclerView = getMDatabind().f44891b;
        xQuickRecyclerView.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.quark.SourceHopeFragment$initView$2$1
            @Override // com.join.mgps.base.decoration.b
            public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int i10) {
                com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
                aVar.f64116f = 0;
                aVar.f64119c = 0;
                aVar.f64120d = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp30);
                aVar.f64117a = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp30);
                aVar.f64118b = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp30);
                return aVar;
            }
        });
        getAdapter().setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.kotlin.quark.h0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                SourceHopeFragment.initView$lambda$4$lambda$3(baseQuickAdapter, view, i10);
            }
        });
        getMDatabind().f44891b.setLoadingListener(new XQuickRecyclerView.LoadingListener() { // from class: com.join.kotlin.quark.SourceHopeFragment.initView.4
            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onLoadMore() {
                SourceHopeFragment.this.loadData(false);
            }

            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onRefresh() {
                SourceHopeFragment.this.loadData(true);
            }
        });
        XQuickRecyclerView xrvList2 = getMDatabind().f44891b;
        Intrinsics.checkNotNullExpressionValue(xrvList2, "xrvList");
        com.kingja.loadsir.core.b<Object> bVarLoadServiceInit = CustomViewExtKt.loadServiceInit(xrvList2, new Function0() { // from class: com.join.kotlin.quark.i0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SourceHopeFragment.initView$lambda$5(this.f48867b);
            }
        });
        this.loadSir = bVarLoadServiceInit;
        if (bVarLoadServiceInit == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVarLoadServiceInit = null;
        }
        CustomViewExtKt.showLoading(bVarLoadServiceInit);
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void lazyLoadData() {
        loadData(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void loadData(boolean refresh) {
        if (getContext() instanceof IChangeSortCallback) {
            Object context = getContext();
            Intrinsics.checkNotNull(context, "null cannot be cast to non-null type com.join.kotlin.quark.callback.IChangeSortCallback");
            ((SourceHopeListViewModel) getMViewModel()).setStatus(((IChangeSortCallback) context).getStatusState());
        }
        SourceHopeListViewModel sourceHopeListViewModel = (SourceHopeListViewModel) getMViewModel();
        String uid = AccountUtil_.getInstance_(getContext()).getUid();
        Intrinsics.checkNotNullExpressionValue(uid, "getUid(...)");
        sourceHopeListViewModel.getWishPoolList(refresh, uid);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.quark.callback.IChangeSortCallback
    public void onStatusChanged() {
        if (!isAdded() || ((SourceHopeListViewModel) getMViewModel()) == null) {
            return;
        }
        loadData(true);
    }

    @Override // com.join.kotlin.quark.proxy.SourceHopeItemClickProxy
    public void onUploadSourceClick(@Nullable SourceListItemBean item) {
        Intent intentPutExtra = new Intent().putExtra("_wishPoolItem", item);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        IntentUtil.getInstance().startActivityWithCallback(getContext(), ShareSourceActivity.class, intentPutExtra, new DialogShareSourceCallbackImpl() { // from class: com.join.kotlin.quark.SourceHopeFragment.onUploadSourceClick.1
            @Override // com.join.kotlin.quark.callback.impl.DialogShareSourceCallbackImpl, com.join.kotlin.quark.callback.IDialogShareSourceCallback
            public void onSuccess() {
                SourceHopeFragment.this.loadData(true);
            }
        });
    }

    @Override // com.join.kotlin.quark.proxy.SourceHopeItemClickProxy
    public void onViewSourceClick(@Nullable SourceListItemBean item) {
        Intent intent = new Intent(getContext(), (Class<?>) SourceShareDetailActivity.class);
        intent.putExtra("itemBean", item);
        startActivity(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.quark.proxy.SourceHopeItemClickProxy
    public void onWantClick(@Nullable SourceListItemBean item) {
        SourceHopeListViewModel sourceHopeListViewModel = (SourceHopeListViewModel) getMViewModel();
        Integer id2 = item != null ? item.getId() : null;
        String uid = AccountUtil_.getInstance_(getContext()).getUid();
        Intrinsics.checkNotNullExpressionValue(uid, "getUid(...)");
        sourceHopeListViewModel.wishPoolWant(id2, uid, new Function1() { // from class: com.join.kotlin.quark.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SourceHopeFragment.onWantClick$lambda$8(this.f48861b, (ResponseModel) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.quark.e0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SourceHopeFragment.onWantClick$lambda$9((Throwable) obj);
            }
        });
    }
}
