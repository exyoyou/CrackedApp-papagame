package com.join.kotlin.ui.cloudarchive;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.cloudarchive.adapter.EmusArchiveAdapter;
import com.join.kotlin.ui.cloudarchive.data.EmusDataRequest;
import com.join.mgps.activity.HMCloudMainActivity_;
import com.join.mgps.dto.CloudListDataBean;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020 R&\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R \u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\t\"\u0004\b\u001b\u0010\u000b¨\u0006!"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "listArchive", "Landroidx/lifecycle/MutableLiveData;", "", "Lcom/join/mgps/dto/CloudListDataBean;", "getListArchive", "()Landroidx/lifecycle/MutableLiveData;", "setListArchive", "(Landroidx/lifecycle/MutableLiveData;)V", PointCategory.REQUEST, "Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;", "getRequest", "()Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;", "setRequest", "(Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;)V", "packageName", "", "getPackageName", "()Ljava/lang/String;", "setPackageName", "(Ljava/lang/String;)V", "loadBindData", "Lcom/join/kotlin/domain/common/LoadBindindData;", "getLoadBindData", "setLoadBindData", "onitemChanged", "", HMCloudMainActivity_.ARCHIVE_DATA_EXTRA, "adapter", "Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GameDetailEmusCloudViewModle extends ViewModel {

    @NotNull
    private MutableLiveData<List<CloudListDataBean>> listArchive = new MutableLiveData<>();

    @NotNull
    private EmusDataRequest request = new EmusDataRequest();

    @NotNull
    private String packageName = "";

    @NotNull
    private MutableLiveData<LoadBindindData> loadBindData = new MutableLiveData<>();

    public GameDetailEmusCloudViewModle() {
        this.listArchive.setValue(new ArrayList());
    }

    @NotNull
    public final MutableLiveData<List<CloudListDataBean>> getListArchive() {
        return this.listArchive;
    }

    @NotNull
    public final MutableLiveData<LoadBindindData> getLoadBindData() {
        return this.loadBindData;
    }

    @NotNull
    public final String getPackageName() {
        return this.packageName;
    }

    @NotNull
    public final EmusDataRequest getRequest() {
        return this.request;
    }

    public final void onitemChanged(@NotNull CloudListDataBean archiveData, @NotNull EmusArchiveAdapter adapter) {
        List<CloudListDataBean> value;
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        List<CloudListDataBean> value2 = this.listArchive.getValue();
        Intrinsics.checkNotNull(value2);
        int size = value2.size();
        do {
            size--;
            if (-1 >= size) {
                return;
            }
            value = this.listArchive.getValue();
            Intrinsics.checkNotNull(value);
        } while (!Intrinsics.areEqual(value.get(size).getId(), archiveData.getId()));
        adapter.notifyItemChanged(size, archiveData);
    }

    public final void setListArchive(@NotNull MutableLiveData<List<CloudListDataBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.listArchive = mutableLiveData;
    }

    public final void setLoadBindData(@NotNull MutableLiveData<LoadBindindData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loadBindData = mutableLiveData;
    }

    public final void setPackageName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.packageName = str;
    }

    public final void setRequest(@NotNull EmusDataRequest emusDataRequest) {
        Intrinsics.checkNotNullParameter(emusDataRequest, "<set-?>");
        this.request = emusDataRequest;
    }
}
