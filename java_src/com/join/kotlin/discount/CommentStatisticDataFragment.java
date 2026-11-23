package com.join.kotlin.discount;

import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.databinding.gl;
import com.join.kotlin.base.fragment.BaseVmDbFragment;
import com.join.kotlin.discount.adapter.CommentStatisticDataAdapter;
import com.join.kotlin.discount.model.bean.CommentDataProgressBean;
import com.join.kotlin.discount.model.bean.CommentStatisticDataBean;
import com.join.kotlin.discount.viewmodel.CommentStatisticDataViewModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0010\u001a\u00020\rH\u0016J\b\u0010\u0011\u001a\u00020\rH\u0016J\u000e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\u0015"}, d2 = {"Lcom/join/kotlin/discount/CommentStatisticDataFragment;", "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;", "Lcom/join/kotlin/discount/viewmodel/CommentStatisticDataViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/FragmentCommentStatisticDataBinding;", "<init>", "()V", "mAdapter", "Lcom/join/kotlin/discount/adapter/CommentStatisticDataAdapter;", "getMAdapter", "()Lcom/join/kotlin/discount/adapter/CommentStatisticDataAdapter;", "mAdapter$delegate", "Lkotlin/Lazy;", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "createObserver", "lazyLoadData", "loadData", "refresh", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCommentStatisticDataFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommentStatisticDataFragment.kt\ncom/join/kotlin/discount/CommentStatisticDataFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n1878#2,2:92\n1880#2:95\n1878#2,3:96\n1#3:94\n*S KotlinDebug\n*F\n+ 1 CommentStatisticDataFragment.kt\ncom/join/kotlin/discount/CommentStatisticDataFragment\n*L\n38#1:92,2\n38#1:95\n59#1:96,3\n*E\n"})
public final class CommentStatisticDataFragment extends BaseVmDbFragment<CommentStatisticDataViewModel, gl> {

    /* JADX INFO: renamed from: mAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.discount.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CommentStatisticDataFragment.mAdapter_delegate$lambda$0();
        }
    });

    private final CommentStatisticDataAdapter getMAdapter() {
        return (CommentStatisticDataAdapter) this.mAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CommentStatisticDataAdapter mAdapter_delegate$lambda$0() {
        return new CommentStatisticDataAdapter();
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void createObserver() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void initView(@Nullable Bundle savedInstanceState) {
        int iIntValue;
        List listFilterNotNull;
        List listFilterNotNull2;
        String str;
        int iIntValue2;
        List listFilterNotNull3;
        List listFilterNotNull4;
        try {
            Bundle arguments = getArguments();
            String string = arguments != null ? arguments.getString("type") : null;
            Bundle arguments2 = getArguments();
            String string2 = arguments2 != null ? arguments2.getString("data") : null;
            getMDatabind().n((CommentStatisticDataViewModel) getMViewModel());
            getMDatabind().f38885b.setLayoutManager(new LinearLayoutManager(requireContext()) { // from class: com.join.kotlin.discount.CommentStatisticDataFragment.initView.1
                @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public boolean canScrollVertically() {
                    return false;
                }
            });
            getMDatabind().f38885b.setAdapter(getMAdapter());
            CommentStatisticDataBean commentStatisticDataBean = (CommentStatisticDataBean) JsonMapper.getInstance().fromJson(string2, CommentStatisticDataBean.class);
            if (commentStatisticDataBean != null) {
                ArrayList arrayList = new ArrayList();
                int i10 = 0;
                if (Intrinsics.areEqual(string, "时长数据")) {
                    List<Double> duration = commentStatisticDataBean.getDuration();
                    Number numberValueOf = (duration == null || (listFilterNotNull4 = CollectionsKt___CollectionsKt.filterNotNull(duration)) == null) ? 100 : Double.valueOf(CollectionsKt___CollectionsKt.maxOrThrow((Iterable<Double>) listFilterNotNull4));
                    List<Double> duration2 = commentStatisticDataBean.getDuration();
                    if (Intrinsics.areEqual(numberValueOf, (duration2 == null || (listFilterNotNull3 = CollectionsKt___CollectionsKt.filterNotNull(duration2)) == null) ? 0 : Double.valueOf(CollectionsKt___CollectionsKt.minOrThrow((Iterable<Double>) listFilterNotNull3)))) {
                        numberValueOf = 50;
                    }
                    List<Double> duration3 = commentStatisticDataBean.getDuration();
                    if (duration3 != null) {
                        for (Object obj : duration3) {
                            int i11 = i10 + 1;
                            if (i10 < 0) {
                                CollectionsKt__CollectionsKt.throwIndexOverflow();
                            }
                            Double d10 = (Double) obj;
                            int iIntValue3 = numberValueOf.intValue();
                            if (i10 == 0) {
                                str = "0~5min";
                            } else if (i10 != 1) {
                                str = i10 != 2 ? "超过20min" : "10~20min";
                            } else {
                                str = "5~10min";
                            }
                            String str2 = str;
                            String str3 = d10 + "%用户";
                            if (d10 != null) {
                                d10.doubleValue();
                                iIntValue2 = Integer.valueOf(numberValueOf.intValue() - ((int) d10.doubleValue())).intValue();
                            } else {
                                iIntValue2 = numberValueOf.intValue();
                            }
                            arrayList.add(new CommentDataProgressBean(iIntValue2, iIntValue3, i11, str2, 1, str3));
                            i10 = i11;
                        }
                    }
                } else if (Intrinsics.areEqual(string, "评分数据")) {
                    List<Double> score = commentStatisticDataBean.getScore();
                    Number numberValueOf2 = (score == null || (listFilterNotNull2 = CollectionsKt___CollectionsKt.filterNotNull(score)) == null) ? 100 : Double.valueOf(CollectionsKt___CollectionsKt.maxOrThrow((Iterable<Double>) listFilterNotNull2));
                    List<Double> score2 = commentStatisticDataBean.getScore();
                    if (Intrinsics.areEqual(numberValueOf2, (score2 == null || (listFilterNotNull = CollectionsKt___CollectionsKt.filterNotNull(score2)) == null) ? 0 : Double.valueOf(CollectionsKt___CollectionsKt.minOrThrow((Iterable<Double>) listFilterNotNull)))) {
                        numberValueOf2 = 50;
                    }
                    List<Double> score3 = commentStatisticDataBean.getScore();
                    if (score3 != null) {
                        for (Object obj2 : score3) {
                            int i12 = i10 + 1;
                            if (i10 < 0) {
                                CollectionsKt__CollectionsKt.throwIndexOverflow();
                            }
                            Double d11 = (Double) obj2;
                            int iIntValue4 = numberValueOf2.intValue();
                            String str4 = d11 + "%用户";
                            if (d11 != null) {
                                d11.doubleValue();
                                iIntValue = Integer.valueOf(numberValueOf2.intValue() - ((int) d11.doubleValue())).intValue();
                            } else {
                                iIntValue = numberValueOf2.intValue();
                            }
                            arrayList.add(new CommentDataProgressBean(iIntValue, iIntValue4, i12, null, 2, str4, 8, null));
                            i10 = i12;
                        }
                    }
                }
                getMAdapter().submitList(arrayList);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void lazyLoadData() {
        loadData(true);
    }

    public final void loadData(boolean refresh) {
    }
}
