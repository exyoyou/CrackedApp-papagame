package com.join.kotlin.discount.model.bean;

import com.join.mgps.dto.GamedetialModleFourBean;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/join/kotlin/discount/model/bean/GameDetailDataBean;", "", "discount_data", "Lcom/join/kotlin/discount/model/bean/GameDetailBean;", "wf_data", "Lcom/join/mgps/dto/GamedetialModleFourBean;", "<init>", "(Lcom/join/kotlin/discount/model/bean/GameDetailBean;Lcom/join/mgps/dto/GamedetialModleFourBean;)V", "getDiscount_data", "()Lcom/join/kotlin/discount/model/bean/GameDetailBean;", "setDiscount_data", "(Lcom/join/kotlin/discount/model/bean/GameDetailBean;)V", "getWf_data", "()Lcom/join/mgps/dto/GamedetialModleFourBean;", "setWf_data", "(Lcom/join/mgps/dto/GamedetialModleFourBean;)V", "component1", "component2", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GameDetailDataBean {

    @Nullable
    private GameDetailBean discount_data;

    @Nullable
    private GamedetialModleFourBean wf_data;

    /* JADX WARN: Multi-variable type inference failed */
    public GameDetailDataBean() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ GameDetailDataBean copy$default(GameDetailDataBean gameDetailDataBean, GameDetailBean gameDetailBean, GamedetialModleFourBean gamedetialModleFourBean, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            gameDetailBean = gameDetailDataBean.discount_data;
        }
        if ((i10 & 2) != 0) {
            gamedetialModleFourBean = gameDetailDataBean.wf_data;
        }
        return gameDetailDataBean.copy(gameDetailBean, gamedetialModleFourBean);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final GameDetailBean getDiscount_data() {
        return this.discount_data;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final GamedetialModleFourBean getWf_data() {
        return this.wf_data;
    }

    @NotNull
    public final GameDetailDataBean copy(@Nullable GameDetailBean discount_data, @Nullable GamedetialModleFourBean wf_data) {
        return new GameDetailDataBean(discount_data, wf_data);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameDetailDataBean)) {
            return false;
        }
        GameDetailDataBean gameDetailDataBean = (GameDetailDataBean) other;
        return Intrinsics.areEqual(this.discount_data, gameDetailDataBean.discount_data) && Intrinsics.areEqual(this.wf_data, gameDetailDataBean.wf_data);
    }

    @Nullable
    public final GameDetailBean getDiscount_data() {
        return this.discount_data;
    }

    @Nullable
    public final GamedetialModleFourBean getWf_data() {
        return this.wf_data;
    }

    public int hashCode() {
        GameDetailBean gameDetailBean = this.discount_data;
        int iHashCode = (gameDetailBean == null ? 0 : gameDetailBean.hashCode()) * 31;
        GamedetialModleFourBean gamedetialModleFourBean = this.wf_data;
        return iHashCode + (gamedetialModleFourBean != null ? gamedetialModleFourBean.hashCode() : 0);
    }

    public final void setDiscount_data(@Nullable GameDetailBean gameDetailBean) {
        this.discount_data = gameDetailBean;
    }

    public final void setWf_data(@Nullable GamedetialModleFourBean gamedetialModleFourBean) {
        this.wf_data = gamedetialModleFourBean;
    }

    @NotNull
    public String toString() {
        return "GameDetailDataBean(discount_data=" + this.discount_data + ", wf_data=" + this.wf_data + ')';
    }

    public GameDetailDataBean(@Nullable GameDetailBean gameDetailBean, @Nullable GamedetialModleFourBean gamedetialModleFourBean) {
        this.discount_data = gameDetailBean;
        this.wf_data = gamedetialModleFourBean;
    }

    public /* synthetic */ GameDetailDataBean(GameDetailBean gameDetailBean, GamedetialModleFourBean gamedetialModleFourBean, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : gameDetailBean, (i10 & 2) != 0 ? null : gamedetialModleFourBean);
    }
}
