package com.join.kotlin.ui.userrecom;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.mgps.dto.CollectionBeanSub;
import com.psk.kotlin.util.CommonListMainData;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR&\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\f0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR\u001a\u0010\u000f\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R0\u0010\u001a\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001c0\u001bj\b\u0012\u0004\u0012\u00020\u001c`\u001d0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\b\"\u0004\b\u001f\u0010\nR!\u0010 \u001a\u0012\u0012\u0004\u0012\u00020!0\u001bj\b\u0012\u0004\u0012\u00020!`\u001d¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#¨\u0006$"}, d2 = {"Lcom/join/kotlin/ui/userrecom/RecomViewModle;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "titleMessage", "Landroidx/lifecycle/MutableLiveData;", "", "getTitleMessage", "()Landroidx/lifecycle/MutableLiveData;", "setTitleMessage", "(Landroidx/lifecycle/MutableLiveData;)V", "gameIdlist", "", "getGameIdlist", "setGameIdlist", "recycleViewH", "getRecycleViewH", "()Ljava/lang/String;", "setRecycleViewH", "(Ljava/lang/String;)V", PointCategory.REQUEST, "Lcom/join/kotlin/ui/userrecom/UserRecomRequest;", "getRequest", "()Lcom/join/kotlin/ui/userrecom/UserRecomRequest;", "setRequest", "(Lcom/join/kotlin/ui/userrecom/UserRecomRequest;)V", "showDataList", "Ljava/util/ArrayList;", "Lcom/psk/kotlin/util/CommonListMainData;", "Lkotlin/collections/ArrayList;", "getShowDataList", "setShowDataList", "allDownloadBeans", "Lcom/join/mgps/dto/CollectionBeanSub;", "getAllDownloadBeans", "()Ljava/util/ArrayList;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RecomViewModle extends ViewModel {

    @NotNull
    private MutableLiveData<String> titleMessage = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<List<String>> gameIdlist = new MutableLiveData<>();

    @NotNull
    private String recycleViewH = "300px";

    @NotNull
    private UserRecomRequest request = new UserRecomRequest();

    @NotNull
    private MutableLiveData<ArrayList<CommonListMainData>> showDataList = new MutableLiveData<>();

    @NotNull
    private final ArrayList<CollectionBeanSub> allDownloadBeans = new ArrayList<>();

    @NotNull
    public final ArrayList<CollectionBeanSub> getAllDownloadBeans() {
        return this.allDownloadBeans;
    }

    @NotNull
    public final MutableLiveData<List<String>> getGameIdlist() {
        return this.gameIdlist;
    }

    @NotNull
    public final String getRecycleViewH() {
        return this.recycleViewH;
    }

    @NotNull
    public final UserRecomRequest getRequest() {
        return this.request;
    }

    @NotNull
    public final MutableLiveData<ArrayList<CommonListMainData>> getShowDataList() {
        return this.showDataList;
    }

    @NotNull
    public final MutableLiveData<String> getTitleMessage() {
        return this.titleMessage;
    }

    public final void setGameIdlist(@NotNull MutableLiveData<List<String>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.gameIdlist = mutableLiveData;
    }

    public final void setRecycleViewH(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.recycleViewH = str;
    }

    public final void setRequest(@NotNull UserRecomRequest userRecomRequest) {
        Intrinsics.checkNotNullParameter(userRecomRequest, "<set-?>");
        this.request = userRecomRequest;
    }

    public final void setShowDataList(@NotNull MutableLiveData<ArrayList<CommonListMainData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.showDataList = mutableLiveData;
    }

    public final void setTitleMessage(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.titleMessage = mutableLiveData;
    }
}
