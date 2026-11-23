package com.join.kotlin.module.hmcloud.pad;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;
import com.kuaishou.weapon.p0.t;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u0016\u0010\u0018\u001a\u00020\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0014R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\u0015\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\f\"\u0004\b\u0017\u0010\u000e¨\u0006\u001d"}, d2 = {"Lcom/join/kotlin/module/hmcloud/pad/HMDpadView;", "Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "u", "Landroid/widget/ImageView;", "getU", "()Landroid/widget/ImageView;", "setU", "(Landroid/widget/ImageView;)V", t.f74895t, "getD", "setD", t.f74879d, "getL", "setL", "r", "getR", "setR", "onDirectionUi", "", "directions", "", "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HMDpadView extends HMControllerView {

    @NotNull
    private ImageView d;

    @NotNull
    private ImageView l;

    @NotNull
    private ImageView r;

    @NotNull
    private ImageView u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMDpadView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_hm_pad_dpad, (ViewGroup) this, false);
        this.u = (ImageView) viewInflate.findViewById(R.id.f35488u);
        this.d = (ImageView) viewInflate.findViewById(R.id.f35457d);
        this.l = (ImageView) viewInflate.findViewById(R.id.f35471l);
        this.r = (ImageView) viewInflate.findViewById(R.id.f35481r);
        addView(viewInflate, -1, -1);
    }

    @NotNull
    public final ImageView getD() {
        return this.d;
    }

    @NotNull
    public final ImageView getL() {
        return this.l;
    }

    @NotNull
    public final ImageView getR() {
        return this.r;
    }

    @NotNull
    public final ImageView getU() {
        return this.u;
    }

    @Override // com.join.kotlin.module.hmcloud.pad.HMControllerView
    protected void onDirectionUi(@NotNull List<? extends HMDpadDirection> directions) {
        Intrinsics.checkNotNullParameter(directions, "directions");
        super.onDirectionUi(directions);
        this.u.setPressed(directions.contains(HMDpadDirection.Up));
        this.d.setPressed(directions.contains(HMDpadDirection.Down));
        this.l.setPressed(directions.contains(HMDpadDirection.Left));
        this.r.setPressed(directions.contains(HMDpadDirection.Right));
    }

    public final void setD(@NotNull ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.d = imageView;
    }

    public final void setL(@NotNull ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.l = imageView;
    }

    public final void setR(@NotNull ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.r = imageView;
    }

    public final void setU(@NotNull ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.u = imageView;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMDpadView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_hm_pad_dpad, (ViewGroup) this, false);
        this.u = (ImageView) viewInflate.findViewById(R.id.f35488u);
        this.d = (ImageView) viewInflate.findViewById(R.id.f35457d);
        this.l = (ImageView) viewInflate.findViewById(R.id.f35471l);
        this.r = (ImageView) viewInflate.findViewById(R.id.f35481r);
        addView(viewInflate, -1, -1);
    }
}
