package h6;

import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension({"SMAP\nHMMenuItemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMMenuItemAdapter.kt\ncom/join/mgps/adapter/hmcloud/HMMenuItemAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,115:1\n756#2,10:116\n*S KotlinDebug\n*F\n+ 1 HMMenuItemAdapter.kt\ncom/join/mgps/adapter/hmcloud/HMMenuItemAdapter\n*L\n26#1:116,10\n*E\n"})
public final class i extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final Function1<Integer, Unit> f91409e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f91410f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    private List<g> f91411g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    private String f91412h;

    /* JADX WARN: Multi-variable type inference failed */
    public i(@NotNull Function1<? super Integer, Unit> onItemClick) {
        Intrinsics.checkNotNullParameter(onItemClick, "onItemClick");
        this.f91409e = onItemClick;
        this.f91411g = CollectionsKt__CollectionsKt.mutableListOf(new g(R.drawable.ic_hm_settings, R.drawable.ic_hm_settings_selected, "常规设置"), new g(R.drawable.ic_hm_archive, R.drawable.ic_hm_archive_selected, "游戏存档"), new g(R.drawable.ic_hm_help, R.drawable.ic_hm_help_selected, "问题反馈"));
        this.f91412h = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(i iVar, int i10, View view) {
        iVar.f91409e.invoke(Integer.valueOf(i10));
    }

    @NotNull
    public final String b() {
        return this.f91412h;
    }

    @NotNull
    public final Function1<Integer, Unit> c() {
        return this.f91409e;
    }

    public final void e(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f91412h = str;
    }

    public final void f(int i10) {
        this.f91410f = i10;
        notifyDataSetChanged();
    }

    public final void g(boolean z10) {
        g gVar = new g(R.drawable.ic_hm_key_tip, R.drawable.ic_hm_key_tip_selected, "按键说明");
        List<g> list = this.f91411g;
        ArrayList arrayList = new ArrayList();
        boolean z11 = false;
        for (Object obj : list) {
            if (z11) {
                arrayList.add(obj);
            } else if (!Intrinsics.areEqual(((g) obj).h(), gVar.h())) {
                arrayList.add(obj);
                z11 = true;
            }
        }
        if (z10) {
            this.f91411g.add(gVar);
        }
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f91411g.size() + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i10) {
        return this.f91411g.get(i10).f();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        return getItemCount() - 1 == i10 ? 1 : 0;
    }

    @NotNull
    public final List<g> getItems() {
        return this.f91411g;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, final int i10) {
        String str;
        Intrinsics.checkNotNullParameter(holder, "holder");
        boolean z10 = true;
        if (holder instanceof j) {
            g gVar = this.f91411g.get(i10);
            boolean z11 = this.f91410f == i10;
            j jVar = (j) holder;
            jVar.a().setBackgroundResource(z11 ? gVar.g() : gVar.f());
            jVar.getTitle().setText(gVar.h());
            if (z11) {
                holder.itemView.setSelected(true);
                j jVar2 = (j) holder;
                jVar2.a().setBackgroundResource(gVar.g());
                jVar2.getTitle().setTextColor(-1);
            } else {
                holder.itemView.setSelected(false);
                j jVar3 = (j) holder;
                jVar3.a().setBackgroundResource(gVar.f());
                jVar3.getTitle().setTextColor(Color.parseColor("#80FFFFFF"));
            }
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: h6.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i.d(this.f91407b, i10, view);
                }
            });
            return;
        }
        if (holder instanceof f) {
            TextView title = ((f) holder).getTitle();
            String str2 = this.f91412h;
            if (str2 != null && str2.length() != 0) {
                z10 = false;
            }
            if (z10) {
                str = "";
            } else {
                str = "(cid: " + this.f91412h + ')';
            }
            title.setText(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 == 1) {
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.hm_menu_cid_item, parent, false);
            Intrinsics.checkNotNull(viewInflate);
            return new f(viewInflate);
        }
        View viewInflate2 = LayoutInflater.from(parent.getContext()).inflate(R.layout.hm_menu_item, parent, false);
        Intrinsics.checkNotNull(viewInflate2);
        return new j(viewInflate2);
    }

    public final void setItems(@NotNull List<g> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.f91411g = list;
    }
}
