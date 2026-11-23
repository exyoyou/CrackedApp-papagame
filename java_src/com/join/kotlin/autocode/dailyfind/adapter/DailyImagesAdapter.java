package com.join.kotlin.autocode.dailyfind.adapter;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.t2;
import com.join.mgps.dto.ImageInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007J \u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0007H\u0014J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\"\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00072\b\u0010\u001c\u001a\u0004\u0018\u00010\u0002H\u0014R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\n¨\u0006\u001d"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/join/mgps/dto/ImageInfo;", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "<init>", "()V", "isVertical", "", "()I", "setVertical", "(I)V", "curSelected", "getCurSelected", "setCurSelected", "updateCurrentSelected", "", "newIndex", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "onViewRecycled", "holder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onBindViewHolder", "position", "item", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DailyImagesAdapter extends BaseQuickAdapter<ImageInfo, v2.c> {
    private int curSelected;
    private int isVertical;

    public DailyImagesAdapter() {
        super(null, 1, null);
        this.curSelected = -1;
    }

    public final int getCurSelected() {
        return this.curSelected;
    }

    /* JADX INFO: renamed from: isVertical, reason: from getter */
    public final int getIsVertical() {
        return this.isVertical;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewRecycled(holder);
        holder.itemView.setOnClickListener(null);
        holder.itemView.setOnLongClickListener(null);
    }

    public final void setCurSelected(int i10) {
        this.curSelected = i10;
    }

    public final void setVertical(int i10) {
        this.isVertical = i10;
    }

    public final void updateCurrentSelected(int newIndex) {
        int i10 = this.curSelected;
        if (i10 == newIndex) {
            return;
        }
        if (i10 >= 0) {
            ImageInfo item = getItem(i10);
            if (item != null) {
                item.setSelected(false);
            }
            notifyItemChanged(this.curSelected);
        }
        this.curSelected = newIndex;
        ImageInfo item2 = getItem(newIndex);
        if (item2 != null) {
            item2.setSelected(true);
        }
        notifyItemChanged(this.curSelected);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull v2.c holder, int i10, @Nullable ImageInfo imageInfo) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        bindViewClickListener(holder, getItemViewType(i10));
        ImageInfo item = getItem(i10);
        Intrinsics.checkNotNull(item);
        if (item.isVideo()) {
            holder.h(R.id.imageViewVPic, true);
            holder.h(R.id.imageViewHPic, false);
            holder.h(R.id.image_blur, true);
            if (item.isSelected()) {
                View view = holder.getView(R.id.imageViewHPic);
                Intrinsics.checkNotNull(view);
                ((SimpleDraweeView) view).clearColorFilter();
                holder.h(R.id.iv_border, false);
            } else {
                View view2 = holder.getView(R.id.imageViewHPic);
                Intrinsics.checkNotNull(view2);
                ((SimpleDraweeView) view2).setColorFilter(Color.parseColor("#4D000000"), PorterDuff.Mode.SRC_ATOP);
                holder.h(R.id.iv_border, true);
            }
            if (t2.i(item.getVideoUrl())) {
                holder.h(R.id.imageViewPlay, false);
            } else {
                holder.h(R.id.imageViewPlay, true);
            }
            l.d((SimpleDraweeView) holder.getView(R.id.imageViewHPic), R.drawable.banner_normal_icon, item.getUrl());
            Unit unit = Unit.INSTANCE;
            return;
        }
        if (item.isSelected()) {
            if (this.isVertical == 1) {
                View view3 = holder.getView(R.id.imageViewVPic);
                Intrinsics.checkNotNull(view3);
                ((SimpleDraweeView) view3).clearColorFilter();
            } else {
                View view4 = holder.getView(R.id.imageViewHPic);
                Intrinsics.checkNotNull(view4);
                ((SimpleDraweeView) view4).clearColorFilter();
            }
            holder.h(R.id.iv_border, false);
        } else {
            if (this.isVertical == 1) {
                View view5 = holder.getView(R.id.imageViewVPic);
                Intrinsics.checkNotNull(view5);
                ((SimpleDraweeView) view5).setColorFilter(Color.parseColor("#4D000000"), PorterDuff.Mode.SRC_ATOP);
            } else {
                View view6 = holder.getView(R.id.imageViewHPic);
                Intrinsics.checkNotNull(view6);
                ((SimpleDraweeView) view6).setColorFilter(Color.parseColor("#4D000000"), PorterDuff.Mode.SRC_ATOP);
            }
            holder.h(R.id.iv_border, true);
        }
        holder.h(R.id.imageViewPlay, true);
        if (this.isVertical != 1) {
            ImageInfo imageInfo2 = getItems().get(i10);
            Intrinsics.checkNotNull(imageInfo2);
            if (imageInfo2.isGif()) {
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) holder.getView(R.id.imageViewHPic);
                ImageInfo imageInfo3 = getItems().get(i10);
                Intrinsics.checkNotNull(imageInfo3);
                l.o(simpleDraweeView, imageInfo3.getUrl());
            } else {
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) holder.getView(R.id.imageViewHPic);
                ImageInfo imageInfo4 = getItems().get(i10);
                Intrinsics.checkNotNull(imageInfo4);
                l.j(simpleDraweeView2, imageInfo4.getUrl(), l.F(getContext(), getContext().getResources().getDimensionPixelOffset(R.dimen.wdp6)));
            }
            holder.h(R.id.image_blur, true);
            holder.h(R.id.imageViewHPic, false);
            holder.h(R.id.imageViewVPic, true);
            return;
        }
        holder.h(R.id.image_blur, false);
        holder.h(R.id.imageViewVPic, false);
        SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) holder.getView(R.id.image_blur);
        ImageInfo imageInfo5 = getItems().get(i10);
        Intrinsics.checkNotNull(imageInfo5);
        l.M(simpleDraweeView3, imageInfo5.getUrl(), 6, 15);
        ImageInfo imageInfo6 = getItems().get(i10);
        Intrinsics.checkNotNull(imageInfo6);
        if (imageInfo6.isGif()) {
            SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) holder.getView(R.id.imageViewVPic);
            ImageInfo imageInfo7 = getItems().get(i10);
            Intrinsics.checkNotNull(imageInfo7);
            l.o(simpleDraweeView4, imageInfo7.getUrl());
        } else {
            SimpleDraweeView simpleDraweeView5 = (SimpleDraweeView) holder.getView(R.id.imageViewVPic);
            ImageInfo imageInfo8 = getItems().get(i10);
            Intrinsics.checkNotNull(imageInfo8);
            l.j(simpleDraweeView5, imageInfo8.getUrl(), l.F(getContext(), getContext().getResources().getDimensionPixelOffset(R.dimen.wdp6)));
        }
        holder.h(R.id.imageViewHPic, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public v2.c onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new v2.c(R.layout.item_game_detail_images, parent);
    }
}
