package com.join.kotlin.ui.modleregin.viewModle;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.j;
import kotlinx.coroutines.o1;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*J\u0016\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\rR&\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R \u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\t\"\u0004\b\u001b\u0010\u000bR \u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\r0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\t\"\u0004\b\u001e\u0010\u000bR*\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020!0 j\b\u0012\u0004\u0012\u00020!`\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006,"}, d2 = {"Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "showDatas", "Landroidx/lifecycle/MutableLiveData;", "", "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;", "getShowDatas", "()Landroidx/lifecycle/MutableLiveData;", "setShowDatas", "(Landroidx/lifecycle/MutableLiveData;)V", "page", "", "getPage", "()I", "setPage", "(I)V", "title", "", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "loadBindData", "Lcom/join/kotlin/domain/common/LoadBindindData;", "getLoadBindData", "setLoadBindData", "recycleViewStatus", "getRecycleViewStatus", "setRecycleViewStatus", "allDownloadBeans", "Ljava/util/ArrayList;", "Lcom/join/mgps/dto/CollectionBeanSub;", "Lkotlin/collections/ArrayList;", "getAllDownloadBeans", "()Ljava/util/ArrayList;", "setAllDownloadBeans", "(Ljava/util/ArrayList;)V", "loadDatas", "", "context", "Landroid/content/Context;", "pn", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MustPlayViewModle extends ViewModel {

    @NotNull
    private MutableLiveData<List<MustplayItemBean>> showDatas = new MutableLiveData<>();
    private int page = 1;

    @NotNull
    private String title = "必玩大作";

    @NotNull
    private MutableLiveData<LoadBindindData> loadBindData = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<Integer> recycleViewStatus = new MutableLiveData<>();

    @NotNull
    private ArrayList<CollectionBeanSub> allDownloadBeans = new ArrayList<>();

    public MustPlayViewModle() {
        this.showDatas.setValue(new ArrayList());
        this.recycleViewStatus.setValue(0);
        this.loadBindData.setValue(new LoadBindindData(2));
    }

    @NotNull
    public final ArrayList<CollectionBeanSub> getAllDownloadBeans() {
        return this.allDownloadBeans;
    }

    @NotNull
    public final MutableLiveData<LoadBindindData> getLoadBindData() {
        return this.loadBindData;
    }

    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final MutableLiveData<Integer> getRecycleViewStatus() {
        return this.recycleViewStatus;
    }

    @NotNull
    public final MutableLiveData<List<MustplayItemBean>> getShowDatas() {
        return this.showDatas;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final void loadDatas(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        loadDatas(context, this.page);
    }

    public final void setAllDownloadBeans(@NotNull ArrayList<CollectionBeanSub> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.allDownloadBeans = arrayList;
    }

    public final void setLoadBindData(@NotNull MutableLiveData<LoadBindindData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loadBindData = mutableLiveData;
    }

    public final void setPage(int i10) {
        this.page = i10;
    }

    public final void setRecycleViewStatus(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.recycleViewStatus = mutableLiveData;
    }

    public final void setShowDatas(@NotNull MutableLiveData<List<MustplayItemBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.showDatas = mutableLiveData;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
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
        }
        j.f(o1.f93610b, z0.c(), null, new MustPlayViewModle$loadDatas$job$1(objectRef, this, context, null), 2, null);
    }
}
