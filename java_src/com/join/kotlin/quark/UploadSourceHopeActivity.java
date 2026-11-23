package com.join.kotlin.quark;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.k5;
import com.join.kotlin.base.activity.BaseVmDbDialogActivity;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.quark.adapter.SourceHopeTagAdapter;
import com.join.kotlin.quark.model.bean.SourceTabItemBean;
import com.join.kotlin.quark.model.bean.SourceTabListBean;
import com.join.kotlin.quark.proxy.UploadSourceHopeClickProxy;
import com.join.kotlin.quark.viewmodel.UploadSourceHopeViewModel;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.papa91.arc.ext.ToastManager;
import com.psk.kotlin.util.GridSpacingItemDecoration;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0011H\u0014J\b\u0010\u0015\u001a\u00020\u0011H\u0016J\b\u0010\u0016\u001a\u00020\u0011H\u0016J\b\u0010\u0017\u001a\u00020\u0011H\u0016R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/join/kotlin/quark/UploadSourceHopeActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;", "Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityUploadSourceHopeBinding;", "Lcom/join/kotlin/quark/proxy/UploadSourceHopeClickProxy;", "<init>", "()V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "tagAdapter", "Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;", "getTagAdapter", "()Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;", "tagAdapter$delegate", "Lkotlin/Lazy;", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "createObserver", "onBackClick", "onUploadSourceClick", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUploadSourceHopeActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UploadSourceHopeActivity.kt\ncom/join/kotlin/quark/UploadSourceHopeActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CommonExt.kt\ncom/join/kotlin/base/utils/CommonExtKt\n*L\n1#1,150:1\n1878#2,3:151\n1878#2,3:156\n29#3,2:154\n32#3,3:159\n*S KotlinDebug\n*F\n+ 1 UploadSourceHopeActivity.kt\ncom/join/kotlin/quark/UploadSourceHopeActivity\n*L\n67#1:151,3\n99#1:156,3\n97#1:154,2\n97#1:159,3\n*E\n"})
public final class UploadSourceHopeActivity extends BaseVmDbDialogActivity<UploadSourceHopeViewModel, k5> implements UploadSourceHopeClickProxy {
    private com.kingja.loadsir.core.b<Object> loadSir;

