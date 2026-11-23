package com.join.kotlin.discount;

import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.dm;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.fragment.BaseVmDbFragment;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.discount.adapter.CommentSpinnerAdapter;
import com.join.kotlin.discount.adapter.GameDetailCommentAdapter;
import com.join.kotlin.discount.model.bean.CommentDetailBean;
import com.join.kotlin.discount.proxy.GameDetailCommentListClickProxy;
import com.join.kotlin.discount.proxy.ItemGameDetailCommentListClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailCommentListViewModel;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity;
import java.util.List;
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
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u001bH\u0016J\b\u0010\u001f\u001a\u00020\u001bH\u0002J\b\u0010 \u001a\u00020\u001bH\u0002J\b\u0010!\u001a\u00020\u001bH\u0016J\b\u0010\"\u001a\u00020\u001bH\u0016J\u000e\u0010#\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020%J\b\u0010&\u001a\u00020\u001bH\u0016J\b\u0010+\u001a\u00020\u001bH\u0016J\u0012\u0010,\u001a\u00020\u001b2\b\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u0006\u0010/\u001a\u00020\u001bR\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u0010\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010'\u001a\u00020%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u00060"}, d2 = {"Lcom/join/kotlin/discount/GameDetailCommentListFragment;", "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;", "Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/FragmentGameDetailCommentListBinding;", "Lcom/join/kotlin/discount/proxy/GameDetailCommentListClickProxy;", "Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;", "<init>", "()V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "mAdapter", "Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;", "getMAdapter", "()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;", "mAdapter$delegate", "Lkotlin/Lazy;", "rvSpinner", "Landroidx/recyclerview/widget/RecyclerView;", "popupWindow", "Landroid/widget/PopupWindow;", "spinnerAdapter", "Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;", "getSpinnerAdapter", "()Lcom/join/kotlin/discount/adapter/CommentSpinnerAdapter;", "spinnerAdapter$delegate", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "getGoodRate", "initSpinner", "createObserver", "lazyLoadData", "loadData", "refresh", "", "clickSpinner", "isLoginFromGoComment", "()Z", "setLoginFromGoComment", "(Z)V", "toCommentEdit", "like", "bean", "Lcom/join/kotlin/discount/model/bean/CommentDetailBean;", "setTopPadding", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameDetailCommentListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailCommentListFragment.kt\ncom/join/kotlin/discount/GameDetailCommentListFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,177:1\n1869#2,2:178\n*S KotlinDebug\n*F\n+ 1 GameDetailCommentListFragment.kt\ncom/join/kotlin/discount/GameDetailCommentListFragment\n*L\n83#1:178,2\n*E\n"})
public final class GameDetailCommentListFragment extends BaseVmDbFragment<GameDetailCommentListViewModel, dm> implements GameDetailCommentListClickProxy, ItemGameDetailCommentListClickProxy {
    private boolean isLoginFromGoComment;
    private com.kingja.loadsir.core.b<Object> loadSir;

    @Nullable
    private PopupWindow popupWindow;
    private RecyclerView rvSpinner;

