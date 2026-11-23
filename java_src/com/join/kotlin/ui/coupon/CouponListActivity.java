package com.join.kotlin.ui.coupon;

import android.os.Bundle;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.join.android.app.common.utils.m;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.d0;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.dto.BTGameCouponBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0014J\u000e\u0010$\u001a\u00020!2\u0006\u0010%\u001a\u00020&J\u0010\u0010'\u001a\u00020!2\u0006\u0010(\u001a\u00020\u0014H\u0016J\b\u0010)\u001a\u00020!H\u0016J\u0010\u0010*\u001a\u00020!2\u0006\u0010(\u001a\u00020\u0014H\u0016J\b\u0010+\u001a\u00020!H\u0016J\b\u0010,\u001a\u00020!H\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R*\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0013j\b\u0012\u0004\u0012\u00020\u0014`\u0015X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006-"}, d2 = {"Lcom/join/kotlin/ui/coupon/CouponListActivity;", "Lcom/BaseAppCompatActivity;", "Lcom/join/kotlin/ui/coupon/ClickProxy;", "Lcom/join/kotlin/domain/common/LoadBindClickProxy;", "<init>", "()V", "couponViewModle", "Lcom/join/kotlin/ui/coupon/CouponViewModle;", "getCouponViewModle", "()Lcom/join/kotlin/ui/coupon/CouponViewModle;", "setCouponViewModle", "(Lcom/join/kotlin/ui/coupon/CouponViewModle;)V", "viewdataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityCouponlistActivityBinding;", "getViewdataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ActivityCouponlistActivityBinding;", "setViewdataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/ActivityCouponlistActivityBinding;)V", "datas", "Ljava/util/ArrayList;", "Lcom/join/mgps/dto/BTGameCouponBean;", "Lkotlin/collections/ArrayList;", "getDatas", "()Ljava/util/ArrayList;", "setDatas", "(Ljava/util/ArrayList;)V", "gameId", "", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "loadData", "page", "", "onClickGet", "data", "onClickBack", "onClickMore", "onClickReload", "onClickSetNetWork", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCouponListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CouponListActivity.kt\ncom/join/kotlin/ui/coupon/CouponListActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n774#2:139\n865#2,2:140\n1869#2,2:142\n*S KotlinDebug\n*F\n+ 1 CouponListActivity.kt\ncom/join/kotlin/ui/coupon/CouponListActivity\n*L\n56#1:139\n56#1:140,2\n56#1:142,2\n*E\n"})
public final class CouponListActivity extends BaseAppCompatActivity implements ClickProxy, LoadBindClickProxy {
    public CouponViewModle couponViewModle;
    public ArrayList<BTGameCouponBean> datas;

