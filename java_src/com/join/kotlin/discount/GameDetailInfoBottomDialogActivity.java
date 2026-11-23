package com.join.kotlin.discount;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.databinding.t0;
import com.join.kotlin.base.activity.BaseVmDbDialogActivity;
import com.join.kotlin.discount.adapter.GameDetailInfoBottomDialogAdapter;
import com.join.kotlin.discount.model.bean.GameDetailDialogInfoBean;
import com.join.kotlin.discount.proxy.GameDetailInfoBottomDialogClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailInfoBottomDialogViewModel;
import com.join.mgps.Util.p2;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u000eH\u0016J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u000eH\u0016J\b\u0010\u0015\u001a\u00020\u000eH\u0016R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/join/kotlin/discount/GameDetailInfoBottomDialogActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;", "Lcom/join/kotlin/discount/viewmodel/GameDetailInfoBottomDialogViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityDiscountGameDetailInfoBottomDialogBinding;", "Lcom/join/kotlin/discount/proxy/GameDetailInfoBottomDialogClickProxy;", "<init>", "()V", "mAdapter", "Lcom/join/kotlin/discount/adapter/GameDetailInfoBottomDialogAdapter;", "getMAdapter", "()Lcom/join/kotlin/discount/adapter/GameDetailInfoBottomDialogAdapter;", "mAdapter$delegate", "Lkotlin/Lazy;", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "createObserver", "getContentView", "Landroid/view/View;", "onBackClick", "onConfirmClick", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GameDetailInfoBottomDialogActivity extends BaseVmDbDialogActivity<GameDetailInfoBottomDialogViewModel, t0> implements GameDetailInfoBottomDialogClickProxy {

    /* JADX INFO: renamed from: mAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.discount.d0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailInfoBottomDialogActivity.mAdapter_delegate$lambda$0();
        }
    });

    private final GameDetailInfoBottomDialogAdapter getMAdapter() {
        return (GameDetailInfoBottomDialogAdapter) this.mAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GameDetailInfoBottomDialogAdapter mAdapter_delegate$lambda$0() {
        return new GameDetailInfoBottomDialogAdapter();
    }

    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    public void createObserver() {
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity
    @Nullable
    public View getContentView() {
        return getMDatabind().f45059b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        getMDatabind().u((GameDetailInfoBottomDialogViewModel) getMViewModel());
        getMDatabind().t(this);
        p2.v(this);
        Intent intent = getIntent();
        if (intent != null) {
            ((GameDetailInfoBottomDialogViewModel) getMViewModel()).getTitle().setValue(intent.getStringExtra("title"));
            ((GameDetailInfoBottomDialogViewModel) getMViewModel()).getContent().setValue(intent.getStringExtra("content"));
            ((GameDetailInfoBottomDialogViewModel) getMViewModel()).getBtnText().setValue(intent.getStringExtra("btnText"));
        }
        ArrayList arrayList = (ArrayList) JsonMapper.getInstance().fromJson(((GameDetailInfoBottomDialogViewModel) getMViewModel()).getContent().getValue(), JsonMapper.getInstance().createCollectionType(ArrayList.class, GameDetailDialogInfoBean.class));
        getMDatabind().f45061d.setLayoutManager(new LinearLayoutManager(this));
        getMDatabind().f45061d.setAdapter(getMAdapter());
        getMAdapter().submitList(arrayList != null ? CollectionsKt___CollectionsKt.filterNotNull(arrayList) : null);
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailInfoBottomDialogClickProxy
    public void onBackClick() {
        finish();
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailInfoBottomDialogClickProxy
    public void onConfirmClick() {
        finish();
    }
}
