package com.join.kotlin.discount.model.bean;

import androidx.databinding.BaseObservable;
import com.kwad.sdk.api.model.AdnName;
import com.umeng.analytics.AnalyticsConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b;\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B»\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u0006\u00101\u001a\u00020\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00109\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010!J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010=\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010!J\u000b\u0010>\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010@\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010!J\u0010\u0010A\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010!J\u000b\u0010B\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jæ\u0001\u0010D\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010EJ\u0013\u0010F\u001a\u00020G2\b\u0010H\u001a\u0004\u0018\u00010IHÖ\u0003J\t\u0010J\u001a\u00020\u000bHÖ\u0001J\t\u0010K\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0019R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0019R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0019R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0019R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0019R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0019R\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010$\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0019R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0019\"\u0004\b'\u0010(R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u0019R\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u000b¢\u0006\n\n\u0002\u0010$\u001a\u0004\b*\u0010!R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u0019R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u0019R\u0015\u0010\u0012\u001a\u0004\u0018\u00010\u000b¢\u0006\n\n\u0002\u0010$\u001a\u0004\b-\u0010!R\u0015\u0010\u0013\u001a\u0004\u0018\u00010\u000b¢\u0006\n\n\u0002\u0010$\u001a\u0004\b.\u0010!R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u0019R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\u0019¨\u0006L"}, d2 = {"Lcom/join/kotlin/discount/model/bean/GiftItemBean;", "Landroidx/databinding/BaseObservable;", "content", "", "endTime", "gameId", "giftId", "instruction", "qq", "recRuleIntro", "recStatus", "", "recTip", "sn", AnalyticsConfig.RTD_START_TIME, "surplus", "surplusPercent", "title", "total", "type", "useRange", "ruleType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getContent", "()Ljava/lang/String;", "getEndTime", "getGameId", "getGiftId", "getInstruction", "getQq", "getRecRuleIntro", "getRecStatus", "()Ljava/lang/Integer;", "setRecStatus", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getRecTip", "getSn", "setSn", "(Ljava/lang/String;)V", "getStartTime", "getSurplus", "getSurplusPercent", "getTitle", "getTotal", "getType", "getUseRange", "getRuleType", "btnText", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/join/kotlin/discount/model/bean/GiftItemBean;", "equals", "", AdnName.OTHER, "", "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GiftItemBean extends BaseObservable {

    @Nullable
    private final String content;

    @Nullable
    private final String endTime;

    @Nullable
    private final String gameId;

    @Nullable
    private final String giftId;

    @Nullable
    private final String instruction;

    @Nullable
    private final String qq;

    @Nullable
    private final String recRuleIntro;

    @Nullable
    private Integer recStatus;

    @Nullable
    private final String recTip;

    @Nullable
    private final String ruleType;

    @Nullable
    private String sn;

    @Nullable
    private final String startTime;

    @Nullable
    private final Integer surplus;

    @Nullable
    private final String surplusPercent;

    @Nullable
    private final String title;

    @Nullable
    private final Integer total;

    @Nullable
    private final Integer type;

    @Nullable
    private final String useRange;

    public GiftItemBean(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable Integer num, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable Integer num2, @Nullable String str11, @Nullable String str12, @Nullable Integer num3, @Nullable Integer num4, @Nullable String str13, @Nullable String str14) {
        this.content = str;
        this.endTime = str2;
        this.gameId = str3;
        this.giftId = str4;
        this.instruction = str5;
        this.qq = str6;
        this.recRuleIntro = str7;
        this.recStatus = num;
        this.recTip = str8;
        this.sn = str9;
        this.startTime = str10;
        this.surplus = num2;
        this.surplusPercent = str11;
        this.title = str12;
        this.total = num3;
        this.type = num4;
        this.useRange = str13;
        this.ruleType = str14;
    }

    @NotNull
    public final String btnText() {
        Integer num = this.recStatus;
        if (num != null && num.intValue() == 1) {
            return "复制礼包";
        }
        return (num != null && num.intValue() == 0) ? "不可领取" : "领取";
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    @Nullable
    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getSn() {
        return this.sn;
    }

    @Nullable
    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getStartTime() {
        return this.startTime;
    }

    @Nullable
    /* JADX INFO: renamed from: component12, reason: from getter */
    public final Integer getSurplus() {
        return this.surplus;
    }

    @Nullable
    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getSurplusPercent() {
        return this.surplusPercent;
    }

    @Nullable
    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    /* JADX INFO: renamed from: component15, reason: from getter */
    public final Integer getTotal() {
        return this.total;
    }

    @Nullable
    /* JADX INFO: renamed from: component16, reason: from getter */
    public final Integer getType() {
        return this.type;
    }

    @Nullable
    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getUseRange() {
        return this.useRange;
    }

    @Nullable
    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getRuleType() {
        return this.ruleType;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getEndTime() {
        return this.endTime;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getGameId() {
        return this.gameId;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getGiftId() {
        return this.giftId;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getInstruction() {
        return this.instruction;
    }

    @Nullable
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getQq() {
        return this.qq;
    }

    @Nullable
    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getRecRuleIntro() {
        return this.recRuleIntro;
    }

    @Nullable
    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getRecStatus() {
        return this.recStatus;
    }

    @Nullable
    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getRecTip() {
        return this.recTip;
    }

    @NotNull
    public final GiftItemBean copy(@Nullable String content, @Nullable String endTime, @Nullable String gameId, @Nullable String giftId, @Nullable String instruction, @Nullable String qq, @Nullable String recRuleIntro, @Nullable Integer recStatus, @Nullable String recTip, @Nullable String sn, @Nullable String startTime, @Nullable Integer surplus, @Nullable String surplusPercent, @Nullable String title, @Nullable Integer total, @Nullable Integer type, @Nullable String useRange, @Nullable String ruleType) {
        return new GiftItemBean(content, endTime, gameId, giftId, instruction, qq, recRuleIntro, recStatus, recTip, sn, startTime, surplus, surplusPercent, title, total, type, useRange, ruleType);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GiftItemBean)) {
            return false;
        }
        GiftItemBean giftItemBean = (GiftItemBean) other;
        return Intrinsics.areEqual(this.content, giftItemBean.content) && Intrinsics.areEqual(this.endTime, giftItemBean.endTime) && Intrinsics.areEqual(this.gameId, giftItemBean.gameId) && Intrinsics.areEqual(this.giftId, giftItemBean.giftId) && Intrinsics.areEqual(this.instruction, giftItemBean.instruction) && Intrinsics.areEqual(this.qq, giftItemBean.qq) && Intrinsics.areEqual(this.recRuleIntro, giftItemBean.recRuleIntro) && Intrinsics.areEqual(this.recStatus, giftItemBean.recStatus) && Intrinsics.areEqual(this.recTip, giftItemBean.recTip) && Intrinsics.areEqual(this.sn, giftItemBean.sn) && Intrinsics.areEqual(this.startTime, giftItemBean.startTime) && Intrinsics.areEqual(this.surplus, giftItemBean.surplus) && Intrinsics.areEqual(this.surplusPercent, giftItemBean.surplusPercent) && Intrinsics.areEqual(this.title, giftItemBean.title) && Intrinsics.areEqual(this.total, giftItemBean.total) && Intrinsics.areEqual(this.type, giftItemBean.type) && Intrinsics.areEqual(this.useRange, giftItemBean.useRange) && Intrinsics.areEqual(this.ruleType, giftItemBean.ruleType);
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    @Nullable
    public final String getEndTime() {
        return this.endTime;
    }

    @Nullable
    public final String getGameId() {
        return this.gameId;
    }

    @Nullable
    public final String getGiftId() {
        return this.giftId;
    }

    @Nullable
    public final String getInstruction() {
        return this.instruction;
    }

    @Nullable
    public final String getQq() {
        return this.qq;
    }

    @Nullable
    public final String getRecRuleIntro() {
        return this.recRuleIntro;
    }

    @Nullable
    public final Integer getRecStatus() {
        return this.recStatus;
    }

    @Nullable
    public final String getRecTip() {
        return this.recTip;
    }

    @Nullable
    public final String getRuleType() {
        return this.ruleType;
    }

    @Nullable
    public final String getSn() {
        return this.sn;
    }

    @Nullable
    public final String getStartTime() {
        return this.startTime;
    }

    @Nullable
    public final Integer getSurplus() {
        return this.surplus;
    }

    @Nullable
    public final String getSurplusPercent() {
        return this.surplusPercent;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final Integer getTotal() {
        return this.total;
    }

    @Nullable
    public final Integer getType() {
        return this.type;
    }

    @Nullable
    public final String getUseRange() {
        return this.useRange;
    }

    public int hashCode() {
        String str = this.content;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.endTime;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.gameId;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.giftId;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.instruction;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.qq;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.recRuleIntro;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Integer num = this.recStatus;
        int iHashCode8 = (iHashCode7 + (num == null ? 0 : num.hashCode())) * 31;
        String str8 = this.recTip;
        int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.sn;
        int iHashCode10 = (iHashCode9 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.startTime;
        int iHashCode11 = (iHashCode10 + (str10 == null ? 0 : str10.hashCode())) * 31;
        Integer num2 = this.surplus;
        int iHashCode12 = (iHashCode11 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str11 = this.surplusPercent;
        int iHashCode13 = (iHashCode12 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.title;
        int iHashCode14 = (iHashCode13 + (str12 == null ? 0 : str12.hashCode())) * 31;
        Integer num3 = this.total;
        int iHashCode15 = (iHashCode14 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.type;
        int iHashCode16 = (iHashCode15 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str13 = this.useRange;
        int iHashCode17 = (iHashCode16 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.ruleType;
        return iHashCode17 + (str14 != null ? str14.hashCode() : 0);
    }

    public final void setRecStatus(@Nullable Integer num) {
        this.recStatus = num;
    }

    public final void setSn(@Nullable String str) {
        this.sn = str;
    }

    @NotNull
    public String toString() {
        return "GiftItemBean(content=" + this.content + ", endTime=" + this.endTime + ", gameId=" + this.gameId + ", giftId=" + this.giftId + ", instruction=" + this.instruction + ", qq=" + this.qq + ", recRuleIntro=" + this.recRuleIntro + ", recStatus=" + this.recStatus + ", recTip=" + this.recTip + ", sn=" + this.sn + ", startTime=" + this.startTime + ", surplus=" + this.surplus + ", surplusPercent=" + this.surplusPercent + ", title=" + this.title + ", total=" + this.total + ", type=" + this.type + ", useRange=" + this.useRange + ", ruleType=" + this.ruleType + ')';
    }
}
