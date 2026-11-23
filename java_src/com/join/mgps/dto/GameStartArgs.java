package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.fragment.w0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0002\u0010\u0006R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001c\"\u0004\b!\u0010\u001eR\u001a\u0010\"\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0016\"\u0004\b$\u0010\u0018R\u001a\u0010%\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001c\"\u0004\b'\u0010\u001eR\u001a\u0010(\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0016\"\u0004\b*\u0010\u0018R\u001a\u0010+\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u001c\"\u0004\b-\u0010\u001eR\u001a\u0010.\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0016\"\u0004\b0\u0010\u0018R\u001a\u00101\u001a\u000202X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u00108\"\u0004\b9\u0010\u0006R\u001c\u0010:\u001a\u0004\u0018\u00010\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\u001c\"\u0004\b<\u0010\u001eR\u001a\u0010=\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010\u0016\"\u0004\b?\u0010\u0018¨\u0006@"}, d2 = {"Lcom/join/mgps/dto/GameStartArgs;", "", "<init>", "()V", "methodType", "Lcom/join/mgps/dto/GameStartType;", "(Lcom/join/mgps/dto/GameStartType;)V", "emuApkTable", "Lcom/join/mgps/db/tables/EMUApkTable;", "getEmuApkTable", "()Lcom/join/mgps/db/tables/EMUApkTable;", "setEmuApkTable", "(Lcom/join/mgps/db/tables/EMUApkTable;)V", "downloadTask", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "getDownloadTask", "()Lcom/github/snowdream/android/app/downloader/DownloadTask;", "setDownloadTask", "(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V", "startModel", "", "getStartModel", "()I", "setStartModel", "(I)V", "core", "", "getCore", "()Ljava/lang/String;", "setCore", "(Ljava/lang/String;)V", "archivePath", "getArchivePath", "setArchivePath", "room", "getRoom", "setRoom", "ip", "getIp", "setIp", "port", "getPort", "setPort", "fastIP", "getFastIP", "setFastIP", w0.B, "getMaxBattleCount", "setMaxBattleCount", "skipAbiCheck", "", "getSkipAbiCheck", "()Z", "setSkipAbiCheck", "(Z)V", "getMethodType", "()Lcom/join/mgps/dto/GameStartType;", "setMethodType", "from", "getFrom", "setFrom", "skipPreDownloadTip", "getSkipPreDownloadTip", "setSkipPreDownloadTip", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GameStartArgs {

    @NotNull
    private String archivePath;

    @NotNull
    private String core;

    @Nullable
    private DownloadTask downloadTask;

    @Nullable
    private EMUApkTable emuApkTable;

    @NotNull
    private String fastIP;

    @Nullable
    private String from;

    @NotNull
    private String ip;
    private int maxBattleCount;

    @Nullable
    private GameStartType methodType;
    private int port;
    private int room;
    private boolean skipAbiCheck;
    private int skipPreDownloadTip;
    private int startModel;

    public GameStartArgs() {
        this.core = "";
        this.archivePath = "";
        this.ip = "";
        this.fastIP = "";
    }

    @NotNull
    public final String getArchivePath() {
        return this.archivePath;
    }

    @NotNull
    public final String getCore() {
        return this.core;
    }

    @Nullable
    public final DownloadTask getDownloadTask() {
        return this.downloadTask;
    }

    @Nullable
    public final EMUApkTable getEmuApkTable() {
        return this.emuApkTable;
    }

    @NotNull
    public final String getFastIP() {
        return this.fastIP;
    }

    @Nullable
    public final String getFrom() {
        return this.from;
    }

    @NotNull
    public final String getIp() {
        return this.ip;
    }

    public final int getMaxBattleCount() {
        return this.maxBattleCount;
    }

    @Nullable
    public final GameStartType getMethodType() {
        return this.methodType;
    }

    public final int getPort() {
        return this.port;
    }

    public final int getRoom() {
        return this.room;
    }

    public final boolean getSkipAbiCheck() {
        return this.skipAbiCheck;
    }

    public final int getSkipPreDownloadTip() {
        return this.skipPreDownloadTip;
    }

    public final int getStartModel() {
        return this.startModel;
    }

    public final void setArchivePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.archivePath = str;
    }

    public final void setCore(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.core = str;
    }

    public final void setDownloadTask(@Nullable DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }

    public final void setEmuApkTable(@Nullable EMUApkTable eMUApkTable) {
        this.emuApkTable = eMUApkTable;
    }

    public final void setFastIP(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.fastIP = str;
    }

    public final void setFrom(@Nullable String str) {
        this.from = str;
    }

    public final void setIp(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.ip = str;
    }

    public final void setMaxBattleCount(int i10) {
        this.maxBattleCount = i10;
    }

    public final void setMethodType(@Nullable GameStartType gameStartType) {
        this.methodType = gameStartType;
    }

    public final void setPort(int i10) {
        this.port = i10;
    }

    public final void setRoom(int i10) {
        this.room = i10;
    }

    public final void setSkipAbiCheck(boolean z10) {
        this.skipAbiCheck = z10;
    }

    public final void setSkipPreDownloadTip(int i10) {
        this.skipPreDownloadTip = i10;
    }

    public final void setStartModel(int i10) {
        this.startModel = i10;
    }

    public GameStartArgs(@NotNull GameStartType methodType) {
        Intrinsics.checkNotNullParameter(methodType, "methodType");
        this.core = "";
        this.archivePath = "";
        this.ip = "";
        this.fastIP = "";
        this.methodType = methodType;
    }
}
