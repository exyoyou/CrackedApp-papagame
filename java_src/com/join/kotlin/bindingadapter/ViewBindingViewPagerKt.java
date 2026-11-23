package com.join.kotlin.bindingadapter;

import androidx.databinding.BindingAdapter;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.join.mgps.customview.e0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a4\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\u0006\u0010\t\u001a\u00020\nH\u0007¨\u0006\u000b"}, d2 = {"viewpagerFragment", "", "viewPager", "Landroidx/viewpager/widget/ViewPager;", "fragments", "", "Landroidx/fragment/app/Fragment;", "titles", "", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ViewBindingViewPagerKt {
    @BindingAdapter(requireAll = false, value = {"fragments", "titles", "fragmentManager"})
    public static final void viewpagerFragment(@NotNull ViewPager viewPager, @NotNull List<? extends Fragment> fragments, @NotNull List<String> titles, @NotNull FragmentManager fragmentManager) {
        Intrinsics.checkNotNullParameter(viewPager, "viewPager");
        Intrinsics.checkNotNullParameter(fragments, "fragments");
        Intrinsics.checkNotNullParameter(titles, "titles");
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(fragments);
        e0 e0Var = new e0(fragmentManager, arrayList, titles);
        e0Var.d(fragments, titles);
        viewPager.setAdapter(e0Var);
    }
}