    /* JADX INFO: renamed from: mAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.discount.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailCommentListFragment.mAdapter_delegate$lambda$0();
        }
    });

    /* JADX INFO: renamed from: spinnerAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy spinnerAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.discount.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailCommentListFragment.spinnerAdapter_delegate$lambda$1();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$9$lambda$8(GameDetailCommentListFragment gameDetailCommentListFragment, ListDataUiState listDataUiState) {
        Intrinsics.checkNotNull(listDataUiState);
        GameDetailCommentAdapter mAdapter = gameDetailCommentListFragment.getMAdapter();
        com.kingja.loadsir.core.b<Object> bVar = gameDetailCommentListFragment.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        XQuickRecyclerView rvList = gameDetailCommentListFragment.getMDatabind().f37530e;
        Intrinsics.checkNotNullExpressionValue(rvList, "rvList");
        CustomViewExtKt.loadListData$default(listDataUiState, mAdapter, bVar, rvList, null, 16, null);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void getGoodRate() {
        List<Fragment> fragments = getParentFragmentManager().getFragments();
        Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
        for (Fragment fragment : fragments) {
            if (fragment instanceof GameDetailFragment) {
                GameDetailFragment gameDetailFragment = (GameDetailFragment) fragment;
                ((GameDetailCommentListViewModel) getMViewModel()).getGoodRate().setValue(gameDetailFragment.getGoodRate());
                ((GameDetailCommentListViewModel) getMViewModel()).getShowGoodRate().setValue(Boolean.valueOf(gameDetailFragment.getGoodRate().length() > 0));
                return;
            }
        }
    }

    private final GameDetailCommentAdapter getMAdapter() {
        return (GameDetailCommentAdapter) this.mAdapter.getValue();
    }

    private final CommentSpinnerAdapter getSpinnerAdapter() {
        return (CommentSpinnerAdapter) this.spinnerAdapter.getValue();
    }

    private final void initSpinner() {
        RecyclerView recyclerView = new RecyclerView(requireContext());
        recyclerView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        recyclerView.setBackgroundResource(R.drawable.bg_game_comment_spinner);
        recyclerView.setAdapter(getSpinnerAdapter());
        recyclerView.setPadding(0, (int) recyclerView.getResources().getDimension(R.dimen.wdp12), 0, 0);
        this.rvSpinner = recyclerView;
        CommentSpinnerAdapter spinnerAdapter = getSpinnerAdapter();
        spinnerAdapter.setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.kotlin.discount.f
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                GameDetailCommentListFragment.initSpinner$lambda$7$lambda$6(this.f48562a, baseQuickAdapter, view, i10);
            }
        });
        spinnerAdapter.submitList(CollectionsKt__CollectionsKt.arrayListOf("最热", "最新"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void initSpinner$lambda$7$lambda$6(GameDetailCommentListFragment gameDetailCommentListFragment, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<unused var>");
        Intrinsics.checkNotNullParameter(view, "<unused var>");
        gameDetailCommentListFragment.getSpinnerAdapter().setSelectedIndex(i10);
        int i11 = 2 - i10;
        if (((GameDetailCommentListViewModel) gameDetailCommentListFragment.getMViewModel()).getSortType() != i11) {
            ((GameDetailCommentListViewModel) gameDetailCommentListFragment.getMViewModel()).setSortType(i11);
            MutableLiveData<String> sortText = ((GameDetailCommentListViewModel) gameDetailCommentListFragment.getMViewModel()).getSortText();
            String item = gameDetailCommentListFragment.getSpinnerAdapter().getItem(i10);
            if (item == null) {
                item = "最热";
            }
            sortText.setValue(item);
            com.kingja.loadsir.core.b<Object> bVar = gameDetailCommentListFragment.loadSir;
            if (bVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadSir");
                bVar = null;
            }
            CustomViewExtKt.showLoading(bVar);
            gameDetailCommentListFragment.loadData(true);
        }
        gameDetailCommentListFragment.getSpinnerAdapter().notifyDataSetChanged();
        PopupWindow popupWindow = gameDetailCommentListFragment.popupWindow;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$2(GameDetailCommentListFragment gameDetailCommentListFragment) {
        com.kingja.loadsir.core.b<Object> bVar = gameDetailCommentListFragment.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        gameDetailCommentListFragment.loadData(true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GameDetailCommentAdapter mAdapter_delegate$lambda$0() {
        return new GameDetailCommentAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CommentSpinnerAdapter spinnerAdapter_delegate$lambda$1() {
        return new CommentSpinnerAdapter();
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailCommentListClickProxy
    public void clickSpinner() {
        RecyclerView recyclerView = this.rvSpinner;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rvSpinner");
            recyclerView = null;
        }
        PopupWindow popupWindow = new PopupWindow(recyclerView, (int) getResources().getDimension(R.dimen.wdp120), (int) getResources().getDimension(R.dimen.wdp140));
        this.popupWindow = popupWindow;
        popupWindow.setOutsideTouchable(true);
        PopupWindow popupWindow2 = this.popupWindow;
        if (popupWindow2 != null) {
            popupWindow2.setBackgroundDrawable(new BitmapDrawable());
        }
        PopupWindow popupWindow3 = this.popupWindow;
        if (popupWindow3 != null) {
            popupWindow3.setFocusable(true);
        }
        PopupWindow popupWindow4 = this.popupWindow;
        if (popupWindow4 != null) {
            popupWindow4.showAsDropDown(getMDatabind().f37528c, 0, -((int) getResources().getDimension(R.dimen.wdp10)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void createObserver() {
        ((GameDetailCommentListViewModel) getMViewModel()).getListData().observe(this, new GameDetailCommentListFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.discount.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailCommentListFragment.createObserver$lambda$9$lambda$8(this.f48560b, (ListDataUiState) obj);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void initView(@Nullable Bundle savedInstanceState) {
        getMDatabind().u((GameDetailCommentListViewModel) getMViewModel());
        getMDatabind().t(this);
        GameDetailCommentListViewModel gameDetailCommentListViewModel = (GameDetailCommentListViewModel) getMViewModel();
        Bundle arguments = getArguments();
        com.kingja.loadsir.core.b<Object> bVar = null;
        gameDetailCommentListViewModel.setGameId(arguments != null ? arguments.getString("gameId") : null);
        XQuickRecyclerView rvList = getMDatabind().f37530e;
        Intrinsics.checkNotNullExpressionValue(rvList, "rvList");
        com.kingja.loadsir.core.b<Object> bVarLoadServiceInit = CustomViewExtKt.loadServiceInit(rvList, new Function0() { // from class: com.join.kotlin.discount.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GameDetailCommentListFragment.initView$lambda$2(this.f48563b);
            }
        });
        this.loadSir = bVarLoadServiceInit;
        if (bVarLoadServiceInit == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
        } else {
            bVar = bVarLoadServiceInit;
        }
        CustomViewExtKt.showLoading(bVar);
        getMAdapter().setClick(this);
        XQuickRecyclerView xQuickRecyclerView = getMDatabind().f37530e;
        xQuickRecyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        xQuickRecyclerView.setAdapter(getMAdapter());
        RecyclerView.ItemAnimator itemAnimator = getMDatabind().f37530e.getItemAnimator();
        Intrinsics.checkNotNull(itemAnimator, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
        ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
        getMDatabind().f37530e.setLoadingListener(new XQuickRecyclerView.LoadingListener() { // from class: com.join.kotlin.discount.GameDetailCommentListFragment.initView.3
            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onLoadMore() {
                GameDetailCommentListFragment.this.loadData(false);
            }

            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onRefresh() {
                com.kingja.loadsir.core.b bVar2 = GameDetailCommentListFragment.this.loadSir;
                if (bVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("loadSir");
                    bVar2 = null;
                }
                CustomViewExtKt.showLoading(bVar2);
                GameDetailCommentListFragment.this.loadData(true);
            }
        });
        initSpinner();
        getGoodRate();
        setTopPadding();
    }

    /* JADX INFO: renamed from: isLoginFromGoComment, reason: from getter */
    public final boolean getIsLoginFromGoComment() {
        return this.isLoginFromGoComment;
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

    @Override // com.join.kotlin.discount.proxy.ItemGameDetailCommentListClickProxy
    public void like(@Nullable CommentDetailBean bean) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void loadData(boolean refresh) {
        ((GameDetailCommentListViewModel) getMViewModel()).getCommentList(refresh);
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    public final void setLoginFromGoComment(boolean z10) {
        this.isLoginFromGoComment = z10;
    }

    public final void setTopPadding() {
        ConstraintLayout constraintLayout = getMDatabind().f37527b;
        FragmentActivity activity = getActivity();
        GamedetailVideoMainActivity gamedetailVideoMainActivity = activity instanceof GamedetailVideoMainActivity ? (GamedetailVideoMainActivity) activity : null;
        constraintLayout.setPadding(0, gamedetailVideoMainActivity != null ? gamedetailVideoMainActivity.getTabBottom() : 0, 0, 0);
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailCommentListClickProxy
    public void toCommentEdit() {
    }
}
