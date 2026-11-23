package com.join.kotlin.quark;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.activity.BaseVmDbDialogActivity;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.quark.adapter.SourceHopeAdapter;
import com.join.kotlin.quark.adapter.SourceHopeTagAdapter;
import com.join.kotlin.quark.callback.impl.DialogShareSourceCallbackImpl;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.kotlin.quark.model.bean.SourceTabItemBean;
import com.join.kotlin.quark.model.bean.SourceTabListBean;
import com.join.kotlin.quark.proxy.CreateSourceHopeClickProxy;
import com.join.kotlin.quark.proxy.SourceHopeItemClickProxy;
import com.join.kotlin.quark.viewmodel.CreateSourceHopeViewModel;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.ResponseModel;
import com.papa91.arc.ext.ToastManager;
import com.psk.kotlin.util.GridSpacingItemDecoration;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0012\u0010\u001a\u001a\u00020\u00172\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u00172\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001e\u001a\u00020\u00172\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\b\u0010\u001f\u001a\u00020\u0017H\u0014J\b\u0010 \u001a\u00020\u0017H\u0016J\b\u0010!\u001a\u00020\u0017H\u0016J\b\u0010\"\u001a\u00020\u0017H\u0016J\u000e\u0010#\u001a\u00020\u00172\u0006\u0010$\u001a\u00020%R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0013\u0010\u0014¨\u0006&"}, d2 = {"Lcom/join/kotlin/quark/CreateSourceHopeActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;", "Lcom/join/kotlin/quark/viewmodel/CreateSourceHopeViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityCreateSourceHopeBinding;", "Lcom/join/kotlin/quark/proxy/CreateSourceHopeClickProxy;", "Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;", "<init>", "()V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "tagAdapter", "Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;", "getTagAdapter", "()Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;", "tagAdapter$delegate", "Lkotlin/Lazy;", "adapter", "Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;", "getAdapter", "()Lcom/join/kotlin/quark/adapter/SourceHopeAdapter;", "adapter$delegate", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "onUploadSourceClick", "item", "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "onWantClick", "onViewSourceClick", "onResume", "createObserver", "onBackClick", "onCreateHopeClick", "loadData", "refresh", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCreateSourceHopeActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateSourceHopeActivity.kt\ncom/join/kotlin/quark/CreateSourceHopeActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CommonExt.kt\ncom/join/kotlin/base/utils/CommonExtKt\n*L\n1#1,277:1\n1878#2,3:278\n1869#2,2:283\n29#3,2:281\n32#3,3:285\n*S KotlinDebug\n*F\n+ 1 CreateSourceHopeActivity.kt\ncom/join/kotlin/quark/CreateSourceHopeActivity\n*L\n90#1:278,3\n206#1:283,2\n204#1:281,2\n204#1:285,3\n*E\n"})
public final class CreateSourceHopeActivity extends BaseVmDbDialogActivity<CreateSourceHopeViewModel, com.join.android.app.mgsim.wufun.databinding.h0> implements CreateSourceHopeClickProxy, SourceHopeItemClickProxy {
    private com.kingja.loadsir.core.b<Object> loadSir;

    /* JADX INFO: renamed from: tagAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy tagAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.quark.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CreateSourceHopeActivity.tagAdapter_delegate$lambda$0();
        }
    });

    /* JADX INFO: renamed from: adapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy adapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.quark.n
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CreateSourceHopeActivity.adapter_delegate$lambda$1();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final SourceHopeAdapter adapter_delegate$lambda$1() {
        return new SourceHopeAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$25$lambda$19(final CreateSourceHopeActivity createSourceHopeActivity, ResultState resultState) {
        if (resultState == null) {
            com.kingja.loadsir.core.b<Object> bVar = createSourceHopeActivity.loadSir;
            if (bVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadSir");
                bVar = null;
            }
            CustomViewExtKt.showError$default(bVar, null, 1, null);
        } else {
            BaseViewModelExtKt.parseState$default(createSourceHopeActivity, resultState, new Function1() { // from class: com.join.kotlin.quark.k
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CreateSourceHopeActivity.createObserver$lambda$25$lambda$19$lambda$17(this.f48869b, (SourceTabListBean) obj);
                }
            }, new Function1() { // from class: com.join.kotlin.quark.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CreateSourceHopeActivity.createObserver$lambda$25$lambda$19$lambda$18(this.f48871b, (AppException) obj);
                }
            }, (Function0) null, 8, (Object) null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit createObserver$lambda$25$lambda$19$lambda$17(CreateSourceHopeActivity createSourceHopeActivity, SourceTabListBean sourceTabListBean) {
        ArrayList<SourceTabItemBean> tabs;
        Integer tab_id;
        Integer tab_id2;
        com.kingja.loadsir.core.b<Object> bVar = createSourceHopeActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        bVar.h();
        if (sourceTabListBean != null && (tabs = sourceTabListBean.getTabs()) != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<T> it2 = tabs.iterator();
            while (true) {
                boolean z10 = false;
                if (!it2.hasNext()) {
                    break;
                }
                SourceTabItemBean sourceTabItemBean = (SourceTabItemBean) it2.next();
                if (!((sourceTabItemBean == null || (tab_id2 = sourceTabItemBean.getTab_id()) == null || tab_id2.intValue() != 1) ? false : true)) {
                    if (sourceTabItemBean != null && (tab_id = sourceTabItemBean.getTab_id()) != null && tab_id.intValue() == 2) {
                        z10 = true;
                    }
                    if (!z10) {
                        arrayList.add(sourceTabItemBean);
                    }
                }
            }
            createSourceHopeActivity.getTagAdapter().submitList(arrayList);
            if (arrayList.size() > 0) {
                ((CreateSourceHopeViewModel) createSourceHopeActivity.getMViewModel()).setSelectTag((SourceTabItemBean) arrayList.get(0));
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$25$lambda$19$lambda$18(CreateSourceHopeActivity createSourceHopeActivity, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        ToastManager.show(it2.getErrorMsg());
        com.kingja.loadsir.core.b<Object> bVar = createSourceHopeActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showError$default(bVar, null, 1, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit createObserver$lambda$25$lambda$21(final CreateSourceHopeActivity createSourceHopeActivity, ListDataUiState listDataUiState) {
        Intrinsics.checkNotNull(listDataUiState);
        SourceHopeAdapter adapter = createSourceHopeActivity.getAdapter();
        com.kingja.loadsir.core.b<Object> bVar = createSourceHopeActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        XQuickRecyclerView xrvList = createSourceHopeActivity.getMDatabind().f39085j;
        Intrinsics.checkNotNullExpressionValue(xrvList, "xrvList");
        CustomViewExtKt.loadListData(listDataUiState, adapter, bVar, xrvList, new Function0() { // from class: com.join.kotlin.quark.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CreateSourceHopeActivity.createObserver$lambda$25$lambda$21$lambda$20(this.f48865b);
            }
        });
        MutableLiveData<String> listSizeStr = ((CreateSourceHopeViewModel) createSourceHopeActivity.getMViewModel()).getListSizeStr();
        StringBuilder sb2 = new StringBuilder();
        sb2.append('+');
        sb2.append(createSourceHopeActivity.getAdapter().getItemCount());
        listSizeStr.setValue(sb2.toString());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$25$lambda$21$lambda$20(CreateSourceHopeActivity createSourceHopeActivity) {
        createSourceHopeActivity.getMDatabind().f39085j.setNoMore();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$25$lambda$24(final CreateSourceHopeActivity createSourceHopeActivity, ResultState resultState) {
        createSourceHopeActivity.dismissLoading();
        if (resultState == null) {
            ToastManager.show("上传失败");
        } else {
            BaseViewModelExtKt.parseState$default(createSourceHopeActivity, resultState, new Function1() { // from class: com.join.kotlin.quark.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CreateSourceHopeActivity.createObserver$lambda$25$lambda$24$lambda$22(this.f48866b, (Boolean) obj);
                }
            }, new Function1() { // from class: com.join.kotlin.quark.j
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CreateSourceHopeActivity.createObserver$lambda$25$lambda$24$lambda$23((AppException) obj);
                }
            }, (Function0) null, 8, (Object) null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$25$lambda$24$lambda$22(CreateSourceHopeActivity createSourceHopeActivity, Boolean bool) {
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            ToastManager.show("上传成功");
            createSourceHopeActivity.finish();
        } else {
            ToastManager.show("上传失败");
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$25$lambda$24$lambda$23(AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        ToastManager.show(it2.getErrorMsg());
        return Unit.INSTANCE;
    }

    private final SourceHopeTagAdapter getTagAdapter() {
        return (SourceHopeTagAdapter) this.tagAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$10$lambda$9(BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initView$lambda$3(CreateSourceHopeActivity createSourceHopeActivity) {
        CreateSourceHopeViewModel createSourceHopeViewModel = (CreateSourceHopeViewModel) createSourceHopeActivity.getMViewModel();
        String uid = AccountUtil_.getInstance_(createSourceHopeActivity).getUid();
        Intrinsics.checkNotNullExpressionValue(uid, "getUid(...)");
        createSourceHopeViewModel.getWebDiskHome(uid);
        createSourceHopeActivity.loadData(true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void initView$lambda$7$lambda$6(CreateSourceHopeActivity createSourceHopeActivity, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        int i11 = 0;
        for (Object obj : createSourceHopeActivity.getTagAdapter().getItems()) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            SourceTabItemBean sourceTabItemBean = (SourceTabItemBean) obj;
            if (sourceTabItemBean != null) {
                sourceTabItemBean.setActive(Boolean.valueOf(i10 == i11));
            }
            if (sourceTabItemBean != null ? Intrinsics.areEqual(sourceTabItemBean.getActive(), Boolean.TRUE) : false) {
                ((CreateSourceHopeViewModel) createSourceHopeActivity.getMViewModel()).setSelectTag(sourceTabItemBean);
            }
            i11 = i12;
        }
        createSourceHopeActivity.getTagAdapter().notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onWantClick$lambda$11(CreateSourceHopeActivity createSourceHopeActivity, ResponseModel responseModel) {
        if (responseModel != null ? Intrinsics.areEqual(responseModel.getData(), Boolean.TRUE) : false) {
            ToastManager.show("数据上传成功");
            createSourceHopeActivity.loadData(true);
        } else {
            ToastManager.show("数据上传失败");
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onWantClick$lambda$12(Throwable it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        ToastManager.show(it2.getMessage());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SourceHopeTagAdapter tagAdapter_delegate$lambda$0() {
        return new SourceHopeTagAdapter();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    public void createObserver() {
        CreateSourceHopeViewModel createSourceHopeViewModel = (CreateSourceHopeViewModel) getMViewModel();
        createSourceHopeViewModel.getHomeData().observe(this, new CreateSourceHopeActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.quark.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CreateSourceHopeActivity.createObserver$lambda$25$lambda$19(this.f48877b, (ResultState) obj);
            }
        }));
        createSourceHopeViewModel.getListData().observe(this, new CreateSourceHopeActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.quark.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CreateSourceHopeActivity.createObserver$lambda$25$lambda$21(this.f48854b, (ListDataUiState) obj);
            }
        }));
        createSourceHopeViewModel.getUploadData().observe(this, new CreateSourceHopeActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.quark.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CreateSourceHopeActivity.createObserver$lambda$25$lambda$24(this.f48857b, (ResultState) obj);
            }
        }));
    }

    @NotNull
    public final SourceHopeAdapter getAdapter() {
        return (SourceHopeAdapter) this.adapter.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        Intent intent = getIntent();
        ((CreateSourceHopeViewModel) getMViewModel()).setKeyword(intent.getStringExtra("_keyword"));
        ((CreateSourceHopeViewModel) getMViewModel()).setSortType(intent.getIntExtra("_sortType", 1));
        ((CreateSourceHopeViewModel) getMViewModel()).setType(Integer.valueOf(intent.getIntExtra("_type", 0)));
        getMDatabind().u((CreateSourceHopeViewModel) getMViewModel());
        getMDatabind().t(this);
        CoordinatorLayout mainContent = getMDatabind().f39081f;
        Intrinsics.checkNotNullExpressionValue(mainContent, "mainContent");
        this.loadSir = CustomViewExtKt.loadServiceInit(mainContent, new Function0() { // from class: com.join.kotlin.quark.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CreateSourceHopeActivity.initView$lambda$3(this.f48860b);
            }
        });
        getMDatabind().f39082g.setAdapter(getTagAdapter());
        getMDatabind().f39082g.setAdapter(getTagAdapter());
        RecyclerView recyclerView = getMDatabind().f39082g;
        recyclerView.setLayoutManager(new GridLayoutManager(this) { // from class: com.join.kotlin.quark.CreateSourceHopeActivity$initView$3$1
            {
                super((Context) this, 4, 1, false);
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean canScrollVertically() {
                return false;
            }
        });
        recyclerView.addItemDecoration(new GridSpacingItemDecoration(4, (int) recyclerView.getResources().getDimension(R.dimen.wdp32), false));
        getTagAdapter().setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.kotlin.quark.e
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                CreateSourceHopeActivity.initView$lambda$7$lambda$6(this.f48863a, baseQuickAdapter, view, i10);
            }
        });
        getAdapter().setSourceHopeItemClickProxy(this);
        CreateSourceHopeViewModel createSourceHopeViewModel = (CreateSourceHopeViewModel) getMViewModel();
        String uid = AccountUtil_.getInstance_(this).getUid();
        Intrinsics.checkNotNullExpressionValue(uid, "getUid(...)");
        createSourceHopeViewModel.getWebDiskHome(uid);
        XQuickRecyclerView xrvList = getMDatabind().f39085j;
        Intrinsics.checkNotNullExpressionValue(xrvList, "xrvList");
        CustomViewExtKt.init$default(xrvList, (RecyclerView.LayoutManager) new LinearLayoutManager(this, 1, false), (RecyclerView.Adapter) getAdapter(), false, 4, (Object) null);
        final XQuickRecyclerView xQuickRecyclerView = getMDatabind().f39085j;
        xQuickRecyclerView.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.quark.CreateSourceHopeActivity$initView$5$1
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
        getAdapter().setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.kotlin.quark.f
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                CreateSourceHopeActivity.initView$lambda$10$lambda$9(baseQuickAdapter, view, i10);
            }
        });
        getMDatabind().f39085j.setLoadingListener(new XQuickRecyclerView.LoadingListener() { // from class: com.join.kotlin.quark.CreateSourceHopeActivity.initView.7
            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onLoadMore() {
                CreateSourceHopeActivity.this.loadData(false);
            }

            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onRefresh() {
                CreateSourceHopeActivity.this.loadData(true);
            }
        });
        loadData(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void loadData(boolean refresh) {
        CreateSourceHopeViewModel createSourceHopeViewModel = (CreateSourceHopeViewModel) getMViewModel();
        String uid = AccountUtil_.getInstance_(this).getUid();
        Intrinsics.checkNotNullExpressionValue(uid, "getUid(...)");
        createSourceHopeViewModel.getWishPoolList(refresh, uid);
    }

    @Override // com.join.kotlin.quark.proxy.CreateSourceHopeClickProxy
    public void onBackClick() {
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.quark.proxy.CreateSourceHopeClickProxy
    public void onCreateHopeClick() {
        showLoading();
        SourceTabItemBean selectTag = ((CreateSourceHopeViewModel) getMViewModel()).getSelectTag();
        if (selectTag != null) {
            CreateSourceHopeViewModel createSourceHopeViewModel = (CreateSourceHopeViewModel) getMViewModel();
            Integer tab_id = selectTag.getTab_id();
            Intrinsics.checkNotNull(tab_id);
            int iIntValue = tab_id.intValue();
            String uid = AccountUtil_.getInstance_(this).getUid();
            Intrinsics.checkNotNullExpressionValue(uid, "getUid(...)");
            createSourceHopeViewModel.sourceShareCreate(iIntValue, uid);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        UtilsMy.N4(this);
    }

    @Override // com.join.kotlin.quark.proxy.SourceHopeItemClickProxy
    public void onUploadSourceClick(@Nullable SourceListItemBean item) {
        Intent intentPutExtra = new Intent().putExtra("_wishPoolItem", item);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        IntentUtil.getInstance().startActivityWithCallback(this, ShareSourceActivity.class, intentPutExtra, new DialogShareSourceCallbackImpl() { // from class: com.join.kotlin.quark.CreateSourceHopeActivity.onUploadSourceClick.1
            @Override // com.join.kotlin.quark.callback.impl.DialogShareSourceCallbackImpl, com.join.kotlin.quark.callback.IDialogShareSourceCallback
            public void onSuccess() {
                CreateSourceHopeActivity.this.loadData(true);
            }
        });
    }

    @Override // com.join.kotlin.quark.proxy.SourceHopeItemClickProxy
    public void onViewSourceClick(@Nullable SourceListItemBean item) {
        Intent intent = new Intent(this, (Class<?>) SourceShareDetailActivity.class);
        intent.putExtra("itemBean", item);
        intent.putExtra("qkPosition", "xy");
        startActivity(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.quark.proxy.SourceHopeItemClickProxy
    public void onWantClick(@Nullable SourceListItemBean item) {
        showLoading();
        CreateSourceHopeViewModel createSourceHopeViewModel = (CreateSourceHopeViewModel) getMViewModel();
        Integer id2 = item != null ? item.getId() : null;
        String uid = AccountUtil_.getInstance_(this).getUid();
        Intrinsics.checkNotNullExpressionValue(uid, "getUid(...)");
        createSourceHopeViewModel.wishPoolWant(id2, uid, new Function1() { // from class: com.join.kotlin.quark.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CreateSourceHopeActivity.onWantClick$lambda$11(this.f48852b, (ResponseModel) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.quark.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CreateSourceHopeActivity.onWantClick$lambda$12((Throwable) obj);
            }
        });
    }
}
