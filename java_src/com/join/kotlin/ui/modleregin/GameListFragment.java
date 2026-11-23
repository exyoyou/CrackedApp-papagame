package com.join.kotlin.ui.modleregin;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModelProvider;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.kc;
import com.join.kotlin.ui.modleregin.adapter.GameListAdapter;
import com.join.kotlin.ui.modleregin.modle.BtOnlineGame;
import com.join.kotlin.ui.modleregin.viewModle.BtReginModle;
import com.join.kotlin.ui.modleregin.viewModle.GameListViewModle;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.dto.CollectionBeanSub;
import com.psk.kotlin.util.CommonListMainData;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010.2\b\u0010/\u001a\u0004\u0018\u000100H\u0016J\u0006\u00101\u001a\u000202J\u0006\u00103\u001a\u000202R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\f\u0010\rR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0015\u001a\u00020\u00168FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\t\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u001d\"\u0004\b\"\u0010\u001fR\u001a\u0010#\u001a\u00020$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u00064"}, d2 = {"Lcom/join/kotlin/ui/modleregin/GameListFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "viewModle", "Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;", "getViewModle", "()Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;", "viewModle$delegate", "Lkotlin/Lazy;", "viewModelMain", "Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;", "getViewModelMain", "()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;", "viewModelMain$delegate", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/DatabGamelistLayoutBinding;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/DatabGamelistLayoutBinding;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/DatabGamelistLayoutBinding;)V", "adapter", "Lcom/join/kotlin/ui/modleregin/adapter/GameListAdapter;", "getAdapter", "()Lcom/join/kotlin/ui/modleregin/adapter/GameListAdapter;", "adapter$delegate", "mFirstVisiblePosition", "", "getMFirstVisiblePosition", "()I", "setMFirstVisiblePosition", "(I)V", "mLastVisibleIndex", "getMLastVisibleIndex", "setMLastVisibleIndex", "SCROLLING", "", "getSCROLLING", "()Z", "setSCROLLING", "(Z)V", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "updateProgressPartly", "", "updateDownStateList", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameListFragment.kt\ncom/join/kotlin/ui/modleregin/GameListFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n1869#2,2:85\n*S KotlinDebug\n*F\n+ 1 GameListFragment.kt\ncom/join/kotlin/ui/modleregin/GameListFragment\n*L\n80#1:85,2\n*E\n"})
public final class GameListFragment extends Fragment {
    private boolean SCROLLING;
    public kc dataBinding;
    private int mFirstVisiblePosition;
    private int mLastVisibleIndex;

    /* JADX INFO: renamed from: viewModle$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModle = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.modleregin.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameListFragment.viewModle_delegate$lambda$0(this.f49291b);
        }
    });

    /* JADX INFO: renamed from: viewModelMain$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModelMain = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.modleregin.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameListFragment.viewModelMain_delegate$lambda$1(this.f49292b);
        }
    });

    /* JADX INFO: renamed from: adapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy adapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.modleregin.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameListFragment.adapter_delegate$lambda$2(this.f49293b);
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final GameListAdapter adapter_delegate$lambda$2(GameListFragment gameListFragment) {
        Context contextRequireContext = gameListFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        return new GameListAdapter(contextRequireContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BtReginModle viewModelMain_delegate$lambda$1(GameListFragment gameListFragment) {
        FragmentActivity fragmentActivityRequireActivity = gameListFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        return (BtReginModle) new ViewModelProvider(fragmentActivityRequireActivity, new ViewModelProvider.NewInstanceFactory()).get(BtReginModle.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GameListViewModle viewModle_delegate$lambda$0(GameListFragment gameListFragment) {
        return (GameListViewModle) new ViewModelProvider(gameListFragment, new ViewModelProvider.NewInstanceFactory()).get(GameListViewModle.class);
    }

    @NotNull
    public final GameListAdapter getAdapter() {
        return (GameListAdapter) this.adapter.getValue();
    }

    @NotNull
    public final kc getDataBinding() {
        kc kcVar = this.dataBinding;
        if (kcVar != null) {
            return kcVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        return null;
    }

    public final int getMFirstVisiblePosition() {
        return this.mFirstVisiblePosition;
    }

    public final int getMLastVisibleIndex() {
        return this.mLastVisibleIndex;
    }

    public final boolean getSCROLLING() {
        return this.SCROLLING;
    }

    @NotNull
    public final BtReginModle getViewModelMain() {
        return (BtReginModle) this.viewModelMain.getValue();
    }

    @NotNull
    public final GameListViewModle getViewModle() {
        return (GameListViewModle) this.viewModle.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setDataBinding((kc) DataBindingUtil.inflate(inflater, R.layout.datab_gamelist_layout, container, false));
        long j10 = requireArguments().getLong("time");
        List<BtOnlineGame> listBtOnlineGame = getViewModelMain().getListBtOnlineGame();
        if (!(listBtOnlineGame == null || listBtOnlineGame.isEmpty())) {
            getViewModle().showGameList(getViewModelMain().getListBtOnlineGame(), j10);
            getAdapter().notifyDataSetChanged();
        }
        getDataBinding().f40715b.setLoadingMoreEnabled(false);
        getDataBinding().setVariable(50, getViewModle());
        getDataBinding().setVariable(1, getAdapter());
        return getDataBinding().getRoot();
    }

    public final void setDataBinding(@NotNull kc kcVar) {
        Intrinsics.checkNotNullParameter(kcVar, "<set-?>");
        this.dataBinding = kcVar;
    }

    public final void setMFirstVisiblePosition(int i10) {
        this.mFirstVisiblePosition = i10;
    }

    public final void setMLastVisibleIndex(int i10) {
        this.mLastVisibleIndex = i10;
    }

    public final void setSCROLLING(boolean z10) {
        this.SCROLLING = z10;
    }

    public final void updateDownStateList() {
        Iterator<T> it2 = getViewModle().getAllDownloadBeans().iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask((CollectionBeanSub) it2.next());
        }
    }

    public final void updateProgressPartly() {
        GameListAdapter adapter;
        try {
            int i10 = this.mFirstVisiblePosition;
            int i11 = this.mLastVisibleIndex;
            if (i10 > i11) {
                return;
            }
            while (true) {
                List<CommonListMainData> value = getViewModle().getShowDatas().getValue();
                Intrinsics.checkNotNull(value);
                if (i10 >= value.size()) {
                    return;
                }
                List<CommonListMainData> value2 = getViewModle().getShowDatas().getValue();
                Intrinsics.checkNotNull(value2);
                CommonListMainData commonListMainData = value2.get(i10);
                if (commonListMainData.getType() == 2) {
                    Object any = commonListMainData.getAny();
                    Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub");
                    DownloadTask downloadTask = ((CollectionBeanSub) any).getDownloadTask();
                    if (downloadTask != null && ((downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12) && (adapter = getAdapter()) != null)) {
                        adapter.notifyItemChanged(i10, "progress");
                    }
                }
                if (i10 == i11) {
                    return;
                } else {
                    i10++;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
