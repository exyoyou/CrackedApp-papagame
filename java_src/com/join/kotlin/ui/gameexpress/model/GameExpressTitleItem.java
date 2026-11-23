package com.join.kotlin.ui.gameexpress.model;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/join/kotlin/ui/gameexpress/model/GameExpressTitleItem;", "", "prefix", "", "dateText", "weekText", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getPrefix", "()Ljava/lang/String;", "getDateText", "getWeekText", "component1", "component2", "component3", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GameExpressTitleItem {

    @NotNull
    private final String dateText;

    @NotNull
    private final String prefix;

    @NotNull
    private final String weekText;

    public GameExpressTitleItem(@NotNull String prefix, @NotNull String dateText, @NotNull String weekText) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(dateText, "dateText");
        Intrinsics.checkNotNullParameter(weekText, "weekText");
        this.prefix = prefix;
        this.dateText = dateText;
        this.weekText = weekText;
    }

    public static /* synthetic */ GameExpressTitleItem copy$default(GameExpressTitleItem gameExpressTitleItem, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = gameExpressTitleItem.prefix;
        }
        if ((i10 & 2) != 0) {
            str2 = gameExpressTitleItem.dateText;
        }
        if ((i10 & 4) != 0) {
            str3 = gameExpressTitleItem.weekText;
        }
        return gameExpressTitleItem.copy(str, str2, str3);
    }

    @NotNull
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPrefix() {
        return this.prefix;
    }

    @NotNull
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDateText() {
        return this.dateText;
    }

    @NotNull
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getWeekText() {
        return this.weekText;
    }

    @NotNull
    public final GameExpressTitleItem copy(@NotNull String prefix, @NotNull String dateText, @NotNull String weekText) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(dateText, "dateText");
        Intrinsics.checkNotNullParameter(weekText, "weekText");
        return new GameExpressTitleItem(prefix, dateText, weekText);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameExpressTitleItem)) {
            return false;
        }
        GameExpressTitleItem gameExpressTitleItem = (GameExpressTitleItem) other;
        return Intrinsics.areEqual(this.prefix, gameExpressTitleItem.prefix) && Intrinsics.areEqual(this.dateText, gameExpressTitleItem.dateText) && Intrinsics.areEqual(this.weekText, gameExpressTitleItem.weekText);
    }

    @NotNull
    public final String getDateText() {
        return this.dateText;
    }

    @NotNull
    public final String getPrefix() {
        return this.prefix;
    }

    @NotNull
    public final String getWeekText() {
        return this.weekText;
    }

    public int hashCode() {
        return (((this.prefix.hashCode() * 31) + this.dateText.hashCode()) * 31) + this.weekText.hashCode();
    }

    @NotNull
    public String toString() {
        return "GameExpressTitleItem(prefix=" + this.prefix + ", dateText=" + this.dateText + ", weekText=" + this.weekText + ')';
    }
}
