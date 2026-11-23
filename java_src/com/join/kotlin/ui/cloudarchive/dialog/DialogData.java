package com.join.kotlin.ui.cloudarchive.dialog;

import com.kwad.sdk.api.model.AdnName;
import com.windmill.sdk.WMConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\bHÆ\u0003J;\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001d"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;", "", "title", "", "content", "okButn", "cancleButn", WMConstants.SHOW_CLOSE, "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getTitle", "()Ljava/lang/String;", "getContent", "getOkButn", "getCancleButn", "getShowClose", "()Z", "component1", "component2", "component3", "component4", "component5", "copy", "equals", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DialogData {

    @NotNull
    private final String cancleButn;

    @NotNull
    private final String content;

    @NotNull
    private final String okButn;
    private final boolean showClose;

    @NotNull
    private final String title;

    public DialogData(@NotNull String title, @NotNull String content, @NotNull String okButn, @NotNull String cancleButn, boolean z10) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(okButn, "okButn");
        Intrinsics.checkNotNullParameter(cancleButn, "cancleButn");
        this.title = title;
        this.content = content;
        this.okButn = okButn;
        this.cancleButn = cancleButn;
        this.showClose = z10;
    }

    public static /* synthetic */ DialogData copy$default(DialogData dialogData, String str, String str2, String str3, String str4, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = dialogData.title;
        }
        if ((i10 & 2) != 0) {
            str2 = dialogData.content;
        }
        String str5 = str2;
        if ((i10 & 4) != 0) {
            str3 = dialogData.okButn;
        }
        String str6 = str3;
        if ((i10 & 8) != 0) {
            str4 = dialogData.cancleButn;
        }
        String str7 = str4;
        if ((i10 & 16) != 0) {
            z10 = dialogData.showClose;
        }
        return dialogData.copy(str, str5, str6, str7, z10);
    }

    @NotNull
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    @NotNull
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getOkButn() {
        return this.okButn;
    }

    @NotNull
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCancleButn() {
        return this.cancleButn;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getShowClose() {
        return this.showClose;
    }

    @NotNull
    public final DialogData copy(@NotNull String title, @NotNull String content, @NotNull String okButn, @NotNull String cancleButn, boolean showClose) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(okButn, "okButn");
        Intrinsics.checkNotNullParameter(cancleButn, "cancleButn");
        return new DialogData(title, content, okButn, cancleButn, showClose);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DialogData)) {
            return false;
        }
        DialogData dialogData = (DialogData) other;
        return Intrinsics.areEqual(this.title, dialogData.title) && Intrinsics.areEqual(this.content, dialogData.content) && Intrinsics.areEqual(this.okButn, dialogData.okButn) && Intrinsics.areEqual(this.cancleButn, dialogData.cancleButn) && this.showClose == dialogData.showClose;
    }

    @NotNull
    public final String getCancleButn() {
        return this.cancleButn;
    }

    @NotNull
    public final String getContent() {
        return this.content;
    }

    @NotNull
    public final String getOkButn() {
        return this.okButn;
    }

    public final boolean getShowClose() {
        return this.showClose;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return (((((((this.title.hashCode() * 31) + this.content.hashCode()) * 31) + this.okButn.hashCode()) * 31) + this.cancleButn.hashCode()) * 31) + r2.a.a(this.showClose);
    }

    @NotNull
    public String toString() {
        return "DialogData(title=" + this.title + ", content=" + this.content + ", okButn=" + this.okButn + ", cancleButn=" + this.cancleButn + ", showClose=" + this.showClose + ')';
    }

    public /* synthetic */ DialogData(String str, String str2, String str3, String str4, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i10 & 4) != 0 ? "确定" : str3, (i10 & 8) != 0 ? "取消" : str4, (i10 & 16) != 0 ? false : z10);
    }
}
