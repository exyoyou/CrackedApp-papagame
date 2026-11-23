package com.join.kotlin.quark;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.f4;
import com.join.kotlin.base.activity.BaseVmDbActivity;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.quark.adapter.SearchResultAdapter;
import com.join.kotlin.quark.loadCallBack.EmptyQuarkSourceCallback;
import com.join.kotlin.quark.proxy.QuarkSearchClickProxy;
import com.join.kotlin.quark.viewmodel.QuarkSearchViewModel;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.ExtBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
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
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0017H\u0014J\b\u0010\u001b\u001a\u00020\u0017H\u0016J\u000e\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001eJ\b\u0010\u001f\u001a\u00020\u0017H\u0016R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006 "}, d2 = {"Lcom/join/kotlin/quark/QuarkSearchResultActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbActivity;", "Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityQuarkSearchResultBinding;", "Lcom/join/kotlin/quark/proxy/QuarkSearchClickProxy;", "<init>", "()V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "adapter", "Lcom/join/kotlin/quark/adapter/SearchResultAdapter;", "getAdapter", "()Lcom/join/kotlin/quark/adapter/SearchResultAdapter;", "adapter$delegate", "Lkotlin/Lazy;", "extBean", "Lcom/join/mgps/dto/ExtBean;", "getExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "createObserver", "loadData", "refresh", "", "onBackClick", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class QuarkSearchResultActivity extends BaseVmDbActivity<QuarkSearchViewModel, f4> implements QuarkSearchClickProxy {

    /* JADX INFO: renamed from: adapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy adapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.quark.u
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return QuarkSearchResultActivity.adapter_delegate$lambda$0();
        }
    });

    @Nullable
    private ExtBean extBean;
    private com.kingja.loadsir.core.b<Object> loadSir;

    /* JADX INFO: Access modifiers changed from: private */
    public static final SearchResultAdapter adapter_delegate$lambda$0() {
        return new SearchResultAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$12$lambda$11(final QuarkSearchResultActivity quarkSearchResultActivity, ListDataUiState listDataUiState) {
        Intrinsics.checkNotNull(listDataUiState);
        SearchResultAdapter adapter = quarkSearchResultActivity.getAdapter();
        com.kingja.loadsir.core.b<Object> bVar = quarkSearchResultActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        XQuickRecyclerView xrvList = quarkSearchResultActivity.getMDatabind().f38251d;
        Intrinsics.checkNotNullExpressionValue(xrvList, "xrvList");
        CustomViewExtKt.loadListData(listDataUiState, adapter, bVar, xrvList, new Function0() { // from class: com.join.kotlin.quark.v
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return QuarkSearchResultActivity.createObserver$lambda$12$lambda$11$lambda$10(this.f48891b);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$12$lambda$11$lambda$10(QuarkSearchResultActivity quarkSearchResultActivity) {
        com.kingja.loadsir.core.b<Object> bVar = quarkSearchResultActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        bVar.g(EmptyQuarkSourceCallback.class);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$4$lambda$3(SearchResultAdapter searchResultAdapter, QuarkSearchResultActivity quarkSearchResultActivity, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<unused var>");
        Intent intent = new Intent(searchResultAdapter.getContext(), (Class<?>) SourceShareDetailActivity.class);
        intent.putExtra("itemBean", (Serializable) adapter.getItem(i10));
        intent.putExtra("qkPosition", "ss");
        quarkSearchResultActivity.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$5(QuarkSearchResultActivity quarkSearchResultActivity) {
        com.kingja.loadsir.core.b<Object> bVar = quarkSearchResultActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        quarkSearchResultActivity.loadData(true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$9$lambda$8(final QuarkSearchResultActivity quarkSearchResultActivity, Context context, View view) {
        TextView textView = (TextView) view.findViewById(R.id.tv_hope_add);
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.quark.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    QuarkSearchResultActivity.initView$lambda$9$lambda$8$lambda$7$lambda$6(this.f48881b, view2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void initView$lambda$9$lambda$8$lambda$7$lambda$6(QuarkSearchResultActivity quarkSearchResultActivity, View view) {
        Intent intent = new Intent(quarkSearchResultActivity, (Class<?>) QuarkSourceHopeListActivity.class);
        intent.putExtra("_keyword", ((QuarkSearchViewModel) quarkSearchResultActivity.getMViewModel()).getKeyword());
        quarkSearchResultActivity.startActivity(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void createObserver() {
        ((QuarkSearchViewModel) getMViewModel()).getListData().observe(this, new QuarkSearchResultActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.quark.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return QuarkSearchResultActivity.createObserver$lambda$12$lambda$11(this.f48880b, (ListDataUiState) obj);
            }
        }));
    }

    @NotNull
    public final SearchResultAdapter getAdapter() {
        return (SearchResultAdapter) this.adapter.getValue();
    }

    @Nullable
    public final ExtBean getExtBean() {
        return this.extBean;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x004f  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        boolean z10;
        Intent intent = getIntent();
        if (intent != null) {
            ((QuarkSearchViewModel) getMViewModel()).setKeyword(intent.getStringExtra("_keyword"));
            if (this.extBean != null) {
                com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(this);
                Event event = Event.visitPCPageZone;
                Ext ext = new Ext();
                ExtBean extBean = this.extBean;
                Intrinsics.checkNotNull(extBean);
                tVarL.R1(event, ext.setFrom(extBean.getFrom()));
            }
            String keyword = ((QuarkSearchViewModel) getMViewModel()).getKeyword();
            if (keyword == null) {
                z10 = false;
            } else {
                if (keyword.length() > 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            if (z10) {
                ((QuarkSearchViewModel) getMViewModel()).getTitle().setValue(((QuarkSearchViewModel) getMViewModel()).getKeyword() + "-资源共享");
            }
        }
        getMDatabind().u((QuarkSearchViewModel) getMViewModel());
        getMDatabind().t(this);
        XQuickRecyclerView xrvList = getMDatabind().f38251d;
        Intrinsics.checkNotNullExpressionValue(xrvList, "xrvList");
        final XQuickRecyclerView xQuickRecyclerViewInit$default = CustomViewExtKt.init$default(xrvList, (RecyclerView.LayoutManager) new LinearLayoutManager(this), (RecyclerView.Adapter) getAdapter(), false, 4, (Object) null);
        xQuickRecyclerViewInit$default.setPullRefreshEnabled(false);
        xQuickRecyclerViewInit$default.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.quark.QuarkSearchResultActivity$initView$2$1
            @Override // com.join.mgps.base.decoration.b
            public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int i10) {
                com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
                aVar.f64116f = 0;
                if (i10 == 0) {
                    aVar.f64119c = (int) xQuickRecyclerViewInit$default.getResources().getDimension(R.dimen.wdp25);
                } else {
                    aVar.f64119c = (int) xQuickRecyclerViewInit$default.getResources().getDimension(R.dimen.wdp12);
                }
                aVar.f64120d = (int) xQuickRecyclerViewInit$default.getResources().getDimension(R.dimen.wdp12);
                aVar.f64117a = (int) xQuickRecyclerViewInit$default.getResources().getDimension(R.dimen.wdp20);
                aVar.f64118b = (int) xQuickRecyclerViewInit$default.getResources().getDimension(R.dimen.wdp20);
                return aVar;
            }
        });
        final SearchResultAdapter adapter = getAdapter();
        adapter.setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.kotlin.quark.r
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                QuarkSearchResultActivity.initView$lambda$4$lambda$3(adapter, this, baseQuickAdapter, view, i10);
            }
        });
        getMDatabind().f38251d.setLoadingListener(new XQuickRecyclerView.LoadingListener() { // from class: com.join.kotlin.quark.QuarkSearchResultActivity.initView.4
            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onLoadMore() {
                QuarkSearchResultActivity.this.loadData(false);
            }

            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onRefresh() {
                QuarkSearchResultActivity.this.loadData(true);
            }
        });
        XQuickRecyclerView xrvList2 = getMDatabind().f38251d;
        Intrinsics.checkNotNullExpressionValue(xrvList2, "xrvList");
        com.kingja.loadsir.core.b<Object> bVarLoadServiceInit = CustomViewExtKt.loadServiceInit(xrvList2, new Function0() { // from class: com.join.kotlin.quark.s
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return QuarkSearchResultActivity.initView$lambda$5(this.f48885b);
            }
        });
        this.loadSir = bVarLoadServiceInit;
        com.kingja.loadsir.core.b<Object> bVar = null;
        if (bVarLoadServiceInit == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVarLoadServiceInit = null;
        }
        bVarLoadServiceInit.f(EmptyQuarkSourceCallback.class, new com.kingja.loadsir.core.d() { // from class: com.join.kotlin.quark.t
            @Override // com.kingja.loadsir.core.d
            public final void a(Context context, View view) {
                QuarkSearchResultActivity.initView$lambda$9$lambda$8(this.f48887a, context, view);
            }
        });
        com.kingja.loadsir.core.b<Object> bVar2 = this.loadSir;
        if (bVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
        } else {
            bVar = bVar2;
        }
        CustomViewExtKt.showLoading(bVar);
        loadData(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void loadData(boolean refresh) {
        ((QuarkSearchViewModel) getMViewModel()).getResourceSearch(refresh);
    }

    @Override // com.join.kotlin.quark.proxy.QuarkSearchClickProxy
    public void onBackClick() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        UtilsMy.N4(this);
    }

    public final void setExtBean(@Nullable ExtBean extBean) {
        this.extBean = extBean;
    }
}
