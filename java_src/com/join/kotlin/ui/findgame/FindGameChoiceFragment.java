package com.join.kotlin.ui.findgame;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.databinding.zj;
import com.join.kotlin.presenter.FindModlePrensenter;
import com.join.kotlin.presenter.view.FindHomeView;
import com.join.kotlin.ui.findgame.adapter.FindHomeChoiceAdapter;
import com.join.kotlin.ui.findgame.data.FindChoiceBannerData;
import com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData;
import com.join.kotlin.ui.findgame.data.FindChoiceResultData;
import com.join.kotlin.ui.findgame.data.FindClassifyResultData;
import com.join.kotlin.ui.findgame.data.TagData;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.j0;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.event.r;
import com.psk.kotlin.ext.CommonExtKt;
import com.psk.kotlin.util.CommonListMainData;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J&\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010/2\b\u00100\u001a\u0004\u0018\u000101H\u0016J\u0018\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u001f2\u0006\u00105\u001a\u000206H\u0016J\b\u00107\u001a\u000203H\u0016J\u0010\u00108\u001a\u0002032\u0006\u00109\u001a\u00020:H\u0007J\b\u0010;\u001a\u000203H\u0002J\b\u0010<\u001a\u000203H\u0016J\b\u0010=\u001a\u000203H\u0016J\u0010\u0010>\u001a\u0002032\u0006\u0010?\u001a\u00020@H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R \u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006A"}, d2 = {"Lcom/join/kotlin/ui/findgame/FindGameChoiceFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/join/kotlin/presenter/view/FindHomeView;", "<init>", "()V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/FindgameAllfragemntLayoutBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/FindgameAllfragemntLayoutBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/FindgameAllfragemntLayoutBinding;)V", "prensenter", "Lcom/join/kotlin/presenter/FindModlePrensenter;", "getPrensenter", "()Lcom/join/kotlin/presenter/FindModlePrensenter;", "setPrensenter", "(Lcom/join/kotlin/presenter/FindModlePrensenter;)V", "adapter", "Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;", "getAdapter", "()Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;", "setAdapter", "(Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;)V", "showDatalist", "", "Lcom/psk/kotlin/util/CommonListMainData;", "getShowDatalist", "()Ljava/util/List;", "setShowDatalist", "(Ljava/util/List;)V", "page", "", "getPage", "()I", "setPage", "(I)V", "requestArgs", "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;", "getRequestArgs", "()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;", "setRequestArgs", "(Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onLoadDataSuccess", "", "pn", "result", "Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;", "onDestroyView", "onEventMainThread", "downloadTaskEvent", "Lcom/join/mgps/event/DownloadTaskEvent;", "updateDowStateList", "showLoding", "hidLoading", "onError", "message", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFindGameChoiceFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FindGameChoiceFragment.kt\ncom/join/kotlin/ui/findgame/FindGameChoiceFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n1#1,193:1\n1869#2,2:194\n167#3,2:196\n182#3,4:198\n*S KotlinDebug\n*F\n+ 1 FindGameChoiceFragment.kt\ncom/join/kotlin/ui/findgame/FindGameChoiceFragment\n*L\n108#1:194,2\n146#1:196,2\n146#1:198,4\n*E\n"})
public final class FindGameChoiceFragment extends Fragment implements FindHomeView {
    public FindHomeChoiceAdapter adapter;
    public zj binding;
    private int page = 1;
    public FindModlePrensenter prensenter;
    public LuckHistoryrequest requestArgs;
    public List<CommonListMainData> showDatalist;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$0(FindGameChoiceFragment findGameChoiceFragment) {
        UtilsMy.N3(findGameChoiceFragment.getContext());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit onCreateView$lambda$1(FindGameChoiceFragment findGameChoiceFragment, Ref.ObjectRef objectRef) {
        FindModlePrensenter prensenter = findGameChoiceFragment.getPrensenter();
        FragmentActivity fragmentActivityRequireActivity = findGameChoiceFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        prensenter.loadFindChoiceData(fragmentActivityRequireActivity, (LuckHistoryrequest) objectRef.element);
        return Unit.INSTANCE;
    }

    private final void updateDowStateList() {
        try {
            for (CommonListMainData commonListMainData : getShowDatalist()) {
                if (commonListMainData.getType() == 2) {
                    Object any = commonListMainData.getAny();
                    Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub");
                    DlTaskManager.INSTANCE.updateDownloadTask((CollectionBeanSub) any);
                } else if (commonListMainData.getType() == 3) {
                    Object any2 = commonListMainData.getAny();
                    Intrinsics.checkNotNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceBannerData");
                    CollectionBeanSub game_info = ((FindChoiceBannerData) any2).getGame_info();
                    DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
                    Intrinsics.checkNotNull(game_info);
                    dlTaskManager.updateDownloadTask(game_info);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @NotNull
    public final FindHomeChoiceAdapter getAdapter() {
        FindHomeChoiceAdapter findHomeChoiceAdapter = this.adapter;
        if (findHomeChoiceAdapter != null) {
            return findHomeChoiceAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        return null;
    }

    @NotNull
    public final zj getBinding() {
        zj zjVar = this.binding;
        if (zjVar != null) {
            return zjVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final FindModlePrensenter getPrensenter() {
        FindModlePrensenter findModlePrensenter = this.prensenter;
        if (findModlePrensenter != null) {
            return findModlePrensenter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("prensenter");
        return null;
    }

    @NotNull
    public final LuckHistoryrequest getRequestArgs() {
        LuckHistoryrequest luckHistoryrequest = this.requestArgs;
        if (luckHistoryrequest != null) {
            return luckHistoryrequest;
        }
        Intrinsics.throwUninitializedPropertyAccessException("requestArgs");
        return null;
    }

    @NotNull
    public final List<CommonListMainData> getShowDatalist() {
        List<CommonListMainData> list = this.showDatalist;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("showDatalist");
        return null;
    }

    @Override // com.psk.kotlin.base.presenter.view.BaseView
    public void hidLoading() {
        getBinding().f48264f.loadMoreComplete();
        getBinding().f48263e.f40741d.setVisibility(8);
        getBinding().f48261c.f41919e.setVisibility(8);
        getBinding().f48264f.setVisibility(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [T, com.join.mgps.activity.vipzone.bean.LuckHistoryrequest] */
    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setBinding(zj.inflate(inflater, container, false));
        setPrensenter(new FindModlePrensenter(this));
        j0.a().d(this);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? luckHistoryrequest = new LuckHistoryrequest();
        objectRef.element = luckHistoryrequest;
        luckHistoryrequest.setPage(1);
        ((LuckHistoryrequest) objectRef.element).setUid(AccountUtil_.getInstance_(getActivity()).getAccountData().getUid());
        getBinding().f48264f.setLayoutManager(new LinearLayoutManager(getActivity()));
        setShowDatalist(new ArrayList());
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        setAdapter(new FindHomeChoiceAdapter(fragmentActivityRequireActivity, getShowDatalist()));
        getBinding().f48264f.setAdapter(getAdapter());
        FindModlePrensenter prensenter = getPrensenter();
        FragmentActivity fragmentActivityRequireActivity2 = requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity2, "requireActivity(...)");
        prensenter.loadFindChoiceData(fragmentActivityRequireActivity2, (LuckHistoryrequest) objectRef.element);
        getBinding().f48264f.setPullRefreshEnabled(true);
        getBinding().f48264f.setLoadingMoreEnabled(true);
        getBinding().f48264f.setPreLoadCount(10);
        Button setNetwork = getBinding().f48261c.f41921g;
        Intrinsics.checkNotNullExpressionValue(setNetwork, "setNetwork");
        CommonExtKt.onClick(setNetwork, new Function0() { // from class: com.join.kotlin.ui.findgame.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FindGameChoiceFragment.onCreateView$lambda$0(this.f49109b);
            }
        });
        ImageView relodingimag = getBinding().f48261c.f41920f;
        Intrinsics.checkNotNullExpressionValue(relodingimag, "relodingimag");
        CommonExtKt.onClick(relodingimag, new Function0() { // from class: com.join.kotlin.ui.findgame.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FindGameChoiceFragment.onCreateView$lambda$1(this.f49110b, objectRef);
            }
        });
        getBinding().f48264f.setLoadingListener(new XRecyclerView.f() { // from class: com.join.kotlin.ui.findgame.FindGameChoiceFragment.onCreateView.3
            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onLoadMore() {
                objectRef.element.setPage(FindGameChoiceFragment.this.getPage());
                FindModlePrensenter prensenter2 = FindGameChoiceFragment.this.getPrensenter();
                FragmentActivity activity = FindGameChoiceFragment.this.getActivity();
                Intrinsics.checkNotNull(activity);
                prensenter2.loadFindChoiceData(activity, objectRef.element);
            }

            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onRefresh() {
                FindGameChoiceFragment.this.setPage(1);
                FindGameChoiceFragment.this.getBinding().f48264f.reset();
                objectRef.element.setPage(FindGameChoiceFragment.this.getPage());
                FindModlePrensenter prensenter2 = FindGameChoiceFragment.this.getPrensenter();
                FragmentActivity activity = FindGameChoiceFragment.this.getActivity();
                Intrinsics.checkNotNull(activity);
                prensenter2.loadFindChoiceData(activity, objectRef.element);
            }
        });
        return getBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        j0.a().e(this);
    }

    @Override // com.psk.kotlin.base.presenter.view.BaseView
    public void onError(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        getBinding().f48264f.loadMoreComplete();
        FragmentActivity activity = getActivity();
        if (activity != null) {
            CommonExtKt.toast(activity, message);
        }
        List<CommonListMainData> showDatalist = getShowDatalist();
        if ((showDatalist == null || showDatalist.isEmpty()) || getShowDatalist().size() <= 0) {
            getBinding().f48263e.f40741d.setVisibility(8);
            getBinding().f48261c.f41919e.setVisibility(0);
            getBinding().f48264f.setVisibility(8);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventMainThread(@NotNull r downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
        int iC = downloadTaskEvent.c();
        if (iC != 2 && iC != 3 && iC != 5 && iC != 6 && iC != 7 && iC != 42 && iC != 48) {
            switch (iC) {
            }
        }
        updateDowStateList();
        getAdapter().notifyDataSetChanged();
    }

    @Override // com.join.kotlin.presenter.view.FindHomeView
    public void onLoadDataSuccess(int pn, @NotNull FindChoiceResultData result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (pn != this.page) {
            return;
        }
        if (pn == 1) {
            getShowDatalist().clear();
            getBinding().f48264f.refreshComplete();
            List<FindChoiceBannerData> banner = result.getBanner();
            if (!(banner == null || banner.isEmpty())) {
                FindChoiceBannerData findChoiceBannerData = result.getBanner().get(0);
                findChoiceBannerData.getGame_info().set_from(142);
                findChoiceBannerData.getGame_info().set_from_type(142);
                DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
                CollectionBeanSub game_info = findChoiceBannerData.getGame_info();
                Intrinsics.checkNotNullExpressionValue(game_info, "getGame_info(...)");
                dlTaskManager.updateDownloadTask(game_info);
                List<CommonListMainData> showDatalist = getShowDatalist();
                Intrinsics.checkNotNull(findChoiceBannerData);
                showDatalist.add(new CommonListMainData(3, findChoiceBannerData, null, null, 12, null));
            }
            List<TagData> guess_you_like = result.getGuess_you_like();
            if (!(guess_you_like == null || guess_you_like.isEmpty())) {
                getShowDatalist().add(new CommonListMainData(1, "猜你喜欢", null, null, 12, null));
                List<CommonListMainData> showDatalist2 = getShowDatalist();
                List<TagData> guess_you_like2 = result.getGuess_you_like();
                Intrinsics.checkNotNullExpressionValue(guess_you_like2, "getGuess_you_like(...)");
                showDatalist2.add(new CommonListMainData(4, guess_you_like2, null, null, 12, null));
            }
        }
        for (FindChoiceColloctionListData findChoiceColloctionListData : result.getCollection_list()) {
            List<CommonListMainData> showDatalist3 = getShowDatalist();
            Intrinsics.checkNotNull(findChoiceColloctionListData);
            showDatalist3.add(new CommonListMainData(1, findChoiceColloctionListData, null, null, 12, null));
            List<CollectionBeanSub> game_list = findChoiceColloctionListData.getGame_list();
            Intrinsics.checkNotNullExpressionValue(game_list, "getGame_list(...)");
            for (CollectionBeanSub collectionBeanSub : game_list) {
                collectionBeanSub.set_from(140);
                collectionBeanSub.set_from_type(140);
            }
            if (findChoiceColloctionListData.getView_type() == 1) {
                List<CommonListMainData> showDatalist4 = getShowDatalist();
                List<CollectionBeanSub> game_list2 = findChoiceColloctionListData.getGame_list();
                Intrinsics.checkNotNullExpressionValue(game_list2, "getGame_list(...)");
                showDatalist4.add(new CommonListMainData(6, game_list2, null, null, 12, null));
            } else {
                List<CommonListMainData> showDatalist5 = getShowDatalist();
                List<CollectionBeanSub> game_list3 = findChoiceColloctionListData.getGame_list();
                Intrinsics.checkNotNullExpressionValue(game_list3, "getGame_list(...)");
                showDatalist5.add(new CommonListMainData(5, game_list3, null, null, 12, null));
            }
        }
        if (result.getCollection_list().size() > 0) {
            this.page++;
            getBinding().f48264f.loadMoreComplete();
        } else {
            getBinding().f48264f.setNoMore();
        }
        updateDowStateList();
        getAdapter().notifyDataSetChanged();
    }

    @Override // com.join.kotlin.presenter.view.FindHomeView
    public void onLoadDataSuccessV9(int i10, @NotNull FindClassifyResultData findClassifyResultData) {
        FindHomeView.DefaultImpls.onLoadDataSuccessV9(this, i10, findClassifyResultData);
    }

    public final void setAdapter(@NotNull FindHomeChoiceAdapter findHomeChoiceAdapter) {
        Intrinsics.checkNotNullParameter(findHomeChoiceAdapter, "<set-?>");
        this.adapter = findHomeChoiceAdapter;
    }

    public final void setBinding(@NotNull zj zjVar) {
        Intrinsics.checkNotNullParameter(zjVar, "<set-?>");
        this.binding = zjVar;
    }

    public final void setPage(int i10) {
        this.page = i10;
    }

    public final void setPrensenter(@NotNull FindModlePrensenter findModlePrensenter) {
        Intrinsics.checkNotNullParameter(findModlePrensenter, "<set-?>");
        this.prensenter = findModlePrensenter;
    }

    public final void setRequestArgs(@NotNull LuckHistoryrequest luckHistoryrequest) {
        Intrinsics.checkNotNullParameter(luckHistoryrequest, "<set-?>");
        this.requestArgs = luckHistoryrequest;
    }

    public final void setShowDatalist(@NotNull List<CommonListMainData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.showDatalist = list;
    }

    @Override // com.psk.kotlin.base.presenter.view.BaseView
    public void showLoding() {
        getBinding().f48263e.f40741d.setVisibility(0);
        getBinding().f48261c.f41919e.setVisibility(8);
        getBinding().f48264f.setVisibility(8);
    }
}
