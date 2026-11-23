package com.join.mgps.dto.hmcloud;

import com.kuaishou.weapon.p0.t;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0012\u0018\u0000 &2\u00020\u0001:\u0001&B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0007\"\u0004\b\u0013\u0010\tR\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u001c\u0010\r\"\u0004\b\u001d\u0010\u000fR\u001a\u0010\u001e\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001c\u0010#\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0007\"\u0004\b%\u0010\t¨\u0006'"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HandleCfg;", "", "<init>", "()V", "name", "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "id", "", "getId", "()Ljava/lang/Integer;", "setId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "url", "getUrl", "setUrl", "offical", "", "getOffical", "()Ljava/lang/Boolean;", "setOffical", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "source", "getSource", "setSource", "cfg_type", "getCfg_type", "()I", "setCfg_type", "(I)V", "from", "getFrom", "setFrom", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HandleCfg {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private int cfg_type;

    @Nullable
    private String from;

    @Nullable
    private Integer id;

    @NotNull
    private String name = "";

    @Nullable
    private Boolean offical;

    @Nullable
    private Integer source;

    @Nullable
    private String url;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0007¨\u0006\t"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HandleCfg$Companion;", "", "<init>", "()V", "isEquals", "", "a", "Lcom/join/mgps/dto/hmcloud/HandleCfg;", t.f74887l, "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isEquals(@Nullable HandleCfg a10, @Nullable HandleCfg b10) {
            if (a10 == null && b10 == null) {
                return true;
            }
            if ((a10 != null ? a10.getId() : null) != null) {
                if (Intrinsics.areEqual(a10.getId(), b10 != null ? b10.getId() : null)) {
                    return true;
                }
            }
            if (Intrinsics.areEqual(a10 != null ? a10.getName() : null, b10 != null ? b10.getName() : null)) {
                if (Intrinsics.areEqual(a10 != null ? Integer.valueOf(a10.getCfg_type()) : null, b10 != null ? Integer.valueOf(b10.getCfg_type()) : null)) {
                    if (Intrinsics.areEqual(a10 != null ? a10.getUrl() : null, b10 != null ? b10.getUrl() : null)) {
                        return true;
                    }
                }
            }
            return false;
        }

        private Companion() {
        }
    }

    public final int getCfg_type() {
        return this.cfg_type;
    }

    @Nullable
    public final String getFrom() {
        return this.from;
    }

    @Nullable
    public final Integer getId() {
        return this.id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final Boolean getOffical() {
        return this.offical;
    }

    @Nullable
    public final Integer getSource() {
        return this.source;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public final void setCfg_type(int i10) {
        this.cfg_type = i10;
    }

    public final void setFrom(@Nullable String str) {
        this.from = str;
    }

    public final void setId(@Nullable Integer num) {
        this.id = num;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setOffical(@Nullable Boolean bool) {
        this.offical = bool;
    }

    public final void setSource(@Nullable Integer num) {
        this.source = num;
    }

    public final void setUrl(@Nullable String str) {
        this.url = str;
    }
}
