package com.join.kotlin.ui.legendgame.data;

import com.join.mgps.dto.CommonGameInfoBean;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/join/kotlin/ui/legendgame/data/LegendLatestServerItem;", "Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;", "<init>", "()V", "game_info", "Lcom/join/mgps/dto/CommonGameInfoBean;", "getGame_info", "()Lcom/join/mgps/dto/CommonGameInfoBean;", "setGame_info", "(Lcom/join/mgps/dto/CommonGameInfoBean;)V", "server_num", "", "getServer_num", "()I", "setServer_num", "(I)V", "server_name", "", "getServer_name", "()Ljava/lang/String;", "setServer_name", "(Ljava/lang/String;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LegendLatestServerItem extends LegendZoneGameItem {

    @Nullable
    private CommonGameInfoBean game_info;

    @Nullable
    private String server_name;
    private int server_num;

    @Nullable
    public final CommonGameInfoBean getGame_info() {
        return this.game_info;
    }

    @Nullable
    public final String getServer_name() {
        return this.server_name;
    }

    public final int getServer_num() {
        return this.server_num;
    }

    public final void setGame_info(@Nullable CommonGameInfoBean commonGameInfoBean) {
        this.game_info = commonGameInfoBean;
    }

    public final void setServer_name(@Nullable String str) {
        this.server_name = str;
    }

    public final void setServer_num(int i10) {
        this.server_num = i10;
    }
}
