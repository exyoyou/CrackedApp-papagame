package com.join.mgps.dto;

import com.kwad.sdk.api.model.AdnName;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/join/mgps/dto/VolcanoOther;", "Ljava/io/Serializable;", "scm", "", "req_id", "trans_data", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getScm", "()Ljava/lang/String;", "getReq_id", "getTrans_data", "component1", "component2", "component3", "copy", "equals", "", AdnName.OTHER, "", "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class VolcanoOther implements Serializable {

    @NotNull
    private final String req_id;

    @NotNull
    private final String scm;

    @NotNull
    private final String trans_data;

    public VolcanoOther() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ VolcanoOther copy$default(VolcanoOther volcanoOther, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = volcanoOther.scm;
        }
        if ((i10 & 2) != 0) {
            str2 = volcanoOther.req_id;
        }
        if ((i10 & 4) != 0) {
            str3 = volcanoOther.trans_data;
        }
        return volcanoOther.copy(str, str2, str3);
    }

    @NotNull
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getScm() {
        return this.scm;
    }

    @NotNull
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getReq_id() {
        return this.req_id;
    }

    @NotNull
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTrans_data() {
        return this.trans_data;
    }

    @NotNull
    public final VolcanoOther copy(@NotNull String scm, @NotNull String req_id, @NotNull String trans_data) {
        Intrinsics.checkNotNullParameter(scm, "scm");
        Intrinsics.checkNotNullParameter(req_id, "req_id");
        Intrinsics.checkNotNullParameter(trans_data, "trans_data");
        return new VolcanoOther(scm, req_id, trans_data);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VolcanoOther)) {
            return false;
        }
        VolcanoOther volcanoOther = (VolcanoOther) other;
        return Intrinsics.areEqual(this.scm, volcanoOther.scm) && Intrinsics.areEqual(this.req_id, volcanoOther.req_id) && Intrinsics.areEqual(this.trans_data, volcanoOther.trans_data);
    }

    @NotNull
    public final String getReq_id() {
        return this.req_id;
    }

    @NotNull
    public final String getScm() {
        return this.scm;
    }

    @NotNull
    public final String getTrans_data() {
        return this.trans_data;
    }

    public int hashCode() {
        return (((this.scm.hashCode() * 31) + this.req_id.hashCode()) * 31) + this.trans_data.hashCode();
    }

    @NotNull
    public String toString() {
        return "VolcanoOther(scm=" + this.scm + ", req_id=" + this.req_id + ", trans_data=" + this.trans_data + ')';
    }

    public VolcanoOther(@NotNull String scm, @NotNull String req_id, @NotNull String trans_data) {
        Intrinsics.checkNotNullParameter(scm, "scm");
        Intrinsics.checkNotNullParameter(req_id, "req_id");
        Intrinsics.checkNotNullParameter(trans_data, "trans_data");
        this.scm = scm;
        this.req_id = req_id;
        this.trans_data = trans_data;
    }

    public /* synthetic */ VolcanoOther(String str, String str2, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "" : str2, (i10 & 4) != 0 ? "" : str3);
    }
}
