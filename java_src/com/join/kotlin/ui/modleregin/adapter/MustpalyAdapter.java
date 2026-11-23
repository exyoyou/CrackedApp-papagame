package com.join.kotlin.ui.modleregin.adapter;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.dn0;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.modle.VideoModle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0014J\"\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\"\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;", "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;", "Lcom/join/android/app/mgsim/wufun/databinding/MustplayItemLayoutBinding;", "context", "Landroid/content/Context;", "videoHelper", "Lcom/join/android/app/component/video/MyListViewVideoHelper;", "<init>", "(Landroid/content/Context;Lcom/join/android/app/component/video/MyListViewVideoHelper;)V", "getVideoHelper", "()Lcom/join/android/app/component/video/MyListViewVideoHelper;", "getLayoutResId", "", "viewType", "onBindItem", "", "binding", "item", "holder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onBindItemPayloads", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MustpalyAdapter extends BaseDataBindingAdapter<MustplayItemBean, dn0> {

    @NotNull
    private final com.join.android.app.component.video.c videoHelper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MustpalyAdapter(@NotNull Context context, @NotNull com.join.android.app.component.video.c videoHelper) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(videoHelper, "videoHelper");
        this.videoHelper = videoHelper;
    }

    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    protected int getLayoutResId(int viewType) {
        return R.layout.mustplay_item_layout;
    }

    @NotNull
    public final com.join.android.app.component.video.c getVideoHelper() {
        return this.videoHelper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItem(@NotNull dn0 binding, @NotNull MustplayItemBean item, @Nullable RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        binding.z(item);
        binding.A(new VideoModle(item.getPosition(), item.getVideoUrl(), item.getGameinfo().getIntentDataBean(), item.getVideoCover()));
        binding.B(this.videoHelper);
        binding.f37545d.f(new m6.c(getMContext(), item.getGameinfo()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItemPayloads(@NotNull dn0 binding, @NotNull MustplayItemBean item, @Nullable RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        binding.z(item);
        binding.B(this.videoHelper);
        binding.A(new VideoModle(item.getPosition(), item.getVideoUrl(), item.getGameinfo().getIntentDataBean(), item.getVideoCover()));
    }
}
