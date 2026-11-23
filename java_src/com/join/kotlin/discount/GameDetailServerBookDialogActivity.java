package com.join.kotlin.discount;

import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.databinding.v0;
import com.join.kotlin.base.activity.BaseVmDbDialogActivity;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.discount.adapter.GameDetailServerBookAdapter;
import com.join.kotlin.discount.model.bean.GameServerInfoBean;
import com.join.kotlin.discount.proxy.GameDetailServerBookDialogClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailServerBookDialogViewModel;
import com.join.mgps.Util.p2;
import com.papa91.arc.ext.ToastManager;
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
import kotlinx.coroutines.m0;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0011H\u0002J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0011H\u0016J\b\u0010\u0018\u001a\u00020\u0011H\u0002J\b\u0010\u0019\u001a\u00020\u0011H\u0016R\u001b\u0010\u0007\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;", "Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityDiscountGameDetailServerBookDialogBinding;", "Lcom/join/kotlin/discount/proxy/GameDetailServerBookDialogClickProxy;", "<init>", "()V", "mAdapter", "Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;", "getMAdapter", "()Lcom/join/kotlin/discount/adapter/GameDetailServerBookAdapter;", "mAdapter$delegate", "Lkotlin/Lazy;", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "loadData", "getContentView", "Landroid/view/View;", "createObserver", "scrollToAvailableData", "onBackClick", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameDetailServerBookDialogActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailServerBookDialogActivity.kt\ncom/join/kotlin/discount/GameDetailServerBookDialogActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,122:1\n1878#2,3:123\n360#2,7:126\n*S KotlinDebug\n*F\n+ 1 GameDetailServerBookDialogActivity.kt\ncom/join/kotlin/discount/GameDetailServerBookDialogActivity\n*L\n80#1:123,3\n111#1:126,7\n*E\n"})
public final class GameDetailServerBookDialogActivity extends BaseVmDbDialogActivity<GameDetailServerBookDialogViewModel, v0> implements GameDetailServerBookDialogClickProxy {
    private com.kingja.loadsir.core.b<Object> loadSir;

