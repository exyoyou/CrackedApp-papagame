package com.join.mgps.dto.hmcloud;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\bR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0015\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;", "", "<init>", "()V", "handle_cfg", "", "Lcom/join/mgps/dto/hmcloud/HandleCfg;", "getHandle_cfg", "()Ljava/util/List;", "controller_type", "Lcom/join/mgps/dto/hmcloud/ControllerTemplate;", "getController_type", "()Lcom/join/mgps/dto/hmcloud/ControllerTemplate;", "picture_setting", "Lcom/join/mgps/dto/hmcloud/PictureSetting;", "getPicture_setting", "game_button_tips", "Lcom/join/mgps/dto/hmcloud/GameButtonTips;", "getGame_button_tips", "()Lcom/join/mgps/dto/hmcloud/GameButtonTips;", "handle_support", "", "getHandle_support", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudGamingCfgInfo {

    @Nullable
    private final ControllerTemplate controller_type;

    @Nullable
    private final GameButtonTips game_button_tips;

    @Nullable
    private final List<HandleCfg> handle_cfg;

    @Nullable
    private final Integer handle_support;

    @NotNull
    private final List<PictureSetting> picture_setting = new ArrayList();

    @Nullable
    public final ControllerTemplate getController_type() {
        return this.controller_type;
    }

    @Nullable
    public final GameButtonTips getGame_button_tips() {
        return this.game_button_tips;
    }

    @Nullable
    public final List<HandleCfg> getHandle_cfg() {
        return this.handle_cfg;
    }

    @Nullable
    public final Integer getHandle_support() {
        return this.handle_support;
    }

    @NotNull
    public final List<PictureSetting> getPicture_setting() {
        return this.picture_setting;
    }
}
