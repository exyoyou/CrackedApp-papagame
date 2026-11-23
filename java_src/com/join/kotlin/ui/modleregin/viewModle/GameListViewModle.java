package com.join.kotlin.ui.modleregin.viewModle;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.join.kotlin.domain.common.AppListItemShowBean;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.modleregin.modle.BtGameListItem;
import com.join.kotlin.ui.modleregin.modle.BtOnlineGame;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.CollectionBeanSub;
import com.psk.kotlin.util.CommonListMainData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010,\u001a\u00020-2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020/0\u00062\u0006\u00100\u001a\u000201R&\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R \u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\t\"\u0004\b\u0015\u0010\u000bR \u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\r0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\t\"\u0004\b\u0018\u0010\u000bR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R!\u0010&\u001a\u0012\u0012\u0004\u0012\u00020(0'j\b\u0012\u0004\u0012\u00020(`)¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+¨\u00062"}, d2 = {"Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "showDatas", "Landroidx/lifecycle/MutableLiveData;", "", "Lcom/psk/kotlin/util/CommonListMainData;", "getShowDatas", "()Landroidx/lifecycle/MutableLiveData;", "setShowDatas", "(Landroidx/lifecycle/MutableLiveData;)V", "page", "", "getPage", "()I", "setPage", "(I)V", "loadBindData", "Lcom/join/kotlin/domain/common/LoadBindindData;", "getLoadBindData", "setLoadBindData", "recycleViewStatus", "getRecycleViewStatus", "setRecycleViewStatus", "manager", "Landroidx/recyclerview/widget/LinearLayoutManager;", "getManager", "()Landroidx/recyclerview/widget/LinearLayoutManager;", "setManager", "(Landroidx/recyclerview/widget/LinearLayoutManager;)V", "adapter", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "getAdapter", "()Landroidx/recyclerview/widget/RecyclerView$Adapter;", "setAdapter", "(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V", "allDownloadBeans", "Ljava/util/ArrayList;", "Lcom/join/mgps/dto/CollectionBeanSub;", "Lkotlin/collections/ArrayList;", "getAllDownloadBeans", "()Ljava/util/ArrayList;", "showGameList", "", "onlineGames", "Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;", "time", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameListViewModle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameListViewModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/GameListViewModle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,67:1\n774#2:68\n865#2,2:69\n1869#2,2:71\n*S KotlinDebug\n*F\n+ 1 GameListViewModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/GameListViewModle\n*L\n35#1:68\n35#1:69,2\n38#1:71,2\n*E\n"})
public final class GameListViewModle extends ViewModel {

    @Nullable
    private RecyclerView.Adapter<RecyclerView.ViewHolder> adapter;

    @Nullable
    private LinearLayoutManager manager;

    @NotNull
    private MutableLiveData<List<CommonListMainData>> showDatas = new MutableLiveData<>();
    private int page = 1;

    @NotNull
    private MutableLiveData<LoadBindindData> loadBindData = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<Integer> recycleViewStatus = new MutableLiveData<>();

    @NotNull
    private final ArrayList<CollectionBeanSub> allDownloadBeans = new ArrayList<>();

    public GameListViewModle() {
        this.showDatas.setValue(new ArrayList());
        this.recycleViewStatus.setValue(0);
        this.loadBindData.setValue(new LoadBindindData(2));
    }

    @Nullable
    public final RecyclerView.Adapter<RecyclerView.ViewHolder> getAdapter() {
        return this.adapter;
    }

    @NotNull
    public final ArrayList<CollectionBeanSub> getAllDownloadBeans() {
        return this.allDownloadBeans;
    }

    @NotNull
    public final MutableLiveData<LoadBindindData> getLoadBindData() {
        return this.loadBindData;
    }

    @Nullable
    public final LinearLayoutManager getManager() {
        return this.manager;
    }

    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final MutableLiveData<Integer> getRecycleViewStatus() {
        return this.recycleViewStatus;
    }

    @NotNull
    public final MutableLiveData<List<CommonListMainData>> getShowDatas() {
        return this.showDatas;
    }

    public final void setAdapter(@Nullable RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        this.adapter = adapter;
    }

    public final void setLoadBindData(@NotNull MutableLiveData<LoadBindindData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loadBindData = mutableLiveData;
    }

    public final void setManager(@Nullable LinearLayoutManager linearLayoutManager) {
        this.manager = linearLayoutManager;
    }

    public final void setPage(int i10) {
        this.page = i10;
    }

    public final void setRecycleViewStatus(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.recycleViewStatus = mutableLiveData;
    }

    public final void setShowDatas(@NotNull MutableLiveData<List<CommonListMainData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.showDatas = mutableLiveData;
    }

    public final void showGameList(@NotNull List<BtOnlineGame> onlineGames, long time) {
        Intrinsics.checkNotNullParameter(onlineGames, "onlineGames");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = onlineGames.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (((BtOnlineGame) next).getOnlineTime() == time) {
                arrayList.add(next);
            }
        }
        if (!arrayList.isEmpty()) {
            List<CommonListMainData> value = this.showDatas.getValue();
            if (value != null) {
                value.clear();
            }
            for (CollectionBeanSub collectionBeanSub : ((BtOnlineGame) arrayList.get(0)).getGameEntityList()) {
                collectionBeanSub.set_from(0);
                collectionBeanSub.set_from_type(0);
                collectionBeanSub.setRecPosition(String.valueOf(collectionBeanSub.getIndex()));
                this.allDownloadBeans.add(collectionBeanSub);
                try {
                    List<CommonListMainData> value2 = this.showDatas.getValue();
                    Intrinsics.checkNotNull(value2);
                    String ico_remote = collectionBeanSub.getIco_remote();
                    Intrinsics.checkNotNullExpressionValue(ico_remote, "getIco_remote(...)");
                    String gif_ico_remote = collectionBeanSub.getGif_ico_remote();
                    String game_name = collectionBeanSub.getGame_name();
                    Intrinsics.checkNotNullExpressionValue(game_name, "getGame_name(...)");
                    String str = collectionBeanSub.getGame_dimension() + ' ' + UtilsMy.Z2(collectionBeanSub.getActual_size());
                    String info = collectionBeanSub.getInfo();
                    Intrinsics.checkNotNullExpressionValue(info, "getInfo(...)");
                    value2.add(new CommonListMainData(2, new BtGameListItem(0, ico_remote, gif_ico_remote, game_name, str, info, collectionBeanSub, new AppListItemShowBean(collectionBeanSub, false)), null, null, 12, null));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        MutableLiveData<List<CommonListMainData>> mutableLiveData = this.showDatas;
        mutableLiveData.setValue(mutableLiveData.getValue());
    }
}
