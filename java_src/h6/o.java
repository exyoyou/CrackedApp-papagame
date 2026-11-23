package h6;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class o extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private final View f91428d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final TextView f91429e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final ImageView f91430f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    private final View f91431g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    private final View f91432h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    private final View f91433i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(@NotNull View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        this.f91428d = itemView.findViewById(R.id.ll_content);
        this.f91429e = (TextView) itemView.findViewById(R.id.tv_name);
        this.f91430f = (ImageView) itemView.findViewById(R.id.iv_official);
        this.f91431g = itemView.findViewById(R.id.iv_delete);
        this.f91432h = itemView.findViewById(R.id.tv_use);
        this.f91433i = itemView.findViewById(R.id.iv_in_use);
    }

    @NotNull
    public final View a() {
        return this.f91428d;
    }

    @NotNull
    public final View b() {
        return this.f91431g;
    }

    @NotNull
    public final View c() {
        return this.f91433i;
    }

    @NotNull
    public final TextView d() {
        return this.f91429e;
    }

    @NotNull
    public final ImageView e() {
        return this.f91430f;
    }

    @NotNull
    public final View f() {
        return this.f91432h;
    }
}
