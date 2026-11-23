package com.join.kotlin.ui.cloudarchive.adapter;

import android.app.Activity;
import android.content.Context;
import android.view.Display;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.cj;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.mgps.dto.CloudListDataBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\"\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u0019H\u0014J\"\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00032\u0006\u0010'\u001a\u00020\u00022\b\u0010(\u001a\u0004\u0018\u00010)H\u0014J\"\u0010*\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00032\u0006\u0010'\u001a\u00020\u00022\b\u0010(\u001a\u0004\u0018\u00010)H\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\n \u0014*\u0004\u0018\u00010\u00130\u0013¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0018\u001a\u00020\u0019¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u0019¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001bR\u0011\u0010\u001e\u001a\u00020\u001f¢\u0006\b\n\u0000\u001a\u0004\b \u0010!¨\u0006+"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;", "Lcom/join/mgps/dto/CloudListDataBean;", "Landroidx/databinding/ViewDataBinding;", "context", "Landroid/content/Context;", "listener", "Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;", "<init>", "(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "getListener", "()Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;", "setListener", "(Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V", "defaultDisplay", "Landroid/view/Display;", "kotlin.jvm.PlatformType", "getDefaultDisplay", "()Landroid/view/Display;", "Landroid/view/Display;", "width", "", "getWidth", "()I", "height", "getHeight", "ratio", "", "getRatio", "()F", "getLayoutResId", "viewType", "onBindItem", "", "binding", "item", "holder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onBindItemPayloads", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EmusArchiveAdapter extends BaseDataBindingAdapter<CloudListDataBean, ViewDataBinding> {

    @NotNull
    private Context context;
    private final Display defaultDisplay;
    private final int height;

    @NotNull
    private OnEmusClickArchiveListener listener;
    private final float ratio;
    private final int width;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmusArchiveAdapter(@NotNull Context context, @NotNull OnEmusClickArchiveListener listener) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.context = context;
        this.listener = listener;
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
        Display defaultDisplay = ((Activity) context).getWindowManager().getDefaultDisplay();
        this.defaultDisplay = defaultDisplay;
        int width = defaultDisplay.getWidth();
        this.width = width;
        int height = defaultDisplay.getHeight();
        this.height = height;
        this.ratio = width > height ? width / height : height / width;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    public final Display getDefaultDisplay() {
        return this.defaultDisplay;
    }

    public final int getHeight() {
        return this.height;
    }

    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    protected int getLayoutResId(int viewType) {
        return R.layout.emus_archive_game_detail_list_item;
    }

    @NotNull
    public final OnEmusClickArchiveListener getListener() {
        return this.listener;
    }

    public final float getRatio() {
        return this.ratio;
    }

    public final int getWidth() {
        return this.width;
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    public final void setListener(@NotNull OnEmusClickArchiveListener onEmusClickArchiveListener) {
        Intrinsics.checkNotNullParameter(onEmusClickArchiveListener, "<set-?>");
        this.listener = onEmusClickArchiveListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItem(@NotNull ViewDataBinding binding, @NotNull CloudListDataBean item, @Nullable RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        if (binding instanceof cj) {
            cj cjVar = (cj) binding;
            cjVar.u(item);
            cjVar.t(this.listener);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItemPayloads(@NotNull ViewDataBinding binding, @NotNull CloudListDataBean item, @Nullable RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        if (binding instanceof cj) {
            cj cjVar = (cj) binding;
            cjVar.u(item);
            cjVar.t(this.listener);
        }
    }
}