    /* JADX INFO: renamed from: mAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.discount.j0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailServerBookDialogActivity.mAdapter_delegate$lambda$0();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$6$lambda$3(GameDetailServerBookDialogActivity gameDetailServerBookDialogActivity, ListDataUiState listDataUiState) {
        com.kingja.loadsir.core.b<Object> bVar;
        Intrinsics.checkNotNull(listDataUiState);
        GameDetailServerBookAdapter mAdapter = gameDetailServerBookDialogActivity.getMAdapter();
        com.kingja.loadsir.core.b<Object> bVar2 = gameDetailServerBookDialogActivity.loadSir;
        if (bVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        } else {
            bVar = bVar2;
        }
        XQuickRecyclerView recyclerview = gameDetailServerBookDialogActivity.getMDatabind().f45988d;
        Intrinsics.checkNotNullExpressionValue(recyclerview, "recyclerview");
        CustomViewExtKt.loadListData$default(listDataUiState, mAdapter, bVar, recyclerview, null, 16, null);
        kotlinx.coroutines.j.f(m0.a(z0.c()), null, null, new GameDetailServerBookDialogActivity$createObserver$1$1$1(gameDetailServerBookDialogActivity, null), 3, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$6$lambda$5(GameDetailServerBookDialogActivity gameDetailServerBookDialogActivity, GameServerInfoBean gameServerInfoBean) {
        int i10 = 0;
        for (Object obj : gameDetailServerBookDialogActivity.getMAdapter().getItems()) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            GameServerInfoBean gameServerInfoBean2 = (GameServerInfoBean) obj;
            if (Intrinsics.areEqual(gameServerInfoBean2.getId(), gameServerInfoBean.getId())) {
                gameServerInfoBean2.setSubscribe(!gameServerInfoBean2.getSubscribe());
                ToastManager.show(gameServerInfoBean2.getSubscribe() ? "订阅成功" : "取消订阅成功");
                gameDetailServerBookDialogActivity.getMAdapter().notifyItemChanged(i10);
                return Unit.INSTANCE;
            }
            i10 = i11;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$1(GameDetailServerBookDialogActivity gameDetailServerBookDialogActivity) {
        com.kingja.loadsir.core.b<Object> bVar = gameDetailServerBookDialogActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        gameDetailServerBookDialogActivity.loadData();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$2(BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<unused var>");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void loadData() {
        ((GameDetailServerBookDialogViewModel) getMViewModel()).getServerList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GameDetailServerBookAdapter mAdapter_delegate$lambda$0() {
        return new GameDetailServerBookAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void scrollToAvailableData() {
        runOnUiThread(new Runnable() { // from class: com.join.kotlin.discount.i0
            @Override // java.lang.Runnable
            public final void run() {
                GameDetailServerBookDialogActivity.scrollToAvailableData$lambda$8(this.f48568b);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void scrollToAvailableData$lambda$8(final GameDetailServerBookDialogActivity gameDetailServerBookDialogActivity) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(gameDetailServerBookDialogActivity) { // from class: com.join.kotlin.discount.GameDetailServerBookDialogActivity$scrollToAvailableData$1$scroller$1
            {
                super(gameDetailServerBookDialogActivity);
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                Intrinsics.checkNotNullParameter(displayMetrics, "displayMetrics");
                return super.calculateSpeedPerPixel(displayMetrics);
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            protected int getVerticalSnapPreference() {
                return -1;
            }
        };
        Iterator<GameServerInfoBean> it2 = gameDetailServerBookDialogActivity.getMAdapter().getItems().iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            if (Intrinsics.areEqual(it2.next().getExpire(), Boolean.FALSE)) {
                linearSmoothScroller.setTargetPosition(i10);
                RecyclerView.LayoutManager layoutManager = gameDetailServerBookDialogActivity.getMDatabind().f45988d.getLayoutManager();
                Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
                ((GridLayoutManager) layoutManager).startSmoothScroll(linearSmoothScroller);
            }
            i10++;
        }
        i10 = -1;
        linearSmoothScroller.setTargetPosition(i10);
        RecyclerView.LayoutManager layoutManager2 = gameDetailServerBookDialogActivity.getMDatabind().f45988d.getLayoutManager();
        Intrinsics.checkNotNull(layoutManager2, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
        ((GridLayoutManager) layoutManager2).startSmoothScroll(linearSmoothScroller);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    public void createObserver() {
        GameDetailServerBookDialogViewModel gameDetailServerBookDialogViewModel = (GameDetailServerBookDialogViewModel) getMViewModel();
        gameDetailServerBookDialogViewModel.getListData().observe(this, new GameDetailServerBookDialogActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.discount.g0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailServerBookDialogActivity.createObserver$lambda$6$lambda$3(this.f48564b, (ListDataUiState) obj);
            }
        }));
        gameDetailServerBookDialogViewModel.getSubscribeResultBean().observe(this, new GameDetailServerBookDialogActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.discount.h0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailServerBookDialogActivity.createObserver$lambda$6$lambda$5(this.f48566b, (GameServerInfoBean) obj);
            }
        }));
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity
    @Nullable
    public View getContentView() {
        return getMDatabind().f45986b;
    }

    @NotNull
    public final GameDetailServerBookAdapter getMAdapter() {
        return (GameDetailServerBookAdapter) this.mAdapter.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        getMDatabind().u((GameDetailServerBookDialogViewModel) getMViewModel());
        getMDatabind().t(this);
        XQuickRecyclerView recyclerview = getMDatabind().f45988d;
        Intrinsics.checkNotNullExpressionValue(recyclerview, "recyclerview");
        this.loadSir = CustomViewExtKt.loadServiceInit(recyclerview, new Function0() { // from class: com.join.kotlin.discount.e0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GameDetailServerBookDialogActivity.initView$lambda$1(this.f48561b);
            }
        });
        p2.v(this);
        ((GameDetailServerBookDialogViewModel) getMViewModel()).setGameId(getIntent().getStringExtra("gameId"));
        getMDatabind().f45988d.setLayoutManager(new GridLayoutManager(this, 2));
        getMDatabind().f45988d.setAdapter(getMAdapter());
        getMAdapter().setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.kotlin.discount.f0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                GameDetailServerBookDialogActivity.initView$lambda$2(baseQuickAdapter, view, i10);
            }
        });
        com.kingja.loadsir.core.b<Object> bVar = this.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        loadData();
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailServerBookDialogClickProxy
    public void onBackClick() {
        finish();
    }
}
