package com.join.kotlin.discount.adapter;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.byazt.hv.TTDownloadField;
import com.join.kotlin.discount.CommentStatisticDataFragment;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B1\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0017H\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u0017H\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001cH\u0016R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR*\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000f¨\u0006 "}, d2 = {"Lcom/join/kotlin/discount/adapter/CommentDataViewpagerAdapter;", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "types", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "data", TTDownloadField.TT_ACTIVITY, "Landroidx/fragment/app/FragmentActivity;", "<init>", "(Ljava/util/ArrayList;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V", "ext", "getExt", "()Ljava/lang/String;", "setExt", "(Ljava/lang/String;)V", "getTypes", "()Ljava/util/ArrayList;", "setTypes", "(Ljava/util/ArrayList;)V", "getData", "setData", "getItemCount", "", "createFragment", "Landroidx/fragment/app/Fragment;", "position", "getItemId", "", "containsItem", "", "itemId", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CommentDataViewpagerAdapter extends FragmentStateAdapter {

    @Nullable
    private String data;

    @Nullable
    private String ext;

    @NotNull
    private ArrayList<String> types;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommentDataViewpagerAdapter(@NotNull ArrayList<String> types, @Nullable String str, @NotNull FragmentActivity activity) {
        super(activity);
        Intrinsics.checkNotNullParameter(types, "types");
        Intrinsics.checkNotNullParameter(activity, "activity");
        new ArrayList();
        this.types = types;
        this.data = str;
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public boolean containsItem(long itemId) {
        return itemId >= 0 && itemId < ((long) this.types.size());
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    @NotNull
    public Fragment createFragment(int position) {
        Bundle bundle = new Bundle();
        bundle.putString("type", this.types.get(position));
        bundle.putString("data", this.data);
        CommentStatisticDataFragment commentStatisticDataFragment = new CommentStatisticDataFragment();
        commentStatisticDataFragment.setArguments(bundle);
        return commentStatisticDataFragment;
    }

    @Nullable
    public final String getData() {
        return this.data;
    }

    @Nullable
    public final String getExt() {
        return this.ext;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.types.size();
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int position) {
        return position;
    }

    @NotNull
    public final ArrayList<String> getTypes() {
        return this.types;
    }

    public final void setData(@Nullable String str) {
        this.data = str;
    }

    public final void setExt(@Nullable String str) {
        this.ext = str;
    }

    public final void setTypes(@NotNull ArrayList<String> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.types = arrayList;
    }
}
