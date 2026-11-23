package com.join.mgps.dto.hmcloud;

import com.umeng.analytics.pro.bm;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000e\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000e\"\u0004\b\u0015\u0010\u0012R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0019\"\u0004\b\u001e\u0010\u001bR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u000e\"\u0004\b!\u0010\u0012¨\u0006\""}, d2 = {"Lcom/join/mgps/dto/hmcloud/PictureSetting;", "", "<init>", "()V", "frame_rate", "", "getFrame_rate", "()Ljava/lang/Integer;", "setFrame_rate", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "ico", "", "getIco", "()Ljava/lang/String;", "name", "getName", "setName", "(Ljava/lang/String;)V", bm.f84423z, "getResolution", "setResolution", "show_frame_mark", "", "getShow_frame_mark", "()Z", "setShow_frame_mark", "(Z)V", "vip_require", "getVip_require", "setVip_require", "id", "getId", "setId", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PictureSetting {

    @Nullable
    private Integer frame_rate;

    @Nullable
    private final String ico;

    @Nullable
    private String id;

    @NotNull
    private String name = "";

    @NotNull
    private String resolution = "";
    private boolean show_frame_mark;
    private boolean vip_require;

    @Nullable
    public final Integer getFrame_rate() {
        return this.frame_rate;
    }

    @Nullable
    public final String getIco() {
        return this.ico;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getResolution() {
        return this.resolution;
    }

    public final boolean getShow_frame_mark() {
        return this.show_frame_mark;
    }

    public final boolean getVip_require() {
        return this.vip_require;
    }

    public final void setFrame_rate(@Nullable Integer num) {
        this.frame_rate = num;
    }

    public final void setId(@Nullable String str) {
        this.id = str;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setResolution(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.resolution = str;
    }

    public final void setShow_frame_mark(boolean z10) {
        this.show_frame_mark = z10;
    }

    public final void setVip_require(boolean z10) {
        this.vip_require = z10;
    }
}
