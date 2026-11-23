package com.join.kotlin.ui.endgame;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.f1;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.cloudarchive.IOnRunListener;
import com.join.kotlin.ui.endgame.adapter.EndGameSlotListAdapter;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.t2;
import com.join.mgps.dto.ArchiveListBean;
import com.wufan.user.service.protobuf.UserInfo;
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
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0014J\u0006\u0010!\u001a\u00020\u001eJ\u0006\u0010'\u001a\u00020\u001eJ\b\u0010(\u001a\u00020\u001eH\u0016J\b\u0010)\u001a\u00020\u001eH\u0016J\b\u0010*\u001a\u00020\u001eH\u0016J\b\u0010+\u001a\u00020\u001eH\u0016R\u001b\u0010\u0006\u001a\u00020\u00078FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u001a\u0010\f\u001a\u00020\rX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\u00020\u00138FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u000b\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\"\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010$\"\u0004\b%\u0010&¨\u0006,"}, d2 = {"Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;", "Lcom/BaseAppCompatActivity;", "Lcom/join/kotlin/ui/endgame/ISlotListener;", "Lcom/join/kotlin/domain/common/LoadBindClickProxy;", "<init>", "()V", "viewModle", "Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;", "getViewModle", "()Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;", "viewModle$delegate", "Lkotlin/Lazy;", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityEndGameSlotListBinding;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ActivityEndGameSlotListBinding;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/ActivityEndGameSlotListBinding;)V", "adapterx", "Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;", "getAdapterx", "()Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;", "adapterx$delegate", "mListener", "Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;", "getMListener", "()Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;", "setMListener", "(Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "initData", "isLogin", "", "()Z", "setLogin", "(Z)V", "loadData", "onClickReload", "onClickSetNetWork", "onBack", "onCommit", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EndGameSlotListActivity extends BaseAppCompatActivity implements ISlotListener, LoadBindClickProxy {
    public f1 dataBinding;
    private boolean isLogin;

    @Nullable
    private IOnRunListener mListener;

    /* JADX INFO: renamed from: viewModle$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModle = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.endgame.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return EndGameSlotListActivity.viewModle_delegate$lambda$0(this.f49071b);
        }
    });

    /* JADX INFO: renamed from: adapterx$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy adapterx = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.endgame.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return EndGameSlotListActivity.adapterx_delegate$lambda$1(this.f49072b);
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final EndGameSlotListAdapter adapterx_delegate$lambda$1(EndGameSlotListActivity endGameSlotListActivity) {
        return new EndGameSlotListAdapter(endGameSlotListActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initData$lambda$2(EndGameSlotListActivity endGameSlotListActivity, List list) {
        if (list != null) {
            endGameSlotListActivity.getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
            if (list.isEmpty()) {
                List<ArchiveListBean> value = endGameSlotListActivity.getViewModle().getListArchive().getValue();
                if (value != null && value.size() == 0) {
                    endGameSlotListActivity.getViewModle().getLoadBindData().setValue(new LoadBindindData(4));
                }
                endGameSlotListActivity.getDataBinding().f38213d.setNoMore();
            } else {
                endGameSlotListActivity.getAdapterx().setListDatas(list);
                endGameSlotListActivity.getDataBinding().f38213d.loadMoreComplete();
                endGameSlotListActivity.getAdapterx().notifyDataSetChanged();
            }
        } else {
            List<ArchiveListBean> value2 = endGameSlotListActivity.getViewModle().getListArchive().getValue();
            if (!(value2 != null && value2.size() == 0)) {
                endGameSlotListActivity.getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
            }
            List<ArchiveListBean> value3 = endGameSlotListActivity.getViewModle().getListArchive().getValue();
            if (value3 != null && value3.size() == 0) {
                endGameSlotListActivity.getViewModle().getLoadBindData().setValue(new LoadBindindData(3));
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initData$lambda$3(EndGameSlotListActivity endGameSlotListActivity, ArchiveListBean archiveListBean) {
        MutableLiveData<String> commitText = endGameSlotListActivity.getViewModle().getCommitText();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("完成(");
        sb2.append(archiveListBean == null ? "0" : "1");
        sb2.append("/1)");
        commitText.setValue(sb2.toString());
        endGameSlotListActivity.getViewModle().getCommitEnableStatus().setValue(Boolean.valueOf(archiveListBean != null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EndGameSlotViewModel viewModle_delegate$lambda$0(EndGameSlotListActivity endGameSlotListActivity) {
        return (EndGameSlotViewModel) new ViewModelProvider(endGameSlotListActivity, new ViewModelProvider.NewInstanceFactory()).get(EndGameSlotViewModel.class);
    }

    @NotNull
    public final EndGameSlotListAdapter getAdapterx() {
        return (EndGameSlotListAdapter) this.adapterx.getValue();
    }

    @NotNull
    public final f1 getDataBinding() {
        f1 f1Var = this.dataBinding;
        if (f1Var != null) {
            return f1Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        return null;
    }

    @Nullable
    public final IOnRunListener getMListener() {
        return this.mListener;
    }

    @NotNull
    public final EndGameSlotViewModel getViewModle() {
        return (EndGameSlotViewModel) this.viewModle.getValue();
    }

    public final void initData() {
        getDataBinding().setLifecycleOwner(this);
        getDataBinding().setVariable(50, getViewModle());
        getDataBinding().setVariable(30, this);
        getDataBinding().f38213d.setAdapter(getAdapterx());
        boolean z10 = false;
        getDataBinding().f38213d.setLoadingMoreEnabled(false);
        getDataBinding().f38213d.setPullRefreshEnabled(false);
        RecyclerView.ItemAnimator itemAnimator = getDataBinding().f38213d.getItemAnimator();
        Intrinsics.checkNotNull(itemAnimator, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
        ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
        getViewModle().getListArchive().observe(this, new EndGameSlotListActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.endgame.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return EndGameSlotListActivity.initData$lambda$2(this.f49069b, (List) obj);
            }
        }));
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "getAccountData(...)");
        if (!t2.h(accountData.getToken()) && !AccountUtil_.getInstance_(this).isTourist()) {
            z10 = true;
        }
        this.isLogin = z10;
        loadData();
        getDataBinding().C(this);
        getAdapterx().getCheckedItem().observe(this, new EndGameSlotListActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.endgame.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return EndGameSlotListActivity.initData$lambda$3(this.f49070b, (ArchiveListBean) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: isLogin, reason: from getter */
    public final boolean getIsLogin() {
        return this.isLogin;
    }

    public final void loadData() {
        getViewModle().loadLocalArchiveData();
    }

    @Override // com.join.kotlin.ui.endgame.ISlotListener
    public void onBack() {
        finish();
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickReload() {
        loadData();
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickSetNetWork() {
        UtilsMy.N3(this);
    }

    @Override // com.join.kotlin.ui.endgame.ISlotListener
    public void onCommit() {
        Intent intent = new Intent();
        intent.putExtra("mData", getAdapterx().getCheckedItem().getValue());
        setResult(-1, intent);
        finish();
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        View root;
        super.onCreate(savedInstanceState);
        EndGameSlotViewModel viewModle = getViewModle();
        String stringExtra = getIntent().getStringExtra("gameId");
        if (stringExtra == null) {
            stringExtra = "";
        }
        viewModle.setGameId(stringExtra);
        setDataBinding((f1) DataBindingUtil.inflate(getLayoutInflater(), R.layout.activity_end_game_slot_list, null, false));
        setContentView(getDataBinding().getRoot());
        initData();
        f1 dataBinding = getDataBinding();
        if (dataBinding == null || (root = dataBinding.getRoot()) == null) {
            return;
        }
        root.setBackgroundResource(R.drawable.alph);
    }

    public final void setDataBinding(@NotNull f1 f1Var) {
        Intrinsics.checkNotNullParameter(f1Var, "<set-?>");
        this.dataBinding = f1Var;
    }

    public final void setLogin(boolean z10) {
        this.isLogin = z10;
    }

    public final void setMListener(@Nullable IOnRunListener iOnRunListener) {
        this.mListener = iOnRunListener;
    }
}
