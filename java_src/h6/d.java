package h6;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.hmcloud.HandleCfg;
import com.join.mgps.dto.hmcloud.HandleCfgSource;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class d extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final Function1<HandleCfg, Unit> f91394e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private final Function1<HandleCfg, Unit> f91395f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private final Function1<HandleCfg, Unit> f91396g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private HandleCfg f91397h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    private List<HandleCfg> f91398i;

    public /* synthetic */ d(Function1 function1, Function1 function2, Function1 function3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1, (i10 & 2) != 0 ? null : function2, (i10 & 4) != 0 ? null : function3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(d dVar, HandleCfg handleCfg, View view) {
        Function1<HandleCfg, Unit> function1 = dVar.f91395f;
        if (function1 != null) {
            function1.invoke(handleCfg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(d dVar, HandleCfg handleCfg, View view) {
        Function1<HandleCfg, Unit> function1 = dVar.f91396g;
        if (function1 != null) {
            function1.invoke(handleCfg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(d dVar, HandleCfg handleCfg, View view) {
        dVar.f91394e.invoke(handleCfg);
    }

    @Nullable
    public final HandleCfg d() {
        return this.f91397h;
    }

    @Nullable
    public final Function1<HandleCfg, Unit> e() {
        return this.f91396g;
    }

    @Nullable
    public final Function1<HandleCfg, Unit> f() {
        return this.f91395f;
    }

    @NotNull
    public final Function1<HandleCfg, Unit> g() {
        return this.f91394e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f91398i.size();
    }

    @NotNull
    public final List<HandleCfg> getItems() {
        return this.f91398i;
    }

    public final void k(@Nullable HandleCfg handleCfg) {
        this.f91397h = handleCfg;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        final HandleCfg handleCfg = this.f91398i.get(i10);
        boolean zIsEquals = HandleCfg.INSTANCE.isEquals(this.f91397h, handleCfg);
        if (holder instanceof e) {
            holder.itemView.setSelected(zIsEquals);
            e eVar = (e) holder;
            eVar.d().setText(handleCfg.getName());
            Integer source = handleCfg.getSource();
            HandleCfgSource handleCfgSource = HandleCfgSource.CUSTOM;
            int value = handleCfgSource.getValue();
            if (source != null && source.intValue() == value) {
                Object parent = eVar.b().getParent();
                Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
                ((View) parent).setOnClickListener(new View.OnClickListener() { // from class: h6.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        d.h(this.f91388b, handleCfg, view);
                    }
                });
                Object parent2 = eVar.a().getParent();
                Intrinsics.checkNotNull(parent2, "null cannot be cast to non-null type android.view.View");
                ((View) parent2).setOnClickListener(new View.OnClickListener() { // from class: h6.b
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        d.i(this.f91390b, handleCfg, view);
                    }
                });
            }
            View viewC = eVar.c();
            Integer source2 = handleCfg.getSource();
            viewC.setVisibility((source2 != null && source2.intValue() == handleCfgSource.getValue()) ? 0 : 8);
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: h6.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    d.j(this.f91392b, handleCfg, view);
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.hm_pad_type_item, parent, false);
        Intrinsics.checkNotNull(viewInflate);
        return new e(viewInflate);
    }

    public final void setItems(@NotNull List<HandleCfg> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.f91398i = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(@NotNull Function1<? super HandleCfg, Unit> onItemClick, @Nullable Function1<? super HandleCfg, Unit> function1, @Nullable Function1<? super HandleCfg, Unit> function2) {
        Intrinsics.checkNotNullParameter(onItemClick, "onItemClick");
        this.f91394e = onItemClick;
        this.f91395f = function1;
        this.f91396g = function2;
        this.f91398i = CollectionsKt__CollectionsKt.emptyList();
    }
}
