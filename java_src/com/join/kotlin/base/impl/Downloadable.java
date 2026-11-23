package com.join.kotlin.base.impl;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.sigmob.sdk.base.n;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH&J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0017J\b\u0010\u0010\u001a\u00020\rH\u0017R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u0005X¦\u000e¢\u0006\f\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0011"}, d2 = {"Lcom/join/kotlin/base/impl/Downloadable;", "Lcom/join/kotlin/base/impl/GameType;", "Lcom/join/kotlin/base/impl/IExposure;", "Lcom/join/kotlin/base/impl/IIntent;", "downloadTask", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "getDownloadTask", "()Lcom/github/snowdream/android/app/downloader/DownloadTask;", "setDownloadTask", "(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V", n.f79591r, "", "notify", "", "getGInfo", "Lcom/join/kotlin/base/impl/GInfo;", "hasGInfo", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Downloadable extends GameType, IExposure, IIntent {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class DefaultImpls {
        @JsonIgnore
        @Nullable
        public static GInfo getGInfo(@NotNull Downloadable downloadable) {
            return null;
        }

        @JsonIgnore
        public static boolean hasGInfo(@NotNull Downloadable downloadable) {
            return downloadable.getGInfo() != null;
        }

        public static boolean is64Bit(@NotNull Downloadable downloadable) {
            return GameType.DefaultImpls.is64Bit(downloadable);
        }

        public static boolean isAndroidGame(@NotNull Downloadable downloadable) {
            return GameType.DefaultImpls.isAndroidGame(downloadable);
        }

        public static boolean isBtGame(@NotNull Downloadable downloadable) {
            return GameType.DefaultImpls.isBtGame(downloadable);
        }

        public static boolean isCpsGame(@NotNull Downloadable downloadable) {
            return GameType.DefaultImpls.isCpsGame(downloadable);
        }

        public static boolean isGame(@NotNull Downloadable downloadable) {
            return GameType.DefaultImpls.isGame(downloadable);
        }

        public static boolean isGameVm(@NotNull Downloadable downloadable) {
            return GameType.DefaultImpls.isGameVm(downloadable);
        }

        public static boolean isH5Game(@NotNull Downloadable downloadable) {
            return GameType.DefaultImpls.isH5Game(downloadable);
        }

        public static boolean isH5VmGame(@NotNull Downloadable downloadable) {
            return GameType.DefaultImpls.isH5VmGame(downloadable);
        }

        public static boolean isHmCloud(@NotNull Downloadable downloadable) {
            return GameType.DefaultImpls.isHmCloud(downloadable);
        }

        public static boolean isMiniGame(@NotNull Downloadable downloadable) {
            return GameType.DefaultImpls.isMiniGame(downloadable);
        }

        public static boolean isModGameVm(@NotNull Downloadable downloadable) {
            return GameType.DefaultImpls.isModGameVm(downloadable);
        }

        public static boolean isNetGame(@NotNull Downloadable downloadable) {
            return GameType.DefaultImpls.isNetGame(downloadable);
        }

        public static boolean isNetGameVm(@NotNull Downloadable downloadable) {
            return GameType.DefaultImpls.isNetGameVm(downloadable);
        }

        public static boolean isSingleGameVm(@NotNull Downloadable downloadable) {
            return GameType.DefaultImpls.isSingleGameVm(downloadable);
        }
    }

    @Nullable
    DownloadTask getDownloadTask();

    @JsonIgnore
    @Nullable
    GInfo getGInfo();

    @JsonIgnore
    boolean hasGInfo();

    void setDownloadTask(@Nullable DownloadTask downloadTask);

    void update(boolean notify);
}
