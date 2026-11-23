package v2;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@SourceDebugExtension({"SMAP\nQuickViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuickViewHolder.kt\ncom/chad/library/adapter/base/viewholder/QuickViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,108:1\n1#2:109\n*E\n"})
public class c extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private final SparseArray<View> f97514d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull View view) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        this.f97514d = new SparseArray<>();
    }

    @Nullable
    public final <T extends View> T a(int i10) {
        return (T) this.itemView.findViewById(i10);
    }

    @Nullable
    public final <T extends View> T b(@IdRes int i10) {
        T t10 = (T) this.f97514d.get(i10);
        if (t10 != null) {
            return t10;
        }
        T t11 = (T) this.itemView.findViewById(i10);
        if (t11 == null) {
            return null;
        }
        this.f97514d.put(i10, t11);
        return t11;
    }

    public final boolean c(@IdRes int i10) {
        return getView(i10).isEnabled();
    }

    public final boolean d(@IdRes int i10) {
        return getView(i10).isSelected();
    }

    @NotNull
    public final c e(@IdRes int i10, @ColorInt int i11) {
        getView(i10).setBackgroundColor(i11);
        return this;
    }

    @NotNull
    public final c f(@IdRes int i10, @DrawableRes int i11) {
        getView(i10).setBackgroundResource(i11);
        return this;
    }

    @NotNull
    public final c g(@IdRes int i10, boolean z10) {
        getView(i10).isSelected();
        getView(i10).setEnabled(z10);
        return this;
    }

    @NotNull
    public final <T extends View> T getView(@IdRes int i10) {
        T t10 = (T) b(i10);
        if (t10 != null) {
            return t10;
        }
        throw new IllegalStateException(("No view found with id " + i10).toString());
    }

    @NotNull
    public final c h(@IdRes int i10, boolean z10) {
        getView(i10).setVisibility(z10 ? 8 : 0);
        return this;
    }

    @NotNull
    public final c i(@IdRes int i10, @Nullable Bitmap bitmap) {
        ((ImageView) getView(i10)).setImageBitmap(bitmap);
        return this;
    }

    @NotNull
    public final c j(@IdRes int i10, @Nullable Drawable drawable) {
        ((ImageView) getView(i10)).setImageDrawable(drawable);
        return this;
    }

    @NotNull
    public final c k(@IdRes int i10, @DrawableRes int i11) {
        ((ImageView) getView(i10)).setImageResource(i11);
        return this;
    }

    @NotNull
    public final c l(@IdRes int i10, boolean z10) {
        getView(i10).setSelected(z10);
        return this;
    }

    @NotNull
    public final c m(@IdRes int i10, @StringRes int i11) {
        ((TextView) getView(i10)).setText(i11);
        return this;
    }

    @NotNull
    public final c n(@IdRes int i10, @Nullable CharSequence charSequence) {
        ((TextView) getView(i10)).setText(charSequence);
        return this;
    }

    @NotNull
    public final c o(@IdRes int i10, @ColorInt int i11) {
        ((TextView) getView(i10)).setTextColor(i11);
        return this;
    }

    @NotNull
    public final c p(@IdRes int i10, @ColorRes int i11) {
        ((TextView) getView(i10)).setTextColor(ContextCompat.getColor(this.itemView.getContext(), i11));
        return this;
    }

    @NotNull
    public final c q(@IdRes int i10, boolean z10) {
        getView(i10).setVisibility(z10 ? 0 : 4);
        return this;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public c(@LayoutRes int i10, @NotNull ViewGroup parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(i10, parent, false);
        Intrinsics.checkNotNullExpressionValue(viewInflate, "inflate(...)");
        this(viewInflate);
    }
}
