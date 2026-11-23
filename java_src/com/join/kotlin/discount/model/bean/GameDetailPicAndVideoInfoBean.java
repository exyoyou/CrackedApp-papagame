package com.join.kotlin.discount.model.bean;

import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\u0012\b\u0002\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\u001d\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0004HÆ\u0003JR\u0010\"\u001a\u00020\u00002\u0012\b\u0002\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004HÆ\u0001¢\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020\u0006HÖ\u0001J\t\u0010(\u001a\u00020\u0004HÖ\u0001R$\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018¨\u0006)"}, d2 = {"Lcom/join/kotlin/discount/model/bean/GameDetailPicAndVideoInfoBean;", "", "pics", "", "", "pic_position", "", "top_pic", "video_cover", "video_url", "<init>", "(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getPics", "()Ljava/util/List;", "setPics", "(Ljava/util/List;)V", "getPic_position", "()Ljava/lang/Integer;", "setPic_position", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getTop_pic", "()Ljava/lang/String;", "setTop_pic", "(Ljava/lang/String;)V", "getVideo_cover", "setVideo_cover", "getVideo_url", "setVideo_url", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/kotlin/discount/model/bean/GameDetailPicAndVideoInfoBean;", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GameDetailPicAndVideoInfoBean {

    @Nullable
    private Integer pic_position;

    @Nullable
    private List<String> pics;

    @Nullable
    private String top_pic;

    @Nullable
    private String video_cover;

    @Nullable
    private String video_url;

    public GameDetailPicAndVideoInfoBean() {
        this(null, null, null, null, null, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GameDetailPicAndVideoInfoBean copy$default(GameDetailPicAndVideoInfoBean gameDetailPicAndVideoInfoBean, List list, Integer num, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = gameDetailPicAndVideoInfoBean.pics;
        }
        if ((i10 & 2) != 0) {
            num = gameDetailPicAndVideoInfoBean.pic_position;
        }
        Integer num2 = num;
        if ((i10 & 4) != 0) {
            str = gameDetailPicAndVideoInfoBean.top_pic;
        }
        String str4 = str;
        if ((i10 & 8) != 0) {
            str2 = gameDetailPicAndVideoInfoBean.video_cover;
        }
        String str5 = str2;
        if ((i10 & 16) != 0) {
            str3 = gameDetailPicAndVideoInfoBean.video_url;
        }
        return gameDetailPicAndVideoInfoBean.copy(list, num2, str4, str5, str3);
    }

    @Nullable
    public final List<String> component1() {
        return this.pics;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getPic_position() {
        return this.pic_position;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTop_pic() {
        return this.top_pic;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getVideo_cover() {
        return this.video_cover;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getVideo_url() {
        return this.video_url;
    }

    @NotNull
    public final GameDetailPicAndVideoInfoBean copy(@Nullable List<String> pics, @Nullable Integer pic_position, @Nullable String top_pic, @Nullable String video_cover, @Nullable String video_url) {
        return new GameDetailPicAndVideoInfoBean(pics, pic_position, top_pic, video_cover, video_url);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameDetailPicAndVideoInfoBean)) {
            return false;
        }
        GameDetailPicAndVideoInfoBean gameDetailPicAndVideoInfoBean = (GameDetailPicAndVideoInfoBean) other;
        return Intrinsics.areEqual(this.pics, gameDetailPicAndVideoInfoBean.pics) && Intrinsics.areEqual(this.pic_position, gameDetailPicAndVideoInfoBean.pic_position) && Intrinsics.areEqual(this.top_pic, gameDetailPicAndVideoInfoBean.top_pic) && Intrinsics.areEqual(this.video_cover, gameDetailPicAndVideoInfoBean.video_cover) && Intrinsics.areEqual(this.video_url, gameDetailPicAndVideoInfoBean.video_url);
    }

    @Nullable
    public final Integer getPic_position() {
        return this.pic_position;
    }

    @Nullable
    public final List<String> getPics() {
        return this.pics;
    }

    @Nullable
    public final String getTop_pic() {
        return this.top_pic;
    }

    @Nullable
    public final String getVideo_cover() {
        return this.video_cover;
    }

    @Nullable
    public final String getVideo_url() {
        return this.video_url;
    }

    public int hashCode() {
        List<String> list = this.pics;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        Integer num = this.pic_position;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.top_pic;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.video_cover;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.video_url;
        return iHashCode4 + (str3 != null ? str3.hashCode() : 0);
    }

    public final void setPic_position(@Nullable Integer num) {
        this.pic_position = num;
    }

    public final void setPics(@Nullable List<String> list) {
        this.pics = list;
    }

    public final void setTop_pic(@Nullable String str) {
        this.top_pic = str;
    }

    public final void setVideo_cover(@Nullable String str) {
        this.video_cover = str;
    }

    public final void setVideo_url(@Nullable String str) {
        this.video_url = str;
    }

    @NotNull
    public String toString() {
        return "GameDetailPicAndVideoInfoBean(pics=" + this.pics + ", pic_position=" + this.pic_position + ", top_pic=" + this.top_pic + ", video_cover=" + this.video_cover + ", video_url=" + this.video_url + ')';
    }

    public GameDetailPicAndVideoInfoBean(@Nullable List<String> list, @Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.pics = list;
        this.pic_position = num;
        this.top_pic = str;
        this.video_cover = str2;
        this.video_url = str3;
    }

    public /* synthetic */ GameDetailPicAndVideoInfoBean(List list, Integer num, String str, String str2, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : list, (i10 & 2) != 0 ? 0 : num, (i10 & 4) != 0 ? "" : str, (i10 & 8) != 0 ? "" : str2, (i10 & 16) == 0 ? str3 : "");
    }
}
