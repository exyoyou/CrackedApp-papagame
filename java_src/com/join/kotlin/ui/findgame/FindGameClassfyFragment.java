package com.join.kotlin.ui.findgame;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.ak;
import com.join.android.app.mgsim.wufun.databinding.bk;
import com.join.kotlin.presenter.FindModlePrensenter;
import com.join.kotlin.presenter.view.FindHomeView;
import com.join.kotlin.ui.findgame.adapter.FindClassifyAdapter;
import com.join.kotlin.ui.findgame.adapter.FindTypeListAdapter;
import com.join.kotlin.ui.findgame.data.FindChoiceBannerData;
import com.join.kotlin.ui.findgame.data.FindChoiceResultData;
import com.join.kotlin.ui.findgame.data.FindClassifyResultData;
import com.join.kotlin.ui.findgame.data.GameSubTypeData;
import com.join.kotlin.ui.findgame.data.GameTypeData;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.j0;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.event.r;
import com.join.mgps.pref.PrefDef_;
import com.kuaishou.weapon.p0.bo;
import com.psk.kotlin.ext.CommonExtKt;
import com.psk.kotlin.util.CommonListMainData;
import com.psk.kotlin.util.GridSpacingItemDecoration;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002:\u0003mnoB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J&\u0010O\u001a\u0004\u0018\u00010P2\u0006\u0010Q\u001a\u00020R2\b\u0010S\u001a\u0004\u0018\u00010T2\b\u0010U\u001a\u0004\u0018\u00010VH\u0016J\u0010\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020ZH\u0007J\u0006\u0010[\u001a\u00020XJ\b\u0010\\\u001a\u00020XH\u0016J\u001a\u0010]\u001a\u00020X2\u0006\u0010^\u001a\u00020P2\b\u0010U\u001a\u0004\u0018\u00010VH\u0016J\u0018\u0010b\u001a\u00020X2\u0006\u0010c\u001a\u0002082\u0006\u0010d\u001a\u00020eH\u0016J\u000e\u0010f\u001a\u00020X2\u0006\u0010g\u001a\u000208J\b\u0010h\u001a\u00020XH\u0016J\b\u0010i\u001a\u00020XH\u0016J\u0010\u0010j\u001a\u00020X2\u0006\u0010k\u001a\u00020lH\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R \u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001a\u0010*\u001a\u00020+X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R \u00100\u001a\b\u0012\u0004\u0012\u0002010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0015\"\u0004\b3\u0010\u0017R \u00104\u001a\b\u0012\u0004\u0012\u0002010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u0015\"\u0004\b6\u0010\u0017R\u001a\u00107\u001a\u000208X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R!\u0010=\u001a\u0012\u0012\u0004\u0012\u00020?0>j\b\u0012\u0004\u0012\u00020?`@¢\u0006\b\n\u0000\u001a\u0004\bA\u0010BR\u001a\u0010C\u001a\u000208X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010:\"\u0004\bE\u0010<R\u001a\u0010F\u001a\u000208X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010:\"\u0004\bH\u0010<R\u001a\u0010I\u001a\u00020JX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR\u001a\u0010_\u001a\u000208X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b`\u0010:\"\u0004\ba\u0010<¨\u0006p"}, d2 = {"Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/join/kotlin/presenter/view/FindHomeView;", "<init>", "()V", "presenter", "Lcom/join/kotlin/presenter/FindModlePrensenter;", "getPresenter", "()Lcom/join/kotlin/presenter/FindModlePrensenter;", "setPresenter", "(Lcom/join/kotlin/presenter/FindModlePrensenter;)V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/FindgameClassfyFragmentLayoutBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/FindgameClassfyFragmentLayoutBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/FindgameClassfyFragmentLayoutBinding;)V", "gameTypeList", "", "Lcom/join/kotlin/ui/findgame/data/GameTypeData;", "getGameTypeList", "()Ljava/util/List;", "setGameTypeList", "(Ljava/util/List;)V", "requestArgs", "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;", "getRequestArgs", "()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;", "setRequestArgs", "(Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V", "leftTypeAdapter", "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;", "getLeftTypeAdapter", "()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;", "setLeftTypeAdapter", "(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;)V", "findClassifyAdapter", "Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;", "getFindClassifyAdapter", "()Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;", "setFindClassifyAdapter", "(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;)V", "findTypeAdapter", "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;", "getFindTypeAdapter", "()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;", "setFindTypeAdapter", "(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;)V", "choiceListData", "Lcom/psk/kotlin/util/CommonListMainData;", "getChoiceListData", "setChoiceListData", "datas", "getDatas", "setDatas", "selectedType", "", "getSelectedType", "()I", "setSelectedType", "(I)V", "allDownloadBeans", "Ljava/util/ArrayList;", "Lcom/join/mgps/dto/CollectionBeanSub;", "Lkotlin/collections/ArrayList;", "getAllDownloadBeans", "()Ljava/util/ArrayList;", "mFirstVisiblePosition", "getMFirstVisiblePosition", "setMFirstVisiblePosition", "mLastVisibleIndex", "getMLastVisibleIndex", "setMLastVisibleIndex", "SCROLLING", "", "getSCROLLING", "()Z", "setSCROLLING", "(Z)V", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onEventMainThread", "", "downloadTaskEvent", "Lcom/join/mgps/event/DownloadTaskEvent;", "updateDownStateList", "onDestroyView", "onViewCreated", "view", "page", "getPage", "setPage", "onLoadDataSuccessV9", "pagex", "result", "Lcom/join/kotlin/ui/findgame/data/FindClassifyResultData;", "showTypeList", "id", "showLoding", "hidLoading", "onError", "message", "", "TabViewHolder", "OnSelectedTabListener", "TabRecycleAdapter", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFindGameClassfyFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FindGameClassfyFragment.kt\ncom/join/kotlin/ui/findgame/FindGameClassfyFragment\n+ 2 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,425:1\n167#2,2:426\n182#2,4:428\n1869#3,2:432\n1869#3,2:434\n774#3:436\n865#3,2:437\n1374#3:439\n1460#3,5:440\n1869#3,2:445\n774#3:447\n865#3,2:448\n1374#3:450\n1460#3,5:451\n1869#3,2:456\n774#3:458\n865#3,2:459\n1374#3:461\n1460#3,5:462\n1869#3,2:467\n*S KotlinDebug\n*F\n+ 1 FindGameClassfyFragment.kt\ncom/join/kotlin/ui/findgame/FindGameClassfyFragment\n*L\n163#1:426,2\n163#1:428,4\n171#1:432,2\n249#1:434,2\n342#1:436\n342#1:437,2\n342#1:439\n342#1:440,5\n343#1:445,2\n362#1:447\n362#1:448,2\n362#1:450\n362#1:451,5\n363#1:456,2\n382#1:458\n382#1:459,2\n382#1:461\n382#1:462,5\n383#1:467,2\n*E\n"})
public final class FindGameClassfyFragment extends Fragment implements FindHomeView {
    private boolean SCROLLING;
    public bk binding;
    public FindClassifyAdapter findClassifyAdapter;
    public FindTypeListAdapter findTypeAdapter;
    public List<GameTypeData> gameTypeList;
    public TabRecycleAdapter leftTypeAdapter;
    private int mFirstVisiblePosition;
    private int mLastVisibleIndex;
    public FindModlePrensenter presenter;
    public LuckHistoryrequest requestArgs;
    private int selectedType;

