package h6;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class e extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private final TextView f91399d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final View f91400e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final View f91401f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    private final View f91402g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(@NotNull View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        this.f91399d = (TextView) itemView.findViewById(R.id.tvName);
        this.f91400e = itemView.findViewById(R.id.modify);
        this.f91401f = itemView.findViewById(R.id.edit);
        this.f91402g = itemView.findViewById(R.id.delete);
    }

    @NotNull
    public final View a() {
        return this.f91402g;
    }

    @NotNull
    public final View b() {
        return this.f91401f;
    }

    @NotNull
    public final View c() {
        return this.f91400e;
    }

    @NotNull
    public final TextView d() {
        return this.f91399d;
    }
}
