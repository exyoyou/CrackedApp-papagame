package com.join.kotlin.ui.modleregin.viewModle;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.join.kotlin.domain.common.AppListItemShowBean;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.modleregin.modle.BtGameListItem;
import com.join.kotlin.ui.modleregin.modle.BtOnlineGame;
import com.join.kotlin.ui.modleregin.modle.BtTagSelecterBean;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.TipBean;
import com.psk.kotlin.util.CommonListMainData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.j;
import kotlinx.coroutines.o1;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?J\u0016\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u0017J\u000e\u0010G\u001a\u00020=2\u0006\u0010H\u001a\u00020\u0013R&\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR \u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R \u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000f\"\u0004\b\u0015\u0010\u0011R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R \u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\t\"\u0004\b%\u0010\u000bR \u0010&\u001a\b\u0012\u0004\u0012\u00020\u00170\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\t\"\u0004\b(\u0010\u000bR\u001c\u0010)\u001a\u0004\u0018\u00010*X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u0010/\u001a\n\u0012\u0004\u0012\u000201\u0018\u000100X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R!\u00106\u001a\u0012\u0012\u0004\u0012\u00020807j\b\u0012\u0004\u0012\u000208`9¢\u0006\b\n\u0000\u001a\u0004\b:\u0010;R \u0010A\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010\u000f\"\u0004\bC\u0010\u0011R\u001a\u0010D\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010\u0019\"\u0004\bF\u0010\u001b¨\u0006I"}, d2 = {"Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "showDatas", "Landroidx/lifecycle/MutableLiveData;", "", "Lcom/psk/kotlin/util/CommonListMainData;", "getShowDatas", "()Landroidx/lifecycle/MutableLiveData;", "setShowDatas", "(Landroidx/lifecycle/MutableLiveData;)V", "listBtOnlineGame", "Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;", "getListBtOnlineGame", "()Ljava/util/List;", "setListBtOnlineGame", "(Ljava/util/List;)V", "onlineGameTitles", "Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;", "getOnlineGameTitles", "setOnlineGameTitles", "page", "", "getPage", "()I", "setPage", "(I)V", "title", "", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "loadBindData", "Lcom/join/kotlin/domain/common/LoadBindindData;", "getLoadBindData", "setLoadBindData", "recycleViewStatus", "getRecycleViewStatus", "setRecycleViewStatus", "manager", "Landroidx/recyclerview/widget/LinearLayoutManager;", "getManager", "()Landroidx/recyclerview/widget/LinearLayoutManager;", "setManager", "(Landroidx/recyclerview/widget/LinearLayoutManager;)V", "adapter", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "getAdapter", "()Landroidx/recyclerview/widget/RecyclerView$Adapter;", "setAdapter", "(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V", "allDownloadBeans", "Ljava/util/ArrayList;", "Lcom/join/mgps/dto/CollectionBeanSub;", "Lkotlin/collections/ArrayList;", "getAllDownloadBeans", "()Ljava/util/ArrayList;", "loadDatas", "", "context", "Landroid/content/Context;", "pn", "tagList", "getTagList", "setTagList", "tagListPosition", "getTagListPosition", "setTagListPosition", "updateTitles", "titleInfo", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBtReginModle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BtReginModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/BtReginModle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,524:1\n1869#2,2:525\n774#2:527\n865#2,2:528\n1869#2:530\n1869#2,2:531\n1870#2:533\n*S KotlinDebug\n*F\n+ 1 BtReginModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/BtReginModle\n*L\n471#1:525,2\n476#1:527\n476#1:528,2\n480#1:530\n481#1:531,2\n480#1:533\n*E\n"})
public final class BtReginModle extends ViewModel {

    @Nullable
    private RecyclerView.Adapter<RecyclerView.ViewHolder> adapter;

    @Nullable
    private LinearLayoutManager manager;

    @NotNull
    private List<CommonListMainData> tagList;
    private int tagListPosition;

    @NotNull
    private MutableLiveData<List<CommonListMainData>> showDatas = new MutableLiveData<>();

    @NotNull
    private List<BtOnlineGame> listBtOnlineGame = new ArrayList();

    @NotNull
    private List<BtTagSelecterBean> onlineGameTitles = new ArrayList();
    private int page = 1;

    @NotNull
    private String title = "BT手游";

    @NotNull
    private MutableLiveData<LoadBindindData> loadBindData = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<Integer> recycleViewStatus = new MutableLiveData<>();

    @NotNull
    private final ArrayList<CollectionBeanSub> allDownloadBeans = new ArrayList<>();

