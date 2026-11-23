package com.join.kotlin.ui.modleregin.modle;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import s5.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0007HÆ\u0003J'\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u00072\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001f"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;", "", "time", "", "timeMessage", "", "status", "", "<init>", "(JLjava/lang/String;Z)V", "getTime", "()J", "setTime", "(J)V", "getTimeMessage", "()Ljava/lang/String;", "setTimeMessage", "(Ljava/lang/String;)V", "getStatus", "()Z", "setStatus", "(Z)V", "component1", "component2", "component3", "copy", "equals", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class BtTagSelecterBean {
    private boolean status;
    private long time;

    @NotNull
    private String timeMessage;

    public BtTagSelecterBean(long j10, @NotNull String timeMessage, boolean z10) {
        Intrinsics.checkNotNullParameter(timeMessage, "timeMessage");
        this.time = j10;
        this.timeMessage = timeMessage;
        this.status = z10;
    }

    public static /* synthetic */ BtTagSelecterBean copy$default(BtTagSelecterBean btTagSelecterBean, long j10, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = btTagSelecterBean.time;
        }
        if ((i10 & 2) != 0) {
            str = btTagSelecterBean.timeMessage;
        }
        if ((i10 & 4) != 0) {
            z10 = btTagSelecterBean.status;
        }
        return btTagSelecterBean.copy(j10, str, z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getTime() {
        return this.time;
    }

    @NotNull
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTimeMessage() {
        return this.timeMessage;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getStatus() {
        return this.status;
    }

    @NotNull
    public final BtTagSelecterBean copy(long time, @NotNull String timeMessage, boolean status) {
        Intrinsics.checkNotNullParameter(timeMessage, "timeMessage");
        return new BtTagSelecterBean(time, timeMessage, status);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BtTagSelecterBean)) {
            return false;
        }
        BtTagSelecterBean btTagSelecterBean = (BtTagSelecterBean) other;
        return this.time == btTagSelecterBean.time && Intrinsics.areEqual(this.timeMessage, btTagSelecterBean.timeMessage) && this.status == btTagSelecterBean.status;
    }

    public final boolean getStatus() {
        return this.status;
    }

    public final long getTime() {
        return this.time;
    }

    @NotNull
    public final String getTimeMessage() {
        return this.timeMessage;
    }

    public int hashCode() {
        return (((a.a(this.time) * 31) + this.timeMessage.hashCode()) * 31) + r2.a.a(this.status);
    }

    public final void setStatus(boolean z10) {
        this.status = z10;
    }

    public final void setTime(long j10) {
        this.time = j10;
    }

    public final void setTimeMessage(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.timeMessage = str;
    }

    @NotNull
    public String toString() {
        return "BtTagSelecterBean(time=" + this.time + ", timeMessage=" + this.timeMessage + ", status=" + this.status + ')';
    }
}
