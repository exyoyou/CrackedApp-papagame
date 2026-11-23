package com.join.mgps.dto.hmcloud;

import com.haima.hmcp.Constants;
import com.tencent.cos.common.COSHttpResponseKey;
import com.umeng.ccg.a;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u0019\u0010\u0014\"\u0004\b\u001a\u0010\u0016R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u001c\u0010\u0014\"\u0004\b\u001d\u0010\u0016R\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u001f\u0010\u0014\"\u0004\b \u0010\u0016R\u001e\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001e\u0010(\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b)\u0010\r\"\u0004\b*\u0010\u000fR\"\u0010+\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001e\u00102\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b3\u0010\r\"\u0004\b4\u0010\u000fR\u001e\u00105\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\b6\u0010$\"\u0004\b7\u0010&R\u001e\u00108\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\b9\u0010$\"\u0004\b:\u0010&¨\u0006;"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HMOpConfig;", "", "<init>", "()V", a.f84982i, "Lcom/join/mgps/dto/hmcloud/HandleCfg;", "getCfg", "()Lcom/join/mgps/dto/hmcloud/HandleCfg;", "setCfg", "(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V", "alpha", "", "getAlpha", "()Ljava/lang/Float;", "setAlpha", "(Ljava/lang/Float;)V", "Ljava/lang/Float;", HmDataChannelManager.VIBRATE, "", "getVibrate", "()Ljava/lang/Boolean;", "setVibrate", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "hideKey", "getHideKey", "setHideKey", "pinchToZoom", "getPinchToZoom", "setPinchToZoom", "keyboardInput", "getKeyboardInput", "setKeyboardInput", Constants.COUNTLY_NAME_TOUCH_MODE, "", Constants.COUNTLY_NAME_GET_TOUCH_MODE, "()Ljava/lang/Integer;", "setTouchMode", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "mouseSensitivity", "getMouseSensitivity", Constants.COUNTLY_NAME_SET_MOUSE_SENSITIVITY, COSHttpResponseKey.Data.KEYS, "", "Lcom/join/mgps/dto/hmcloud/HMKeyItem;", "getKeys", "()Ljava/util/List;", "setKeys", "(Ljava/util/List;)V", "density", "getDensity", "setDensity", "layoutWidth", "getLayoutWidth", "setLayoutWidth", "layoutHeight", "getLayoutHeight", "setLayoutHeight", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HMOpConfig {

    @Nullable
    private Float alpha;

    @Nullable
    private HandleCfg cfg;

    @Nullable
    private Float density;

    @Nullable
    private Boolean hideKey;

    @Nullable
    private Boolean keyboardInput;

    @Nullable
    private List<HMKeyItem> keys;

    @Nullable
    private Integer layoutHeight;

    @Nullable
    private Integer layoutWidth;

    @Nullable
    private Float mouseSensitivity;

    @Nullable
    private Boolean pinchToZoom;

    @Nullable
    private Integer touchMode;

    @Nullable
    private Boolean vibrate;

    @Nullable
    public final Float getAlpha() {
        return this.alpha;
    }

    @Nullable
    public final HandleCfg getCfg() {
        return this.cfg;
    }

    @Nullable
    public final Float getDensity() {
        return this.density;
    }

    @Nullable
    public final Boolean getHideKey() {
        return this.hideKey;
    }

    @Nullable
    public final Boolean getKeyboardInput() {
        return this.keyboardInput;
    }

    @Nullable
    public final List<HMKeyItem> getKeys() {
        return this.keys;
    }

    @Nullable
    public final Integer getLayoutHeight() {
        return this.layoutHeight;
    }

    @Nullable
    public final Integer getLayoutWidth() {
        return this.layoutWidth;
    }

    @Nullable
    public final Float getMouseSensitivity() {
        return this.mouseSensitivity;
    }

    @Nullable
    public final Boolean getPinchToZoom() {
        return this.pinchToZoom;
    }

    @Nullable
    public final Integer getTouchMode() {
        return this.touchMode;
    }

    @Nullable
    public final Boolean getVibrate() {
        return this.vibrate;
    }

    public final void setAlpha(@Nullable Float f10) {
        this.alpha = f10;
    }

    public final void setCfg(@Nullable HandleCfg handleCfg) {
        this.cfg = handleCfg;
    }

    public final void setDensity(@Nullable Float f10) {
        this.density = f10;
    }

    public final void setHideKey(@Nullable Boolean bool) {
        this.hideKey = bool;
    }

    public final void setKeyboardInput(@Nullable Boolean bool) {
        this.keyboardInput = bool;
    }

    public final void setKeys(@Nullable List<HMKeyItem> list) {
        this.keys = list;
    }

    public final void setLayoutHeight(@Nullable Integer num) {
        this.layoutHeight = num;
    }

    public final void setLayoutWidth(@Nullable Integer num) {
        this.layoutWidth = num;
    }

    public final void setMouseSensitivity(@Nullable Float f10) {
        this.mouseSensitivity = f10;
    }

    public final void setPinchToZoom(@Nullable Boolean bool) {
        this.pinchToZoom = bool;
    }

    public final void setTouchMode(@Nullable Integer num) {
        this.touchMode = num;
    }

    public final void setVibrate(@Nullable Boolean bool) {
        this.vibrate = bool;
    }
}
