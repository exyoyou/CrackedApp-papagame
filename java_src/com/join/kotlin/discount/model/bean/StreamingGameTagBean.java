package com.join.kotlin.discount.model.bean;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u0006\u0010\u0011\u001a\u00020\u0007J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u000fJ>\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001d"}, d2 = {"Lcom/join/kotlin/discount/model/bean/StreamingGameTagBean;", "", TypedValues.Custom.S_COLOR, "", "icon", "name", "border_shape", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getColor", "()Ljava/lang/String;", "getIcon", "getName", "getBorder_shape", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "textSize", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/join/kotlin/discount/model/bean/StreamingGameTagBean;", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class StreamingGameTagBean {

    @Nullable
    private final Integer border_shape;

    @Nullable
    private final String color;

    @Nullable
    private final String icon;

    @Nullable
    private final String name;

    public StreamingGameTagBean() {
        this(null, null, null, null, 15, null);
    }

    public static /* synthetic */ StreamingGameTagBean copy$default(StreamingGameTagBean streamingGameTagBean, String str, String str2, String str3, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = streamingGameTagBean.color;
        }
        if ((i10 & 2) != 0) {
            str2 = streamingGameTagBean.icon;
        }
        if ((i10 & 4) != 0) {
            str3 = streamingGameTagBean.name;
        }
        if ((i10 & 8) != 0) {
            num = streamingGameTagBean.border_shape;
        }
        return streamingGameTagBean.copy(str, str2, str3, num);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getColor() {
        return this.color;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getIcon() {
        return this.icon;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getName() {
        return this.name;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getBorder_shape() {
        return this.border_shape;
    }

    @NotNull
    public final StreamingGameTagBean copy(@Nullable String color, @Nullable String icon, @Nullable String name, @Nullable Integer border_shape) {
        return new StreamingGameTagBean(color, icon, name, border_shape);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StreamingGameTagBean)) {
            return false;
        }
        StreamingGameTagBean streamingGameTagBean = (StreamingGameTagBean) other;
        return Intrinsics.areEqual(this.color, streamingGameTagBean.color) && Intrinsics.areEqual(this.icon, streamingGameTagBean.icon) && Intrinsics.areEqual(this.name, streamingGameTagBean.name) && Intrinsics.areEqual(this.border_shape, streamingGameTagBean.border_shape);
    }

    @Nullable
    public final Integer getBorder_shape() {
        return this.border_shape;
    }

    @Nullable
    public final String getColor() {
        return this.color;
    }

    @Nullable
    public final String getIcon() {
        return this.icon;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        String str = this.color;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.icon;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.name;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.border_shape;
        return iHashCode3 + (num != null ? num.hashCode() : 0);
    }

    public final int textSize() {
        Integer num = this.border_shape;
        return (int) ((num != null && num.intValue() == 1) ? MApplication.f3182z.getResources().getDimension(R.dimen.wdp18) : MApplication.f3182z.getResources().getDimension(R.dimen.wdp20));
    }

    @NotNull
    public String toString() {
        return "StreamingGameTagBean(color=" + this.color + ", icon=" + this.icon + ", name=" + this.name + ", border_shape=" + this.border_shape + ')';
    }

    public StreamingGameTagBean(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Integer num) {
        this.color = str;
        this.icon = str2;
        this.name = str3;
        this.border_shape = num;
    }

    public /* synthetic */ StreamingGameTagBean(String str, String str2, String str3, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "" : str2, (i10 & 4) != 0 ? "" : str3, (i10 & 8) != 0 ? 0 : num);
    }
}
