package h6;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class r extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private final View f91439d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final TextView f91440e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final View f91441f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    private final View f91442g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    private final TextView f91443h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(@NotNull View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        this.f91439d = itemView.findViewById(R.id.ll);
        this.f91440e = (TextView) itemView.findViewById(R.id.tvName);
        this.f91441f = itemView.findViewById(R.id.ivVip);
        this.f91442g = itemView.findViewById(R.id.iv);
        this.f91443h = (TextView) itemView.findViewById(R.id.tvFrame);
    }

    @NotNull
    public final View a() {
        return this.f91439d;
    }

    @NotNull
    public final View b() {
        return this.f91442g;
    }

    @NotNull
    public final TextView c() {
        return this.f91443h;
    }

    @NotNull
    public final TextView d() {
        return this.f91440e;
    }

    @NotNull
    public final View e() {
        return this.f91441f;
    }
}
