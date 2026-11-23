package com.join.kotlin.discount.model.bean;

import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.o0;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.kwad.sdk.api.model.AdnName;
import com.tencent.stat.DeviceInfo;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b3\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0089\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\u0010\u0010\u0012\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0013\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b \u0010!J\u0006\u0010N\u001a\u00020OJ\u0006\u0010P\u001a\u00020\u0016J\u0006\u0010Q\u001a\u00020\u0005J\u0006\u0010R\u001a\u00020\u0005J\u0006\u0010S\u001a\u00020\u0005J\u0010\u0010T\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010#J\u000b\u0010U\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010V\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010#J\t\u0010W\u001a\u00020\u0005HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010`\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010#J\u000b\u0010a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0013\u0010b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0013HÆ\u0003J\u0010\u0010c\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010#J\u0010\u0010d\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0002\u0010BJ\u000b\u0010e\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010h\u001a\u0004\u0018\u00010\u001bHÆ\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010j\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010#J\u000b\u0010k\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010l\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0002\u0010BJÀ\u0002\u0010m\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0012\b\u0002\u0010\u0012\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0016HÆ\u0001¢\u0006\u0002\u0010nJ\u0013\u0010o\u001a\u00020\u00162\b\u0010p\u001a\u0004\u0018\u00010qHÖ\u0003J\t\u0010r\u001a\u00020\u0003HÖ\u0001J\t\u0010s\u001a\u00020\u0005HÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010&\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010&\u001a\u0004\b+\u0010#\"\u0004\b,\u0010%R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010(\"\u0004\b.\u0010*R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010(\"\u0004\b0\u0010*R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010(\"\u0004\b2\u0010*R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010(\"\u0004\b4\u0010*R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010(\"\u0004\b6\u0010*R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010(\"\u0004\b8\u0010*R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b9\u0010(R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b:\u0010(R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b;\u0010(R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010&\u001a\u0004\b<\u0010#R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b=\u0010(R\u001b\u0010\u0012\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0013¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?R\u0015\u0010\u0014\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010&\u001a\u0004\b@\u0010#R\u0015\u0010\u0015\u001a\u0004\u0018\u00010\u0016¢\u0006\n\n\u0002\u0010C\u001a\u0004\bA\u0010BR\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\bD\u0010(R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\bE\u0010(R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010(\"\u0004\bG\u0010*R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u001b¢\u0006\b\n\u0000\u001a\u0004\bH\u0010IR\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010(R\u0015\u0010\u001d\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010&\u001a\u0004\bK\u0010#R\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\bL\u0010(R\u0015\u0010\u001f\u001a\u0004\u0018\u00010\u0016¢\u0006\n\n\u0002\u0010C\u001a\u0004\bM\u0010B¨\u0006t"}, d2 = {"Lcom/join/kotlin/discount/model/bean/CouponItemBean;", "Ljava/io/Serializable;", DeviceInfo.TAG_ANDROID_ID, "", "issueType", "", "tpl_id", "coupon_name", "amount_text", "threshold_text", "threshold_text2", "use_range_text", "use_time_text", "amount", "balance", "code", "coupon_type", "discount", "game_ids", "", "range_op", "repeatable", "", "threshold", "unusable_reason", "receive_time_text", "use_tip", "Lcom/join/kotlin/discount/model/bean/CouponUseTip;", "game_names", NoticeTopAnimActivityDialog_.STATE_EXTRA, "validateText", "effective", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/kotlin/discount/model/bean/CouponUseTip;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)V", "getAid", "()Ljava/lang/Integer;", "setAid", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getIssueType", "()Ljava/lang/String;", "setIssueType", "(Ljava/lang/String;)V", "getTpl_id", "setTpl_id", "getCoupon_name", "setCoupon_name", "getAmount_text", "setAmount_text", "getThreshold_text", "setThreshold_text", "getThreshold_text2", "setThreshold_text2", "getUse_range_text", "setUse_range_text", "getUse_time_text", "setUse_time_text", "getAmount", "getBalance", "getCode", "getCoupon_type", "getDiscount", "getGame_ids", "()Ljava/util/List;", "getRange_op", "getRepeatable", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getThreshold", "getUnusable_reason", "getReceive_time_text", "setReceive_time_text", "getUse_tip", "()Lcom/join/kotlin/discount/model/bean/CouponUseTip;", "getGame_names", "getState", "getValidateText", "getEffective", "formatBalance", "Landroid/text/SpannableStringBuilder;", "is648", "receiveBtnText", "receiveBtnText2", "receiveBtnTextColor", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/kotlin/discount/model/bean/CouponUseTip;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/join/kotlin/discount/model/bean/CouponItemBean;", "equals", AdnName.OTHER, "", "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CouponItemBean implements Serializable {

    @Nullable
    private Integer aid;

    @Nullable
    private final String amount;

    @Nullable
    private String amount_text;

    @Nullable
    private final String balance;

    @Nullable
    private final String code;

    @NotNull
    private String coupon_name;

    @Nullable
    private final Integer coupon_type;

    @Nullable
    private final String discount;

    @Nullable
    private final Boolean effective;

    @Nullable
    private final List<String> game_ids;

    @Nullable
    private final String game_names;

    @Nullable
    private String issueType;

    @Nullable
    private final Integer range_op;

    @Nullable
    private String receive_time_text;

    @Nullable
    private final Boolean repeatable;

    @Nullable
    private final Integer state;

    @Nullable
    private final String threshold;

    @Nullable
    private String threshold_text;

    @Nullable
    private String threshold_text2;

    @Nullable
    private Integer tpl_id;

    @Nullable
    private final String unusable_reason;

    @Nullable
    private String use_range_text;

    @Nullable
    private String use_time_text;

    @Nullable
    private final CouponUseTip use_tip;

    @Nullable
    private final String validateText;

    public CouponItemBean(@Nullable Integer num, @Nullable String str, @Nullable Integer num2, @NotNull String coupon_name, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable Integer num3, @Nullable String str10, @Nullable List<String> list, @Nullable Integer num4, @Nullable Boolean bool, @Nullable String str11, @Nullable String str12, @Nullable String str13, @Nullable CouponUseTip couponUseTip, @Nullable String str14, @Nullable Integer num5, @Nullable String str15, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(coupon_name, "coupon_name");
        this.aid = num;
        this.issueType = str;
        this.tpl_id = num2;
        this.coupon_name = coupon_name;
        this.amount_text = str2;
        this.threshold_text = str3;
        this.threshold_text2 = str4;
        this.use_range_text = str5;
        this.use_time_text = str6;
        this.amount = str7;
        this.balance = str8;
        this.code = str9;
        this.coupon_type = num3;
        this.discount = str10;
        this.game_ids = list;
        this.range_op = num4;
        this.repeatable = bool;
        this.threshold = str11;
        this.unusable_reason = str12;
        this.receive_time_text = str13;
        this.use_tip = couponUseTip;
        this.game_names = str14;
        this.state = num5;
        this.validateText = str15;
        this.effective = bool2;
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getAid() {
        return this.aid;
    }

    @Nullable
    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getAmount() {
        return this.amount;
    }

    @Nullable
    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getBalance() {
        return this.balance;
    }

    @Nullable
    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    @Nullable
    /* JADX INFO: renamed from: component13, reason: from getter */
    public final Integer getCoupon_type() {
        return this.coupon_type;
    }

    @Nullable
    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getDiscount() {
        return this.discount;
    }

    @Nullable
    public final List<String> component15() {
        return this.game_ids;
    }

    @Nullable
    /* JADX INFO: renamed from: component16, reason: from getter */
    public final Integer getRange_op() {
        return this.range_op;
    }

    @Nullable
    /* JADX INFO: renamed from: component17, reason: from getter */
    public final Boolean getRepeatable() {
        return this.repeatable;
    }

    @Nullable
    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getThreshold() {
        return this.threshold;
    }

    @Nullable
    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getUnusable_reason() {
        return this.unusable_reason;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getIssueType() {
        return this.issueType;
    }

    @Nullable
    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getReceive_time_text() {
        return this.receive_time_text;
    }

    @Nullable
    /* JADX INFO: renamed from: component21, reason: from getter */
    public final CouponUseTip getUse_tip() {
        return this.use_tip;
    }

    @Nullable
    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getGame_names() {
        return this.game_names;
    }

    @Nullable
    /* JADX INFO: renamed from: component23, reason: from getter */
    public final Integer getState() {
        return this.state;
    }

    @Nullable
    /* JADX INFO: renamed from: component24, reason: from getter */
    public final String getValidateText() {
        return this.validateText;
    }

    @Nullable
    /* JADX INFO: renamed from: component25, reason: from getter */
    public final Boolean getEffective() {
        return this.effective;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getTpl_id() {
        return this.tpl_id;
    }

    @NotNull
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCoupon_name() {
        return this.coupon_name;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getAmount_text() {
        return this.amount_text;
    }

    @Nullable
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getThreshold_text() {
        return this.threshold_text;
    }

    @Nullable
    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getThreshold_text2() {
        return this.threshold_text2;
    }

    @Nullable
    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getUse_range_text() {
        return this.use_range_text;
    }

    @Nullable
    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getUse_time_text() {
        return this.use_time_text;
    }

    @NotNull
    public final CouponItemBean copy(@Nullable Integer aid, @Nullable String issueType, @Nullable Integer tpl_id, @NotNull String coupon_name, @Nullable String amount_text, @Nullable String threshold_text, @Nullable String threshold_text2, @Nullable String use_range_text, @Nullable String use_time_text, @Nullable String amount, @Nullable String balance, @Nullable String code, @Nullable Integer coupon_type, @Nullable String discount, @Nullable List<String> game_ids, @Nullable Integer range_op, @Nullable Boolean repeatable, @Nullable String threshold, @Nullable String unusable_reason, @Nullable String receive_time_text, @Nullable CouponUseTip use_tip, @Nullable String game_names, @Nullable Integer state, @Nullable String validateText, @Nullable Boolean effective) {
        Intrinsics.checkNotNullParameter(coupon_name, "coupon_name");
        return new CouponItemBean(aid, issueType, tpl_id, coupon_name, amount_text, threshold_text, threshold_text2, use_range_text, use_time_text, amount, balance, code, coupon_type, discount, game_ids, range_op, repeatable, threshold, unusable_reason, receive_time_text, use_tip, game_names, state, validateText, effective);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CouponItemBean)) {
            return false;
        }
        CouponItemBean couponItemBean = (CouponItemBean) other;
        return Intrinsics.areEqual(this.aid, couponItemBean.aid) && Intrinsics.areEqual(this.issueType, couponItemBean.issueType) && Intrinsics.areEqual(this.tpl_id, couponItemBean.tpl_id) && Intrinsics.areEqual(this.coupon_name, couponItemBean.coupon_name) && Intrinsics.areEqual(this.amount_text, couponItemBean.amount_text) && Intrinsics.areEqual(this.threshold_text, couponItemBean.threshold_text) && Intrinsics.areEqual(this.threshold_text2, couponItemBean.threshold_text2) && Intrinsics.areEqual(this.use_range_text, couponItemBean.use_range_text) && Intrinsics.areEqual(this.use_time_text, couponItemBean.use_time_text) && Intrinsics.areEqual(this.amount, couponItemBean.amount) && Intrinsics.areEqual(this.balance, couponItemBean.balance) && Intrinsics.areEqual(this.code, couponItemBean.code) && Intrinsics.areEqual(this.coupon_type, couponItemBean.coupon_type) && Intrinsics.areEqual(this.discount, couponItemBean.discount) && Intrinsics.areEqual(this.game_ids, couponItemBean.game_ids) && Intrinsics.areEqual(this.range_op, couponItemBean.range_op) && Intrinsics.areEqual(this.repeatable, couponItemBean.repeatable) && Intrinsics.areEqual(this.threshold, couponItemBean.threshold) && Intrinsics.areEqual(this.unusable_reason, couponItemBean.unusable_reason) && Intrinsics.areEqual(this.receive_time_text, couponItemBean.receive_time_text) && Intrinsics.areEqual(this.use_tip, couponItemBean.use_tip) && Intrinsics.areEqual(this.game_names, couponItemBean.game_names) && Intrinsics.areEqual(this.state, couponItemBean.state) && Intrinsics.areEqual(this.validateText, couponItemBean.validateText) && Intrinsics.areEqual(this.effective, couponItemBean.effective);
    }

    @NotNull
    public final SpannableStringBuilder formatBalance() {
        String str = this.balance;
        if (str == null) {
            str = "";
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        String str2 = this.balance;
        if (str2 != null && StringsKt__StringsKt.contains$default((CharSequence) str2, (CharSequence) o0.f49827a, false, 2, (Object) null)) {
            AbsoluteSizeSpan absoluteSizeSpan = new AbsoluteSizeSpan((int) MApplication.f3182z.getResources().getDimension(R.dimen.wdp24));
            String str3 = this.balance;
            int iIndexOf$default = (str3 != null ? StringsKt__StringsKt.indexOf$default((CharSequence) str3, o0.f49827a, 0, false, 6, (Object) null) : 0) + 1;
            String str4 = this.balance;
            spannableStringBuilder.setSpan(absoluteSizeSpan, iIndexOf$default, str4 != null ? str4.length() : 0, 34);
        }
        return spannableStringBuilder;
    }

    @Nullable
    public final Integer getAid() {
        return this.aid;
    }

    @Nullable
    public final String getAmount() {
        return this.amount;
    }

    @Nullable
    public final String getAmount_text() {
        return this.amount_text;
    }

    @Nullable
    public final String getBalance() {
        return this.balance;
    }

    @Nullable
    public final String getCode() {
        return this.code;
    }

    @NotNull
    public final String getCoupon_name() {
        return this.coupon_name;
    }

    @Nullable
    public final Integer getCoupon_type() {
        return this.coupon_type;
    }

    @Nullable
    public final String getDiscount() {
        return this.discount;
    }

    @Nullable
    public final Boolean getEffective() {
        return this.effective;
    }

    @Nullable
    public final List<String> getGame_ids() {
        return this.game_ids;
    }

    @Nullable
    public final String getGame_names() {
        return this.game_names;
    }

    @Nullable
    public final String getIssueType() {
        return this.issueType;
    }

    @Nullable
    public final Integer getRange_op() {
        return this.range_op;
    }

    @Nullable
    public final String getReceive_time_text() {
        return this.receive_time_text;
    }

    @Nullable
    public final Boolean getRepeatable() {
        return this.repeatable;
    }

    @Nullable
    public final Integer getState() {
        return this.state;
    }

    @Nullable
    public final String getThreshold() {
        return this.threshold;
    }

    @Nullable
    public final String getThreshold_text() {
        return this.threshold_text;
    }

    @Nullable
    public final String getThreshold_text2() {
        return this.threshold_text2;
    }

    @Nullable
    public final Integer getTpl_id() {
        return this.tpl_id;
    }

    @Nullable
    public final String getUnusable_reason() {
        return this.unusable_reason;
    }

    @Nullable
    public final String getUse_range_text() {
        return this.use_range_text;
    }

    @Nullable
    public final String getUse_time_text() {
        return this.use_time_text;
    }

    @Nullable
    public final CouponUseTip getUse_tip() {
        return this.use_tip;
    }

    @Nullable
    public final String getValidateText() {
        return this.validateText;
    }

    public int hashCode() {
        Integer num = this.aid;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.issueType;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num2 = this.tpl_id;
        int iHashCode3 = (((iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31) + this.coupon_name.hashCode()) * 31;
        String str2 = this.amount_text;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.threshold_text;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.threshold_text2;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.use_range_text;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.use_time_text;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.amount;
        int iHashCode9 = (iHashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.balance;
        int iHashCode10 = (iHashCode9 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.code;
        int iHashCode11 = (iHashCode10 + (str9 == null ? 0 : str9.hashCode())) * 31;
        Integer num3 = this.coupon_type;
        int iHashCode12 = (iHashCode11 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str10 = this.discount;
        int iHashCode13 = (iHashCode12 + (str10 == null ? 0 : str10.hashCode())) * 31;
        List<String> list = this.game_ids;
        int iHashCode14 = (iHashCode13 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num4 = this.range_op;
        int iHashCode15 = (iHashCode14 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Boolean bool = this.repeatable;
        int iHashCode16 = (iHashCode15 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str11 = this.threshold;
        int iHashCode17 = (iHashCode16 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.unusable_reason;
        int iHashCode18 = (iHashCode17 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.receive_time_text;
        int iHashCode19 = (iHashCode18 + (str13 == null ? 0 : str13.hashCode())) * 31;
        CouponUseTip couponUseTip = this.use_tip;
        int iHashCode20 = (iHashCode19 + (couponUseTip == null ? 0 : couponUseTip.hashCode())) * 31;
        String str14 = this.game_names;
        int iHashCode21 = (iHashCode20 + (str14 == null ? 0 : str14.hashCode())) * 31;
        Integer num5 = this.state;
        int iHashCode22 = (iHashCode21 + (num5 == null ? 0 : num5.hashCode())) * 31;
        String str15 = this.validateText;
        int iHashCode23 = (iHashCode22 + (str15 == null ? 0 : str15.hashCode())) * 31;
        Boolean bool2 = this.effective;
        return iHashCode23 + (bool2 != null ? bool2.hashCode() : 0);
    }

    public final boolean is648() {
        return Intrinsics.areEqual(this.issueType, "self.648");
    }

    @NotNull
    public final String receiveBtnText() {
        Integer num = this.state;
        if (num != null && num.intValue() == 0) {
            return "不\n可\n领\n取";
        }
        return (num != null && num.intValue() == 1) ? "已\n领\n取" : "领\n取";
    }

    @NotNull
    public final String receiveBtnText2() {
        Integer num = this.state;
        if (num != null && num.intValue() == 0) {
            return "不可领取";
        }
        return (num != null && num.intValue() == 1) ? "已领取" : "去领取";
    }

    @NotNull
    public final String receiveBtnTextColor() {
        Integer num = this.state;
        return (num != null && num.intValue() == -1) ? "#F6593A" : "#B8B8B8";
    }

    public final void setAid(@Nullable Integer num) {
        this.aid = num;
    }

    public final void setAmount_text(@Nullable String str) {
        this.amount_text = str;
    }

    public final void setCoupon_name(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.coupon_name = str;
    }

    public final void setIssueType(@Nullable String str) {
        this.issueType = str;
    }

    public final void setReceive_time_text(@Nullable String str) {
        this.receive_time_text = str;
    }

    public final void setThreshold_text(@Nullable String str) {
        this.threshold_text = str;
    }

    public final void setThreshold_text2(@Nullable String str) {
        this.threshold_text2 = str;
    }

    public final void setTpl_id(@Nullable Integer num) {
        this.tpl_id = num;
    }

    public final void setUse_range_text(@Nullable String str) {
        this.use_range_text = str;
    }

    public final void setUse_time_text(@Nullable String str) {
        this.use_time_text = str;
    }

    @NotNull
    public String toString() {
        return "CouponItemBean(aid=" + this.aid + ", issueType=" + this.issueType + ", tpl_id=" + this.tpl_id + ", coupon_name=" + this.coupon_name + ", amount_text=" + this.amount_text + ", threshold_text=" + this.threshold_text + ", threshold_text2=" + this.threshold_text2 + ", use_range_text=" + this.use_range_text + ", use_time_text=" + this.use_time_text + ", amount=" + this.amount + ", balance=" + this.balance + ", code=" + this.code + ", coupon_type=" + this.coupon_type + ", discount=" + this.discount + ", game_ids=" + this.game_ids + ", range_op=" + this.range_op + ", repeatable=" + this.repeatable + ", threshold=" + this.threshold + ", unusable_reason=" + this.unusable_reason + ", receive_time_text=" + this.receive_time_text + ", use_tip=" + this.use_tip + ", game_names=" + this.game_names + ", state=" + this.state + ", validateText=" + this.validateText + ", effective=" + this.effective + ')';
    }

    public /* synthetic */ CouponItemBean(Integer num, String str, Integer num2, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, Integer num3, String str11, List list, Integer num4, Boolean bool, String str12, String str13, String str14, CouponUseTip couponUseTip, String str15, Integer num5, String str16, Boolean bool2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(num, str, num2, str2, str3, str4, str5, str6, str7, str8, str9, str10, num3, str11, list, num4, bool, str12, str13, str14, couponUseTip, str15, (i10 & 4194304) != 0 ? -1 : num5, str16, bool2);
    }
}
