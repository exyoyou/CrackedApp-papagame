package com.join.kotlin.discount.model.bean;

import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0013\u0010\u0015\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0013\u0010\u0017\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006HÆ\u0003JU\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0012\b\u0002\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\u0012\b\u0002\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u001b\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u001b\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010¨\u0006\u001f"}, d2 = {"Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;", "", "avg_duration", "", "avg_score", "duration", "", "", "good_rate", "score", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V", "getAvg_duration", "()Ljava/lang/String;", "getAvg_score", "getDuration", "()Ljava/util/List;", "getGood_rate", "getScore", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CommentStatisticDataBean {

    @Nullable
    private final String avg_duration;

    @Nullable
    private final String avg_score;

    @Nullable
    private final List<Double> duration;

    @Nullable
    private final String good_rate;

    @Nullable
    private final List<Double> score;

    public CommentStatisticDataBean(@Nullable String str, @Nullable String str2, @Nullable List<Double> list, @Nullable String str3, @Nullable List<Double> list2) {
        this.avg_duration = str;
        this.avg_score = str2;
        this.duration = list;
        this.good_rate = str3;
        this.score = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CommentStatisticDataBean copy$default(CommentStatisticDataBean commentStatisticDataBean, String str, String str2, List list, String str3, List list2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = commentStatisticDataBean.avg_duration;
        }
        if ((i10 & 2) != 0) {
            str2 = commentStatisticDataBean.avg_score;
        }
        String str4 = str2;
        if ((i10 & 4) != 0) {
            list = commentStatisticDataBean.duration;
        }
        List list3 = list;
        if ((i10 & 8) != 0) {
            str3 = commentStatisticDataBean.good_rate;
        }
        String str5 = str3;
        if ((i10 & 16) != 0) {
            list2 = commentStatisticDataBean.score;
        }
        return commentStatisticDataBean.copy(str, str4, list3, str5, list2);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAvg_duration() {
        return this.avg_duration;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAvg_score() {
        return this.avg_score;
    }

    @Nullable
    public final List<Double> component3() {
        return this.duration;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getGood_rate() {
        return this.good_rate;
    }

    @Nullable
    public final List<Double> component5() {
        return this.score;
    }

    @NotNull
    public final CommentStatisticDataBean copy(@Nullable String avg_duration, @Nullable String avg_score, @Nullable List<Double> duration, @Nullable String good_rate, @Nullable List<Double> score) {
        return new CommentStatisticDataBean(avg_duration, avg_score, duration, good_rate, score);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CommentStatisticDataBean)) {
            return false;
        }
        CommentStatisticDataBean commentStatisticDataBean = (CommentStatisticDataBean) other;
        return Intrinsics.areEqual(this.avg_duration, commentStatisticDataBean.avg_duration) && Intrinsics.areEqual(this.avg_score, commentStatisticDataBean.avg_score) && Intrinsics.areEqual(this.duration, commentStatisticDataBean.duration) && Intrinsics.areEqual(this.good_rate, commentStatisticDataBean.good_rate) && Intrinsics.areEqual(this.score, commentStatisticDataBean.score);
    }

    @Nullable
    public final String getAvg_duration() {
        return this.avg_duration;
    }

    @Nullable
    public final String getAvg_score() {
        return this.avg_score;
    }

    @Nullable
    public final List<Double> getDuration() {
        return this.duration;
    }

    @Nullable
    public final String getGood_rate() {
        return this.good_rate;
    }

    @Nullable
    public final List<Double> getScore() {
        return this.score;
    }

    public int hashCode() {
        String str = this.avg_duration;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.avg_score;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<Double> list = this.duration;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        String str3 = this.good_rate;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List<Double> list2 = this.score;
        return iHashCode4 + (list2 != null ? list2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "CommentStatisticDataBean(avg_duration=" + this.avg_duration + ", avg_score=" + this.avg_score + ", duration=" + this.duration + ", good_rate=" + this.good_rate + ", score=" + this.score + ')';
    }
}
