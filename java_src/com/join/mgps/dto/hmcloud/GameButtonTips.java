package com.join.mgps.dto.hmcloud;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/join/mgps/dto/hmcloud/GameButtonTips;", "", "<init>", "()V", "tips_switch", "", "getTips_switch", "()Ljava/lang/Boolean;", "setTips_switch", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "explain_switch", "getExplain_switch", "setExplain_switch", "default_position", "", "getDefault_position", "()Ljava/lang/String;", "setDefault_position", "(Ljava/lang/String;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GameButtonTips {

    @Nullable
    private String default_position;

    @Nullable
    private Boolean explain_switch;

    @Nullable
    private Boolean tips_switch;

    @Nullable
    public final String getDefault_position() {
        return this.default_position;
    }

    @Nullable
    public final Boolean getExplain_switch() {
        return this.explain_switch;
    }

    @Nullable
    public final Boolean getTips_switch() {
        return this.tips_switch;
    }

    public final void setDefault_position(@Nullable String str) {
        this.default_position = str;
    }

    public final void setExplain_switch(@Nullable Boolean bool) {
        this.explain_switch = bool;
    }

    public final void setTips_switch(@Nullable Boolean bool) {
        this.tips_switch = bool;
    }
}
