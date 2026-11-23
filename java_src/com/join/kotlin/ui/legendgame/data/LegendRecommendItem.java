package com.join.kotlin.ui.legendgame.data;

import com.join.mgps.dto.CommonGameInfoBean;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/legendgame/data/LegendRecommendItem;", "Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;", "<init>", "()V", "game_info", "Lcom/join/mgps/dto/CommonGameInfoBean;", "getGame_info", "()Lcom/join/mgps/dto/CommonGameInfoBean;", "setGame_info", "(Lcom/join/mgps/dto/CommonGameInfoBean;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LegendRecommendItem extends LegendZoneGameItem {

    @Nullable
    private CommonGameInfoBean game_info;

    @Nullable
    public final CommonGameInfoBean getGame_info() {
        return this.game_info;
    }

    public final void setGame_info(@Nullable CommonGameInfoBean commonGameInfoBean) {
        this.game_info = commonGameInfoBean;
    }
}
