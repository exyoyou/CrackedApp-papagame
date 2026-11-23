package com.join.kotlin.quark;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.uo;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.fragment.BaseVmDbFragment;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.quark.adapter.SourceShareAdapter;
import com.join.kotlin.quark.viewmodel.SourceShareListViewModel;
import com.join.mgps.Util.AccountUtil_;
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
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0016H\u0016J\b\u0010\u001a\u001a\u00020\u0016H\u0016J\u000e\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001dR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/join/kotlin/quark/SourceShareFragment;", "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;", "Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/FragmentSourceShareBinding;", "<init>", "()V", "tabId", "", "getTabId", "()I", "setTabId", "(I)V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "adapter", "Lcom/join/kotlin/quark/adapter/SourceShareAdapter;", "getAdapter", "()Lcom/join/kotlin/quark/adapter/SourceShareAdapter;", "adapter$delegate", "Lkotlin/Lazy;", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "createObserver", "lazyLoadData", "loadData", "refresh", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SourceShareFragment extends BaseVmDbFragment<SourceShareListViewModel, uo> {

    /* JADX INFO: renamed from: adapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy adapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.quark.r0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SourceShareFragment.adapter_delegate$lambda$0();
        }
    });
    private com.kingja.loadsir.core.b<Object> loadSir;
    private int tabId;

    /* JADX INFO: Access modifiers changed from: private */
    public static final SourceShareAdapter adapter_delegate$lambda$0() {
        return new SourceShareAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$7$lambda$6(SourceShareFragment sourceShareFragment, ListDataUiState listDataUiState) {
        Intrinsics.checkNotNull(listDataUiState);
        SourceShareAdapter adapter = sourceShareFragment.getAdapter();
        com.kingja.loadsir.core.b<Object> bVar = sourceShareFragment.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        XQuickRecyclerView xrvList = sourceShareFragment.getMDatabind().f45786b;
        Intrinsics.checkNotNullExpressionValue(xrvList, "xrvList");
        CustomViewExtKt.loadListData$default(listDataUiState, adapter, bVar, xrvList, null, 16, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$4$lambda$3(SourceShareAdapter sourceShareAdapter, SourceShareFragment sourceShareFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        Intent intent = new Intent(sourceShareAdapter.getContext(), (Class<?>) SourceShareDetailActivity.class);
        intent.putExtra("itemBean", (Serializable) adapter.getItem(i10));
        intent.putExtra("qkPosition", "hp");
        sourceShareFragment.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$5(SourceShareFragment sourceShareFragment) {
        com.kingja.loadsir.core.b<Object> bVar = sourceShareFragment.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        sourceShareFragment.loadData(true);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void createObserver() {
        ((SourceShareListViewModel) getMViewModel()).getListData().observe(this, new SourceShareFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.quark.s0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SourceShareFragment.createObserver$lambda$7$lambda$6(this.f48886b, (ListDataUiState) obj);
            }
        }));
    }

    @NotNull
    public final SourceShareAdapter getAdapter() {
        return (SourceShareAdapter) this.adapter.getValue();
    }

    public final int getTabId() {
        return this.tabId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void initView(@Nullable Bundle savedInstanceState) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.tabId = arguments.getInt("_tab_id", 0);
        }
        getMDatabind().u((SourceShareListViewModel) getMViewModel());
        XQuickRecyclerView xrvList = getMDatabind().f45786b;
        Intrinsics.checkNotNullExpressionValue(xrvList, "xrvList");
        CustomViewExtKt.init$default(xrvList, (RecyclerView.LayoutManager) new StaggeredGridLayoutManager(2, 1), (RecyclerView.Adapter) getAdapter(), false, 4, (Object) null);
        final XQuickRecyclerView xQuickRecyclerView = getMDatabind().f45786b;
        xQuickRecyclerView.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.quark.SourceShareFragment$initView$2$1
            @Override // com.join.mgps.base.decoration.b
            public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int i10) {
                com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
                aVar.f64116f = 0;
                aVar.f64119c = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp10);
                aVar.f64120d = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp10);
                aVar.f64117a = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp10);
                aVar.f64118b = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp10);
                return aVar;
            }
        });
        final SourceShareAdapter adapter = getAdapter();
        adapter.setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.kotlin.quark.t0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                SourceShareFragment.initView$lambda$4$lambda$3(adapter, this, baseQuickAdapter, view, i10);
            }
        });
        getMDatabind().f45786b.setLoadingListener(new XQuickRecyclerView.LoadingListener() { // from class: com.join.kotlin.quark.SourceShareFragment.initView.4
            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onLoadMore() {
                SourceShareFragment.this.loadData(false);
            }

            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onRefresh() {
                SourceShareFragment.this.loadData(true);
            }
        });
        XQuickRecyclerView xrvList2 = getMDatabind().f45786b;
        Intrinsics.checkNotNullExpressionValue(xrvList2, "xrvList");
        com.kingja.loadsir.core.b<Object> bVarLoadServiceInit = CustomViewExtKt.loadServiceInit(xrvList2, new Function0() { // from class: com.join.kotlin.quark.u0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SourceShareFragment.initView$lambda$5(this.f48890b);
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
        SourceShareListViewModel sourceShareListViewModel = (SourceShareListViewModel) getMViewModel();
        int i10 = this.tabId;
        String uid = AccountUtil_.getInstance_(getContext()).getUid();
        Intrinsics.checkNotNullExpressionValue(uid, "getUid(...)");
        String token = AccountUtil_.getInstance_(getContext()).getToken();
        Intrinsics.checkNotNullExpressionValue(token, "getToken(...)");
        sourceShareListViewModel.getResourceList(refresh, i10, uid, token);
    }

    public final void setTabId(int i10) {
        this.tabId = i10;
    }
}