    @NotNull
    private String gameId = "";
    public d0 viewdataBinding;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$0(CouponListActivity couponListActivity, ArrayList arrayList) {
        RecyclerView.Adapter adapter = couponListActivity.getViewdataBinding().f37177c.getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$3(CouponListActivity couponListActivity, ResponseModel responseModel) {
        if (responseModel != null && responseModel.getCode() == 200) {
            Object data = responseModel.getData();
            Intrinsics.checkNotNull(data, "null cannot be cast to non-null type com.join.kotlin.ui.coupon.CouponRequest");
            CouponRequest couponRequest = (CouponRequest) data;
            ArrayList<BTGameCouponBean> datas = couponListActivity.getDatas();
            ArrayList arrayList = new ArrayList();
            for (Object obj : datas) {
                if (Intrinsics.areEqual(((BTGameCouponBean) obj).getCoupon_id(), couponRequest.couponId)) {
                    arrayList.add(obj);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((BTGameCouponBean) it2.next()).setReceivable(false);
            }
            RecyclerView.Adapter adapter = couponListActivity.getViewdataBinding().f37177c.getAdapter();
            if (adapter != null) {
                adapter.notifyDataSetChanged();
            }
        } else {
            a3.b(couponListActivity).d(responseModel != null ? responseModel.getMessage() : null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$4(CouponListActivity couponListActivity, ResponseModel responseModel) {
        if (responseModel != null && responseModel.getCode() == 200) {
            ArrayList<BTGameCouponBean> value = couponListActivity.getCouponViewModle().getDatas().getValue();
            if (value != null) {
                value.addAll(((CouponListMainData) responseModel.getData()).getGame_coupon_for_bt_game());
            }
            RecyclerView.Adapter adapter = couponListActivity.getViewdataBinding().f37177c.getAdapter();
            if (adapter != null) {
                adapter.notifyDataSetChanged();
            }
        } else {
            a3.b(couponListActivity).d(responseModel != null ? responseModel.getMessage() : null);
        }
        couponListActivity.getCouponViewModle().updateShowLoadUI(false);
        return Unit.INSTANCE;
    }

    @NotNull
    public final CouponViewModle getCouponViewModle() {
        CouponViewModle couponViewModle = this.couponViewModle;
        if (couponViewModle != null) {
            return couponViewModle;
        }
        Intrinsics.throwUninitializedPropertyAccessException("couponViewModle");
        return null;
    }

    @NotNull
    public final ArrayList<BTGameCouponBean> getDatas() {
        ArrayList<BTGameCouponBean> arrayList = this.datas;
        if (arrayList != null) {
            return arrayList;
        }
        Intrinsics.throwUninitializedPropertyAccessException("datas");
        return null;
    }

    @NotNull
    public final String getGameId() {
        return this.gameId;
    }

    @NotNull
    public final d0 getViewdataBinding() {
        d0 d0Var = this.viewdataBinding;
        if (d0Var != null) {
            return d0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewdataBinding");
        return null;
    }

    public final void loadData(int page) {
        if (page == 1) {
            getCouponViewModle().getLoadDataBinding().setValue(new LoadBindindData(2));
        }
        RequestModel<CouponRequest> requestModel = new RequestModel<>();
        requestModel.setDefault(this);
        CouponRequest couponRequest = new CouponRequest();
        couponRequest.gameId = getIntent().getStringExtra("gameId");
        couponRequest.uid = AccountUtil_.getInstance_(this).getUid();
        requestModel.setArgs(couponRequest);
        if (m.j(this)) {
            getCouponViewModle().getRequest().requestCouponListData(requestModel);
        } else {
            getCouponViewModle().updateShowLoadUI(false);
        }
    }

    @Override // com.join.kotlin.ui.coupon.ClickProxy
    public void onClickBack() {
        finish();
    }

    @Override // com.join.kotlin.ui.coupon.ClickProxy
    public void onClickGet(@NotNull BTGameCouponBean data) {
        Intrinsics.checkNotNullParameter(data, "data");
        new com.join.mgps.dialog.b(this, R.style.MyDialog).e(8).k("提示").g("请激活游戏，在游戏内领取").j("知道了").i(new com.join.mgps.dialog.b.c() { // from class: com.join.kotlin.ui.coupon.CouponListActivity.onClickGet.1
            @Override // com.join.mgps.dialog.b.c
            public void ClickCancleButn(com.join.mgps.dialog.b bVar) {
            }

            @Override // com.join.mgps.dialog.b.c
            public void ClickOKButn(com.join.mgps.dialog.b bVar) {
                if (bVar != null) {
                    bVar.dismiss();
                }
            }
        }).show();
    }

    @Override // com.join.kotlin.ui.coupon.ClickProxy
    public void onClickMore(@NotNull BTGameCouponBean data) {
        Intrinsics.checkNotNullParameter(data, "data");
        data.setShowDetial(!data.isShowDetial());
        RecyclerView.Adapter adapter = getViewdataBinding().f37177c.getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickReload() {
        loadData(1);
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickSetNetWork() {
        UtilsMy.N3(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setViewdataBinding((d0) DataBindingUtil.setContentView(this, R.layout.activity_couponlist_activity));
        setCouponViewModle((CouponViewModle) new ViewModelProvider(this, new ViewModelProvider.NewInstanceFactory()).get(CouponViewModle.class));
        getViewdataBinding().setVariable(54, getCouponViewModle());
        getViewdataBinding().setVariable(8, this);
        getViewdataBinding().setVariable(1, new CouponAdapterv2(this, this));
        d0 viewdataBinding = getViewdataBinding();
        if (viewdataBinding != null) {
            viewdataBinding.setVariable(30, this);
        }
        getViewdataBinding().setLifecycleOwner(this);
        String stringExtra = getIntent().getStringExtra("gameId");
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.gameId = stringExtra;
        getCouponViewModle().getDatas().observe(this, new CouponListActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.coupon.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CouponListActivity.onCreate$lambda$0(this.f49066b, (ArrayList) obj);
            }
        }));
        setDatas(new ArrayList<>());
        getCouponViewModle().getDatas().setValue(getDatas());
        getCouponViewModle().getRequest().getResultData().observe(this, new CouponListActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.coupon.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CouponListActivity.onCreate$lambda$3(this.f49067b, (ResponseModel) obj);
            }
        }));
        getCouponViewModle().getRequest().getResultCouponListData().observe(this, new CouponListActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.coupon.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CouponListActivity.onCreate$lambda$4(this.f49068b, (ResponseModel) obj);
            }
        }));
        loadData(1);
    }

    public final void setCouponViewModle(@NotNull CouponViewModle couponViewModle) {
        Intrinsics.checkNotNullParameter(couponViewModle, "<set-?>");
        this.couponViewModle = couponViewModle;
    }

    public final void setDatas(@NotNull ArrayList<BTGameCouponBean> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.datas = arrayList;
    }

    public final void setGameId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.gameId = str;
    }

    public final void setViewdataBinding(@NotNull d0 d0Var) {
        Intrinsics.checkNotNullParameter(d0Var, "<set-?>");
        this.viewdataBinding = d0Var;
    }
}
