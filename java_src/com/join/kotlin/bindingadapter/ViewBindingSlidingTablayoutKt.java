package com.join.kotlin.bindingadapter;

import androidx.databinding.BindingAdapter;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.SlidingTabLayout;
import com.join.mgps.customview.BtReginSlidinTablayout;
import com.join.mgps.customview.e0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a<\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00072\u0006\u0010\u000b\u001a\u00020\fH\u0007\u001a<\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00072\u0006\u0010\u000b\u001a\u00020\fH\u0007¨\u0006\u000f"}, d2 = {"viewpagertabLayout", "", "tabLayout", "Lcom/join/mgps/customview/BtReginSlidinTablayout;", "viewPager", "Landroidx/viewpager/widget/ViewPager;", "fragments", "", "Landroidx/fragment/app/Fragment;", "titles", "", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "viewpagerSlidingTabLayout", "Lcom/flyco/tablayout/SlidingTabLayout;", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ViewBindingSlidingTablayoutKt {
    @BindingAdapter(requireAll = false, value = {"viewPager", "fragments", "titles", "fragmentManager"})
    public static final void viewpagerSlidingTabLayout(@NotNull SlidingTabLayout tabLayout, @NotNull ViewPager viewPager, @NotNull List<? extends Fragment> fragments, @NotNull List<String> titles, @NotNull FragmentManager fragmentManager) {
        Intrinsics.checkNotNullParameter(tabLayout, "tabLayout");
        Intrinsics.checkNotNullParameter(viewPager, "viewPager");
        Intrinsics.checkNotNullParameter(fragments, "fragments");
        Intrinsics.checkNotNullParameter(titles, "titles");
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(fragments);
        e0 e0Var = new e0(fragmentManager, arrayList, titles);
        e0Var.d(fragments, titles);
        viewPager.setAdapter(e0Var);
        tabLayout.setViewPager(viewPager);
    }

    @BindingAdapter(requireAll = false, value = {"viewPager", "fragments", "titles", "fragmentManager"})
    public static final void viewpagertabLayout(@NotNull BtReginSlidinTablayout tabLayout, @NotNull ViewPager viewPager, @NotNull List<? extends Fragment> fragments, @NotNull List<String> titles, @NotNull FragmentManager fragmentManager) {
        Intrinsics.checkNotNullParameter(tabLayout, "tabLayout");
        Intrinsics.checkNotNullParameter(viewPager, "viewPager");
        Intrinsics.checkNotNullParameter(fragments, "fragments");
        Intrinsics.checkNotNullParameter(titles, "titles");
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(fragments);
        e0 e0Var = new e0(fragmentManager, arrayList, titles);
        e0Var.d(fragments, titles);
        viewPager.setAdapter(e0Var);
        tabLayout.setViewPager(viewPager);
    }
}
