package t2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class c extends g<a> {
    public c() {
        this(false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(c cVar, View view) {
        cVar.q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(c cVar, View view) {
        cVar.r();
    }

    @Override // r2.c
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public void d(@NotNull a holder, @NotNull r2.b loadState) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        if (loadState instanceof r2.b.d) {
            if (loadState.a()) {
                holder.a().setVisibility(8);
                holder.d().setVisibility(8);
                holder.c().setVisibility(8);
                holder.b().setVisibility(0);
                return;
            }
            holder.a().setVisibility(0);
            holder.d().setVisibility(8);
            holder.c().setVisibility(8);
            holder.b().setVisibility(8);
            return;
        }
        if (loadState instanceof r2.b.C1240b) {
            holder.a().setVisibility(8);
            holder.d().setVisibility(0);
            holder.c().setVisibility(8);
            holder.b().setVisibility(8);
            return;
        }
        if (loadState instanceof r2.b.a) {
            holder.a().setVisibility(8);
            holder.d().setVisibility(8);
            holder.c().setVisibility(0);
            holder.b().setVisibility(8);
            return;
        }
        if (!(loadState instanceof r2.b.c)) {
            throw new NoWhenBranchMatchedException();
        }
        holder.a().setVisibility(8);
        holder.d().setVisibility(8);
        holder.c().setVisibility(8);
        holder.b().setVisibility(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // r2.c
    @NotNull
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public a e(@NotNull ViewGroup parent, @NotNull r2.b loadState) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        a aVar = new a(parent, null, 2, 0 == true ? 1 : 0);
        aVar.c().setOnClickListener(new View.OnClickListener() { // from class: t2.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.E(this.f97030b, view);
            }
        });
        aVar.a().setOnClickListener(new View.OnClickListener() { // from class: t2.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.F(this.f97031b, view);
            }
        });
        return aVar;
    }

    @Override // r2.c
    public int c(@NotNull r2.b loadState) {
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        return R.layout.brvah_trailing_load_more;
    }

    public static final class a extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @NotNull
        private final View f97032d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @NotNull
        private final View f97033e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @NotNull
        private final View f97034f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @NotNull
        private final View f97035g;

        public /* synthetic */ a(ViewGroup viewGroup, View view, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(viewGroup, (i10 & 2) != 0 ? LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.brvah_trailing_load_more, viewGroup, false) : view);
        }

        @NotNull
        public final View a() {
            return this.f97032d;
        }

        @NotNull
        public final View b() {
            return this.f97035g;
        }

        @NotNull
        public final View c() {
            return this.f97034f;
        }

        @NotNull
        public final View d() {
            return this.f97033e;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull ViewGroup parent, @NotNull View view) {
            super(view);
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(view, "view");
            View viewFindViewById = this.itemView.findViewById(R.id.load_more_load_complete_view);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
            this.f97032d = viewFindViewById;
            View viewFindViewById2 = this.itemView.findViewById(R.id.load_more_loading_view);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
            this.f97033e = viewFindViewById2;
            View viewFindViewById3 = this.itemView.findViewById(R.id.load_more_load_fail_view);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "findViewById(...)");
            this.f97034f = viewFindViewById3;
            View viewFindViewById4 = this.itemView.findViewById(R.id.load_more_load_end_view);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById4, "findViewById(...)");
            this.f97035g = viewFindViewById4;
        }
    }

    public c(boolean z10) {
        super(z10);
    }

    public /* synthetic */ c(boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? true : z10);
    }
}
