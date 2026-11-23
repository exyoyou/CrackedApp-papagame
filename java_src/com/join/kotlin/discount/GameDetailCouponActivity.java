package com.join.kotlin.discount;

import android.content.Intent;
import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.p0;
import com.join.kotlin.base.activity.BaseVmDbActivity;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.discount.adapter.CouponGameDetailAdapter;
import com.join.kotlin.discount.model.bean.CouponItemBean;
import com.join.kotlin.discount.model.bean.CouponUseTip;
import com.join.kotlin.discount.proxy.CouponListClickProxy;
import com.join.kotlin.discount.proxy.GameDetailCouponClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailCouponViewModel;
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
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u000e\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0019J\b\u0010\u001a\u001a\u00020\u0014H\u0016J\b\u0010\u001b\u001a\u00020\u0014H\u0016J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0012\u0010 \u001a\u00020\u00142\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0010\u0010#\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010$\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/join/kotlin/discount/GameDetailCouponActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbActivity;", "Lcom/join/kotlin/discount/viewmodel/GameDetailCouponViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityDiscountGameDetailCouponBinding;", "Lcom/join/kotlin/discount/proxy/GameDetailCouponClickProxy;", "Lcom/join/kotlin/discount/proxy/CouponListClickProxy;", "<init>", "()V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "mAdapter", "Lcom/join/kotlin/discount/adapter/CouponGameDetailAdapter;", "getMAdapter", "()Lcom/join/kotlin/discount/adapter/CouponGameDetailAdapter;", "mAdapter$delegate", "Lkotlin/Lazy;", "pkg", "", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "loadData", "refresh", "", "createObserver", "onBackClick", "onDetailClick", "itemBean", "Lcom/join/kotlin/discount/model/bean/CouponItemBean;", "onUnSupportClick", "showUseTip", "tip", "Lcom/join/kotlin/discount/model/bean/CouponUseTip;", "onUseClick", "onReceiveClick", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GameDetailCouponActivity extends BaseVmDbActivity<GameDetailCouponViewModel, p0> implements GameDetailCouponClickProxy, CouponListClickProxy {
    private com.kingja.loadsir.core.b<Object> loadSir;

    /* JADX INFO: renamed from: mAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.discount.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailCouponActivity.mAdapter_delegate$lambda$0();
        }
    });

    @Nullable
    private String pkg;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$4$lambda$3(GameDetailCouponActivity gameDetailCouponActivity, ListDataUiState listDataUiState) {
        Intrinsics.checkNotNull(listDataUiState);
        CouponGameDetailAdapter mAdapter = gameDetailCouponActivity.getMAdapter();
        com.kingja.loadsir.core.b<Object> bVar = gameDetailCouponActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        XQuickRecyclerView rvCoupon = gameDetailCouponActivity.getMDatabind().f43147d;
        Intrinsics.checkNotNullExpressionValue(rvCoupon, "rvCoupon");
        CustomViewExtKt.loadListData$default(listDataUiState, mAdapter, bVar, rvCoupon, null, 16, null);
        return Unit.INSTANCE;
    }

    private final CouponGameDetailAdapter getMAdapter() {
        return (CouponGameDetailAdapter) this.mAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$1(GameDetailCouponActivity gameDetailCouponActivity) {
        com.kingja.loadsir.core.b<Object> bVar = gameDetailCouponActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        gameDetailCouponActivity.loadData(true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CouponGameDetailAdapter mAdapter_delegate$lambda$0() {
        return new CouponGameDetailAdapter();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void createObserver() {
        ((GameDetailCouponViewModel) getMViewModel()).getListData().observe(this, new GameDetailCouponActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.discount.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailCouponActivity.createObserver$lambda$4$lambda$3(this.f48567b, (ListDataUiState) obj);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        getMDatabind().u((GameDetailCouponViewModel) getMViewModel());
        getMDatabind().t(this);
        ConstraintLayout clContainer = getMDatabind().f43146c;
        Intrinsics.checkNotNullExpressionValue(clContainer, "clContainer");
        com.kingja.loadsir.core.b<Object> bVarLoadServiceInit = CustomViewExtKt.loadServiceInit(clContainer, new Function0() { // from class: com.join.kotlin.discount.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GameDetailCouponActivity.initView$lambda$1(this.f48565b);
            }
        });
        this.loadSir = bVarLoadServiceInit;
        if (bVarLoadServiceInit == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVarLoadServiceInit = null;
        }
        CustomViewExtKt.showLoading(bVarLoadServiceInit);
        ((GameDetailCouponViewModel) getMViewModel()).setGameId(getIntent().getStringExtra("gameId"));
        this.pkg = getIntent().getStringExtra("gamePkg");
        getMAdapter().setListClickProxy(this);
        final XQuickRecyclerView xQuickRecyclerView = getMDatabind().f43147d;
        xQuickRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        xQuickRecyclerView.setAdapter(getMAdapter());
        xQuickRecyclerView.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.discount.GameDetailCouponActivity$initView$2$1
            @Override // com.join.mgps.base.decoration.b
            public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int i10) {
                com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
                aVar.f64116f = 0;
                if (i10 == 0) {
                    aVar.f64119c = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp40);
                } else {
                    aVar.f64119c = 0;
                }
                aVar.f64117a = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp30);
                aVar.f64118b = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp30);
                aVar.f64120d = (int) xQuickRecyclerView.getResources().getDimension(R.dimen.wdp30);
                return aVar;
            }
        });
        xQuickRecyclerView.setLoadingMoreEnabled(false);
        getMDatabind().f43147d.setLoadingListener(new XQuickRecyclerView.LoadingListener() { // from class: com.join.kotlin.discount.GameDetailCouponActivity.initView.3
            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onLoadMore() {
                GameDetailCouponActivity.this.loadData(false);
            }

            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onRefresh() {
                GameDetailCouponActivity.this.loadData(true);
            }
        });
        loadData(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void loadData(boolean refresh) {
        if (refresh) {
            com.kingja.loadsir.core.b<Object> bVar = this.loadSir;
            if (bVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadSir");
                bVar = null;
            }
            CustomViewExtKt.showLoading(bVar);
        }
        ((GameDetailCouponViewModel) getMViewModel()).getCouponList(refresh);
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailCouponClickProxy
    public void onBackClick() {
        finish();
    }

    @Override // com.join.kotlin.discount.proxy.CouponListClickProxy
    public void onDetailClick(@NotNull CouponItemBean itemBean) {
        Intrinsics.checkNotNullParameter(itemBean, "itemBean");
        Intent intent = new Intent(this, (Class<?>) CommonBottomDialogActivity.class);
        intent.putExtra("title", "温馨提示");
        intent.putExtra("content", "请前往游戏中领取");
        intent.putExtra("btnText", "我知道了");
        startActivity(intent);
    }

    @Override // com.join.kotlin.discount.proxy.CouponListClickProxy
    public void onReceiveClick(@NotNull CouponItemBean itemBean) {
        Intrinsics.checkNotNullParameter(itemBean, "itemBean");
        Intent intent = new Intent(this, (Class<?>) CommonBottomDialogActivity.class);
        intent.putExtra("title", "温馨提示");
        intent.putExtra("content", "请前往游戏中领取");
        intent.putExtra("btnText", "我知道了");
        startActivity(intent);
    }

    @Override // com.join.kotlin.discount.proxy.CouponListClickProxy
    public void onUnSupportClick(@NotNull CouponItemBean itemBean) {
        Intrinsics.checkNotNullParameter(itemBean, "itemBean");
    }

    @Override // com.join.kotlin.discount.proxy.CouponListClickProxy
    public void onUseClick(@NotNull CouponItemBean itemBean) {
        Intrinsics.checkNotNullParameter(itemBean, "itemBean");
    }

    @Override // com.join.kotlin.discount.proxy.CouponListClickProxy
    public void showUseTip(@Nullable CouponUseTip tip) {
    }
}
