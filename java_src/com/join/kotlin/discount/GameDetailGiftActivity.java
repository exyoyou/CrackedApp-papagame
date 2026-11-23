package com.join.kotlin.discount;

import android.content.Intent;
import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.join.android.app.mgsim.wufun.databinding.r0;
import com.join.kotlin.base.activity.BaseVmDbActivity;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.discount.adapter.GameDetailGiftAdapter;
import com.join.kotlin.discount.model.bean.GameDetailGiftEntityBean;
import com.join.kotlin.discount.model.bean.GiftItemBean;
import com.join.kotlin.discount.proxy.GameDetailGiftClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailGiftViewModel;
import java.util.ArrayList;
import java.util.List;
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
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0014H\u0002J\b\u0010\u0018\u001a\u00020\u0014H\u0016J\b\u0010\u0019\u001a\u00020\u0014H\u0016J\u0012\u0010\u001a\u001a\u00020\u00142\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u00142\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001e"}, d2 = {"Lcom/join/kotlin/discount/GameDetailGiftActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbActivity;", "Lcom/join/kotlin/discount/viewmodel/GameDetailGiftViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityDiscountGameDetailGiftBinding;", "Lcom/join/kotlin/discount/proxy/GameDetailGiftClickProxy;", "<init>", "()V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "datas", "", "Lcom/join/kotlin/discount/model/bean/GameDetailGiftEntityBean;", "mAdapter", "Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;", "getMAdapter", "()Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;", "mAdapter$delegate", "Lkotlin/Lazy;", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "loadData", "createObserver", "onBackClick", "goGiftDetail", "giftItemBean", "Lcom/join/kotlin/discount/model/bean/GiftItemBean;", "receiveGift", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GameDetailGiftActivity extends BaseVmDbActivity<GameDetailGiftViewModel, r0> implements GameDetailGiftClickProxy {
    private com.kingja.loadsir.core.b<Object> loadSir;

    @NotNull
    private List<GameDetailGiftEntityBean> datas = new ArrayList();

    /* JADX INFO: renamed from: mAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.discount.b0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailGiftActivity.mAdapter_delegate$lambda$0();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$3$lambda$2(GameDetailGiftActivity gameDetailGiftActivity, ListDataUiState listDataUiState) {
        Intrinsics.checkNotNull(listDataUiState);
        GameDetailGiftAdapter mAdapter = gameDetailGiftActivity.getMAdapter();
        com.kingja.loadsir.core.b<Object> bVar = gameDetailGiftActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        XQuickRecyclerView rvGift = gameDetailGiftActivity.getMDatabind().f44150d;
        Intrinsics.checkNotNullExpressionValue(rvGift, "rvGift");
        CustomViewExtKt.loadListData$default(listDataUiState, mAdapter, bVar, rvGift, null, 16, null);
        return Unit.INSTANCE;
    }

    private final GameDetailGiftAdapter getMAdapter() {
        return (GameDetailGiftAdapter) this.mAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$1(GameDetailGiftActivity gameDetailGiftActivity) {
        com.kingja.loadsir.core.b<Object> bVar = gameDetailGiftActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        gameDetailGiftActivity.loadData();
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void loadData() {
        ((GameDetailGiftViewModel) getMViewModel()).getGiftList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GameDetailGiftAdapter mAdapter_delegate$lambda$0() {
        return new GameDetailGiftAdapter();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void createObserver() {
        ((GameDetailGiftViewModel) getMViewModel()).getListData().observe(this, new GameDetailGiftActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.discount.c0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailGiftActivity.createObserver$lambda$3$lambda$2(this.f48559b, (ListDataUiState) obj);
            }
        }));
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailGiftClickProxy
    public void goGiftDetail(@Nullable GiftItemBean giftItemBean) {
        Intent intent = new Intent(this, (Class<?>) CommonBottomDialogActivity.class);
        intent.putExtra("title", "温馨提示");
        intent.putExtra("content", "请前往游戏中领取");
        intent.putExtra("btnText", "我知道了");
        startActivity(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        getMDatabind().u((GameDetailGiftViewModel) getMViewModel());
        getMDatabind().t(this);
        XQuickRecyclerView rvGift = getMDatabind().f44150d;
        Intrinsics.checkNotNullExpressionValue(rvGift, "rvGift");
        com.kingja.loadsir.core.b<Object> bVarLoadServiceInit = CustomViewExtKt.loadServiceInit(rvGift, new Function0() { // from class: com.join.kotlin.discount.a0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GameDetailGiftActivity.initView$lambda$1(this.f48557b);
            }
        });
        this.loadSir = bVarLoadServiceInit;
        if (bVarLoadServiceInit == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVarLoadServiceInit = null;
        }
        CustomViewExtKt.showLoading(bVarLoadServiceInit);
        getMAdapter().setClick(this);
        ((GameDetailGiftViewModel) getMViewModel()).setGameId(getIntent().getStringExtra("gameId"));
        getMDatabind().f44150d.setLayoutManager(new LinearLayoutManager(this));
        getMDatabind().f44150d.setAdapter(getMAdapter());
        loadData();
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailGiftClickProxy
    public void onBackClick() {
        finish();
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailGiftClickProxy
    public void receiveGift(@Nullable GiftItemBean giftItemBean) {
        Intent intent = new Intent(this, (Class<?>) CommonBottomDialogActivity.class);
        intent.putExtra("title", "温馨提示");
        intent.putExtra("content", "请前往游戏中领取");
        intent.putExtra("btnText", "我知道了");
        startActivity(intent);
    }
}
