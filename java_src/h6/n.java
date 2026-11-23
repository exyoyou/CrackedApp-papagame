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
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class n extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final Function1<HandleCfg, Unit> f91422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final Function1<HandleCfg, Unit> f91423f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    private final Function1<HandleCfg, Unit> f91424g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private HandleCfg f91425h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    private List<HandleCfg> f91426i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f91427j;

    /* JADX WARN: Multi-variable type inference failed */
    public n(@NotNull Function1<? super HandleCfg, Unit> onItemUse, @NotNull Function1<? super HandleCfg, Unit> onItemDelete, @NotNull Function1<? super HandleCfg, Unit> onItemSelected) {
        Intrinsics.checkNotNullParameter(onItemUse, "onItemUse");
        Intrinsics.checkNotNullParameter(onItemDelete, "onItemDelete");
        Intrinsics.checkNotNullParameter(onItemSelected, "onItemSelected");
        this.f91422e = onItemUse;
        this.f91423f = onItemDelete;
        this.f91424g = onItemSelected;
        this.f91426i = CollectionsKt__CollectionsKt.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(n nVar, HandleCfg handleCfg, View view) {
        nVar.f91423f.invoke(handleCfg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(n nVar, HandleCfg handleCfg, View view) {
        nVar.f91422e.invoke(handleCfg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(n nVar, int i10, HandleCfg handleCfg, View view) {
        nVar.f91427j = i10;
        nVar.notifyDataSetChanged();
        nVar.f91424g.invoke(handleCfg);
    }

    @Nullable
    public final HandleCfg d() {
        return this.f91425h;
    }

    public final int e() {
        return this.f91427j;
    }

    @NotNull
    public final Function1<HandleCfg, Unit> f() {
        return this.f91423f;
    }

    @NotNull
    public final Function1<HandleCfg, Unit> g() {
        return this.f91424g;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f91426i.size();
    }

    @NotNull
    public final List<HandleCfg> getItems() {
        return this.f91426i;
    }

    @NotNull
    public final Function1<HandleCfg, Unit> h() {
        return this.f91422e;
    }

    public final void l(@Nullable HandleCfg handleCfg) {
        this.f91425h = handleCfg;
    }

    public final void m(int i10) {
        this.f91427j = i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, final int i10) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        final HandleCfg handleCfg = this.f91426i.get(i10);
        boolean zIsEquals = HandleCfg.INSTANCE.isEquals(this.f91425h, handleCfg);
        if (holder instanceof o) {
            o oVar = (o) holder;
            boolean z10 = true;
            oVar.a().setSelected(this.f91427j == i10);
            oVar.d().setText(handleCfg.getName());
            Boolean offical = handleCfg.getOffical();
            if (!(offical != null ? offical.booleanValue() : false)) {
                Integer source = handleCfg.getSource();
                if ((source != null ? source.intValue() : -1) != HandleCfgSource.OFFICIAL.getValue()) {
                    Integer source2 = handleCfg.getSource();
                    if ((source2 != null ? source2.intValue() : -1) != HandleCfgSource.DEFAULT.getValue()) {
                        Integer source3 = handleCfg.getSource();
                        if ((source3 != null ? source3.intValue() : -1) != HandleCfgSource.CUSTOM.getValue()) {
                            z10 = false;
                        }
                    }
                }
            }
            oVar.e().setVisibility(z10 ? 0 : 8);
            Integer source4 = handleCfg.getSource();
            int iIntValue = source4 != null ? source4.intValue() : -1;
            HandleCfgSource handleCfgSource = HandleCfgSource.CUSTOM;
            if (iIntValue == handleCfgSource.getValue()) {
                oVar.e().setImageResource(R.drawable.ic_hm_t_mine);
            } else {
                oVar.e().setImageResource(R.drawable.ic_hm_t_official);
            }
            View viewB = oVar.b();
            Integer source5 = handleCfg.getSource();
            viewB.setVisibility((source5 != null && source5.intValue() == handleCfgSource.getValue()) ? 0 : 8);
            oVar.c().setVisibility(zIsEquals ? 0 : 8);
            oVar.b().setOnClickListener(new View.OnClickListener() { // from class: h6.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    n.i(this.f91415b, handleCfg, view);
                }
            });
            oVar.f().setOnClickListener(new View.OnClickListener() { // from class: h6.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    n.j(this.f91417b, handleCfg, view);
                }
            });
            oVar.a().setOnClickListener(new View.OnClickListener() { // from class: h6.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    n.k(this.f91419b, i10, handleCfg, view);
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.hm_op_template_item, parent, false);
        Intrinsics.checkNotNull(viewInflate);
        return new o(viewInflate);
    }

    public final void setItems(@NotNull List<HandleCfg> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.f91426i = list;
    }
}
