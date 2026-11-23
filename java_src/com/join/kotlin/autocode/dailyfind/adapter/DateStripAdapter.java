package com.join.kotlin.autocode.dailyfind.adapter;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.autocode.dailyfind.model.DateItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B;\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005\u0012\"\b\u0002\u0010\u0006\u001a\u001c\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007¢\u0006\u0004\b\n\u0010\u000bJ \u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\bH\u0014J\"\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0002H\u0014J\u0014\u0010\u001b\u001a\u00020\t2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005R(\u0010\u0006\u001a\u001c\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001d"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/join/kotlin/autocode/dailyfind/model/DateItem;", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "items", "", "onDateClick", "Lkotlin/Function3;", "", "", "<init>", "(Ljava/util/List;Lkotlin/jvm/functions/Function3;)V", "selectedIndex", "getSelectedIndex", "()I", "setSelectedIndex", "(I)V", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "onBindViewHolder", "holder", "position", "item", "updateItems", "newItems", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDateStripAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateStripAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,55:1\n470#2:56\n*S KotlinDebug\n*F\n+ 1 DateStripAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter\n*L\n42#1:56\n*E\n"})
public final class DateStripAdapter extends BaseQuickAdapter<DateItem, v2.c> {

    @Nullable
    private final Function3<Integer, Integer, DateItem, Unit> onDateClick;
    private int selectedIndex;

    /* JADX WARN: Multi-variable type inference failed */
    public DateStripAdapter() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$0(DateStripAdapter dateStripAdapter, int i10, DateItem dateItem, View view) {
        Function3<Integer, Integer, DateItem, Unit> function3 = dateStripAdapter.onDateClick;
        if (function3 != null) {
            function3.invoke(Integer.valueOf(dateStripAdapter.selectedIndex), Integer.valueOf(i10), dateItem);
        }
    }

    public final int getSelectedIndex() {
        return this.selectedIndex;
    }

    public final void setSelectedIndex(int i10) {
        this.selectedIndex = i10;
    }

    public final void updateItems(@NotNull List<DateItem> newItems) {
        Intrinsics.checkNotNullParameter(newItems, "newItems");
        submitList(newItems);
    }

    public /* synthetic */ DateStripAdapter(List list, Function3 function3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i10 & 2) != 0 ? null : function3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull v2.c holder, final int i10, @Nullable final DateItem dateItem) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (dateItem == null) {
            return;
        }
        holder.n(R.id.dateCellWeekday, dateItem.getWeekdayLabel());
        holder.n(R.id.dateCellDay, dateItem.getDayLabel());
        if (dateItem.isToday()) {
            holder.n(R.id.dateCellDay, "今");
        } else {
            holder.h(R.id.dateCellTodayBg, this.selectedIndex == i10);
            holder.n(R.id.dateCellDay, dateItem.getDayLabel());
        }
        holder.o(R.id.dateCellDay, Color.parseColor(this.selectedIndex != i10 ? "#333333" : "#FFFFFF"));
        holder.h(R.id.dateCellTodayBg, this.selectedIndex != i10);
        holder.h(R.id.dateCellDot, this.selectedIndex != i10);
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.autocode.dailyfind.adapter.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DateStripAdapter.onBindViewHolder$lambda$0(this.f48520b, i10, dateItem, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public v2.c onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new v2.c(R.layout.item_date_cell, parent);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DateStripAdapter(@NotNull List<DateItem> items, @Nullable Function3<? super Integer, ? super Integer, ? super DateItem, Unit> function3) {
        super(items);
        Intrinsics.checkNotNullParameter(items, "items");
        this.onDateClick = function3;
        this.selectedIndex = items.size() - 1;
    }
}
