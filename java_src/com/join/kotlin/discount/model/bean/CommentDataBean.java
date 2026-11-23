package com.join.kotlin.discount.model.bean;

import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0010\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0013\u0010\u0011\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006HÆ\u0003J)\u0010\u0013\u001a\u00020\u00002\u0012\b\u0002\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R$\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/join/kotlin/discount/model/bean/CommentDataBean;", "", "commentList", "", "Lcom/join/kotlin/discount/model/bean/CommentDetailBean;", "commentScores", "Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;", "<init>", "(Ljava/util/List;Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;)V", "getCommentList", "()Ljava/util/List;", "setCommentList", "(Ljava/util/List;)V", "getCommentScores", "()Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;", "setCommentScores", "(Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;)V", "component1", "component2", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CommentDataBean {

    @Nullable
    private List<CommentDetailBean> commentList;

    @Nullable
    private CommentStatisticDataBean commentScores;

    public CommentDataBean(@Nullable List<CommentDetailBean> list, @Nullable CommentStatisticDataBean commentStatisticDataBean) {
        this.commentList = list;
        this.commentScores = commentStatisticDataBean;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CommentDataBean copy$default(CommentDataBean commentDataBean, List list, CommentStatisticDataBean commentStatisticDataBean, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = commentDataBean.commentList;
        }
        if ((i10 & 2) != 0) {
            commentStatisticDataBean = commentDataBean.commentScores;
        }
        return commentDataBean.copy(list, commentStatisticDataBean);
    }

    @Nullable
    public final List<CommentDetailBean> component1() {
        return this.commentList;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final CommentStatisticDataBean getCommentScores() {
        return this.commentScores;
    }

    @NotNull
    public final CommentDataBean copy(@Nullable List<CommentDetailBean> commentList, @Nullable CommentStatisticDataBean commentScores) {
        return new CommentDataBean(commentList, commentScores);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CommentDataBean)) {
            return false;
        }
        CommentDataBean commentDataBean = (CommentDataBean) other;
        return Intrinsics.areEqual(this.commentList, commentDataBean.commentList) && Intrinsics.areEqual(this.commentScores, commentDataBean.commentScores);
    }

    @Nullable
    public final List<CommentDetailBean> getCommentList() {
        return this.commentList;
    }

    @Nullable
    public final CommentStatisticDataBean getCommentScores() {
        return this.commentScores;
    }

    public int hashCode() {
        List<CommentDetailBean> list = this.commentList;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        CommentStatisticDataBean commentStatisticDataBean = this.commentScores;
        return iHashCode + (commentStatisticDataBean != null ? commentStatisticDataBean.hashCode() : 0);
    }

    public final void setCommentList(@Nullable List<CommentDetailBean> list) {
        this.commentList = list;
    }

    public final void setCommentScores(@Nullable CommentStatisticDataBean commentStatisticDataBean) {
        this.commentScores = commentStatisticDataBean;
    }

    @NotNull
    public String toString() {
        return "CommentDataBean(commentList=" + this.commentList + ", commentScores=" + this.commentScores + ')';
    }
}
