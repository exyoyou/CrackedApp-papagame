package com.join.kotlin.ui.endgame;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.endgame.adapter.EndGameSlotListAdapter;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.o3;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.w1;
import com.join.mgps.activity.HMCloudMainActivity_;
import com.join.mgps.dto.ArchiveListBean;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.dto.RomArchived;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import q5.f;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u00162\u0006\u0010)\u001a\u00020*J&\u0010+\u001a\u00020'2\u0006\u0010,\u001a\u00020-2\u0006\u0010(\u001a\u00020.2\u0006\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u000201J\u0006\u00102\u001a\u00020'J\u0018\u00103\u001a\u00020'2\u000e\u00104\u001a\n\u0012\u0004\u0012\u000206\u0018\u000105H\u0002J\u0010\u00107\u001a\u0004\u0018\u00010\u00052\u0006\u00108\u001a\u00020\u0005R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR(\u0010\r\u001a\u0010\u0012\f\u0012\n \u000f*\u0004\u0018\u00010\u00050\u00050\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R&\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u00150\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0011\"\u0004\b\u0018\u0010\u0013R \u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0011\"\u0004\b\u001c\u0010\u0013R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R(\u0010\"\u001a\u0010\u0012\f\u0012\n \u000f*\u0004\u0018\u00010#0#0\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0011\"\u0004\b%\u0010\u0013¨\u00069"}, d2 = {"Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "gameId", "", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "title", "getTitle", "setTitle", "commitText", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", "getCommitText", "()Landroidx/lifecycle/MutableLiveData;", "setCommitText", "(Landroidx/lifecycle/MutableLiveData;)V", "listArchive", "", "Lcom/join/mgps/dto/ArchiveListBean;", "getListArchive", "setListArchive", "loadBindData", "Lcom/join/kotlin/domain/common/LoadBindindData;", "getLoadBindData", "setLoadBindData", "selectedData", "getSelectedData", "()Lcom/join/mgps/dto/ArchiveListBean;", "setSelectedData", "(Lcom/join/mgps/dto/ArchiveListBean;)V", "commitEnableStatus", "", "getCommitEnableStatus", "setCommitEnableStatus", "onItemChanged", "", HMCloudMainActivity_.ARCHIVE_DATA_EXTRA, "adapter", "Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;", "commentArchive", "context", "Landroid/content/Context;", "Lcom/join/mgps/dto/CloudListDataBean;", "type", "from", "", "loadLocalArchiveData", "warpArchiveList", "recordRoms", "", "Lcom/join/mgps/dto/RomArchived;", "getRecoverName", "recoverFilename", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EndGameSlotViewModel extends ViewModel {

    @Nullable
    private ArchiveListBean selectedData;

    @NotNull
    private String gameId = "";

    @NotNull
    private String title = "本地存档";

    @NotNull
    private MutableLiveData<String> commitText = new MutableLiveData<>("完成(0/1)");

    @NotNull
    private MutableLiveData<List<ArchiveListBean>> listArchive = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<LoadBindindData> loadBindData = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<Boolean> commitEnableStatus = new MutableLiveData<>(Boolean.FALSE);

    public EndGameSlotViewModel() {
        this.listArchive.setValue(new ArrayList());
    }

    private final void warpArchiveList(List<? extends RomArchived> recordRoms) {
        if (recordRoms != null) {
            try {
                int size = recordRoms.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (!t2.h(recordRoms.get(i10).getArchivedImagePath())) {
                        ArchiveListBean archiveListBean = new ArchiveListBean();
                        archiveListBean.setAddTime(recordRoms.get(i10).getArchivedTime());
                        archiveListBean.setArchiveFilePath(recordRoms.get(i10).getArchivedPath());
                        archiveListBean.setArchiveCover("file://" + recordRoms.get(i10).getArchivedImagePath());
                        archiveListBean.setArchiveCoverFilePath(recordRoms.get(i10).getArchivedImagePath());
                        archiveListBean.setArchiveFileName(recordRoms.get(i10).getFileName());
                        String archivedPath = recordRoms.get(i10).getArchivedPath();
                        Intrinsics.checkNotNullExpressionValue(archivedPath, "getArchivedPath(...)");
                        archiveListBean.setArchiveName(getRecoverName(archivedPath));
                        archiveListBean.setFileSize(recordRoms.get(i10).getSize());
                        archiveListBean.setFileMd5(recordRoms.get(i10).getMd5());
                        List<ArchiveListBean> value = this.listArchive.getValue();
                        if (value != null) {
                            value.add(archiveListBean);
                        } else {
                            continue;
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public final void commentArchive(@NotNull Context context, @NotNull CloudListDataBean archiveData, @NotNull String type, int from) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        Intrinsics.checkNotNullParameter(type, "type");
    }

    @NotNull
    public final MutableLiveData<Boolean> getCommitEnableStatus() {
        return this.commitEnableStatus;
    }

    @NotNull
    public final MutableLiveData<String> getCommitText() {
        return this.commitText;
    }

    @NotNull
    public final String getGameId() {
        return this.gameId;
    }

    @NotNull
    public final MutableLiveData<List<ArchiveListBean>> getListArchive() {
        return this.listArchive;
    }

    @NotNull
    public final MutableLiveData<LoadBindindData> getLoadBindData() {
        return this.loadBindData;
    }

    @Nullable
    public final String getRecoverName(@NotNull String recoverFilename) {
        Intrinsics.checkNotNullParameter(recoverFilename, "recoverFilename");
        String strSubstring = recoverFilename.substring(StringsKt__StringsKt.lastIndexOf$default((CharSequence) recoverFilename, o0.f49827a, 0, false, 6, (Object) null) + 1, recoverFilename.length());
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        if (Intrinsics.areEqual("0", strSubstring)) {
            return "快速存档";
        }
        if (Intrinsics.areEqual("99", strSubstring)) {
            return "自动保存的存档";
        }
        return "存档" + strSubstring;
    }

    @Nullable
    public final ArchiveListBean getSelectedData() {
        return this.selectedData;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final void loadLocalArchiveData() {
        DownloadTask downloadTaskG = f.M().G(this.gameId);
        if (downloadTaskG != null) {
            this.title = downloadTaskG.getShowName();
            List<RomArchived> listN = o3.n(downloadTaskG.getPlugin_num(), downloadTaskG.getGameZipPath());
            if (Intrinsics.areEqual(downloadTaskG.getPlugin_num(), "31")) {
                Iterator<RomArchived> it2 = listN.iterator();
                boolean z10 = false;
                boolean z11 = false;
                while (it2.hasNext()) {
                    String fileName = it2.next().getFileName();
                    Intrinsics.checkNotNullExpressionValue(fileName, "getFileName(...)");
                    if (StringsKt__StringsKt.contains$default((CharSequence) fileName, (CharSequence) "_v2", false, 2, (Object) null)) {
                        z10 = true;
                    } else {
                        z11 = true;
                    }
                }
                Iterator<RomArchived> it3 = listN.iterator();
                while (it3.hasNext()) {
                    RomArchived next = it3.next();
                    if (!z11 || z10) {
                        if (z11 && z10) {
                            if (w1.a(downloadTaskG.getPackageName())) {
                                String fileName2 = next.getFileName();
                                Intrinsics.checkNotNullExpressionValue(fileName2, "getFileName(...)");
                                if (StringsKt__StringsKt.contains$default((CharSequence) fileName2, (CharSequence) "_v2", false, 2, (Object) null)) {
                                    it3.remove();
                                }
                            } else {
                                String fileName3 = next.getFileName();
                                Intrinsics.checkNotNullExpressionValue(fileName3, "getFileName(...)");
                                if (!StringsKt__StringsKt.contains$default((CharSequence) fileName3, (CharSequence) "_v2", false, 2, (Object) null)) {
                                    it3.remove();
                                }
                            }
                        }
                    } else if (!w1.a(downloadTaskG.getPackageName())) {
                        it3.remove();
                    }
                }
            }
            if (Intrinsics.areEqual(downloadTaskG.getPlugin_num(), "31")) {
                Iterator<RomArchived> it4 = listN.iterator();
                boolean z12 = false;
                boolean z13 = false;
                while (it4.hasNext()) {
                    String fileName4 = it4.next().getFileName();
                    Intrinsics.checkNotNullExpressionValue(fileName4, "getFileName(...)");
                    if (StringsKt__StringsKt.contains$default((CharSequence) fileName4, (CharSequence) "_v2", false, 2, (Object) null)) {
                        z12 = true;
                    } else {
                        z13 = true;
                    }
                }
                Iterator<RomArchived> it5 = listN.iterator();
                while (it5.hasNext()) {
                    RomArchived next2 = it5.next();
                    if (!z13 || z12) {
                        if (z13 && z12) {
                            if (w1.a(downloadTaskG.getPackageName())) {
                                String fileName5 = next2.getFileName();
                                Intrinsics.checkNotNullExpressionValue(fileName5, "getFileName(...)");
                                if (StringsKt__StringsKt.contains$default((CharSequence) fileName5, (CharSequence) "_v2", false, 2, (Object) null)) {
                                    it5.remove();
                                }
                            } else {
                                String fileName6 = next2.getFileName();
                                Intrinsics.checkNotNullExpressionValue(fileName6, "getFileName(...)");
                                if (!StringsKt__StringsKt.contains$default((CharSequence) fileName6, (CharSequence) "_v2", false, 2, (Object) null)) {
                                    it5.remove();
                                }
                            }
                        }
                    } else if (!w1.a(downloadTaskG.getPackageName())) {
                        it5.remove();
                    }
                }
            }
            warpArchiveList(listN);
        }
    }

    public final void onItemChanged(@NotNull ArchiveListBean archiveData, @NotNull EndGameSlotListAdapter adapter) {
        List<ArchiveListBean> value;
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        List<ArchiveListBean> value2 = this.listArchive.getValue();
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

    public final void setCommitEnableStatus(@NotNull MutableLiveData<Boolean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.commitEnableStatus = mutableLiveData;
    }

    public final void setCommitText(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.commitText = mutableLiveData;
    }

    public final void setGameId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.gameId = str;
    }

    public final void setListArchive(@NotNull MutableLiveData<List<ArchiveListBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.listArchive = mutableLiveData;
    }

    public final void setLoadBindData(@NotNull MutableLiveData<LoadBindindData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loadBindData = mutableLiveData;
    }

    public final void setSelectedData(@Nullable ArchiveListBean archiveListBean) {
        this.selectedData = archiveListBean;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }
}
