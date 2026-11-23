package com.join.kotlin.ui.legendgame.data;

import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0007\"\u0004\b\u0018\u0010\tR\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0012\u0010\u001f\u001a\u00020 8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u00020 8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;", "", "<init>", "()V", "title", "", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "game_version", "getGame_version", "setGame_version", "career_type", "getCareer_type", "setCareer_type", "main_gameplay", "getMain_gameplay", "setMain_gameplay", "rhythm_style", "getRhythm_style", "setRhythm_style", "image_url", "getImage_url", "setImage_url", "detail_id", "", "getDetail_id", "()J", "setDetail_id", "(J)V", "is_reminded", "", "is_follow", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class LegendZoneGameItem {

    @Nullable
    private String career_type;
    private long detail_id;

    @Nullable
    private String game_version;

    @Nullable
    private String image_url;

    @JvmField
    public boolean is_follow;

    @JvmField
    public boolean is_reminded;

    @Nullable
    private String main_gameplay;

    @Nullable
    private String rhythm_style;

    @Nullable
    private String title;

    @Nullable
    public final String getCareer_type() {
        return this.career_type;
    }

    public final long getDetail_id() {
        return this.detail_id;
    }

    @Nullable
    public final String getGame_version() {
        return this.game_version;
    }

    @Nullable
    public final String getImage_url() {
        return this.image_url;
    }

    @Nullable
    public final String getMain_gameplay() {
        return this.main_gameplay;
    }

    @Nullable
    public final String getRhythm_style() {
        return this.rhythm_style;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public final void setCareer_type(@Nullable String str) {
        this.career_type = str;
    }

    public final void setDetail_id(long j10) {
        this.detail_id = j10;
    }

    public final void setGame_version(@Nullable String str) {
        this.game_version = str;
    }

    public final void setImage_url(@Nullable String str) {
        this.image_url = str;
    }

    public final void setMain_gameplay(@Nullable String str) {
        this.main_gameplay = str;
    }

    public final void setRhythm_style(@Nullable String str) {
        this.rhythm_style = str;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }
}
