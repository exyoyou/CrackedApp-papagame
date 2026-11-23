package com.join.kotlin.ui.search.model;

import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.w0;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GInfoBean;
import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b$\b\u0086\b\u0018\u0000 /2\u00020\u0001:\u0001/BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\r\u0010\u000eJ\u0006\u0010\u001e\u001a\u00020\bJ\u0006\u0010\u001f\u001a\u00020\bJ\u0006\u0010 \u001a\u00020\u0005J\u0006\u0010!\u001a\u00020\u0005J\u0006\u0010\"\u001a\u00020\u0005J\u0006\u0010#\u001a\u00020\u0005J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0005HÆ\u0003J\t\u0010&\u001a\u00020\u0005HÆ\u0003J\t\u0010'\u001a\u00020\bHÆ\u0003J\t\u0010(\u001a\u00020\nHÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\fHÆ\u0003JG\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fHÆ\u0001J\u0013\u0010+\u001a\u00020\b2\b\u0010,\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010-\u001a\u00020\nHÖ\u0001J\t\u0010.\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0012\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u00060"}, d2 = {"Lcom/join/kotlin/ui/search/model/SearchGameBean;", "", "game", "Lcom/join/mgps/dto/CommonGameInfoBean;", "title", "", "showLabelStr", "showLine", "", "dataType", "", "wordInfo", "Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;", "<init>", "(Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;Ljava/lang/String;ZILcom/join/kotlin/ui/search/model/SearchWordInfoBean;)V", "getGame", "()Lcom/join/mgps/dto/CommonGameInfoBean;", "getTitle", "()Ljava/lang/String;", "getShowLabelStr", "setShowLabelStr", "(Ljava/lang/String;)V", "getShowLine", "()Z", "setShowLine", "(Z)V", "getDataType", "()I", "getWordInfo", "()Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;", "showADLabel", "showRecTag", "showGfTagStr", "showHtmlName", "getLabelStr", "showSizeStr", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", AdnName.OTHER, "hashCode", "toString", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSearchGameBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchGameBean.kt\ncom/join/kotlin/ui/search/model/SearchGameBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1869#2,2:73\n*S KotlinDebug\n*F\n+ 1 SearchGameBean.kt\ncom/join/kotlin/ui/search/model/SearchGameBean\n*L\n43#1:73,2\n*E\n"})
public final /* data */ class SearchGameBean {
    public static final int DATA_TYPE_AD = 1;
    public static final int DATA_TYPE_NORMAL = 0;
    private final int dataType;

    @NotNull
    private final CommonGameInfoBean game;

    @NotNull
    private String showLabelStr;
    private boolean showLine;

    @NotNull
    private final String title;

    @Nullable
    private final SearchWordInfoBean wordInfo;

    public SearchGameBean(@NotNull CommonGameInfoBean game, @NotNull String title, @NotNull String showLabelStr, boolean z10, int i10, @Nullable SearchWordInfoBean searchWordInfoBean) {
        Intrinsics.checkNotNullParameter(game, "game");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(showLabelStr, "showLabelStr");
        this.game = game;
        this.title = title;
        this.showLabelStr = showLabelStr;
        this.showLine = z10;
        this.dataType = i10;
        this.wordInfo = searchWordInfoBean;
    }

    public static /* synthetic */ SearchGameBean copy$default(SearchGameBean searchGameBean, CommonGameInfoBean commonGameInfoBean, String str, String str2, boolean z10, int i10, SearchWordInfoBean searchWordInfoBean, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            commonGameInfoBean = searchGameBean.game;
        }
        if ((i11 & 2) != 0) {
            str = searchGameBean.title;
        }
        String str3 = str;
        if ((i11 & 4) != 0) {
            str2 = searchGameBean.showLabelStr;
        }
        String str4 = str2;
        if ((i11 & 8) != 0) {
            z10 = searchGameBean.showLine;
        }
        boolean z11 = z10;
        if ((i11 & 16) != 0) {
            i10 = searchGameBean.dataType;
        }
        int i12 = i10;
        if ((i11 & 32) != 0) {
            searchWordInfoBean = searchGameBean.wordInfo;
        }
        return searchGameBean.copy(commonGameInfoBean, str3, str4, z11, i12, searchWordInfoBean);
    }

    @NotNull
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final CommonGameInfoBean getGame() {
        return this.game;
    }

    @NotNull
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getShowLabelStr() {
        return this.showLabelStr;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getShowLine() {
        return this.showLine;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getDataType() {
        return this.dataType;
    }

    @Nullable
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final SearchWordInfoBean getWordInfo() {
        return this.wordInfo;
    }

    @NotNull
    public final SearchGameBean copy(@NotNull CommonGameInfoBean game, @NotNull String title, @NotNull String showLabelStr, boolean showLine, int dataType, @Nullable SearchWordInfoBean wordInfo) {
        Intrinsics.checkNotNullParameter(game, "game");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(showLabelStr, "showLabelStr");
        return new SearchGameBean(game, title, showLabelStr, showLine, dataType, wordInfo);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchGameBean)) {
            return false;
        }
        SearchGameBean searchGameBean = (SearchGameBean) other;
        return Intrinsics.areEqual(this.game, searchGameBean.game) && Intrinsics.areEqual(this.title, searchGameBean.title) && Intrinsics.areEqual(this.showLabelStr, searchGameBean.showLabelStr) && this.showLine == searchGameBean.showLine && this.dataType == searchGameBean.dataType && Intrinsics.areEqual(this.wordInfo, searchGameBean.wordInfo);
    }

    public final int getDataType() {
        return this.dataType;
    }

    @NotNull
    public final CommonGameInfoBean getGame() {
        return this.game;
    }

    @NotNull
    public final String getLabelStr() {
        String strQ1;
        if (t2.i(this.showLabelStr)) {
            return this.showLabelStr;
        }
        GInfoBean g_info = this.game.getG_info();
        if (g_info == null || (strQ1 = UtilsMy.Q1(g_info.getSp_tag_info(), g_info.getTag_info())) == null) {
            strQ1 = "";
        }
        this.showLabelStr = strQ1;
        return strQ1;
    }

    @NotNull
    public final String getShowLabelStr() {
        return this.showLabelStr;
    }

    public final boolean getShowLine() {
        return this.showLine;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final SearchWordInfoBean getWordInfo() {
        return this.wordInfo;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.game.hashCode() * 31) + this.title.hashCode()) * 31) + this.showLabelStr.hashCode()) * 31) + a.a(this.showLine)) * 31) + this.dataType) * 31;
        SearchWordInfoBean searchWordInfoBean = this.wordInfo;
        return iHashCode + (searchWordInfoBean == null ? 0 : searchWordInfoBean.hashCode());
    }

    public final void setShowLabelStr(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.showLabelStr = str;
    }

    public final void setShowLine(boolean z10) {
        this.showLine = z10;
    }

    public final boolean showADLabel() {
        return this.dataType == 1;
    }

    @NotNull
    public final String showGfTagStr() {
        if (this.game.getG_info() == null || this.game.getG_info().getGf_tag() == null || this.game.getG_info().getGf_tag().isEmpty()) {
            return "";
        }
        String str = this.game.getG_info().getGf_tag().get(0);
        Intrinsics.checkNotNullExpressionValue(str, "get(...)");
        return str;
    }

    @NotNull
    public final String showHtmlName() {
        SearchWordInfoBean searchWordInfoBean = this.wordInfo;
        if (searchWordInfoBean != null) {
            List<String> show_word = searchWordInfoBean.getShow_word();
            boolean z10 = false;
            if (show_word != null && (!show_word.isEmpty())) {
                z10 = true;
            }
            if (z10) {
                String showName = this.game.getShowName();
                String element = showName;
                for (String str : this.wordInfo.getShow_word()) {
                    Intrinsics.checkNotNullExpressionValue(element, "element");
                    element = StringsKt__StringsJVMKt.replace$default(element, String.valueOf(str), "{_?_}" + str + "{_??_}", false, 4, (Object) null);
                }
                Intrinsics.checkNotNullExpressionValue(element, "element");
                return StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(element, "{_?_}", "<font color='#FD4F48'>", false, 4, (Object) null), "{_??_}", "</font>", false, 4, (Object) null);
            }
        }
        String showName2 = this.game.getShowName();
        Intrinsics.checkNotNullExpressionValue(showName2, "getShowName(...)");
        return showName2;
    }

    public final boolean showRecTag() {
        return this.game.showRecTag();
    }

    @NotNull
    public final String showSizeStr() {
        if (w0.p(this.game.getTagInfo())) {
            return "";
        }
        String app_size = this.game.getG_info().getApp_size();
        Intrinsics.checkNotNullExpressionValue(app_size, "getApp_size(...)");
        double d10 = 1000;
        String strI = UtilsMy.i((long) (Double.parseDouble(app_size) * d10 * d10));
        Intrinsics.checkNotNullExpressionValue(strI, "FormatFileSizeWithoutDecimal(...)");
        return strI;
    }

    @NotNull
    public String toString() {
        return "SearchGameBean(game=" + this.game + ", title=" + this.title + ", showLabelStr=" + this.showLabelStr + ", showLine=" + this.showLine + ", dataType=" + this.dataType + ", wordInfo=" + this.wordInfo + ')';
    }

    public /* synthetic */ SearchGameBean(CommonGameInfoBean commonGameInfoBean, String str, String str2, boolean z10, int i10, SearchWordInfoBean searchWordInfoBean, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(commonGameInfoBean, (i11 & 2) != 0 ? "" : str, (i11 & 4) == 0 ? str2 : "", (i11 & 8) != 0 ? true : z10, (i11 & 16) != 0 ? 0 : i10, (i11 & 32) != 0 ? null : searchWordInfoBean);
    }
}
