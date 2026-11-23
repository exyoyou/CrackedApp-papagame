package h6;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class j extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private final ImageView f91413d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final TextView f91414e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(@NotNull View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        this.f91413d = (ImageView) itemView.findViewById(R.id.icon);
        this.f91414e = (TextView) itemView.findViewById(R.id.title);
    }

    @NotNull
    public final ImageView a() {
        return this.f91413d;
    }

    @NotNull
    public final TextView getTitle() {
        return this.f91414e;
    }
}
