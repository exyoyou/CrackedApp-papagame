package com.join.mgps.cloud.viewmodel;

import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class c {
    public static final void update(@NotNull ArchiveData archiveData, @NotNull ArchiveData localArchiveData) {
        Intrinsics.checkNotNullParameter(archiveData, "<this>");
        Intrinsics.checkNotNullParameter(localArchiveData, "localArchiveData");
        archiveData.setUserId(localArchiveData.getUserId());
        archiveData.setIsDownloadArchive(1);
        archiveData.setPackageName(localArchiveData.getPackageName());
        archiveData.setIsFirstRun(localArchiveData.getIsFirstRun());
        archiveData.setMainArchiveLocalPath(localArchiveData.getMainArchiveLocalPath());
        archiveData.setMainArchiveLocalPath2(localArchiveData.getMainArchiveLocalPath2());
        archiveData.setArchiveLocalPath(localArchiveData.getArchiveLocalPath());
        archiveData.setArchiveLocalZipPath(localArchiveData.getArchiveLocalZipPath());
        archiveData.setShowText("启动");
        archiveData.setStatus(8);
    }
}
