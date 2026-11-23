package com.join.kotlin.domain.common;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.servcie.j;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.enums.ConstantIntEnum;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003J\u0010\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0002R\u001a\u0010\u000e\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R\u001a\u0010\u0016\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0010\"\u0004\b\u0018\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0010\"\u0004\b\u001b\u0010\u0012R\u001a\u0010\u001c\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0010\"\u0004\b\u001e\u0010\u0012R\u001a\u0010\u001f\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0010\"\u0004\b!\u0010\u0012R\u001a\u0010\"\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001a\u0010(\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010%\"\u0004\b*\u0010'R\u001a\u0010+\u001a\u00020,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001a\u00101\u001a\u00020,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010.\"\u0004\b3\u00100R\u001a\u00104\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010%\"\u0004\b6\u0010'¨\u00067"}, d2 = {"Lcom/join/kotlin/domain/common/AppListItemShowBean;", "", "data", "Lcom/join/mgps/dto/CollectionBeanSub;", "isUpdateProgress", "", "<init>", "(Lcom/join/mgps/dto/CollectionBeanSub;Z)V", "updateItemNormal", "", "updateItemProgress", "downloadTask", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "updateProgress", "tagshow", "getTagshow", "()Z", "setTagshow", "(Z)V", "progresShow", "getProgresShow", "setProgresShow", "progressZipShow", "getProgressZipShow", "setProgressZipShow", "describeShow", "getDescribeShow", "setDescribeShow", "downMessageShow", "getDownMessageShow", "setDownMessageShow", "giftShow", "getGiftShow", "setGiftShow", "downloadProgress", "", "getDownloadProgress", "()I", "setDownloadProgress", "(I)V", "zipProgress", "getZipProgress", "setZipProgress", "appSizeText", "", "getAppSizeText", "()Ljava/lang/String;", "setAppSizeText", "(Ljava/lang/String;)V", "lodingInfo", "getLodingInfo", "setLodingInfo", "downloadStatus", "getDownloadStatus", "setDownloadStatus", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AppListItemShowBean {

    @NotNull
    private String appSizeText;
    private boolean describeShow;
    private boolean downMessageShow;
    private int downloadProgress;
    private int downloadStatus;
    private boolean giftShow;

    @NotNull
    private String lodingInfo;
    private boolean progresShow;
    private boolean progressZipShow;
    private boolean tagshow;
    private int zipProgress;

    public AppListItemShowBean(@NotNull CollectionBeanSub data, boolean z10) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.tagshow = true;
        this.describeShow = true;
        this.appSizeText = "";
        this.lodingInfo = "";
        this.giftShow = data.getGift_package_switch() == 1;
        DownloadTask downloadTask = data.getDownloadTask();
        if (downloadTask != null) {
            this.downloadStatus = downloadTask.getStatus();
        }
        if (z10) {
            if (downloadTask == null) {
                return;
            }
            int status = downloadTask.getStatus();
            if (status == 2) {
                this.tagshow = false;
                this.describeShow = false;
                this.progresShow = true;
                this.progressZipShow = false;
                this.downMessageShow = true;
            } else if (status == 12) {
                this.tagshow = false;
                this.describeShow = false;
                this.progresShow = false;
                this.progressZipShow = true;
                this.downMessageShow = true;
            }
            updateProgress(downloadTask);
            return;
        }
        if (Intrinsics.areEqual(data.getPlugin_num(), String.valueOf(ConstantIntEnum.H5.value()))) {
            this.tagshow = false;
            this.progresShow = false;
            this.progressZipShow = false;
            this.describeShow = true;
            return;
        }
        if (downloadTask == null) {
            this.tagshow = true;
            this.progresShow = false;
            this.progressZipShow = false;
            return;
        }
        String size = data.getSize();
        Intrinsics.checkNotNullExpressionValue(size, "getSize(...)");
        double d10 = 1024;
        long j10 = (long) (Double.parseDouble(size) * d10 * d10);
        int status2 = downloadTask.getStatus();
        if (status2 != 0) {
            if (status2 != 42) {
                if (status2 != 48) {
                    if (status2 == 2) {
                        this.tagshow = false;
                        this.describeShow = false;
                        this.progresShow = true;
                        this.progressZipShow = false;
                        this.downMessageShow = true;
                        this.appSizeText = UtilsMy.c(downloadTask.getCurrentSize()) + '/' + UtilsMy.c(j10);
                        this.downloadProgress = (int) downloadTask.getProgress();
                        this.lodingInfo = downloadTask.getSpeed() + "/S";
                        return;
                    }
                    if (status2 != 3) {
                        if (status2 != 5) {
                            if (status2 != 6) {
                                if (status2 != 7) {
                                    switch (status2) {
                                        case 10:
                                            this.tagshow = false;
                                            this.describeShow = false;
                                            this.progresShow = true;
                                            this.progressZipShow = false;
                                            this.downMessageShow = true;
                                            this.appSizeText = UtilsMy.c(downloadTask.getCurrentSize()) + '/' + UtilsMy.c(j10);
                                            this.downloadProgress = (int) downloadTask.getProgress();
                                            this.lodingInfo = "等待中";
                                            break;
                                        case 12:
                                            this.tagshow = false;
                                            this.describeShow = false;
                                            this.progresShow = false;
                                            this.progressZipShow = true;
                                            this.downMessageShow = true;
                                            this.appSizeText = UtilsMy.c(j10) + '/' + UtilsMy.c(j10);
                                            this.zipProgress = (int) downloadTask.getProgress();
                                            this.lodingInfo = "解压中";
                                            break;
                                        case 13:
                                            this.tagshow = false;
                                            this.describeShow = false;
                                            this.progresShow = false;
                                            this.progressZipShow = true;
                                            this.downMessageShow = true;
                                            this.appSizeText = UtilsMy.c(j10) + '/' + UtilsMy.c(j10);
                                            this.zipProgress = (int) downloadTask.getProgress();
                                            this.lodingInfo = "点击重新解压";
                                            break;
                                    }
                                    return;
                                }
                            }
                        }
                    }
                    this.tagshow = false;
                    this.describeShow = false;
                    this.progresShow = true;
                    this.progressZipShow = false;
                    this.downMessageShow = true;
                    try {
                        if (downloadTask.getSize() == 0) {
                            this.appSizeText = UtilsMy.c(downloadTask.getCurrentSize()) + '/' + UtilsMy.c(j10);
                        } else {
                            this.appSizeText = UtilsMy.c(downloadTask.getCurrentSize()) + '/' + UtilsMy.c(j10);
                        }
                        this.downloadProgress = (int) downloadTask.getProgress();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    this.lodingInfo = "暂停中";
                    return;
                }
            }
            this.tagshow = true;
            this.describeShow = true;
            this.progresShow = false;
            this.progressZipShow = false;
            this.downMessageShow = false;
            return;
        }
        this.tagshow = true;
        this.describeShow = true;
        this.progresShow = false;
        this.progressZipShow = false;
        this.downMessageShow = false;
    }

    private final void updateProgress(DownloadTask downloadTask) {
        DownloadTask downloadTaskG = j.f().g(downloadTask.getCrc_link_type_val());
        if (downloadTaskG == null) {
            return;
        }
        String showSize = downloadTask.getShowSize();
        Intrinsics.checkNotNullExpressionValue(showSize, "getShowSize(...)");
        double d10 = 1024;
        this.appSizeText = UtilsMy.c(downloadTaskG.getCurrentSize()) + '/' + UtilsMy.c((long) (Double.parseDouble(showSize) * d10 * d10));
        if (downloadTaskG.getStatus() == 12) {
            this.zipProgress = (int) downloadTaskG.getProgress();
        } else {
            this.downloadProgress = (int) downloadTaskG.getProgress();
        }
        if (downloadTaskG.getStatus() == 2) {
            this.lodingInfo = downloadTaskG.getSpeed() + "/S";
        }
    }

    @NotNull
    public final String getAppSizeText() {
        return this.appSizeText;
    }

    public final boolean getDescribeShow() {
        return this.describeShow;
    }

    public final boolean getDownMessageShow() {
        return this.downMessageShow;
    }

    public final int getDownloadProgress() {
        return this.downloadProgress;
    }

    public final int getDownloadStatus() {
        return this.downloadStatus;
    }

    public final boolean getGiftShow() {
        return this.giftShow;
    }

    @NotNull
    public final String getLodingInfo() {
        return this.lodingInfo;
    }

    public final boolean getProgresShow() {
        return this.progresShow;
    }

    public final boolean getProgressZipShow() {
        return this.progressZipShow;
    }

    public final boolean getTagshow() {
        return this.tagshow;
    }

    public final int getZipProgress() {
        return this.zipProgress;
    }

    public final void setAppSizeText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.appSizeText = str;
    }

    public final void setDescribeShow(boolean z10) {
        this.describeShow = z10;
    }

    public final void setDownMessageShow(boolean z10) {
        this.downMessageShow = z10;
    }

    public final void setDownloadProgress(int i10) {
        this.downloadProgress = i10;
    }

    public final void setDownloadStatus(int i10) {
        this.downloadStatus = i10;
    }

    public final void setGiftShow(boolean z10) {
        this.giftShow = z10;
    }

    public final void setLodingInfo(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.lodingInfo = str;
    }

    public final void setProgresShow(boolean z10) {
        this.progresShow = z10;
    }

    public final void setProgressZipShow(boolean z10) {
        this.progressZipShow = z10;
    }

    public final void setTagshow(boolean z10) {
        this.tagshow = z10;
    }

    public final void setZipProgress(int i10) {
        this.zipProgress = i10;
    }

    public final void updateItemNormal(@NotNull CollectionBeanSub data) {
        Intrinsics.checkNotNullParameter(data, "data");
        DownloadTask downloadTask = data.getDownloadTask();
        if (downloadTask != null) {
            this.downloadStatus = downloadTask.getStatus();
        }
        if (Intrinsics.areEqual(data.getPlugin_num(), String.valueOf(ConstantIntEnum.H5.value()))) {
            this.tagshow = false;
            this.progresShow = false;
            this.progressZipShow = false;
            this.describeShow = true;
            return;
        }
        if (downloadTask == null) {
            this.tagshow = true;
            this.progresShow = false;
            this.progressZipShow = false;
            return;
        }
        String size = data.getSize();
        Intrinsics.checkNotNullExpressionValue(size, "getSize(...)");
        double d10 = 1024;
        long j10 = (long) (Double.parseDouble(size) * d10 * d10);
        int status = downloadTask.getStatus();
        if (status != 0) {
            if (status != 42) {
                if (status != 48) {
                    if (status == 2) {
                        this.tagshow = false;
                        this.describeShow = false;
                        this.progresShow = true;
                        this.progressZipShow = false;
                        this.downMessageShow = true;
                        this.appSizeText = UtilsMy.c(downloadTask.getCurrentSize()) + '/' + UtilsMy.c(j10);
                        this.downloadProgress = (int) downloadTask.getProgress();
                        this.lodingInfo = downloadTask.getSpeed() + "/S";
                        return;
                    }
                    if (status != 3) {
                        if (status != 5) {
                            if (status != 6) {
                                if (status != 7) {
                                    switch (status) {
                                        case 10:
                                            this.tagshow = false;
                                            this.describeShow = false;
                                            this.progresShow = true;
                                            this.progressZipShow = false;
                                            this.downMessageShow = true;
                                            this.appSizeText = UtilsMy.c(downloadTask.getCurrentSize()) + '/' + UtilsMy.c(j10);
                                            this.downloadProgress = (int) downloadTask.getProgress();
                                            this.lodingInfo = "等待中";
                                            break;
                                        case 12:
                                            this.tagshow = false;
                                            this.describeShow = false;
                                            this.progresShow = false;
                                            this.progressZipShow = true;
                                            this.downMessageShow = true;
                                            this.appSizeText = UtilsMy.c(j10) + '/' + UtilsMy.c(j10);
                                            this.zipProgress = (int) downloadTask.getProgress();
                                            this.lodingInfo = "解压中";
                                            break;
                                        case 13:
                                            this.tagshow = false;
                                            this.describeShow = false;
                                            this.progresShow = false;
                                            this.progressZipShow = true;
                                            this.downMessageShow = true;
                                            this.appSizeText = UtilsMy.c(j10) + '/' + UtilsMy.c(j10);
                                            this.zipProgress = (int) downloadTask.getProgress();
                                            this.lodingInfo = "点击重新解压";
                                            break;
                                    }
                                }
                            }
                        }
                    }
                    this.tagshow = false;
                    this.describeShow = false;
                    this.progresShow = true;
                    this.progressZipShow = false;
                    this.downMessageShow = true;
                    try {
                        if (downloadTask.getSize() == 0) {
                            this.appSizeText = UtilsMy.c(downloadTask.getCurrentSize()) + '/' + UtilsMy.c(j10);
                        } else {
                            this.appSizeText = UtilsMy.c(downloadTask.getCurrentSize()) + '/' + UtilsMy.c(j10);
                        }
                        this.downloadProgress = (int) downloadTask.getProgress();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    this.lodingInfo = "暂停中";
                    return;
                }
            }
            this.tagshow = true;
            this.describeShow = true;
            this.progresShow = false;
            this.progressZipShow = false;
            this.downMessageShow = false;
            return;
        }
        this.tagshow = true;
        this.describeShow = true;
        this.progresShow = false;
        this.progressZipShow = false;
        this.downMessageShow = false;
    }

    public final void updateItemProgress(@Nullable DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        int status = downloadTask.getStatus();
        if (status == 2) {
            this.tagshow = false;
            this.describeShow = false;
            this.progresShow = true;
            this.progressZipShow = false;
            this.downMessageShow = true;
        } else if (status == 12) {
            this.tagshow = false;
            this.describeShow = false;
            this.progresShow = false;
            this.progressZipShow = true;
            this.downMessageShow = true;
        }
        updateProgress(downloadTask);
    }
}
