package v2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class a<DB extends ViewDataBinding> extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private final DB f97512d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@Nullable DB db2) {
        super(db2.getRoot());
        Intrinsics.checkNotNull(db2);
        this.f97512d = db2;
    }

    @Nullable
    public final DB a() {
        return this.f97512d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        DB db2 = (DB) DataBindingUtil.bind(itemView);
        this.f97512d = db2;
        if (db2 == null) {
            throw new NullPointerException("DataBinding is Null. Please check Layout resource or ItemView");
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public a(@LayoutRes int i10, @NotNull ViewGroup parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(i10, parent, false);
        Intrinsics.checkNotNullExpressionValue(viewInflate, "inflate(...)");
        this(viewInflate);
    }
}
