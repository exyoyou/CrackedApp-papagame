package s2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class a extends c<C1246a> {
    @Override // r2.c
    public int c(@NotNull r2.b loadState) {
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        return R.layout.brvah_leading_load_more;
    }

    @Override // r2.c
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void d(@NotNull C1246a holder, @NotNull r2.b loadState) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        if (loadState instanceof r2.b.C1240b) {
            holder.a().setVisibility(0);
        } else {
            holder.a().setVisibility(8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // r2.c
    @NotNull
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public C1246a e(@NotNull ViewGroup parent, @NotNull r2.b loadState) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        return new C1246a(parent, null, 2, 0 == true ? 1 : 0);
    }

    /* JADX INFO: renamed from: s2.a$a, reason: collision with other inner class name */
    public static final class C1246a extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @NotNull
        private final View f96977d;

        public /* synthetic */ C1246a(ViewGroup viewGroup, View view, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(viewGroup, (i10 & 2) != 0 ? LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.brvah_leading_load_more, viewGroup, false) : view);
        }

        @NotNull
        public final View a() {
            return this.f96977d;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1246a(@NotNull ViewGroup parent, @NotNull View view) {
            super(view);
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(view, "view");
            View viewFindViewById = this.itemView.findViewById(R.id.loading_progress);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
            this.f96977d = viewFindViewById;
        }
    }
}