    public BtReginModle() {
        this.showDatas.setValue(new ArrayList());
        this.recycleViewStatus.setValue(0);
        this.loadBindData.setValue(new LoadBindindData(2));
        this.tagList = new ArrayList();
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
    public final List<BtOnlineGame> getListBtOnlineGame() {
        return this.listBtOnlineGame;
    }

    @NotNull
    public final MutableLiveData<LoadBindindData> getLoadBindData() {
        return this.loadBindData;
    }

    @Nullable
    public final LinearLayoutManager getManager() {
        return this.manager;
    }

    @NotNull
    public final List<BtTagSelecterBean> getOnlineGameTitles() {
        return this.onlineGameTitles;
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

    @NotNull
    public final List<CommonListMainData> getTagList() {
        return this.tagList;
    }

    public final int getTagListPosition() {
        return this.tagListPosition;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final void loadDatas(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        loadDatas(context, this.page);
    }

    public final void setAdapter(@Nullable RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        this.adapter = adapter;
    }

    public final void setListBtOnlineGame(@NotNull List<BtOnlineGame> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.listBtOnlineGame = list;
    }

    public final void setLoadBindData(@NotNull MutableLiveData<LoadBindindData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loadBindData = mutableLiveData;
    }

    public final void setManager(@Nullable LinearLayoutManager linearLayoutManager) {
        this.manager = linearLayoutManager;
    }

    public final void setOnlineGameTitles(@NotNull List<BtTagSelecterBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.onlineGameTitles = list;
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

    public final void setTagList(@NotNull List<CommonListMainData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.tagList = list;
    }

    public final void setTagListPosition(int i10) {
        this.tagListPosition = i10;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void updateTitles(@NotNull BtTagSelecterBean titleInfo) {
        String strSubstring;
        List<TipBean> listEmptyList;
        Intrinsics.checkNotNullParameter(titleInfo, "titleInfo");
        Iterator<T> it2 = this.onlineGameTitles.iterator();
        while (true) {
            boolean z10 = true;
            if (!it2.hasNext()) {
                break;
            }
            BtTagSelecterBean btTagSelecterBean = (BtTagSelecterBean) it2.next();
            if (btTagSelecterBean.getTime() != titleInfo.getTime()) {
                z10 = false;
            }
            btTagSelecterBean.setStatus(z10);
        }
        List<CommonListMainData> value = this.showDatas.getValue();
        if (value != null) {
            value.removeAll(this.tagList);
        }
        this.tagList.clear();
        List<BtOnlineGame> list = this.listBtOnlineGame;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((BtOnlineGame) obj).getOnlineTime() == titleInfo.getTime()) {
                arrayList.add(obj);
            }
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            for (CollectionBeanSub collectionBeanSub : ((BtOnlineGame) it3.next()).getGameEntityList()) {
                collectionBeanSub.set_from(146);
                collectionBeanSub.set_from_type(146);
                collectionBeanSub.setRecPosition(String.valueOf(collectionBeanSub.getIndex()));
                this.allDownloadBeans.add(collectionBeanSub);
                String str = "";
                if (collectionBeanSub.getTag_info() != null) {
                    List<TipBean> tag_info = collectionBeanSub.getTag_info();
                    if (tag_info == null || (listEmptyList = tag_info.subList(0, Math.min(3, collectionBeanSub.getTag_info().size()))) == null) {
                        listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                    }
                    String str2 = "";
                    for (TipBean tipBean : listEmptyList) {
                        if (tipBean.getId() != null && !Intrinsics.areEqual(tipBean.getId(), "") && !Intrinsics.areEqual(tipBean.getId(), "44") && !Intrinsics.areEqual(tipBean.getId(), "45") && !Intrinsics.areEqual(tipBean.getId(), "47") && !Intrinsics.areEqual(tipBean.getId(), "48") && !Intrinsics.areEqual(tipBean.getId(), "25") && !Intrinsics.areEqual(tipBean.getId(), "154") && !Intrinsics.areEqual(tipBean.getId(), "7")) {
                            str2 = str2 + tipBean.getName() + " · ";
                        }
                    }
                    str = str2;
                }
                List<CommonListMainData> list2 = this.tagList;
                String ico_remote = collectionBeanSub.getIco_remote();
                Intrinsics.checkNotNullExpressionValue(ico_remote, "getIco_remote(...)");
                String gif_ico_remote = collectionBeanSub.getGif_ico_remote();
                String game_name = collectionBeanSub.getGame_name();
                Intrinsics.checkNotNullExpressionValue(game_name, "getGame_name(...)");
                StringBuilder sb2 = new StringBuilder();
                if (str != null) {
                    strSubstring = str.substring(0, Math.max(0, str.length() - 2));
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                } else {
                    strSubstring = null;
                }
                sb2.append(strSubstring);
                sb2.append("| ");
                sb2.append(UtilsMy.Z2(collectionBeanSub.getActual_size()));
                String string = sb2.toString();
                String info = collectionBeanSub.getInfo();
                Intrinsics.checkNotNullExpressionValue(info, "getInfo(...)");
                list2.add(new CommonListMainData(2, new BtGameListItem(999, ico_remote, gif_ico_remote, game_name, string, info, collectionBeanSub, new AppListItemShowBean(collectionBeanSub, false)), null, null, 12, null));
            }
        }
        List<CommonListMainData> value2 = this.showDatas.getValue();
        if (value2 != null) {
            value2.addAll(this.tagListPosition, this.tagList);
        }
        MutableLiveData<List<CommonListMainData>> mutableLiveData = this.showDatas;
        mutableLiveData.setValue(mutableLiveData.getValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [T, com.join.mgps.dto.RequestModel] */
    public final void loadDatas(@NotNull Context context, int pn) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.page = pn;
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? requestModel = new RequestModel();
        objectRef.element = requestModel;
        requestModel.setDefault(context);
        ((RequestModel) objectRef.element).setArgs(new RequestGameIdArgs());
        ((RequestGameIdArgs) ((RequestModel) objectRef.element).getArgs()).setPage(this.page);
        ((RequestGameIdArgs) ((RequestModel) objectRef.element).getArgs()).setUid(AccountUtil_.getInstance_(context).getAccountData().getUid());
        if (this.page == 1) {
            this.loadBindData.setValue(new LoadBindindData(2));
            this.allDownloadBeans.clear();
        }
        j.f(o1.f93610b, z0.c(), null, new BtReginModle$loadDatas$job$1(objectRef, this, context, null), 2, null);
    }
}
