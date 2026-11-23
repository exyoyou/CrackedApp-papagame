package com.join.kotlin.ui.hmcloud.activity;

import android.os.Bundle;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.databinding.o;
import com.join.kotlin.base.activity.BaseVmDbActivity;
import com.join.kotlin.ui.findgame.data.TagData;
import com.join.kotlin.ui.hmcloud.fragment.CloudAssetRecordFragment;
import com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel;
import com.join.mgps.customview.e0;
import com.join.mgps.dto.ExtBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\b\u0010\u001f\u001a\u00020\u001cH\u0016R \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR*\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006 "}, d2 = {"Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbActivity;", "Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityCloudAssetRecordBinding;", "<init>", "()V", "tabs", "", "Lcom/join/kotlin/ui/findgame/data/TagData;", "getTabs", "()Ljava/util/List;", "setTabs", "(Ljava/util/List;)V", "fragments", "Ljava/util/ArrayList;", "Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;", "Lkotlin/collections/ArrayList;", "getFragments", "()Ljava/util/ArrayList;", "setFragments", "(Ljava/util/ArrayList;)V", "parentExtBean", "Lcom/join/mgps/dto/ExtBean;", "getParentExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setParentExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "createObserver", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCloudAssetRecordActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudAssetRecordActivity.kt\ncom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n1563#2:96\n1634#2,3:97\n*S KotlinDebug\n*F\n+ 1 CloudAssetRecordActivity.kt\ncom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity\n*L\n56#1:96\n56#1:97,3\n*E\n"})
public final class CloudAssetRecordActivity extends BaseVmDbActivity<CloudAssetRecordViewModel, o> {

    @Nullable
    private ExtBean parentExtBean;

    @NotNull
    private List<? extends TagData> tabs = CollectionsKt__CollectionsKt.listOf((Object[]) new TagData[]{new TagData(1, "时长"), new TagData(2, "云钻"), new TagData(3, "云币"), new TagData(4, "道具")});

    @NotNull
    private ArrayList<CloudAssetRecordFragment> fragments = new ArrayList<>();

    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void createObserver() {
    }

    @NotNull
    public final ArrayList<CloudAssetRecordFragment> getFragments() {
        return this.fragments;
    }

    @Nullable
    public final ExtBean getParentExtBean() {
        return this.parentExtBean;
    }

    @NotNull
    public final List<TagData> getTabs() {
        return this.tabs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        getMDatabind().n((CloudAssetRecordViewModel) getMViewModel());
        getMDatabind().f42568d.setText(((CloudAssetRecordViewModel) getMViewModel()).getTitle().getValue());
        getMDatabind().f42566b.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.activity.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f49155b.finish();
            }
        });
        this.parentExtBean = (ExtBean) getIntent().getSerializableExtra("parentExtBean");
        int intExtra = getIntent().getIntExtra("position", 0);
        ArrayList<CloudAssetRecordFragment> arrayList = this.fragments;
        CloudAssetRecordFragment cloudAssetRecordFragment = new CloudAssetRecordFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("_type", 1);
        bundle.putSerializable("parentExtBean", this.parentExtBean);
        cloudAssetRecordFragment.setArguments(bundle);
        arrayList.add(cloudAssetRecordFragment);
        ArrayList<CloudAssetRecordFragment> arrayList2 = this.fragments;
        CloudAssetRecordFragment cloudAssetRecordFragment2 = new CloudAssetRecordFragment();
        Bundle bundle2 = new Bundle();
        bundle2.putInt("_type", 2);
        bundle2.putSerializable("parentExtBean", this.parentExtBean);
        cloudAssetRecordFragment2.setArguments(bundle2);
        arrayList2.add(cloudAssetRecordFragment2);
        ArrayList<CloudAssetRecordFragment> arrayList3 = this.fragments;
        CloudAssetRecordFragment cloudAssetRecordFragment3 = new CloudAssetRecordFragment();
        Bundle bundle3 = new Bundle();
        bundle3.putInt("_type", 3);
        bundle3.putSerializable("parentExtBean", this.parentExtBean);
        cloudAssetRecordFragment3.setArguments(bundle3);
        arrayList3.add(cloudAssetRecordFragment3);
        ArrayList<CloudAssetRecordFragment> arrayList4 = this.fragments;
        CloudAssetRecordFragment cloudAssetRecordFragment4 = new CloudAssetRecordFragment();
        Bundle bundle4 = new Bundle();
        bundle4.putInt("_type", 4);
        bundle4.putSerializable("parentExtBean", this.parentExtBean);
        cloudAssetRecordFragment4.setArguments(bundle4);
        arrayList4.add(cloudAssetRecordFragment4);
        List<? extends TagData> list = this.tabs;
        ArrayList arrayList5 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList5.add(((TagData) it2.next()).getTitle());
        }
        ViewPager viewPager = getMDatabind().f42569e;
        viewPager.setAdapter(new e0(getSupportFragmentManager(), this.fragments, arrayList5));
        viewPager.setOffscreenPageLimit(4);
        getMDatabind().f42567c.setViewPager(getMDatabind().f42569e);
        getMDatabind().f42569e.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.join.kotlin.ui.hmcloud.activity.CloudAssetRecordActivity.initView.7
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int state) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int position) {
                CloudAssetRecordActivity.this.getFragments().get(position).onPageSelected(position);
            }
        });
        getMDatabind().f42569e.setCurrentItem(intExtra);
        getMDatabind().f42569e.setOffscreenPageLimit(4);
        this.fragments.get(intExtra).onPageSelected(intExtra);
    }

    public final void setFragments(@NotNull ArrayList<CloudAssetRecordFragment> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.fragments = arrayList;
    }

    public final void setParentExtBean(@Nullable ExtBean extBean) {
        this.parentExtBean = extBean;
    }

    public final void setTabs(@NotNull List<? extends TagData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.tabs = list;
    }
}
