package com.join.kotlin.base.impl;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.mgps.dto.ExtBean;
import com.sigmob.sdk.base.n;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0010\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0011H\u0016J\b\u0010\u0019\u001a\u00020\u0011H\u0016J\b\u0010\u001a\u001a\u00020\u0011H\u0016J\b\u0010\u001b\u001a\u00020\u0011H\u0016J\b\u0010\u001c\u001a\u00020\u0011H\u0016J\b\u0010\u001d\u001a\u00020\u0011H\u0016J\b\u0010\u001e\u001a\u00020\u0011H\u0016J\b\u0010\u001f\u001a\u00020\u0011H\u0016J\b\u0010 \u001a\u00020\u0011H\u0016J\b\u0010!\u001a\u00020\u0011H\u0016J\b\u0010\"\u001a\u00020\u0011H\u0016J\b\u0010#\u001a\u00020\u0011H\u0016J\b\u0010$\u001a\u00020\u0011H\u0016J\b\u0010%\u001a\u00020\u0011H\u0016J\b\u0010&\u001a\u00020\u0011H\u0016R\u001b\u0010\u0004\u001a\u00020\u00058VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006'"}, d2 = {"Lcom/join/kotlin/base/impl/BaseDownloadable;", "Lcom/join/kotlin/base/impl/Downloadable;", "<init>", "()V", "extBean", "Lcom/join/mgps/dto/ExtBean;", "getExtBean", "()Lcom/join/mgps/dto/ExtBean;", "extBean$delegate", "Lkotlin/Lazy;", "downloadTask", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "getDownloadTask", "()Lcom/github/snowdream/android/app/downloader/DownloadTask;", "setDownloadTask", "(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V", "exposure", "", "getExposure", "()Z", "setExposure", "(Z)V", n.f79591r, "", "notify", "hasGInfo", "isModGameVm", "isSingleGameVm", "isNetGameVm", "isNetGame", "isMiniGame", "is64Bit", "isBtGame", "isGameVm", "isGame", "isH5Game", "isHmCloud", "isCpsGame", "isAndroidGame", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class BaseDownloadable implements Downloadable {

    @Nullable
    private DownloadTask downloadTask;
    private boolean exposure;

    /* JADX INFO: renamed from: extBean$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy extBean = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: v5.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ExtBean.game(this.f97518b);
        }
    });

    @Override // com.join.kotlin.base.impl.Downloadable
    @Nullable
    public DownloadTask getDownloadTask() {
        return this.downloadTask;
    }

    @Override // com.join.kotlin.base.impl.IExposure
    public boolean getExposure() {
        return this.exposure;
    }

    @Override // com.join.kotlin.base.impl.IExposure
    @NotNull
    public ExtBean getExtBean() {
        Object value = this.extBean.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (ExtBean) value;
    }

    @Override // com.join.kotlin.base.impl.Downloadable
    @JsonIgnore
    @Nullable
    public GInfo getGInfo() {
        return Downloadable.DefaultImpls.getGInfo(this);
    }

    @Override // com.join.kotlin.base.impl.Downloadable
    public boolean hasGInfo() {
        return false;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean is64Bit() {
        return false;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isAndroidGame() {
        return false;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isBtGame() {
        return false;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isCpsGame() {
        return false;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isGame() {
        return false;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isGameVm() {
        return false;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isH5Game() {
        return false;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isH5VmGame() {
        return Downloadable.DefaultImpls.isH5VmGame(this);
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isHmCloud() {
        return false;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isMiniGame() {
        return false;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isModGameVm() {
        return false;
    }

    @Override // com.join.kotlin.base.impl.GameType, com.join.kotlin.base.impl.GInfo
    public boolean isNetGame() {
        return false;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isNetGameVm() {
        return false;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isSingleGameVm() {
        return false;
    }

    @Override // com.join.kotlin.base.impl.Downloadable
    public void setDownloadTask(@Nullable DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }

    @Override // com.join.kotlin.base.impl.IExposure
    public void setExposure(boolean z10) {
        this.exposure = z10;
    }

    @Override // com.join.kotlin.base.impl.Downloadable
    public void update(boolean notify) {
    }
}
