package com.join.kotlin.discount.model.bean;

import com.baidu.mobads.sdk.internal.bn;
import com.join.mgps.activity.PapayPayDetialActivity_;
import com.kwad.sdk.api.model.AdnName;
import com.tencent.stat.DeviceInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b=\n\u0002\u0010\u000b\n\u0002\b\u001c\b\u0086\b\u0018\u00002\u00020\u0001B\u008f\u0002\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n\u0012\u0012\b\u0002\u0010\u0011\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0012\u0012\u0012\b\u0002\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0005\u0012\u0012\b\u0002\u0010\u0017\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u001d\u0010\u001eJ\u0006\u0010S\u001a\u00020\u0005J\u0006\u0010T\u001a\u00020\u0005J\u0006\u0010U\u001a\u00020VJ\u0006\u0010W\u001a\u00020\u0005J\u0010\u0010X\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010 J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010Z\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010)J\u000b\u0010[\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\\\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u00100J\u000b\u0010]\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010`\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010 J\u000b\u0010a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010b\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u00100J\u0013\u0010c\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0012HÆ\u0003J\u0013\u0010d\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u0012HÆ\u0003J\u0010\u0010e\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u00100J\u000b\u0010f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0013\u0010g\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0018\u00010\u0012HÆ\u0003J\u0010\u0010h\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u00100J\u000b\u0010i\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010j\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u00100J\u000b\u0010k\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0096\u0002\u0010l\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n2\u0012\b\u0002\u0010\u0011\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00122\u0012\b\u0002\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u00122\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00052\u0012\b\u0002\u0010\u0017\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0018\u00010\u00122\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010mJ\u0013\u0010n\u001a\u00020V2\b\u0010o\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010p\u001a\u00020\nHÖ\u0001J\t\u0010q\u001a\u00020\u0005HÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010#\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010,\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010%\"\u0004\b.\u0010'R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u00103\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010%\"\u0004\b5\u0010'R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010%\"\u0004\b7\u0010'R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010%\"\u0004\b9\u0010'R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010#\u001a\u0004\b:\u0010 \"\u0004\b;\u0010\"R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010%\"\u0004\b=\u0010'R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u00103\u001a\u0004\b>\u00100\"\u0004\b?\u00102R$\u0010\u0011\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR$\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010A\"\u0004\bE\u0010CR\u001e\u0010\u0015\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u00103\u001a\u0004\bF\u00100\"\u0004\bG\u00102R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010%\"\u0004\bI\u0010'R$\u0010\u0017\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u0010A\"\u0004\bK\u0010CR\u001e\u0010\u0019\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u00103\u001a\u0004\b\u0019\u00100\"\u0004\bL\u00102R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010%\"\u0004\bN\u0010'R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u00103\u001a\u0004\bO\u00100\"\u0004\bP\u00102R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010%\"\u0004\bR\u0010'¨\u0006r"}, d2 = {"Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;", "", "app_size", "", "company_name", "", "discount", "", "discount_name", "down_count", "", "down_url", "fit_age", PapayPayDetialActivity_.INFO_EXTRA, "latest_server_time", "package_name", "play_count", "sp_tag_name", "", bn.f7600l, "Lcom/join/kotlin/discount/model/bean/TagBean;", DeviceInfo.TAG_VERSION, "ver_name", "permissions", "Lcom/join/kotlin/discount/model/bean/GameDetailDialogInfoBean;", "is_refund", "refund_pic", "on_off", "download_btn_pic", "<init>", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "getApp_size", "()Ljava/lang/Long;", "setApp_size", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getCompany_name", "()Ljava/lang/String;", "setCompany_name", "(Ljava/lang/String;)V", "getDiscount", "()Ljava/lang/Double;", "setDiscount", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "getDiscount_name", "setDiscount_name", "getDown_count", "()Ljava/lang/Integer;", "setDown_count", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getDown_url", "setDown_url", "getFit_age", "setFit_age", "getInfo", "setInfo", "getLatest_server_time", "setLatest_server_time", "getPackage_name", "setPackage_name", "getPlay_count", "setPlay_count", "getSp_tag_name", "()Ljava/util/List;", "setSp_tag_name", "(Ljava/util/List;)V", "getTags", "setTags", "getVer", "setVer", "getVer_name", "setVer_name", "getPermissions", "setPermissions", "set_refund", "getRefund_pic", "setRefund_pic", "getOn_off", "setOn_off", "getDownload_btn_pic", "setDownload_btn_pic", "tagStr", "discountStr", "showSpTag", "", "sizeText", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "copy", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;", "equals", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameDetailBasicInfoBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailBasicInfoBean.kt\ncom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,58:1\n1563#2:59\n1634#2,3:60\n1563#2:63\n1634#2,3:64\n389#3,4:67\n*S KotlinDebug\n*F\n+ 1 GameDetailBasicInfoBean.kt\ncom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean\n*L\n28#1:59\n28#1:60,3\n30#1:63\n30#1:64,3\n36#1:67,4\n*E\n"})
public final /* data */ class GameDetailBasicInfoBean {

    @Nullable
    private Long app_size;

    @Nullable
    private String company_name;

    @Nullable
    private Double discount;

    @Nullable
    private String discount_name;

    @Nullable
    private Integer down_count;

    @Nullable
    private String down_url;

    @Nullable
    private String download_btn_pic;

    @Nullable
    private String fit_age;

    @Nullable
    private String info;

    @Nullable
    private Integer is_refund;

    @Nullable
    private Long latest_server_time;

    @Nullable
    private Integer on_off;

    @Nullable
    private String package_name;

    @Nullable
    private List<GameDetailDialogInfoBean> permissions;

    @Nullable
    private Integer play_count;

    @Nullable
    private String refund_pic;

    @Nullable
    private List<String> sp_tag_name;

    @Nullable
    private List<TagBean> tags;

    @Nullable
    private Integer ver;

    @Nullable
    private String ver_name;

    public GameDetailBasicInfoBean() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1048575, null);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getApp_size() {
        return this.app_size;
    }

    @Nullable
    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getPackage_name() {
        return this.package_name;
    }

    @Nullable
    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Integer getPlay_count() {
        return this.play_count;
    }

    @Nullable
    public final List<String> component12() {
        return this.sp_tag_name;
    }

    @Nullable
    public final List<TagBean> component13() {
        return this.tags;
    }

    @Nullable
    /* JADX INFO: renamed from: component14, reason: from getter */
    public final Integer getVer() {
        return this.ver;
    }

    @Nullable
    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getVer_name() {
        return this.ver_name;
    }

    @Nullable
    public final List<GameDetailDialogInfoBean> component16() {
        return this.permissions;
    }

    @Nullable
    /* JADX INFO: renamed from: component17, reason: from getter */
    public final Integer getIs_refund() {
        return this.is_refund;
    }

    @Nullable
    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getRefund_pic() {
        return this.refund_pic;
    }

    @Nullable
    /* JADX INFO: renamed from: component19, reason: from getter */
    public final Integer getOn_off() {
        return this.on_off;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCompany_name() {
        return this.company_name;
    }

    @Nullable
    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getDownload_btn_pic() {
        return this.download_btn_pic;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Double getDiscount() {
        return this.discount;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDiscount_name() {
        return this.discount_name;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getDown_count() {
        return this.down_count;
    }

    @Nullable
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getDown_url() {
        return this.down_url;
    }

    @Nullable
    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getFit_age() {
        return this.fit_age;
    }

    @Nullable
    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getInfo() {
        return this.info;
    }

    @Nullable
    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Long getLatest_server_time() {
        return this.latest_server_time;
    }

    @NotNull
    public final GameDetailBasicInfoBean copy(@Nullable Long app_size, @Nullable String company_name, @Nullable Double discount, @Nullable String discount_name, @Nullable Integer down_count, @Nullable String down_url, @Nullable String fit_age, @Nullable String info, @Nullable Long latest_server_time, @Nullable String package_name, @Nullable Integer play_count, @Nullable List<String> sp_tag_name, @Nullable List<TagBean> tags, @Nullable Integer ver, @Nullable String ver_name, @Nullable List<GameDetailDialogInfoBean> permissions, @Nullable Integer is_refund, @Nullable String refund_pic, @Nullable Integer on_off, @Nullable String download_btn_pic) {
        return new GameDetailBasicInfoBean(app_size, company_name, discount, discount_name, down_count, down_url, fit_age, info, latest_server_time, package_name, play_count, sp_tag_name, tags, ver, ver_name, permissions, is_refund, refund_pic, on_off, download_btn_pic);
    }

    @NotNull
    public final String discountStr() {
        String strSubstring;
        StringBuilder sb2 = new StringBuilder();
        Object[] objArr = new Object[1];
        Double d10 = this.discount;
        objArr[0] = Double.valueOf((d10 != null ? d10.doubleValue() : 0.0d) / ((double) 10.0f));
        String str = String.format("%.2f", Arrays.copyOf(objArr, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        for (int lastIndex = StringsKt__StringsKt.getLastIndex(str); -1 < lastIndex; lastIndex--) {
            if (!(str.charAt(lastIndex) == '0')) {
                strSubstring = str.substring(0, lastIndex + 1);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                sb2.append(strSubstring);
                sb2.append((char) 25240);
                return sb2.toString();
            }
        }
        strSubstring = "";
        sb2.append(strSubstring);
        sb2.append((char) 25240);
        return sb2.toString();
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameDetailBasicInfoBean)) {
            return false;
        }
        GameDetailBasicInfoBean gameDetailBasicInfoBean = (GameDetailBasicInfoBean) other;
        return Intrinsics.areEqual(this.app_size, gameDetailBasicInfoBean.app_size) && Intrinsics.areEqual(this.company_name, gameDetailBasicInfoBean.company_name) && Intrinsics.areEqual((Object) this.discount, (Object) gameDetailBasicInfoBean.discount) && Intrinsics.areEqual(this.discount_name, gameDetailBasicInfoBean.discount_name) && Intrinsics.areEqual(this.down_count, gameDetailBasicInfoBean.down_count) && Intrinsics.areEqual(this.down_url, gameDetailBasicInfoBean.down_url) && Intrinsics.areEqual(this.fit_age, gameDetailBasicInfoBean.fit_age) && Intrinsics.areEqual(this.info, gameDetailBasicInfoBean.info) && Intrinsics.areEqual(this.latest_server_time, gameDetailBasicInfoBean.latest_server_time) && Intrinsics.areEqual(this.package_name, gameDetailBasicInfoBean.package_name) && Intrinsics.areEqual(this.play_count, gameDetailBasicInfoBean.play_count) && Intrinsics.areEqual(this.sp_tag_name, gameDetailBasicInfoBean.sp_tag_name) && Intrinsics.areEqual(this.tags, gameDetailBasicInfoBean.tags) && Intrinsics.areEqual(this.ver, gameDetailBasicInfoBean.ver) && Intrinsics.areEqual(this.ver_name, gameDetailBasicInfoBean.ver_name) && Intrinsics.areEqual(this.permissions, gameDetailBasicInfoBean.permissions) && Intrinsics.areEqual(this.is_refund, gameDetailBasicInfoBean.is_refund) && Intrinsics.areEqual(this.refund_pic, gameDetailBasicInfoBean.refund_pic) && Intrinsics.areEqual(this.on_off, gameDetailBasicInfoBean.on_off) && Intrinsics.areEqual(this.download_btn_pic, gameDetailBasicInfoBean.download_btn_pic);
    }

    @Nullable
    public final Long getApp_size() {
        return this.app_size;
    }

    @Nullable
    public final String getCompany_name() {
        return this.company_name;
    }

    @Nullable
    public final Double getDiscount() {
        return this.discount;
    }

    @Nullable
    public final String getDiscount_name() {
        return this.discount_name;
    }

    @Nullable
    public final Integer getDown_count() {
        return this.down_count;
    }

    @Nullable
    public final String getDown_url() {
        return this.down_url;
    }

    @Nullable
    public final String getDownload_btn_pic() {
        return this.download_btn_pic;
    }

    @Nullable
    public final String getFit_age() {
        return this.fit_age;
    }

    @Nullable
    public final String getInfo() {
        return this.info;
    }

    @Nullable
    public final Long getLatest_server_time() {
        return this.latest_server_time;
    }

    @Nullable
    public final Integer getOn_off() {
        return this.on_off;
    }

    @Nullable
    public final String getPackage_name() {
        return this.package_name;
    }

    @Nullable
    public final List<GameDetailDialogInfoBean> getPermissions() {
        return this.permissions;
    }

    @Nullable
    public final Integer getPlay_count() {
        return this.play_count;
    }

    @Nullable
    public final String getRefund_pic() {
        return this.refund_pic;
    }

    @Nullable
    public final List<String> getSp_tag_name() {
        return this.sp_tag_name;
    }

    @Nullable
    public final List<TagBean> getTags() {
        return this.tags;
    }

    @Nullable
    public final Integer getVer() {
        return this.ver;
    }

    @Nullable
    public final String getVer_name() {
        return this.ver_name;
    }

    public int hashCode() {
        Long l10 = this.app_size;
        int iHashCode = (l10 == null ? 0 : l10.hashCode()) * 31;
        String str = this.company_name;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Double d10 = this.discount;
        int iHashCode3 = (iHashCode2 + (d10 == null ? 0 : d10.hashCode())) * 31;
        String str2 = this.discount_name;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.down_count;
        int iHashCode5 = (iHashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        String str3 = this.down_url;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.fit_age;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.info;
        int iHashCode8 = (iHashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Long l11 = this.latest_server_time;
        int iHashCode9 = (iHashCode8 + (l11 == null ? 0 : l11.hashCode())) * 31;
        String str6 = this.package_name;
        int iHashCode10 = (iHashCode9 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Integer num2 = this.play_count;
        int iHashCode11 = (iHashCode10 + (num2 == null ? 0 : num2.hashCode())) * 31;
        List<String> list = this.sp_tag_name;
        int iHashCode12 = (iHashCode11 + (list == null ? 0 : list.hashCode())) * 31;
        List<TagBean> list2 = this.tags;
        int iHashCode13 = (iHashCode12 + (list2 == null ? 0 : list2.hashCode())) * 31;
        Integer num3 = this.ver;
        int iHashCode14 = (iHashCode13 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str7 = this.ver_name;
        int iHashCode15 = (iHashCode14 + (str7 == null ? 0 : str7.hashCode())) * 31;
        List<GameDetailDialogInfoBean> list3 = this.permissions;
        int iHashCode16 = (iHashCode15 + (list3 == null ? 0 : list3.hashCode())) * 31;
        Integer num4 = this.is_refund;
        int iHashCode17 = (iHashCode16 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str8 = this.refund_pic;
        int iHashCode18 = (iHashCode17 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Integer num5 = this.on_off;
        int iHashCode19 = (iHashCode18 + (num5 == null ? 0 : num5.hashCode())) * 31;
        String str9 = this.download_btn_pic;
        return iHashCode19 + (str9 != null ? str9.hashCode() : 0);
    }

    @Nullable
    public final Integer is_refund() {
        return this.is_refund;
    }

    public final void setApp_size(@Nullable Long l10) {
        this.app_size = l10;
    }

    public final void setCompany_name(@Nullable String str) {
        this.company_name = str;
    }

    public final void setDiscount(@Nullable Double d10) {
        this.discount = d10;
    }

    public final void setDiscount_name(@Nullable String str) {
        this.discount_name = str;
    }

    public final void setDown_count(@Nullable Integer num) {
        this.down_count = num;
    }

    public final void setDown_url(@Nullable String str) {
        this.down_url = str;
    }

    public final void setDownload_btn_pic(@Nullable String str) {
        this.download_btn_pic = str;
    }

    public final void setFit_age(@Nullable String str) {
        this.fit_age = str;
    }

    public final void setInfo(@Nullable String str) {
        this.info = str;
    }

    public final void setLatest_server_time(@Nullable Long l10) {
        this.latest_server_time = l10;
    }

    public final void setOn_off(@Nullable Integer num) {
        this.on_off = num;
    }

    public final void setPackage_name(@Nullable String str) {
        this.package_name = str;
    }

    public final void setPermissions(@Nullable List<GameDetailDialogInfoBean> list) {
        this.permissions = list;
    }

    public final void setPlay_count(@Nullable Integer num) {
        this.play_count = num;
    }

    public final void setRefund_pic(@Nullable String str) {
        this.refund_pic = str;
    }

    public final void setSp_tag_name(@Nullable List<String> list) {
        this.sp_tag_name = list;
    }

    public final void setTags(@Nullable List<TagBean> list) {
        this.tags = list;
    }

    public final void setVer(@Nullable Integer num) {
        this.ver = num;
    }

    public final void setVer_name(@Nullable String str) {
        this.ver_name = str;
    }

    public final void set_refund(@Nullable Integer num) {
        this.is_refund = num;
    }

    public final boolean showSpTag() {
        List<String> list = this.sp_tag_name;
        if (!(list == null || list.isEmpty())) {
            List<String> list2 = this.sp_tag_name;
            Intrinsics.checkNotNull(list2);
            if (list2.size() > 0) {
                List<String> list3 = this.sp_tag_name;
                Intrinsics.checkNotNull(list3);
                String str = list3.get(0);
                if (!(str == null || str.length() == 0)) {
                    return true;
                }
            }
        }
        return false;
    }

    @NotNull
    public final String sizeText() {
        Long l10 = this.app_size;
        if (l10 == null) {
            return "";
        }
        long jLongValue = l10.longValue();
        if (jLongValue < 1024) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(jLongValue);
            sb2.append('B');
            return sb2.toString();
        }
        if (jLongValue < 1048576) {
            StringBuilder sb3 = new StringBuilder();
            String str = String.format("%.1f", Arrays.copyOf(new Object[]{Float.valueOf((jLongValue * 1.0f) / 1024)}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            sb3.append(str);
            sb3.append('K');
            return sb3.toString();
        }
        if (jLongValue < 1073741824) {
            StringBuilder sb4 = new StringBuilder();
            String str2 = String.format("%.1f", Arrays.copyOf(new Object[]{Float.valueOf((jLongValue * 1.0f) / 1048576)}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            sb4.append(str2);
            sb4.append('M');
            return sb4.toString();
        }
        StringBuilder sb5 = new StringBuilder();
        String str3 = String.format("%.1f", Arrays.copyOf(new Object[]{Float.valueOf((jLongValue * 1.0f) / 1073741824)}, 1));
        Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
        sb5.append(str3);
        sb5.append('G');
        return sb5.toString();
    }

    @NotNull
    public final String tagStr() {
        List<TagBean> list = this.tags;
        if (list == null) {
            return "";
        }
        if (list.size() > 2) {
            List<TagBean> listSubList = list.subList(0, 2);
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listSubList, 10));
            for (TagBean tagBean : listSubList) {
                arrayList.add(tagBean != null ? tagBean.getName() : null);
            }
            StringsKt__StringsJVMKt.replace$default(CollectionsKt___CollectionsKt.joinToString$default(arrayList, null, null, null, 0, null, null, 63, null), ", ", "·", false, 4, (Object) null);
        }
        List<TagBean> list2 = list;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10));
        for (TagBean tagBean2 : list2) {
            arrayList2.add(tagBean2 != null ? tagBean2.getName() : null);
        }
        return StringsKt__StringsJVMKt.replace$default(CollectionsKt___CollectionsKt.joinToString$default(arrayList2, null, null, null, 0, null, null, 63, null), ", ", "·", false, 4, (Object) null);
    }

    @NotNull
    public String toString() {
        return "GameDetailBasicInfoBean(app_size=" + this.app_size + ", company_name=" + this.company_name + ", discount=" + this.discount + ", discount_name=" + this.discount_name + ", down_count=" + this.down_count + ", down_url=" + this.down_url + ", fit_age=" + this.fit_age + ", info=" + this.info + ", latest_server_time=" + this.latest_server_time + ", package_name=" + this.package_name + ", play_count=" + this.play_count + ", sp_tag_name=" + this.sp_tag_name + ", tags=" + this.tags + ", ver=" + this.ver + ", ver_name=" + this.ver_name + ", permissions=" + this.permissions + ", is_refund=" + this.is_refund + ", refund_pic=" + this.refund_pic + ", on_off=" + this.on_off + ", download_btn_pic=" + this.download_btn_pic + ')';
    }

    public GameDetailBasicInfoBean(@Nullable Long l10, @Nullable String str, @Nullable Double d10, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Long l11, @Nullable String str6, @Nullable Integer num2, @Nullable List<String> list, @Nullable List<TagBean> list2, @Nullable Integer num3, @Nullable String str7, @Nullable List<GameDetailDialogInfoBean> list3, @Nullable Integer num4, @Nullable String str8, @Nullable Integer num5, @Nullable String str9) {
        this.app_size = l10;
        this.company_name = str;
        this.discount = d10;
        this.discount_name = str2;
        this.down_count = num;
        this.down_url = str3;
        this.fit_age = str4;
        this.info = str5;
        this.latest_server_time = l11;
        this.package_name = str6;
        this.play_count = num2;
        this.sp_tag_name = list;
        this.tags = list2;
        this.ver = num3;
        this.ver_name = str7;
        this.permissions = list3;
        this.is_refund = num4;
        this.refund_pic = str8;
        this.on_off = num5;
        this.download_btn_pic = str9;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ GameDetailBasicInfoBean(Long l10, String str, Double d10, String str2, Integer num, String str3, String str4, String str5, Long l11, String str6, Integer num2, List list, List list2, Integer num3, String str7, List list3, Integer num4, String str8, Integer num5, String str9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        Long l12 = 0L;
        this((i10 & 1) != 0 ? l12 : l10, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? Double.valueOf(0.0d) : d10, (i10 & 8) != 0 ? "" : str2, (i10 & 16) != 0 ? 0 : num, (i10 & 32) != 0 ? "" : str3, (i10 & 64) != 0 ? "" : str4, (i10 & 128) != 0 ? "" : str5, (i10 & 256) == 0 ? l11 : 0L, (i10 & 512) != 0 ? "" : str6, (i10 & 1024) != 0 ? 0 : num2, (i10 & 2048) != 0 ? null : list, (i10 & 4096) != 0 ? null : list2, (i10 & 8192) != 0 ? 0 : num3, (i10 & 16384) != 0 ? "" : str7, (i10 & 32768) != 0 ? null : list3, (i10 & 65536) != 0 ? 0 : num4, (i10 & 131072) != 0 ? "" : str8, (i10 & 262144) != 0 ? 1 : num5, (i10 & 524288) != 0 ? "" : str9);
    }
}
