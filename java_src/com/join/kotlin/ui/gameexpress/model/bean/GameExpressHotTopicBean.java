package com.join.kotlin.ui.gameexpress.model.bean;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J+\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotTopicBean;", "", "topic_id", "", "topic_text", "", "topic_url", "<init>", "(ILjava/lang/String;Ljava/lang/String;)V", "getTopic_id", "()I", "getTopic_text", "()Ljava/lang/String;", "getTopic_url", "component1", "component2", "component3", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GameExpressHotTopicBean {
    private final int topic_id;

    @Nullable
    private final String topic_text;

    @Nullable
    private final String topic_url;

    public GameExpressHotTopicBean() {
        this(0, null, null, 7, null);
    }

    public static /* synthetic */ GameExpressHotTopicBean copy$default(GameExpressHotTopicBean gameExpressHotTopicBean, int i10, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = gameExpressHotTopicBean.topic_id;
        }
        if ((i11 & 2) != 0) {
            str = gameExpressHotTopicBean.topic_text;
        }
        if ((i11 & 4) != 0) {
            str2 = gameExpressHotTopicBean.topic_url;
        }
        return gameExpressHotTopicBean.copy(i10, str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getTopic_id() {
        return this.topic_id;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTopic_text() {
        return this.topic_text;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTopic_url() {
        return this.topic_url;
    }

    @NotNull
    public final GameExpressHotTopicBean copy(int topic_id, @Nullable String topic_text, @Nullable String topic_url) {
        return new GameExpressHotTopicBean(topic_id, topic_text, topic_url);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameExpressHotTopicBean)) {
            return false;
        }
        GameExpressHotTopicBean gameExpressHotTopicBean = (GameExpressHotTopicBean) other;
        return this.topic_id == gameExpressHotTopicBean.topic_id && Intrinsics.areEqual(this.topic_text, gameExpressHotTopicBean.topic_text) && Intrinsics.areEqual(this.topic_url, gameExpressHotTopicBean.topic_url);
    }

    public final int getTopic_id() {
        return this.topic_id;
    }

    @Nullable
    public final String getTopic_text() {
        return this.topic_text;
    }

    @Nullable
    public final String getTopic_url() {
        return this.topic_url;
    }

    public int hashCode() {
        int i10 = this.topic_id * 31;
        String str = this.topic_text;
        int iHashCode = (i10 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.topic_url;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "GameExpressHotTopicBean(topic_id=" + this.topic_id + ", topic_text=" + this.topic_text + ", topic_url=" + this.topic_url + ')';
    }

    public GameExpressHotTopicBean(int i10, @Nullable String str, @Nullable String str2) {
        this.topic_id = i10;
        this.topic_text = str;
        this.topic_url = str2;
    }

    public /* synthetic */ GameExpressHotTopicBean(int i10, String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? null : str2);
    }
}
