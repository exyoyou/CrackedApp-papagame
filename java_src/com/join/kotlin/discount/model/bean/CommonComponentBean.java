package com.join.kotlin.discount.model.bean;

import com.join.mgps.Util.v0;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b'\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u0012\u0010+\u001a\u0004\u0018\u00010\u00032\b\u0010,\u001a\u0004\u0018\u00010\u0003J\u0006\u0010-\u001a\u00020.J\u0006\u0010/\u001a\u00020.J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00102\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u00103\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0014Jb\u00107\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u00108J\u0013\u00109\u001a\u00020.2\b\u0010:\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010;\u001a\u00020\u0006HÖ\u0001J\t\u0010<\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u000e\"\u0004\b\u001b\u0010\u0010R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u000e\"\u0004\b\u001d\u0010\u0010R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u001e\u0010\u0014\"\u0004\b\u001f\u0010\u0016R\u001a\u0010 \u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001c\u0010%\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u000e\"\u0004\b'\u0010\u0010R\u001c\u0010(\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u000e\"\u0004\b*\u0010\u0010¨\u0006="}, d2 = {"Lcom/join/kotlin/discount/model/bean/CommonComponentBean;", "", "id", "", "pic", "selected", "", "show", "sub_title", "title", "num", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getPic", "setPic", "getSelected", "()Ljava/lang/Integer;", "setSelected", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getShow", "setShow", "getSub_title", "setSub_title", "getTitle", "setTitle", "getNum", "setNum", "type", "getType", "()I", "setType", "(I)V", "fromLocal", "getFromLocal", "setFromLocal", "adPosition", "getAdPosition", "setAdPosition", "subTitleWithDefault", v0.f50057a, "showSubTitle", "", "showGiftSubTitle", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/join/kotlin/discount/model/bean/CommonComponentBean;", "equals", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CommonComponentBean {

    @Nullable
    private String adPosition;

    @Nullable
    private String fromLocal;

    @Nullable
    private String id;

    @Nullable
    private Integer num;

    @Nullable
    private String pic;

    @Nullable
    private Integer selected;

    @Nullable
    private Integer show;

    @Nullable
    private String sub_title;

    @Nullable
    private String title;
    private int type;

    public CommonComponentBean() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public static /* synthetic */ CommonComponentBean copy$default(CommonComponentBean commonComponentBean, String str, String str2, Integer num, Integer num2, String str3, String str4, Integer num3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = commonComponentBean.id;
        }
        if ((i10 & 2) != 0) {
            str2 = commonComponentBean.pic;
        }
        String str5 = str2;
        if ((i10 & 4) != 0) {
            num = commonComponentBean.selected;
        }
        Integer num4 = num;
        if ((i10 & 8) != 0) {
            num2 = commonComponentBean.show;
        }
        Integer num5 = num2;
        if ((i10 & 16) != 0) {
            str3 = commonComponentBean.sub_title;
        }
        String str6 = str3;
        if ((i10 & 32) != 0) {
            str4 = commonComponentBean.title;
        }
        String str7 = str4;
        if ((i10 & 64) != 0) {
            num3 = commonComponentBean.num;
        }
        return commonComponentBean.copy(str, str5, num4, num5, str6, str7, num3);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPic() {
        return this.pic;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getSelected() {
        return this.selected;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getShow() {
        return this.show;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getSub_title() {
        return this.sub_title;
    }

    @Nullable
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Integer getNum() {
        return this.num;
    }

    @NotNull
    public final CommonComponentBean copy(@Nullable String id2, @Nullable String pic, @Nullable Integer selected, @Nullable Integer show, @Nullable String sub_title, @Nullable String title, @Nullable Integer num) {
        return new CommonComponentBean(id2, pic, selected, show, sub_title, title, num);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CommonComponentBean)) {
            return false;
        }
        CommonComponentBean commonComponentBean = (CommonComponentBean) other;
        return Intrinsics.areEqual(this.id, commonComponentBean.id) && Intrinsics.areEqual(this.pic, commonComponentBean.pic) && Intrinsics.areEqual(this.selected, commonComponentBean.selected) && Intrinsics.areEqual(this.show, commonComponentBean.show) && Intrinsics.areEqual(this.sub_title, commonComponentBean.sub_title) && Intrinsics.areEqual(this.title, commonComponentBean.title) && Intrinsics.areEqual(this.num, commonComponentBean.num);
    }

    @Nullable
    public final String getAdPosition() {
        return this.adPosition;
    }

    @Nullable
    public final String getFromLocal() {
        return this.fromLocal;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final Integer getNum() {
        return this.num;
    }

    @Nullable
    public final String getPic() {
        return this.pic;
    }

    @Nullable
    public final Integer getSelected() {
        return this.selected;
    }

    @Nullable
    public final Integer getShow() {
        return this.show;
    }

    @Nullable
    public final String getSub_title() {
        return this.sub_title;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.pic;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.selected;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.show;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str3 = this.sub_title;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.title;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num3 = this.num;
        return iHashCode6 + (num3 != null ? num3.hashCode() : 0);
    }

    public final void setAdPosition(@Nullable String str) {
        this.adPosition = str;
    }

    public final void setFromLocal(@Nullable String str) {
        this.fromLocal = str;
    }

    public final void setId(@Nullable String str) {
        this.id = str;
    }

    public final void setNum(@Nullable Integer num) {
        this.num = num;
    }

    public final void setPic(@Nullable String str) {
        this.pic = str;
    }

    public final void setSelected(@Nullable Integer num) {
        this.selected = num;
    }

    public final void setShow(@Nullable Integer num) {
        this.show = num;
    }

    public final void setSub_title(@Nullable String str) {
        this.sub_title = str;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    public final void setType(int i10) {
        this.type = i10;
    }

    public final boolean showGiftSubTitle() {
        String str = this.sub_title;
        return ((str == null || str.length() == 0) || Intrinsics.areEqual(this.sub_title, "0")) ? false : true;
    }

    public final boolean showSubTitle() {
        Integer num = this.num;
        return (num != null ? num.intValue() : 0) > 0;
    }

    @Nullable
    public final String subTitleWithDefault(@Nullable String str) {
        String str2 = this.sub_title;
        return str2 == null || str2.length() == 0 ? str : this.sub_title;
    }

    @NotNull
    public String toString() {
        return "CommonComponentBean(id=" + this.id + ", pic=" + this.pic + ", selected=" + this.selected + ", show=" + this.show + ", sub_title=" + this.sub_title + ", title=" + this.title + ", num=" + this.num + ')';
    }

    public CommonComponentBean(@Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable Integer num2, @Nullable String str3, @Nullable String str4, @Nullable Integer num3) {
        this.id = str;
        this.pic = str2;
        this.selected = num;
        this.show = num2;
        this.sub_title = str3;
        this.title = str4;
        this.num = num3;
    }

    public /* synthetic */ CommonComponentBean(String str, String str2, Integer num, Integer num2, String str3, String str4, Integer num3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "" : str2, (i10 & 4) != 0 ? 0 : num, (i10 & 8) != 0 ? 0 : num2, (i10 & 16) != 0 ? "" : str3, (i10 & 32) == 0 ? str4 : "", (i10 & 64) != 0 ? 0 : num3);
    }
}
