package com.join.kotlin.quark.model.bean;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0016\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0012J2\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u00032\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;", "", "active", "", "name", "", "tab_id", "", "<init>", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)V", "getActive", "()Ljava/lang/Boolean;", "setActive", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getName", "()Ljava/lang/String;", "getTab_id", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "copy", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;", "equals", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SourceTabItemBean {

    @Nullable
    private Boolean active;

    @Nullable
    private final String name;

    @Nullable
    private final Integer tab_id;

    public SourceTabItemBean(@Nullable Boolean bool, @Nullable String str, @Nullable Integer num) {
        this.active = bool;
        this.name = str;
        this.tab_id = num;
    }

    public static /* synthetic */ SourceTabItemBean copy$default(SourceTabItemBean sourceTabItemBean, Boolean bool, String str, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            bool = sourceTabItemBean.active;
        }
        if ((i10 & 2) != 0) {
            str = sourceTabItemBean.name;
        }
        if ((i10 & 4) != 0) {
            num = sourceTabItemBean.tab_id;
        }
        return sourceTabItemBean.copy(bool, str, num);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getActive() {
        return this.active;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getTab_id() {
        return this.tab_id;
    }

    @NotNull
    public final SourceTabItemBean copy(@Nullable Boolean active, @Nullable String name, @Nullable Integer tab_id) {
        return new SourceTabItemBean(active, name, tab_id);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SourceTabItemBean)) {
            return false;
        }
        SourceTabItemBean sourceTabItemBean = (SourceTabItemBean) other;
        return Intrinsics.areEqual(this.active, sourceTabItemBean.active) && Intrinsics.areEqual(this.name, sourceTabItemBean.name) && Intrinsics.areEqual(this.tab_id, sourceTabItemBean.tab_id);
    }

    @Nullable
    public final Boolean getActive() {
        return this.active;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final Integer getTab_id() {
        return this.tab_id;
    }

    public int hashCode() {
        Boolean bool = this.active;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        String str = this.name;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.tab_id;
        return iHashCode2 + (num != null ? num.hashCode() : 0);
    }

    public final void setActive(@Nullable Boolean bool) {
        this.active = bool;
    }

    @NotNull
    public String toString() {
        return "SourceTabItemBean(active=" + this.active + ", name=" + this.name + ", tab_id=" + this.tab_id + ')';
    }
}
