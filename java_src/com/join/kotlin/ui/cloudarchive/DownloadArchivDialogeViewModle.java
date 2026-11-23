package com.join.kotlin.ui.cloudarchive;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ModDataRequest;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity_;
import com.sigmob.sdk.base.mta.PointCategory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR \u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR \u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\b\"\u0004\b\u0011\u0010\nR \u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\b\"\u0004\b\u0014\u0010\nR \u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\b\"\u0004\b\u0018\u0010\nR \u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\b\"\u0004\b\u001c\u0010\nR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "progress", "Landroidx/lifecycle/MutableLiveData;", "", "getProgress", "()Landroidx/lifecycle/MutableLiveData;", "setProgress", "(Landroidx/lifecycle/MutableLiveData;)V", PlugDownDialogAcitivity_.DOWNLOAD_TYPE_EXTRA, "getDownloadType", "setDownloadType", "progressText", "", "getProgressText", "setProgressText", "dialogTitle", "getDialogTitle", "setDialogTitle", "archive", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "getArchive", "setArchive", "cloud_archive_local_path", "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;", "getCloud_archive_local_path", "setCloud_archive_local_path", PointCategory.REQUEST, "Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;", "getRequest", "()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;", "setRequest", "(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DownloadArchivDialogeViewModle extends ViewModel {

    @NotNull
    private MutableLiveData<Integer> progress = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<Integer> downloadType = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<String> progressText = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<String> dialogTitle = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<ArchiveData> archive = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<ModGameArchivePathData> cloud_archive_local_path = new MutableLiveData<>();

    @NotNull
    private ModDataRequest request = new ModDataRequest();

    public DownloadArchivDialogeViewModle() {
        this.progress.setValue(0);
        this.downloadType.setValue(0);
        this.progressText.setValue("0/0");
        this.dialogTitle.setValue("存档下载中");
    }

    @NotNull
    public final MutableLiveData<ArchiveData> getArchive() {
        return this.archive;
    }

    @NotNull
    public final MutableLiveData<ModGameArchivePathData> getCloud_archive_local_path() {
        return this.cloud_archive_local_path;
    }

    @NotNull
    public final MutableLiveData<String> getDialogTitle() {
        return this.dialogTitle;
    }

    @NotNull
    public final MutableLiveData<Integer> getDownloadType() {
        return this.downloadType;
    }

    @NotNull
    public final MutableLiveData<Integer> getProgress() {
        return this.progress;
    }

    @NotNull
    public final MutableLiveData<String> getProgressText() {
        return this.progressText;
    }

    @NotNull
    public final ModDataRequest getRequest() {
        return this.request;
    }

    public final void setArchive(@NotNull MutableLiveData<ArchiveData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.archive = mutableLiveData;
    }

    public final void setCloud_archive_local_path(@NotNull MutableLiveData<ModGameArchivePathData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.cloud_archive_local_path = mutableLiveData;
    }

    public final void setDialogTitle(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.dialogTitle = mutableLiveData;
    }

    public final void setDownloadType(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.downloadType = mutableLiveData;
    }

    public final void setProgress(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.progress = mutableLiveData;
    }

    public final void setProgressText(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.progressText = mutableLiveData;
    }

    public final void setRequest(@NotNull ModDataRequest modDataRequest) {
        Intrinsics.checkNotNullParameter(modDataRequest, "<set-?>");
        this.request = modDataRequest;
    }
}
