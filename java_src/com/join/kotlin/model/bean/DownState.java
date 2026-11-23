package com.join.kotlin.model.bean;

import androidx.databinding.BaseObservable;
import androidx.databinding.Bindable;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001d\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u0000 +2\u00020\u0001:\u0001+BC\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0007HÆ\u0003J\t\u0010#\u001a\u00020\u0007HÆ\u0003J\t\u0010$\u001a\u00020\nHÆ\u0003JE\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010&\u001a\u00020\n2\b\u0010'\u001a\u0004\u0018\u00010(HÖ\u0003J\t\u0010)\u001a\u00020\u0003HÖ\u0001J\t\u0010*\u001a\u00020\u0007HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u00020\u00038GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0005\u001a\u00020\u00038GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001c\u0010\u0006\u001a\u00020\u00078GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\b\u001a\u00020\u00078GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018R\u001c\u0010\t\u001a\u00020\n8GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006,"}, d2 = {"Lcom/join/kotlin/model/bean/DownState;", "Landroidx/databinding/BaseObservable;", "uiMode", "", "downMode", "progress", "statusText", "", "downText", "buttonEnable", "", "<init>", "(IIILjava/lang/String;Ljava/lang/String;Z)V", "getUiMode", "()I", "setUiMode", "(I)V", "getDownMode", "setDownMode", "getProgress", "setProgress", "getStatusText", "()Ljava/lang/String;", "setStatusText", "(Ljava/lang/String;)V", "getDownText", "setDownText", "getButtonEnable", "()Z", "setButtonEnable", "(Z)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", AdnName.OTHER, "", "hashCode", "toString", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DownState extends BaseObservable {
    public static final int DOWN_MODE_NORMAL = 0;
    public static final int DOWN_MODE_UNZIP = 1;
    public static final int UI_MODE_NORMAL = 0;
    public static final int UI_MODE_PROGRESS = 1;
    private boolean buttonEnable;
    private int downMode;

    @NotNull
    private String downText;
    private int progress;

    @NotNull
    private String statusText;
    private int uiMode;

    public DownState() {
        this(0, 0, 0, null, null, false, 63, null);
    }

    public static /* synthetic */ DownState copy$default(DownState downState, int i10, int i11, int i12, String str, String str2, boolean z10, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i10 = downState.uiMode;
        }
        if ((i13 & 2) != 0) {
            i11 = downState.downMode;
        }
        int i14 = i11;
        if ((i13 & 4) != 0) {
            i12 = downState.progress;
        }
        int i15 = i12;
        if ((i13 & 8) != 0) {
            str = downState.statusText;
        }
        String str3 = str;
        if ((i13 & 16) != 0) {
            str2 = downState.downText;
        }
        String str4 = str2;
        if ((i13 & 32) != 0) {
            z10 = downState.buttonEnable;
        }
        return downState.copy(i10, i14, i15, str3, str4, z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getUiMode() {
        return this.uiMode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getDownMode() {
        return this.downMode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getProgress() {
        return this.progress;
    }

    @NotNull
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getStatusText() {
        return this.statusText;
    }

    @NotNull
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDownText() {
        return this.downText;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getButtonEnable() {
        return this.buttonEnable;
    }

    @NotNull
    public final DownState copy(int uiMode, int downMode, int progress, @NotNull String statusText, @NotNull String downText, boolean buttonEnable) {
        Intrinsics.checkNotNullParameter(statusText, "statusText");
        Intrinsics.checkNotNullParameter(downText, "downText");
        return new DownState(uiMode, downMode, progress, statusText, downText, buttonEnable);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DownState)) {
            return false;
        }
        DownState downState = (DownState) other;
        return this.uiMode == downState.uiMode && this.downMode == downState.downMode && this.progress == downState.progress && Intrinsics.areEqual(this.statusText, downState.statusText) && Intrinsics.areEqual(this.downText, downState.downText) && this.buttonEnable == downState.buttonEnable;
    }

    @Bindable
    public final boolean getButtonEnable() {
        return this.buttonEnable;
    }

    @Bindable
    public final int getDownMode() {
        return this.downMode;
    }

    @Bindable
    @NotNull
    public final String getDownText() {
        return this.downText;
    }

    @Bindable
    public final int getProgress() {
        return this.progress;
    }

    @Bindable
    @NotNull
    public final String getStatusText() {
        return this.statusText;
    }

    @Bindable
    public final int getUiMode() {
        return this.uiMode;
    }

    public int hashCode() {
        return (((((((((this.uiMode * 31) + this.downMode) * 31) + this.progress) * 31) + this.statusText.hashCode()) * 31) + this.downText.hashCode()) * 31) + a.a(this.buttonEnable);
    }

    public final void setButtonEnable(boolean z10) {
        this.buttonEnable = z10;
    }

    public final void setDownMode(int i10) {
        this.downMode = i10;
    }

    public final void setDownText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.downText = str;
    }

    public final void setProgress(int i10) {
        this.progress = i10;
    }

    public final void setStatusText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.statusText = str;
    }

    public final void setUiMode(int i10) {
        this.uiMode = i10;
    }

    @NotNull
    public String toString() {
        return "DownState(uiMode=" + this.uiMode + ", downMode=" + this.downMode + ", progress=" + this.progress + ", statusText=" + this.statusText + ", downText=" + this.downText + ", buttonEnable=" + this.buttonEnable + ')';
    }

    public /* synthetic */ DownState(int i10, int i11, int i12, String str, String str2, boolean z10, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 0 : i10, (i13 & 2) != 0 ? 0 : i11, (i13 & 4) == 0 ? i12 : 0, (i13 & 8) != 0 ? "" : str, (i13 & 16) != 0 ? "" : str2, (i13 & 32) != 0 ? true : z10);
    }

    public DownState(int i10, int i11, int i12, @NotNull String statusText, @NotNull String downText, boolean z10) {
        Intrinsics.checkNotNullParameter(statusText, "statusText");
        Intrinsics.checkNotNullParameter(downText, "downText");
        this.uiMode = i10;
        this.downMode = i11;
        this.progress = i12;
        this.statusText = statusText;
        this.downText = downText;
        this.buttonEnable = z10;
    }
}