    @NotNull
    private List<CommonListMainData> choiceListData = new ArrayList();

    @NotNull
    private List<CommonListMainData> datas = new ArrayList();

    @NotNull
    private final ArrayList<CollectionBeanSub> allDownloadBeans = new ArrayList<>();
    private int page = 1;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;", "", "onSelected", "", "id", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnSelectedTabListener {
        void onSelected(int id2);
    }

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001f\u001a\u00020\u001cH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R \u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006 "}, d2 = {"Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;", "context", "Landroid/content/Context;", "listener", "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;", "gameTypeList", "", "Lcom/join/kotlin/ui/findgame/data/GameTypeData;", "<init>", "(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;Ljava/util/List;)V", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "getListener", "()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;", "setListener", "(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;)V", "getGameTypeList", "()Ljava/util/List;", "setGameTypeList", "(Ljava/util/List;)V", "onCreateViewHolder", bo.f74530g, "Landroid/view/ViewGroup;", "p1", "", "onBindViewHolder", "", "getItemCount", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class TabRecycleAdapter extends RecyclerView.Adapter<TabViewHolder> {

        @NotNull
        private Context context;

        @NotNull
        private List<GameTypeData> gameTypeList;

        @NotNull
        private OnSelectedTabListener listener;

        public TabRecycleAdapter(@NotNull Context context, @NotNull OnSelectedTabListener listener, @NotNull List<GameTypeData> gameTypeList) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(listener, "listener");
            Intrinsics.checkNotNullParameter(gameTypeList, "gameTypeList");
            this.context = context;
            this.listener = listener;
            this.gameTypeList = gameTypeList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static final Unit onBindViewHolder$lambda$0(TabRecycleAdapter tabRecycleAdapter, Ref.ObjectRef objectRef) {
            for (GameTypeData gameTypeData : tabRecycleAdapter.gameTypeList) {
                gameTypeData.setSelected(((GameTypeData) objectRef.element).getType() == gameTypeData.getType());
            }
            tabRecycleAdapter.notifyDataSetChanged();
            tabRecycleAdapter.listener.onSelected(((GameTypeData) objectRef.element).getType());
            return Unit.INSTANCE;
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        @NotNull
        public final List<GameTypeData> getGameTypeList() {
            return this.gameTypeList;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.gameTypeList.size();
        }

        @NotNull
        public final OnSelectedTabListener getListener() {
            return this.listener;
        }

        public final void setContext(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "<set-?>");
            this.context = context;
        }

        public final void setGameTypeList(@NotNull List<GameTypeData> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.gameTypeList = list;
        }

        public final void setListener(@NotNull OnSelectedTabListener onSelectedTabListener) {
            Intrinsics.checkNotNullParameter(onSelectedTabListener, "<set-?>");
            this.listener = onSelectedTabListener;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v1, types: [T, java.lang.Object] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull TabViewHolder p10, int p11) {
            Intrinsics.checkNotNullParameter(p10, "p0");
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = this.gameTypeList.get(p11);
            p10.getBinding().f35873c.setText(((GameTypeData) objectRef.element).getTitle());
            p10.getBinding().f35873c.setSelected(((GameTypeData) objectRef.element).isSelected());
            TextView mTopCategoryNameTv = p10.getBinding().f35873c;
            Intrinsics.checkNotNullExpressionValue(mTopCategoryNameTv, "mTopCategoryNameTv");
            CommonExtKt.onClick(mTopCategoryNameTv, new Function0() { // from class: com.join.kotlin.ui.findgame.o
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return FindGameClassfyFragment.TabRecycleAdapter.onBindViewHolder$lambda$0(this.f49114b, objectRef);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public TabViewHolder onCreateViewHolder(@NotNull ViewGroup p10, int p11) {
            Intrinsics.checkNotNullParameter(p10, "p0");
            ak akVarInflate = ak.inflate(LayoutInflater.from(this.context), p10, false);
            Intrinsics.checkNotNullExpressionValue(akVarInflate, "inflate(...)");
            return new TabViewHolder(akVarInflate);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "bindingx", "Lcom/join/android/app/mgsim/wufun/databinding/FindgameClassfyCategoryItemBinding;", "<init>", "(Lcom/join/android/app/mgsim/wufun/databinding/FindgameClassfyCategoryItemBinding;)V", "binding", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/FindgameClassfyCategoryItemBinding;", "setBinding", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class TabViewHolder extends RecyclerView.ViewHolder {

        @NotNull
        private ak binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TabViewHolder(@NotNull ak bindingx) {
            super(bindingx.getRoot());
            Intrinsics.checkNotNullParameter(bindingx, "bindingx");
            this.binding = bindingx;
        }

        @NotNull
        public final ak getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull ak akVar) {
            Intrinsics.checkNotNullParameter(akVar, "<set-?>");
            this.binding = akVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$0(FindGameClassfyFragment findGameClassfyFragment) {
        UtilsMy.N3(findGameClassfyFragment.getContext());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$1(FindGameClassfyFragment findGameClassfyFragment) {
        FindModlePrensenter presenter = findGameClassfyFragment.getPresenter();
        FragmentActivity fragmentActivityRequireActivity = findGameClassfyFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        presenter.loadClassfyDatas(fragmentActivityRequireActivity, findGameClassfyFragment.getRequestArgs());
        return Unit.INSTANCE;
    }

    @NotNull
    public final ArrayList<CollectionBeanSub> getAllDownloadBeans() {
        return this.allDownloadBeans;
    }

    @NotNull
    public final bk getBinding() {
        bk bkVar = this.binding;
        if (bkVar != null) {
            return bkVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @NotNull
    public final List<CommonListMainData> getChoiceListData() {
        return this.choiceListData;
    }

    @NotNull
    public final List<CommonListMainData> getDatas() {
        return this.datas;
    }

    @NotNull
    public final FindClassifyAdapter getFindClassifyAdapter() {
        FindClassifyAdapter findClassifyAdapter = this.findClassifyAdapter;
        if (findClassifyAdapter != null) {
            return findClassifyAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("findClassifyAdapter");
        return null;
    }

    @NotNull
    public final FindTypeListAdapter getFindTypeAdapter() {
        FindTypeListAdapter findTypeListAdapter = this.findTypeAdapter;
        if (findTypeListAdapter != null) {
            return findTypeListAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("findTypeAdapter");
        return null;
    }

    @NotNull
    public final List<GameTypeData> getGameTypeList() {
        List<GameTypeData> list = this.gameTypeList;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
        return null;
    }

    @NotNull
    public final TabRecycleAdapter getLeftTypeAdapter() {
        TabRecycleAdapter tabRecycleAdapter = this.leftTypeAdapter;
        if (tabRecycleAdapter != null) {
            return tabRecycleAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("leftTypeAdapter");
        return null;
    }

    public final int getMFirstVisiblePosition() {
        return this.mFirstVisiblePosition;
    }

    public final int getMLastVisibleIndex() {
        return this.mLastVisibleIndex;
    }

    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final FindModlePrensenter getPresenter() {
        FindModlePrensenter findModlePrensenter = this.presenter;
        if (findModlePrensenter != null) {
            return findModlePrensenter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("presenter");
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

    public final boolean getSCROLLING() {
        return this.SCROLLING;
    }

    public final int getSelectedType() {
        return this.selectedType;
    }

    @Override // com.psk.kotlin.base.presenter.view.BaseView
    public void hidLoading() {
        if (!isAdded() || getView() == null) {
            return;
        }
        getBinding().f36429f.f40741d.setVisibility(8);
        getBinding().f36427d.f41919e.setVisibility(8);
        getBinding().f36428e.setVisibility(0);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setBinding(bk.inflate(inflater, container, false));
        j0.a().d(this);
        getBinding().f36430g.setLayoutManager(new LinearLayoutManager(getContext()));
        setGameTypeList(new ArrayList());
        String strD = new PrefDef_(getContext()).gameTypeList().d();
        if (!(strD == null || strD.length() == 0)) {
            setGameTypeList((List) new ObjectMapper().readValue(strD, JsonMapper.getInstance().createCollectionType(List.class, GameTypeData.class)));
        }
        if (getGameTypeList().size() == 0) {
            getGameTypeList().add(new GameTypeData(0, "精选", 0, null, true));
            getGameTypeList().add(new GameTypeData(1, "模拟器", 1, null, false));
            getGameTypeList().add(new GameTypeData(2, "安卓", 2, null, false));
            getGameTypeList().add(new GameTypeData(3, "分类", 3, null, false));
            getGameTypeList().add(new GameTypeData(4, "题材", 4, null, false));
            getGameTypeList().add(new GameTypeData(5, "玩法", 5, null, false));
            getGameTypeList().add(new GameTypeData(6, "特色", 6, null, false));
        }
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        setLeftTypeAdapter(new TabRecycleAdapter(fragmentActivityRequireActivity, new OnSelectedTabListener() { // from class: com.join.kotlin.ui.findgame.FindGameClassfyFragment.onCreateView.1
            @Override // com.join.kotlin.ui.findgame.FindGameClassfyFragment.OnSelectedTabListener
            public void onSelected(int id2) {
                FindGameClassfyFragment.this.setSelectedType(id2);
                List<CommonListMainData> choiceListData = FindGameClassfyFragment.this.getChoiceListData();
                if (choiceListData == null || choiceListData.isEmpty()) {
                    return;
                }
                FindGameClassfyFragment.this.showTypeList(id2);
            }
        }, getGameTypeList()));
        getBinding().f36430g.setAdapter(getLeftTypeAdapter());
        getLeftTypeAdapter().notifyDataSetChanged();
        Button setNetwork = getBinding().f36427d.f41921g;
        Intrinsics.checkNotNullExpressionValue(setNetwork, "setNetwork");
        CommonExtKt.onClick(setNetwork, new Function0() { // from class: com.join.kotlin.ui.findgame.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FindGameClassfyFragment.onCreateView$lambda$0(this.f49112b);
            }
        });
        ImageView relodingimag = getBinding().f36427d.f41920f;
        Intrinsics.checkNotNullExpressionValue(relodingimag, "relodingimag");
        CommonExtKt.onClick(relodingimag, new Function0() { // from class: com.join.kotlin.ui.findgame.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FindGameClassfyFragment.onCreateView$lambda$1(this.f49113b);
            }
        });
        setPresenter(new FindModlePrensenter(this));
        FragmentActivity fragmentActivityRequireActivity2 = requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity2, "requireActivity(...)");
        setFindClassifyAdapter(new FindClassifyAdapter(fragmentActivityRequireActivity2, this.choiceListData));
        getBinding().f36426c.setAdapter(getFindClassifyAdapter());
        getBinding().f36431h.setLoadingMoreEnabled(false);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 6);
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.join.kotlin.ui.findgame.FindGameClassfyFragment.onCreateView.4
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int positon) {
                if (positon >= FindGameClassfyFragment.this.getChoiceListData().size() || FindGameClassfyFragment.this.getChoiceListData().get(positon).getType() == 3 || FindGameClassfyFragment.this.getChoiceListData().get(positon).getType() == 1) {
                    return 6;
                }
                return FindGameClassfyFragment.this.getChoiceListData().get(positon).getType() == 7 ? 3 : 2;
            }
        });
        getBinding().f36426c.setLayoutManager(gridLayoutManager);
        getBinding().f36426c.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.ui.findgame.FindGameClassfyFragment.onCreateView.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                FindGameClassfyFragment.this.setSCROLLING(newState != 0);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrolled(recyclerView, dx, dy);
            }
        });
        FragmentActivity fragmentActivityRequireActivity3 = requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity3, "requireActivity(...)");
        setFindTypeAdapter(new FindTypeListAdapter(fragmentActivityRequireActivity3, getId(), this.datas, new FindTypeListAdapter.OnItenSelected() { // from class: com.join.kotlin.ui.findgame.FindGameClassfyFragment.onCreateView.6
            @Override // com.join.kotlin.ui.findgame.adapter.FindTypeListAdapter.OnItenSelected
            public void onItemselected(GameSubTypeData type) {
                Intrinsics.checkNotNullParameter(type, "type");
                Intent intent = new Intent(FindGameClassfyFragment.this.getContext(), (Class<?>) CategoryDetailListActivity.class);
                intent.putExtra("typeId", FindGameClassfyFragment.this.getSelectedType());
                intent.putExtra("tagId", type.getId());
                intent.putExtra("tagName", type.getTitle());
                Context context = FindGameClassfyFragment.this.getContext();
                if (context != null) {
                    context.startActivity(intent);
                }
            }
        }));
        getBinding().f36431h.setAdapter(getFindTypeAdapter());
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
        FragmentActivity activity = getActivity();
        if (activity != null) {
            CommonExtKt.toast(activity, message);
        }
        if (!isAdded() || getView() == null) {
            return;
        }
        List<CommonListMainData> list = this.choiceListData;
        if ((list == null || list.isEmpty()) || this.choiceListData.size() <= 0) {
            getBinding().f36429f.f40741d.setVisibility(8);
            getBinding().f36427d.f41919e.setVisibility(0);
            getBinding().f36428e.setVisibility(8);
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
        updateDownStateList();
        getFindClassifyAdapter().notifyDataSetChanged();
    }

    @Override // com.join.kotlin.presenter.view.FindHomeView
    public void onLoadDataSuccess(int i10, @NotNull FindChoiceResultData findChoiceResultData) {
        FindHomeView.DefaultImpls.onLoadDataSuccess(this, i10, findChoiceResultData);
    }

    @Override // com.join.kotlin.presenter.view.FindHomeView
    public void onLoadDataSuccessV9(int pagex, @NotNull FindClassifyResultData result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!isAdded() || getView() == null) {
            return;
        }
        if (pagex == 1 || pagex == this.page) {
            if (pagex == 1) {
                this.page = 1;
                getBinding().f36426c.refreshComplete();
                this.choiceListData.clear();
                this.allDownloadBeans.clear();
                setGameTypeList(result.getGame_type());
                getGameTypeList().add(0, new GameTypeData(0, "精选", 0, null, true));
                try {
                    new PrefDef_(requireActivity()).gameTypeList().g(JsonMapper.getInstance().toJson(getGameTypeList()));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                getLeftTypeAdapter().notifyDataSetChanged();
                List<FindChoiceBannerData> banner = result.getBanner();
                if (!(banner == null || banner.isEmpty())) {
                    FindChoiceBannerData findChoiceBannerData = result.getBanner().get(0);
                    findChoiceBannerData.getGame_info().set_from(143);
                    findChoiceBannerData.getGame_info().set_from_type(143);
                    this.allDownloadBeans.add(findChoiceBannerData.getGame_info());
                    List<CommonListMainData> list = this.choiceListData;
                    FindChoiceBannerData findChoiceBannerData2 = result.getBanner().get(0);
                    Intrinsics.checkNotNullExpressionValue(findChoiceBannerData2, "get(...)");
                    list.add(new CommonListMainData(3, findChoiceBannerData2, null, null, 12, null));
                }
                updateDownStateList();
            }
            List<CommonGameInfoBean> collection_list = result.getCollection_list();
            Intrinsics.checkNotNullExpressionValue(collection_list, "getCollection_list(...)");
            if (!collection_list.isEmpty()) {
                getBinding().f36426c.loadMoreComplete();
                this.page++;
            } else {
                getBinding().f36426c.setNoMore();
            }
            List<CommonGameInfoBean> collection_list2 = result.getCollection_list();
            if (collection_list2 != null) {
                for (CommonGameInfoBean commonGameInfoBean : collection_list2) {
                    List<CommonListMainData> list2 = this.choiceListData;
                    Intrinsics.checkNotNull(commonGameInfoBean);
                    list2.add(new CommonListMainData(7, commonGameInfoBean, null, null, 12, null));
                }
            }
            getFindClassifyAdapter().notifyDataSetChanged();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        setRequestArgs(new LuckHistoryrequest());
        getRequestArgs().setPage(1);
        getRequestArgs().setUid(AccountUtil_.getInstance_(getActivity()).getAccountData().getUid());
        FindModlePrensenter presenter = getPresenter();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.checkNotNull(fragmentActivityRequireActivity);
        presenter.loadClassfyDatas(fragmentActivityRequireActivity, getRequestArgs());
        getBinding().f36426c.setPullRefreshEnabled(true);
        getBinding().f36426c.setLoadingMoreEnabled(true);
        getBinding().f36426c.setPreLoadCount(10);
        getBinding().f36426c.setLoadingListener(new XRecyclerView.f() { // from class: com.join.kotlin.ui.findgame.FindGameClassfyFragment.onViewCreated.1
            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onLoadMore() {
                FindGameClassfyFragment.this.getRequestArgs().setPage(FindGameClassfyFragment.this.getPage());
                FindModlePrensenter presenter2 = FindGameClassfyFragment.this.getPresenter();
                FragmentActivity activity = FindGameClassfyFragment.this.getActivity();
                Intrinsics.checkNotNull(activity);
                presenter2.loadClassfyDatas(activity, FindGameClassfyFragment.this.getRequestArgs());
            }

            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onRefresh() {
                FindGameClassfyFragment.this.getBinding().f36426c.reset();
                FindGameClassfyFragment.this.setPage(1);
                FindGameClassfyFragment.this.getRequestArgs().setPage(FindGameClassfyFragment.this.getPage());
                FindModlePrensenter presenter2 = FindGameClassfyFragment.this.getPresenter();
                FragmentActivity activity = FindGameClassfyFragment.this.getActivity();
                Intrinsics.checkNotNull(activity);
                presenter2.loadClassfyDatas(activity, FindGameClassfyFragment.this.getRequestArgs());
            }
        });
    }

    public final void setBinding(@NotNull bk bkVar) {
        Intrinsics.checkNotNullParameter(bkVar, "<set-?>");
        this.binding = bkVar;
    }

    public final void setChoiceListData(@NotNull List<CommonListMainData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.choiceListData = list;
    }

    public final void setDatas(@NotNull List<CommonListMainData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.datas = list;
    }

    public final void setFindClassifyAdapter(@NotNull FindClassifyAdapter findClassifyAdapter) {
        Intrinsics.checkNotNullParameter(findClassifyAdapter, "<set-?>");
        this.findClassifyAdapter = findClassifyAdapter;
    }

    public final void setFindTypeAdapter(@NotNull FindTypeListAdapter findTypeListAdapter) {
        Intrinsics.checkNotNullParameter(findTypeListAdapter, "<set-?>");
        this.findTypeAdapter = findTypeListAdapter;
    }

    public final void setGameTypeList(@NotNull List<GameTypeData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.gameTypeList = list;
    }

    public final void setLeftTypeAdapter(@NotNull TabRecycleAdapter tabRecycleAdapter) {
        Intrinsics.checkNotNullParameter(tabRecycleAdapter, "<set-?>");
        this.leftTypeAdapter = tabRecycleAdapter;
    }

    public final void setMFirstVisiblePosition(int i10) {
        this.mFirstVisiblePosition = i10;
    }

    public final void setMLastVisibleIndex(int i10) {
        this.mLastVisibleIndex = i10;
    }

    public final void setPage(int i10) {
        this.page = i10;
    }

    public final void setPresenter(@NotNull FindModlePrensenter findModlePrensenter) {
        Intrinsics.checkNotNullParameter(findModlePrensenter, "<set-?>");
        this.presenter = findModlePrensenter;
    }

    public final void setRequestArgs(@NotNull LuckHistoryrequest luckHistoryrequest) {
        Intrinsics.checkNotNullParameter(luckHistoryrequest, "<set-?>");
        this.requestArgs = luckHistoryrequest;
    }

    public final void setSCROLLING(boolean z10) {
        this.SCROLLING = z10;
    }

    public final void setSelectedType(int i10) {
        this.selectedType = i10;
    }

    @Override // com.psk.kotlin.base.presenter.view.BaseView
    public void showLoding() {
        if (!isAdded() || getView() == null) {
            return;
        }
        getBinding().f36429f.f40741d.setVisibility(0);
        getBinding().f36427d.f41919e.setVisibility(8);
        getBinding().f36428e.setVisibility(8);
    }

    public final void showTypeList(int id2) {
        try {
            if (id2 == 0) {
                getBinding().f36428e.setVisibility(0);
                getBinding().f36431h.setVisibility(8);
                getFindClassifyAdapter();
                return;
            }
            getBinding().f36428e.setVisibility(8);
            getBinding().f36431h.setVisibility(0);
            this.datas.clear();
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp16);
            switch (id2) {
                case 1:
                    getBinding().f36431h.setLayoutManager(new GridLayoutManager(getContext(), 2));
                    while (getBinding().f36431h.getItemDecorationCount() > 0) {
                        getBinding().f36431h.removeItemDecorationAt(0);
                    }
                    getBinding().f36431h.addItemDecoration(new GridSpacingItemDecoration(2, dimensionPixelOffset, false));
                    List<GameTypeData> gameTypeList = getGameTypeList();
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : gameTypeList) {
                        if (((GameTypeData) obj).getType() == id2) {
                            arrayList.add(obj);
                        }
                    }
                    ArrayList<GameSubTypeData> arrayList2 = new ArrayList();
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        List<GameSubTypeData> sub_game_type = ((GameTypeData) it2.next()).getSub_game_type();
                        Intrinsics.checkNotNull(sub_game_type);
                        CollectionsKt__MutableCollectionsKt.addAll(arrayList2, sub_game_type);
                    }
                    for (GameSubTypeData gameSubTypeData : arrayList2) {
                        List<CommonListMainData> list = this.datas;
                        Intrinsics.checkNotNull(gameSubTypeData);
                        list.add(new CommonListMainData(3, gameSubTypeData, null, null, 12, null));
                    }
                    break;
                case 2:
                case 3:
                    getBinding().f36431h.setLayoutManager(new GridLayoutManager(getContext(), 1));
                    while (getBinding().f36431h.getItemDecorationCount() > 0) {
                        getBinding().f36431h.removeItemDecorationAt(0);
                    }
                    getBinding().f36431h.addItemDecoration(new GridSpacingItemDecoration(1, dimensionPixelOffset, false));
                    List<GameTypeData> gameTypeList2 = getGameTypeList();
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj2 : gameTypeList2) {
                        if (((GameTypeData) obj2).getType() == id2) {
                            arrayList3.add(obj2);
                        }
                    }
                    ArrayList<GameSubTypeData> arrayList4 = new ArrayList();
                    Iterator it3 = arrayList3.iterator();
                    while (it3.hasNext()) {
                        List<GameSubTypeData> sub_game_type2 = ((GameTypeData) it3.next()).getSub_game_type();
                        Intrinsics.checkNotNull(sub_game_type2);
                        CollectionsKt__MutableCollectionsKt.addAll(arrayList4, sub_game_type2);
                    }
                    for (GameSubTypeData gameSubTypeData2 : arrayList4) {
                        List<CommonListMainData> list2 = this.datas;
                        Intrinsics.checkNotNull(gameSubTypeData2);
                        list2.add(new CommonListMainData(3, gameSubTypeData2, null, null, 12, null));
                    }
                    break;
                case 4:
                case 5:
                case 6:
                    getBinding().f36431h.setLayoutManager(new GridLayoutManager(getContext(), 3));
                    while (getBinding().f36431h.getItemDecorationCount() > 0) {
                        getBinding().f36431h.removeItemDecorationAt(0);
                    }
                    getBinding().f36431h.addItemDecoration(new GridSpacingItemDecoration(3, dimensionPixelOffset, false));
                    List<GameTypeData> gameTypeList3 = getGameTypeList();
                    ArrayList arrayList5 = new ArrayList();
                    for (Object obj3 : gameTypeList3) {
                        if (((GameTypeData) obj3).getType() == id2) {
                            arrayList5.add(obj3);
                        }
                    }
                    ArrayList<GameSubTypeData> arrayList6 = new ArrayList();
                    Iterator it4 = arrayList5.iterator();
                    while (it4.hasNext()) {
                        List<GameSubTypeData> sub_game_type3 = ((GameTypeData) it4.next()).getSub_game_type();
                        Intrinsics.checkNotNull(sub_game_type3);
                        CollectionsKt__MutableCollectionsKt.addAll(arrayList6, sub_game_type3);
                    }
                    for (GameSubTypeData gameSubTypeData3 : arrayList6) {
                        List<CommonListMainData> list3 = this.datas;
                        Intrinsics.checkNotNull(gameSubTypeData3);
                        list3.add(new CommonListMainData(7, gameSubTypeData3, null, null, 12, null));
                    }
                    break;
            }
            getFindTypeAdapter().updateDatas(id2);
        } catch (Exception unused) {
        }
    }

    public final void updateDownStateList() {
        Iterator<T> it2 = this.allDownloadBeans.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask((CollectionBeanSub) it2.next());
        }
    }
}
