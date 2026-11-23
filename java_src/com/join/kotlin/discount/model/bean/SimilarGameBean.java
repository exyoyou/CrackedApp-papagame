package com.join.kotlin.discount.model.bean;

import com.join.mgps.dto.SearchHistoryBean;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0016JJ\u0010\u001f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010 J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\bHÖ\u0001J\t\u0010%\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006&"}, d2 = {"Lcom/join/kotlin/discount/model/bean/SimilarGameBean;", "", "game_id", "", SearchHistoryBean.GAME_NAME, "game_icon", "game_pic_url", "play_count", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getGame_id", "()Ljava/lang/String;", "setGame_id", "(Ljava/lang/String;)V", "getGame_name", "setGame_name", "getGame_icon", "setGame_icon", "getGame_pic_url", "setGame_pic_url", "getPlay_count", "()Ljava/lang/Integer;", "setPlay_count", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/join/kotlin/discount/model/bean/SimilarGameBean;", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SimilarGameBean {

    @Nullable
    private String game_icon;

    @Nullable
    private String game_id;

    @Nullable
    private String game_name;

    @Nullable
    private String game_pic_url;

    @Nullable
    private Integer play_count;

    public SimilarGameBean() {
        this(null, null, null, null, null, 31, null);
    }

    public static /* synthetic */ SimilarGameBean copy$default(SimilarGameBean similarGameBean, String str, String str2, String str3, String str4, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = similarGameBean.game_id;
        }
        if ((i10 & 2) != 0) {
            str2 = similarGameBean.game_name;
        }
        String str5 = str2;
        if ((i10 & 4) != 0) {
            str3 = similarGameBean.game_icon;
        }
        String str6 = str3;
        if ((i10 & 8) != 0) {
            str4 = similarGameBean.game_pic_url;
        }
        String str7 = str4;
        if ((i10 & 16) != 0) {
            num = similarGameBean.play_count;
        }
        return similarGameBean.copy(str, str5, str6, str7, num);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getGame_id() {
        return this.game_id;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getGame_name() {
        return this.game_name;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getGame_icon() {
        return this.game_icon;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getGame_pic_url() {
        return this.game_pic_url;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getPlay_count() {
        return this.play_count;
    }

    @NotNull
    public final SimilarGameBean copy(@Nullable String game_id, @Nullable String game_name, @Nullable String game_icon, @Nullable String game_pic_url, @Nullable Integer play_count) {
        return new SimilarGameBean(game_id, game_name, game_icon, game_pic_url, play_count);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SimilarGameBean)) {
            return false;
        }
        SimilarGameBean similarGameBean = (SimilarGameBean) other;
        return Intrinsics.areEqual(this.game_id, similarGameBean.game_id) && Intrinsics.areEqual(this.game_name, similarGameBean.game_name) && Intrinsics.areEqual(this.game_icon, similarGameBean.game_icon) && Intrinsics.areEqual(this.game_pic_url, similarGameBean.game_pic_url) && Intrinsics.areEqual(this.play_count, similarGameBean.play_count);
    }

    @Nullable
    public final String getGame_icon() {
        return this.game_icon;
    }

    @Nullable
    public final String getGame_id() {
        return this.game_id;
    }

    @Nullable
    public final String getGame_name() {
        return this.game_name;
    }

    @Nullable
    public final String getGame_pic_url() {
        return this.game_pic_url;
    }

    @Nullable
    public final Integer getPlay_count() {
        return this.play_count;
    }

    public int hashCode() {
        String str = this.game_id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.game_name;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.game_icon;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.game_pic_url;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num = this.play_count;
        return iHashCode4 + (num != null ? num.hashCode() : 0);
    }

    public final void setGame_icon(@Nullable String str) {
        this.game_icon = str;
    }

    public final void setGame_id(@Nullable String str) {
        this.game_id = str;
    }

    public final void setGame_name(@Nullable String str) {
        this.game_name = str;
    }

    public final void setGame_pic_url(@Nullable String str) {
        this.game_pic_url = str;
    }

    public final void setPlay_count(@Nullable Integer num) {
        this.play_count = num;
    }

    @NotNull
    public String toString() {
        return "SimilarGameBean(game_id=" + this.game_id + ", game_name=" + this.game_name + ", game_icon=" + this.game_icon + ", game_pic_url=" + this.game_pic_url + ", play_count=" + this.play_count + ')';
    }

    public SimilarGameBean(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Integer num) {
        this.game_id = str;
        this.game_name = str2;
        this.game_icon = str3;
        this.game_pic_url = str4;
        this.play_count = num;
    }

    public /* synthetic */ SimilarGameBean(String str, String str2, String str3, String str4, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "" : str2, (i10 & 4) != 0 ? "" : str3, (i10 & 8) == 0 ? str4 : "", (i10 & 16) != 0 ? 0 : num);
    }
}