    /* JADX INFO: renamed from: tagAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy tagAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.quark.z0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UploadSourceHopeActivity.tagAdapter_delegate$lambda$0();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$16$lambda$12(final UploadSourceHopeActivity uploadSourceHopeActivity, ResultState resultState) {
        if (resultState == null) {
            com.kingja.loadsir.core.b<Object> bVar = uploadSourceHopeActivity.loadSir;
            if (bVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadSir");
                bVar = null;
            }
            CustomViewExtKt.showError$default(bVar, null, 1, null);
        } else {
            BaseViewModelExtKt.parseState$default(uploadSourceHopeActivity, resultState, new Function1() { // from class: com.join.kotlin.quark.c1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UploadSourceHopeActivity.createObserver$lambda$16$lambda$12$lambda$10(this.f48859b, (SourceTabListBean) obj);
                }
            }, new Function1() { // from class: com.join.kotlin.quark.d1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UploadSourceHopeActivity.createObserver$lambda$16$lambda$12$lambda$11(this.f48862b, (AppException) obj);
                }
            }, (Function0) null, 8, (Object) null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit createObserver$lambda$16$lambda$12$lambda$10(UploadSourceHopeActivity uploadSourceHopeActivity, SourceTabListBean sourceTabListBean) {
        ArrayList<SourceTabItemBean> tabs;
        com.kingja.loadsir.core.b<Object> bVar = uploadSourceHopeActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        bVar.h();
        if (sourceTabListBean != null && (tabs = sourceTabListBean.getTabs()) != null) {
            uploadSourceHopeActivity.getTagAdapter().submitList(tabs);
            int i10 = 0;
            for (Object obj : tabs) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                SourceTabItemBean sourceTabItemBean = (SourceTabItemBean) obj;
                if (sourceTabItemBean != null ? Intrinsics.areEqual(sourceTabItemBean.getActive(), Boolean.TRUE) : false) {
                    ((UploadSourceHopeViewModel) uploadSourceHopeActivity.getMViewModel()).setSelectTag(sourceTabItemBean);
                }
                i10 = i11;
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$16$lambda$12$lambda$11(UploadSourceHopeActivity uploadSourceHopeActivity, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        ToastManager.show(it2.getErrorMsg());
        com.kingja.loadsir.core.b<Object> bVar = uploadSourceHopeActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showError$default(bVar, null, 1, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$16$lambda$15(final UploadSourceHopeActivity uploadSourceHopeActivity, ResultState resultState) {
        uploadSourceHopeActivity.dismissLoading();
        if (resultState == null) {
            ToastManager.show("上传失败");
        } else {
            BaseViewModelExtKt.parseState$default(uploadSourceHopeActivity, resultState, new Function1() { // from class: com.join.kotlin.quark.x0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UploadSourceHopeActivity.createObserver$lambda$16$lambda$15$lambda$13(this.f48912b, (Boolean) obj);
                }
            }, new Function1() { // from class: com.join.kotlin.quark.y0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UploadSourceHopeActivity.createObserver$lambda$16$lambda$15$lambda$14((AppException) obj);
                }
            }, (Function0) null, 8, (Object) null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$16$lambda$15$lambda$13(UploadSourceHopeActivity uploadSourceHopeActivity, Boolean bool) {
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            ToastManager.show("上传成功");
            uploadSourceHopeActivity.finish();
        } else {
            ToastManager.show("上传失败");
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$16$lambda$15$lambda$14(AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        ToastManager.show(it2.getErrorMsg());
        return Unit.INSTANCE;
    }

    private final SourceHopeTagAdapter getTagAdapter() {
        return (SourceHopeTagAdapter) this.tagAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initView$lambda$1(UploadSourceHopeActivity uploadSourceHopeActivity) {
        UploadSourceHopeViewModel uploadSourceHopeViewModel = (UploadSourceHopeViewModel) uploadSourceHopeActivity.getMViewModel();
        String uid = AccountUtil_.getInstance_(uploadSourceHopeActivity).getUid();
        Intrinsics.checkNotNullExpressionValue(uid, "getUid(...)");
        uploadSourceHopeViewModel.getWebDiskHome(uid);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void initView$lambda$5$lambda$4(UploadSourceHopeActivity uploadSourceHopeActivity, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        int i11 = 0;
        for (Object obj : uploadSourceHopeActivity.getTagAdapter().getItems()) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            SourceTabItemBean sourceTabItemBean = (SourceTabItemBean) obj;
            if (sourceTabItemBean != null) {
                sourceTabItemBean.setActive(Boolean.valueOf(i10 == i11));
            }
            if (sourceTabItemBean != null ? Intrinsics.areEqual(sourceTabItemBean.getActive(), Boolean.TRUE) : false) {
                ((UploadSourceHopeViewModel) uploadSourceHopeActivity.getMViewModel()).setSelectTag(sourceTabItemBean);
            }
            i11 = i12;
        }
        uploadSourceHopeActivity.getTagAdapter().notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SourceHopeTagAdapter tagAdapter_delegate$lambda$0() {
        return new SourceHopeTagAdapter();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    public void createObserver() {
        UploadSourceHopeViewModel uploadSourceHopeViewModel = (UploadSourceHopeViewModel) getMViewModel();
        uploadSourceHopeViewModel.getHomeData().observe(this, new UploadSourceHopeActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.quark.v0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UploadSourceHopeActivity.createObserver$lambda$16$lambda$12(this.f48892b, (ResultState) obj);
            }
        }));
        uploadSourceHopeViewModel.getUploadData().observe(this, new UploadSourceHopeActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.quark.w0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UploadSourceHopeActivity.createObserver$lambda$16$lambda$15(this.f48910b, (ResultState) obj);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        getMDatabind().u((UploadSourceHopeViewModel) getMViewModel());
        getMDatabind().t(this);
        NestedScrollView mainContent = getMDatabind().f40600f;
        Intrinsics.checkNotNullExpressionValue(mainContent, "mainContent");
        this.loadSir = CustomViewExtKt.loadServiceInit(mainContent, new Function0() { // from class: com.join.kotlin.quark.a1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UploadSourceHopeActivity.initView$lambda$1(this.f48853b);
            }
        });
        getMDatabind().f40601g.setAdapter(getTagAdapter());
        RecyclerView recyclerView = getMDatabind().f40601g;
        recyclerView.setLayoutManager(new GridLayoutManager(this) { // from class: com.join.kotlin.quark.UploadSourceHopeActivity$initView$2$1
            {
                super((Context) this, 4, 1, false);
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean canScrollVertically() {
                return false;
            }
        });
        recyclerView.addItemDecoration(new GridSpacingItemDecoration(4, (int) recyclerView.getResources().getDimension(R.dimen.wdp32), false));
        getTagAdapter().setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.kotlin.quark.b1
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                UploadSourceHopeActivity.initView$lambda$5$lambda$4(this.f48856a, baseQuickAdapter, view, i10);
            }
        });
        UploadSourceHopeViewModel uploadSourceHopeViewModel = (UploadSourceHopeViewModel) getMViewModel();
        String uid = AccountUtil_.getInstance_(this).getUid();
        Intrinsics.checkNotNullExpressionValue(uid, "getUid(...)");
        uploadSourceHopeViewModel.getWebDiskHome(uid);
    }

    @Override // com.join.kotlin.quark.proxy.UploadSourceHopeClickProxy
    public void onBackClick() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        UtilsMy.N4(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.quark.proxy.UploadSourceHopeClickProxy
    public void onUploadSourceClick() {
        showLoading();
        SourceTabItemBean selectTag = ((UploadSourceHopeViewModel) getMViewModel()).getSelectTag();
        if (selectTag != null) {
            UploadSourceHopeViewModel uploadSourceHopeViewModel = (UploadSourceHopeViewModel) getMViewModel();
            Integer tab_id = selectTag.getTab_id();
            Intrinsics.checkNotNull(tab_id);
            int iIntValue = tab_id.intValue();
            String uid = AccountUtil_.getInstance_(this).getUid();
            Intrinsics.checkNotNullExpressionValue(uid, "getUid(...)");
            uploadSourceHopeViewModel.sourceShareCreate(iIntValue, uid);
        }
    }
}
