package h6;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.hmcloud.PictureSetting;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class q extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final Function1<PictureSetting, Unit> f91436e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private String f91437f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    private List<PictureSetting> f91438g;

    /* JADX WARN: Multi-variable type inference failed */
    public q(@NotNull Function1<? super PictureSetting, Unit> onItemClick) {
        Intrinsics.checkNotNullParameter(onItemClick, "onItemClick");
        this.f91436e = onItemClick;
        this.f91438g = CollectionsKt__CollectionsKt.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(q qVar, PictureSetting pictureSetting, View view) {
        qVar.f91436e.invoke(pictureSetting);
    }

    @Nullable
    public final String b() {
        return this.f91437f;
    }

    @NotNull
    public final Function1<PictureSetting, Unit> c() {
        return this.f91436e;
    }

    public final boolean d(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return com.join.mgps.Util.b.pivc(AccountUtil_.getInstance_(context).getAccountData());
    }

    public final void f(@Nullable String str) {
        this.f91437f = str;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f91438g.size();
    }

    @NotNull
    public final List<PictureSetting> getItems() {
        return this.f91438g;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00a9  */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        int i11;
        Intrinsics.checkNotNullParameter(holder, "holder");
        final PictureSetting pictureSetting = this.f91438g.get(i10);
        String str = this.f91437f;
        boolean zAreEqual = str == null || str.length() == 0 ? false : Intrinsics.areEqual(this.f91437f, pictureSetting.getId());
        if (holder instanceof r) {
            r rVar = (r) holder;
            rVar.a().setSelected(zAreEqual);
            rVar.d().setText(pictureSetting.getName());
            Integer frame_rate = pictureSetting.getFrame_rate();
            int iIntValue = frame_rate != null ? frame_rate.intValue() : 0;
            if (!pictureSetting.getShow_frame_mark() || iIntValue <= 0) {
                rVar.b().setVisibility(4);
                rVar.c().setVisibility(4);
            } else {
                TextView textViewC = rVar.c();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(iIntValue);
                sb2.append((char) 24103);
                textViewC.setText(sb2.toString());
                rVar.b().setVisibility(0);
                rVar.c().setVisibility(0);
            }
            View viewE = rVar.e();
            if (pictureSetting.getVip_require()) {
                Context context = holder.itemView.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                i11 = d(context) ? 8 : 0;
            }
            viewE.setVisibility(i11);
            rVar.a().setOnClickListener(new View.OnClickListener() { // from class: h6.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    q.e(this.f91434b, pictureSetting, view);
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.hm_resolution_item, parent, false);
        Intrinsics.checkNotNull(viewInflate);
        return new r(viewInflate);
    }

    public final void setItems(@NotNull List<PictureSetting> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.f91438g = list;
    }
}
