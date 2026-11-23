package com.join.kotlin.ui.hmcloud.model;

import com.join.mgps.dto.CommonGameInfoBean;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J+\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0006HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/join/kotlin/ui/hmcloud/model/QueueAdBean;", "", "card_buy_ad", "Lcom/join/mgps/dto/CommonGameInfoBean;", "member_buy_ad", "use_card_url", "", "<init>", "(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;)V", "getCard_buy_ad", "()Lcom/join/mgps/dto/CommonGameInfoBean;", "getMember_buy_ad", "getUse_card_url", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class QueueAdBean {

    @Nullable
    private final CommonGameInfoBean card_buy_ad;

    @Nullable
    private final CommonGameInfoBean member_buy_ad;

    @NotNull
    private final String use_card_url;

    public QueueAdBean() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ QueueAdBean copy$default(QueueAdBean queueAdBean, CommonGameInfoBean commonGameInfoBean, CommonGameInfoBean commonGameInfoBean2, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            commonGameInfoBean = queueAdBean.card_buy_ad;
        }
        if ((i10 & 2) != 0) {
            commonGameInfoBean2 = queueAdBean.member_buy_ad;
        }
        if ((i10 & 4) != 0) {
            str = queueAdBean.use_card_url;
        }
        return queueAdBean.copy(commonGameInfoBean, commonGameInfoBean2, str);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final CommonGameInfoBean getCard_buy_ad() {
        return this.card_buy_ad;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final CommonGameInfoBean getMember_buy_ad() {
        return this.member_buy_ad;
    }

    @NotNull
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getUse_card_url() {
        return this.use_card_url;
    }

    @NotNull
    public final QueueAdBean copy(@Nullable CommonGameInfoBean card_buy_ad, @Nullable CommonGameInfoBean member_buy_ad, @NotNull String use_card_url) {
        Intrinsics.checkNotNullParameter(use_card_url, "use_card_url");
        return new QueueAdBean(card_buy_ad, member_buy_ad, use_card_url);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof QueueAdBean)) {
            return false;
        }
        QueueAdBean queueAdBean = (QueueAdBean) other;
        return Intrinsics.areEqual(this.card_buy_ad, queueAdBean.card_buy_ad) && Intrinsics.areEqual(this.member_buy_ad, queueAdBean.member_buy_ad) && Intrinsics.areEqual(this.use_card_url, queueAdBean.use_card_url);
    }

    @Nullable
    public final CommonGameInfoBean getCard_buy_ad() {
        return this.card_buy_ad;
    }

    @Nullable
    public final CommonGameInfoBean getMember_buy_ad() {
        return this.member_buy_ad;
    }

    @NotNull
    public final String getUse_card_url() {
        return this.use_card_url;
    }

    public int hashCode() {
        CommonGameInfoBean commonGameInfoBean = this.card_buy_ad;
        int iHashCode = (commonGameInfoBean == null ? 0 : commonGameInfoBean.hashCode()) * 31;
        CommonGameInfoBean commonGameInfoBean2 = this.member_buy_ad;
        return ((iHashCode + (commonGameInfoBean2 != null ? commonGameInfoBean2.hashCode() : 0)) * 31) + this.use_card_url.hashCode();
    }

    @NotNull
    public String toString() {
        return "QueueAdBean(card_buy_ad=" + this.card_buy_ad + ", member_buy_ad=" + this.member_buy_ad + ", use_card_url=" + this.use_card_url + ')';
    }

    public QueueAdBean(@Nullable CommonGameInfoBean commonGameInfoBean, @Nullable CommonGameInfoBean commonGameInfoBean2, @NotNull String use_card_url) {
        Intrinsics.checkNotNullParameter(use_card_url, "use_card_url");
        this.card_buy_ad = commonGameInfoBean;
        this.member_buy_ad = commonGameInfoBean2;
        this.use_card_url = use_card_url;
    }

    public /* synthetic */ QueueAdBean(CommonGameInfoBean commonGameInfoBean, CommonGameInfoBean commonGameInfoBean2, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : commonGameInfoBean, (i10 & 2) != 0 ? null : commonGameInfoBean2, (i10 & 4) != 0 ? "" : str);
    }
}
