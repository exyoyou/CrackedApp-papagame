package com.join.kotlin;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.l;
import com.join.android.app.common.utils.m;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.fj;
import com.join.android.app.mgsim.wufun.databinding.hj;
import com.join.kotlin.base.fragment.BaseVmDbFragment;
import com.join.kotlin.base.impl.Downloadable;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.ui.findgame.data.EverdayNewListItem;
import com.join.kotlin.ui.findgame.data.EverdayNewResultData;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.e0;
import com.join.mgps.Util.j0;
import com.join.mgps.activity.LocalGameActivity;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.event.r;
import com.join.mgps.rpc.impl.i;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.psk.kotlin.ext.CommonExtKt;
import com.psk.kotlin.util.CommonListMainData;
import com.sigmob.sdk.base.n;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002efB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010-H\u0016J\b\u0010.\u001a\u00020+H\u0016J\b\u0010/\u001a\u00020+H\u0016J\u0012\u00100\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010-H\u0016J\b\u00101\u001a\u00020+H\u0016J\b\u00102\u001a\u00020+H\u0016J\u000e\u0010<\u001a\u00020+2\u0006\u0010=\u001a\u000204J\u001c\u0010M\u001a\u00020+2\u0006\u0010=\u001a\u0002042\f\u0010N\u001a\b\u0012\u0004\u0012\u00020P0OJ\b\u0010R\u001a\u00020+H\u0002J\b\u0010Y\u001a\u00020+H\u0016J\u0010\u0010Z\u001a\u00020+2\u0006\u0010[\u001a\u00020\\H\u0007J\u0006\u0010]\u001a\u00020+J\u0012\u0010^\u001a\u00020+2\b\u0010_\u001a\u0004\u0018\u00010`H\u0002J\u0006\u0010a\u001a\u00020+J\u0006\u0010b\u001a\u00020+J\u000e\u0010c\u001a\u00020+2\u0006\u0010d\u001a\u00020?R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR*\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\b\u0012\u0004\u0012\u00020\u000e`\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001b\u0010&\u001a\n '*\u0004\u0018\u00010!0!¢\u0006\n\n\u0002\u0010)\u001a\u0004\b(\u0010#R\u001a\u00103\u001a\u000204X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001a\u00109\u001a\u000204X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u00106\"\u0004\b;\u00108R\u001a\u0010>\u001a\u00020?X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u001a\u0010D\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010\u001d\"\u0004\bF\u0010\u001fR\u001a\u0010G\u001a\u000204X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u00106\"\u0004\bI\u00108R\u001a\u0010J\u001a\u000204X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u00106\"\u0004\bL\u00108R\u000e\u0010Q\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010S\u001a\u000204X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bT\u00106\"\u0004\bU\u00108R\u001a\u0010V\u001a\u000204X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u00106\"\u0004\bX\u00108¨\u0006g"}, d2 = {"Lcom/join/kotlin/EverdayNewFragment;", "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/EverdayNewFragmentBinding;", "<init>", "()V", "adapter", "Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;", "getAdapter", "()Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;", "setAdapter", "(Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;)V", "showDataList", "Ljava/util/ArrayList;", "Lcom/psk/kotlin/util/CommonListMainData;", "Lkotlin/collections/ArrayList;", "getShowDataList", "()Ljava/util/ArrayList;", "setShowDataList", "(Ljava/util/ArrayList;)V", "manager", "Landroidx/recyclerview/widget/LinearLayoutManager;", "getManager", "()Landroidx/recyclerview/widget/LinearLayoutManager;", "setManager", "(Landroidx/recyclerview/widget/LinearLayoutManager;)V", "fromHome", "", "getFromHome", "()Z", "setFromHome", "(Z)V", "extBean", "Lcom/join/mgps/dto/ExtBean;", "getExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "pageBean", "kotlin.jvm.PlatformType", "getPageBean", "Lcom/join/mgps/dto/ExtBean;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "onExploreItem", "initView", "lazyLoadData", "createObserver", "pageCount", "", "getPageCount", "()I", "setPageCount", "(I)V", "type", "getType", "setType", "loadData", "page", "lastTimeDay", "", "getLastTimeDay", "()Ljava/lang/String;", "setLastTimeDay", "(Ljava/lang/String;)V", "refesh", "getRefesh", "setRefesh", "rowIndex", "getRowIndex", "setRowIndex", "colIndex", "getColIndex", "setColIndex", "loadFinish", "datas", "", "Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;", "isExposuring", "expDiscountGame", "lastVisibleIndex", "getLastVisibleIndex", "setLastVisibleIndex", "firstVisiblePosition", "getFirstVisiblePosition", "setFirstVisiblePosition", "onDestroyView", "onEventMainThread", "downloadTaskEvent", "Lcom/join/mgps/event/DownloadTaskEvent;", "updateDownStateList", "updateProgressPartly", "changedTask", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "showLoding", "hidLoading", "onError", "message", "ViewHolderTitle", "EverydayNewAdapter", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEverdayNewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EverdayNewFragment.kt\ncom/join/kotlin/EverdayNewFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n1#1,560:1\n1878#2,3:561\n1869#2,2:570\n167#3,2:564\n182#3,4:566\n*S KotlinDebug\n*F\n+ 1 EverdayNewFragment.kt\ncom/join/kotlin/EverdayNewFragment\n*L\n290#1:561,3\n344#1:570,2\n333#1:564,2\n333#1:566,4\n*E\n"})
public final class EverdayNewFragment extends BaseVmDbFragment<BaseViewModel, fj> {
    public EverydayNewAdapter adapter;
    private int colIndex;

    @Nullable
    private ExtBean extBean;
    private int firstVisiblePosition;
    private boolean fromHome;
    private boolean isExposuring;
    private int lastVisibleIndex;
    public LinearLayoutManager manager;
    private int rowIndex;

    @NotNull
    private ArrayList<CommonListMainData> showDataList = new ArrayList<>();
    private final ExtBean pageBean = new ExtBean().setTypeCode("page");
    private int pageCount = 1;
    private int type = 1;

    @NotNull
    private String lastTimeDay = "0";
    private boolean refesh = true;

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0014J\u001e\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u0010H\u0014J\"\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u0014J\u001a\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002J\u0018\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00032\b\u0010\u0014\u001a\u0004\u0018\u00010\u0017¨\u0006\u001a"}, d2 = {"Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/psk/kotlin/util/CommonListMainData;", "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;", "<init>", "()V", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "getItemViewType", "position", "list", "", "onBindViewHolder", "", "holder", "item", "bindGameUI", "itemData", "Lcom/join/mgps/dto/CollectionBeanSub;", "updateGameUI", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class EverydayNewAdapter extends BaseQuickAdapter<CommonListMainData, v2.c> {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = new Companion(null);

        @NotNull
        private static final SimpleDateFormat engWeekFormat = new SimpleDateFormat("EEE", Locale.US);

        @NotNull
        private static final String[] weekCn = {"", "周日", "周一", "周二", "周三", "周四", "周五", "周六"};

        @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0018\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000fH\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000fH\u0002J\u0010\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00150\u0018X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter$Companion;", "", "<init>", "()V", "engWeekFormat", "Ljava/text/SimpleDateFormat;", "countTitlesBefore", "", "list", "", "Lcom/psk/kotlin/util/CommonListMainData;", "position", "isSameCalendarDay", "", "aMs", "", "bMs", "isYesterdayOf", "dayMs", "nowMs", "titleMainText", "", "timeMs", "weekCn", "", "[Ljava/lang/String;", "chineseWeekday", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        @SourceDebugExtension({"SMAP\nEverdayNewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EverdayNewFragment.kt\ncom/join/kotlin/EverdayNewFragment$EverydayNewAdapter$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,560:1\n1#2:561\n*E\n"})
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final String chineseWeekday(long timeMs) {
                Calendar calendar = Calendar.getInstance();
                calendar.setTimeInMillis(timeMs);
                return EverydayNewAdapter.weekCn[calendar.get(7)];
            }

            private final int countTitlesBefore(List<CommonListMainData> list, int position) {
                int iMin = Math.min(position, list.size());
                int i10 = 0;
                for (int i11 = 0; i11 < iMin; i11++) {
                    if (list.get(i11).getType() == 1) {
                        i10++;
                    }
                }
                return i10;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final boolean isSameCalendarDay(long aMs, long bMs) {
                Calendar calendar = Calendar.getInstance();
                calendar.setTimeInMillis(aMs);
                Calendar calendar2 = Calendar.getInstance();
                calendar2.setTimeInMillis(bMs);
                return calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final boolean isYesterdayOf(long dayMs, long nowMs) {
                Calendar calendar = Calendar.getInstance();
                calendar.setTimeInMillis(nowMs);
                calendar.add(6, -1);
                Calendar calendar2 = Calendar.getInstance();
                calendar2.setTimeInMillis(dayMs);
                return calendar2.get(1) == calendar.get(1) && calendar2.get(6) == calendar.get(6);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final String titleMainText(long timeMs) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (isSameCalendarDay(timeMs, jCurrentTimeMillis)) {
                    return "今天";
                }
                if (isYesterdayOf(timeMs, jCurrentTimeMillis)) {
                    return "昨天";
                }
                String strD = e0.D(timeMs, "MM.dd");
                Intrinsics.checkNotNullExpressionValue(strD, "longToStrTimeByFormat(...)");
                return strD;
            }

            private Companion() {
            }
        }

        public EverydayNewAdapter() {
            super(null, 1, null);
        }

        private final void bindGameUI(v2.c cVar, final CollectionBeanSub collectionBeanSub) {
            cVar.n(R.id.tv_text_1, collectionBeanSub != null ? collectionBeanSub.getGame_name() : null);
            cVar.n(R.id.tv_text_5, collectionBeanSub != null ? collectionBeanSub.getInfo() : null);
            cVar.n(R.id.tv_text_3, UtilsMy.R1(collectionBeanSub != null ? collectionBeanSub.getSp_tag_info() : null, collectionBeanSub != null ? collectionBeanSub.getTag_info() : null, " | "));
            cVar.n(R.id.tv_text_2, collectionBeanSub != null ? collectionBeanSub.getScore() : null);
            if (collectionBeanSub != null && collectionBeanSub.getGift_package_switch() == 1) {
                cVar.h(R.id.iv_1, false);
            } else {
                cVar.h(R.id.iv_1, true);
            }
            l.o((SimpleDraweeView) cVar.getView(R.id.sdv_image), collectionBeanSub != null ? collectionBeanSub.getIco_remote() : null);
            Intrinsics.checkNotNull(collectionBeanSub);
            if (!TextUtils.isEmpty(collectionBeanSub.getSize())) {
                String size = collectionBeanSub.getSize();
                Intrinsics.checkNotNullExpressionValue(size, "getSize(...)");
                double d10 = 1024;
                cVar.n(R.id.tv_text_4, UtilsMy.c((long) (Double.parseDouble(size) * d10 * d10)));
            }
            cVar.h(R.id.g_1, collectionBeanSub.isH5Game());
            cVar.h(R.id.tv_text_3, collectionBeanSub.isH5Game());
            cVar.h(R.id.tv_text_4, collectionBeanSub.isH5Game());
            cVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EverdayNewFragment.EverydayNewAdapter.bindGameUI$lambda$0(collectionBeanSub, this, view);
                }
            });
            updateGameUI(cVar, collectionBeanSub);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bindGameUI$lambda$0(CollectionBeanSub collectionBeanSub, EverydayNewAdapter everydayNewAdapter, View view) {
            if (collectionBeanSub.getCrc_sign_id() != null) {
                IntentUtil.getInstance().intentActivity(everydayNewAdapter.getContext(), collectionBeanSub.getIntentDataBean());
            }
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        protected int getItemViewType(int position, @NotNull List<? extends CommonListMainData> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            if (position < 0 || position >= list.size()) {
                return -1;
            }
            return list.get(position).getType();
        }

        public final void updateGameUI(@NotNull v2.c holder, @Nullable CollectionBeanSub collectionBeanSub) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            ((DownloadNormalView) holder.getView(R.id.dv_view)).f(new m6.c(getContext(), collectionBeanSub));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void onBindViewHolder(@NotNull v2.c holder, int i10, @Nullable CommonListMainData commonListMainData) {
            Object any;
            String upperCase;
            Intrinsics.checkNotNullParameter(holder, "holder");
            int itemViewType = getItemViewType(i10);
            if (itemViewType != 1) {
                if (itemViewType != 2) {
                    return;
                }
                any = commonListMainData != null ? commonListMainData.getAny() : null;
                Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub");
                bindGameUI(holder, (CollectionBeanSub) any);
                return;
            }
            any = commonListMainData != null ? commonListMainData.getAny() : null;
            Intrinsics.checkNotNull(any, "null cannot be cast to non-null type kotlin.Long");
            long jLongValue = ((Long) any).longValue();
            Companion companion = INSTANCE;
            holder.n(R.id.title, companion.titleMainText(jLongValue));
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (companion.isSameCalendarDay(jLongValue, jCurrentTimeMillis) || companion.isYesterdayOf(jLongValue, jCurrentTimeMillis)) {
                upperCase = e0.D(jLongValue, "MM.dd");
            } else {
                String str = engWeekFormat.format(new Date(jLongValue));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                upperCase = str.toUpperCase(US);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            }
            holder.n(R.id.tv_text_1, upperCase);
            holder.n(R.id.tv_text_2, companion.chineseWeekday(jLongValue));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        @NotNull
        public v2.c onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i10 != 1) {
                return i10 != 2 ? new v2.c(new View(context)) : new v2.c(R.layout.item_simulator_download_view_v1, parent);
            }
            return new v2.c(R.layout.everday_title_layout, parent);
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/join/kotlin/EverdayNewFragment$ViewHolderTitle;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Lcom/join/android/app/mgsim/wufun/databinding/EverdayTitleLayoutBinding;", "<init>", "(Lcom/join/android/app/mgsim/wufun/databinding/EverdayTitleLayoutBinding;)V", "title", "Landroid/widget/TextView;", "getTitle", "()Landroid/widget/TextView;", "setTitle", "(Landroid/widget/TextView;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewHolderTitle extends RecyclerView.ViewHolder {

        @NotNull
        private TextView title;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolderTitle(@NotNull hj itemView) {
            super(itemView.getRoot());
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            TextView title = itemView.f39368c;
            Intrinsics.checkNotNullExpressionValue(title, "title");
            this.title = title;
        }

        @NotNull
        public final TextView getTitle() {
            return this.title;
        }

        public final void setTitle(@NotNull TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.title = textView;
        }
    }

    public static final /* synthetic */ fj access$getBindingOrNull(EverdayNewFragment everdayNewFragment) {
        return everdayNewFragment.getBindingOrNull();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void expDiscountGame() {
        try {
            try {
                if (isAdded() && !this.isExposuring) {
                    this.isExposuring = true;
                    int lastVisiblePosition = getMDatabind().f38400d.getLastVisiblePosition();
                    int i10 = 0;
                    for (Object obj : this.showDataList) {
                        int i11 = i10 + 1;
                        if (i10 < 0) {
                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                        }
                        CommonListMainData commonListMainData = (CommonListMainData) obj;
                        if (i10 <= lastVisiblePosition && !commonListMainData.getHasExposured()) {
                            commonListMainData.setHasExposured(true);
                            if (commonListMainData.getType() == 2) {
                                Object any = commonListMainData.getAny();
                                Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub");
                                CollectionBeanSub collectionBeanSub = (CollectionBeanSub) any;
                                if (UtilsMy.o2(collectionBeanSub)) {
                                    try {
                                        Ext ext = new Ext();
                                        ext.setResultCode("discount_game");
                                        ext.setScenesCode(EverdayNewFragment.class.getSimpleName());
                                        Data data = new Data();
                                        data.setGameId(collectionBeanSub.getGame_id());
                                        t.l(getContext()).Y(Event.expGameAdPage, ext, data);
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                    }
                                }
                                t.l(requireContext()).R1(Event.expGameAdPage, collectionBeanSub.getExtBean().buildScene().toExt());
                            }
                        }
                        i10 = i11;
                    }
                }
            } finally {
                this.isExposuring = false;
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$0(EverdayNewFragment everdayNewFragment) {
        everdayNewFragment.loadData(everdayNewFragment.pageCount);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int loadFinish$lambda$1(EverdayNewListItem everdayNewListItem, EverdayNewListItem everdayNewListItem2) {
        if (everdayNewListItem.getTime() > everdayNewListItem2.getTime()) {
            return 1;
        }
        if (everdayNewListItem.getTime() >= everdayNewListItem2.getTime()) {
            if (UtilsMy.o2(everdayNewListItem.getList())) {
                return 1;
            }
            if (!UtilsMy.o2(everdayNewListItem2.getList())) {
                return 0;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int loadFinish$lambda$2(Function2 function2, Object obj, Object obj2) {
        return ((Number) function2.invoke(obj, obj2)).intValue();
    }

    private final void updateProgressPartly(DownloadTask changedTask) {
        ArrayList<CommonListMainData> arrayList = this.showDataList;
        if ((arrayList == null || arrayList.isEmpty()) || changedTask == null) {
            return;
        }
        try {
            int iFindFirstVisibleItemPosition = getManager().findFirstVisibleItemPosition();
            int iFindLastVisibleItemPosition = getManager().findLastVisibleItemPosition();
            if (iFindFirstVisibleItemPosition <= iFindLastVisibleItemPosition) {
                while (iFindFirstVisibleItemPosition < this.showDataList.size()) {
                    if (iFindFirstVisibleItemPosition >= 0) {
                        CommonListMainData commonListMainData = this.showDataList.get(iFindFirstVisibleItemPosition);
                        Intrinsics.checkNotNullExpressionValue(commonListMainData, "get(...)");
                        CommonListMainData commonListMainData2 = commonListMainData;
                        if (commonListMainData2.getType() == 2) {
                            Object any = commonListMainData2.getAny();
                            Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub");
                            DownloadTask downloadTask = ((CollectionBeanSub) any).getDownloadTask();
                            if (downloadTask != null && Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), changedTask.getCrc_link_type_val()) && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                                RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = getMDatabind().f38400d.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition);
                                if (viewHolderFindViewHolderForAdapterPosition instanceof v2.c) {
                                    ((DownloadNormalView) ((v2.c) viewHolderFindViewHolderForAdapterPosition).getView(R.id.dv_view)).s(downloadTask.getProgress());
                                }
                            }
                        }
                    }
                    if (iFindFirstVisibleItemPosition == iFindLastVisibleItemPosition) {
                        return;
                    } else {
                        iFindFirstVisibleItemPosition++;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void createObserver() {
    }

    @NotNull
    public final EverydayNewAdapter getAdapter() {
        EverydayNewAdapter everydayNewAdapter = this.adapter;
        if (everydayNewAdapter != null) {
            return everydayNewAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        return null;
    }

    public final int getColIndex() {
        return this.colIndex;
    }

    @Nullable
    public final ExtBean getExtBean() {
        return this.extBean;
    }

    public final int getFirstVisiblePosition() {
        return this.firstVisiblePosition;
    }

    public final boolean getFromHome() {
        return this.fromHome;
    }

    @NotNull
    public final String getLastTimeDay() {
        return this.lastTimeDay;
    }

    public final int getLastVisibleIndex() {
        return this.lastVisibleIndex;
    }

    @NotNull
    public final LinearLayoutManager getManager() {
        LinearLayoutManager linearLayoutManager = this.manager;
        if (linearLayoutManager != null) {
            return linearLayoutManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("manager");
        return null;
    }

    public final ExtBean getPageBean() {
        return this.pageBean;
    }

    public final int getPageCount() {
        return this.pageCount;
    }

    public final boolean getRefesh() {
        return this.refesh;
    }

    public final int getRowIndex() {
        return this.rowIndex;
    }

    @NotNull
    public final ArrayList<CommonListMainData> getShowDataList() {
        return this.showDataList;
    }

    public final int getType() {
        return this.type;
    }

    public final void hidLoading() {
        fj bindingOrNull = getBindingOrNull();
        if (bindingOrNull == null) {
            return;
        }
        bindingOrNull.f38399c.f40741d.setVisibility(8);
        bindingOrNull.f38398b.f41919e.setVisibility(8);
        bindingOrNull.f38400d.setVisibility(0);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void initView(@Nullable Bundle savedInstanceState) {
        Bundle arguments = getArguments();
        Serializable serializable = arguments != null ? arguments.getSerializable("extBean") : null;
        ExtBean extBean = serializable instanceof ExtBean ? (ExtBean) serializable : null;
        this.extBean = extBean;
        if (extBean == null) {
            this.pageBean.setFirstModule("home").setSecondModule("newGame").setFrom("10010");
        } else {
            this.pageBean.setParent(extBean);
        }
        setManager(new LinearLayoutManager(getContext()));
        getMDatabind().f38400d.setLayoutManager(getManager());
        setAdapter(new EverydayNewAdapter());
        getMDatabind().f38400d.setAdapter(getAdapter());
        ImageView relodingimag = getMDatabind().f38398b.f41920f;
        Intrinsics.checkNotNullExpressionValue(relodingimag, "relodingimag");
        CommonExtKt.onClick(relodingimag, new Function0() { // from class: com.join.kotlin.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return EverdayNewFragment.initView$lambda$0(this.f48554b);
            }
        });
        getMDatabind().f38400d.setPullRefreshEnabled(true);
        getMDatabind().f38400d.setLoadingListener(new XRecyclerView.f() { // from class: com.join.kotlin.EverdayNewFragment.initView.2
            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onLoadMore() {
                EverdayNewFragment everdayNewFragment = EverdayNewFragment.this;
                everdayNewFragment.loadData(everdayNewFragment.getPageCount());
            }

            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onRefresh() {
            }
        });
        getMDatabind().f38400d.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.EverdayNewFragment.initView.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                if (newState == 0) {
                    EverdayNewFragment.this.expDiscountGame();
                }
            }
        });
        this.pageCount = 1;
        Bundle arguments2 = getArguments();
        String string = arguments2 != null ? arguments2.getString("title") : null;
        Bundle arguments3 = getArguments();
        this.fromHome = arguments3 != null ? arguments3.getBoolean("_from_home") : false;
        if (string != null) {
            switch (string.hashCode()) {
                case 683136:
                    if (string.equals(LocalGameActivity.ALL)) {
                        this.type = 1;
                        this.pageBean.setChatId("newGameAll");
                    }
                    break;
                case 687749:
                    if (string.equals("单机")) {
                        this.type = 3;
                        this.pageBean.setChatId("newGameSingle");
                    }
                    break;
                case 1038599:
                    if (string.equals("网游")) {
                        this.type = 2;
                        this.pageBean.setChatId("newGameOnline");
                    }
                    break;
                case 26916170:
                    if (string.equals("模拟器")) {
                        this.type = 5;
                        this.pageBean.setChatId("newGameEmu");
                    }
                    break;
            }
        }
        loadData(this.pageCount);
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void lazyLoadData() {
    }

    public final void loadData(final int page) {
        if (!m.j(getContext())) {
            String string = getString(R.string.net_connect_failed);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            onError(string);
            return;
        }
        try {
            RequestModel requestModel = new RequestModel(getContext());
            LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
            luckHistoryrequest.setPage(page);
            luckHistoryrequest.setUid(AccountUtil_.getInstance_(getContext()).getAccountData().getUid());
            luckHistoryrequest.setType(this.type);
            requestModel.setArgs(luckHistoryrequest);
            i.P0().N0().o1(requestModel.makeSign()).enqueue(new Callback<ResponseModel<EverdayNewResultData>>() { // from class: com.join.kotlin.EverdayNewFragment.loadData.1
                @Override // retrofit2.Callback
                public void onFailure(Call<ResponseModel<EverdayNewResultData>> call, Throwable t10) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t10, "t");
                    t10.printStackTrace();
                    if (EverdayNewFragment.this.isAdded()) {
                        EverdayNewFragment.this.hidLoading();
                    }
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ResponseModel<EverdayNewResultData>> call, Response<ResponseModel<EverdayNewResultData>> responsex) {
                    fj fjVarAccess$getBindingOrNull;
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(responsex, "responsex");
                    if (EverdayNewFragment.this.isAdded() && (fjVarAccess$getBindingOrNull = EverdayNewFragment.access$getBindingOrNull(EverdayNewFragment.this)) != null) {
                        if (responsex.body() != null) {
                            ResponseModel<EverdayNewResultData> responseModelBody = responsex.body();
                            Intrinsics.checkNotNull(responseModelBody);
                            ResponseModel<EverdayNewResultData> responseModel = responseModelBody;
                            if (responseModel.getCode() == 200) {
                                EverdayNewResultData data = responseModel.getData();
                                EverdayNewFragment.this.hidLoading();
                                if (data == null || data.getGame_list() == null || data.getGame_list().size() <= 0) {
                                    fjVarAccess$getBindingOrNull.f38400d.setNoMore();
                                    return;
                                }
                                EverdayNewFragment everdayNewFragment = EverdayNewFragment.this;
                                int i10 = page;
                                List<EverdayNewListItem> game_list = data.getGame_list();
                                Intrinsics.checkNotNullExpressionValue(game_list, "getGame_list(...)");
                                everdayNewFragment.loadFinish(i10, game_list);
                                fjVarAccess$getBindingOrNull.f38400d.loadMoreComplete();
                                return;
                            }
                            fjVarAccess$getBindingOrNull.f38400d.loadMoreComplete();
                        }
                        EverdayNewFragment.this.hidLoading();
                    }
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
            onError("");
        }
    }

    public final void loadFinish(int page, @NotNull List<? extends EverdayNewListItem> datas) {
        Intrinsics.checkNotNullParameter(datas, "datas");
        if (page == 1) {
            this.refesh = true;
            this.rowIndex = 0;
            this.colIndex = 0;
        }
        if (page == this.pageCount && (!datas.isEmpty())) {
            this.pageCount++;
        }
        final Function2 function2 = new Function2() { // from class: com.join.kotlin.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Integer.valueOf(EverdayNewFragment.loadFinish$lambda$1((EverdayNewListItem) obj, (EverdayNewListItem) obj2));
            }
        };
        CollectionsKt___CollectionsKt.sortedWith(datas, new Comparator() { // from class: com.join.kotlin.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return EverdayNewFragment.loadFinish$lambda$2(function2, obj, obj2);
            }
        });
        for (EverdayNewListItem everdayNewListItem : datas) {
            this.rowIndex++;
            long j10 = 1000;
            if (!Intrinsics.areEqual(this.lastTimeDay, e0.E(everdayNewListItem.getTime() * j10))) {
                this.showDataList.add(new CommonListMainData(1, Long.valueOf(everdayNewListItem.getTime() * j10), null, null, 12, null));
                this.lastTimeDay = e0.E(everdayNewListItem.getTime() * j10);
                this.colIndex = 0;
            }
            CollectionBeanSub list = everdayNewListItem.getList();
            list.set_from_type(this.fromHome ? 209 : 129);
            list.set_from(this.fromHome ? 209 : 129);
            list.setThe_new(everdayNewListItem.isThe_new());
            list.setThe_update(everdayNewListItem.isThe_update());
            ExtBean extBeanItemWithParent = list.getExtBean().itemWithParent(this.pageBean);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.rowIndex);
            sb2.append('_');
            int i10 = this.colIndex + 1;
            this.colIndex = i10;
            sb2.append(i10);
            ExtBean sopName = extBeanItemWithParent.setPosition(sb2.toString()).setResourceId(list.getGame_id()).setSopName(e0.I(everdayNewListItem.getTime() * j10));
            String str = list.isThe_new() ? "new" : list.isThe_update() ? n.f79591r : null;
            if (!(str == null || str.length() == 0)) {
                sopName.setReMarks(str);
            }
            DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
            Intrinsics.checkNotNull(list);
            dlTaskManager.updateDownloadTask(list);
            this.showDataList.add(new CommonListMainData(2, list, null, null, 12, null));
        }
        getAdapter().submitList(this.showDataList);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        j0.a().d(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        j0.a().e(this);
    }

    public final void onError(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        Context context = getContext();
        if (context != null) {
            CommonExtKt.toast(context, message);
        }
        fj bindingOrNull = getBindingOrNull();
        if (bindingOrNull == null) {
            return;
        }
        ArrayList<CommonListMainData> arrayList = this.showDataList;
        if ((arrayList == null || arrayList.isEmpty()) || this.showDataList.size() <= 0) {
            bindingOrNull.f38399c.f40741d.setVisibility(8);
            bindingOrNull.f38398b.f41919e.setVisibility(0);
            bindingOrNull.f38400d.setVisibility(8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0026  */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventMainThread(@NotNull r downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
        int iC = downloadTaskEvent.c();
        if (iC != 2 && iC != 3 && iC != 5 && iC != 6 && iC != 7 && iC != 42 && iC != 48) {
            switch (iC) {
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                    updateDownStateList();
                    getAdapter().notifyDataSetChanged();
                    break;
            }
        } else {
            updateDownStateList();
            getAdapter().notifyDataSetChanged();
        }
        if (downloadTaskEvent.c() == 8) {
            updateProgressPartly(downloadTaskEvent.a());
        }
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void onExploreItem() {
        super.onExploreItem();
        this.pageBean.setHasExplore(true);
        expDiscountGame();
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.pageBean.hasExplore()) {
            return;
        }
        t.l(requireContext()).R1(Event.commonExp, this.pageBean.copy().buildScene().toExt());
        delayItemExplore(800L);
    }

    public final void setAdapter(@NotNull EverydayNewAdapter everydayNewAdapter) {
        Intrinsics.checkNotNullParameter(everydayNewAdapter, "<set-?>");
        this.adapter = everydayNewAdapter;
    }

    public final void setColIndex(int i10) {
        this.colIndex = i10;
    }

    public final void setExtBean(@Nullable ExtBean extBean) {
        this.extBean = extBean;
    }

    public final void setFirstVisiblePosition(int i10) {
        this.firstVisiblePosition = i10;
    }

    public final void setFromHome(boolean z10) {
        this.fromHome = z10;
    }

    public final void setLastTimeDay(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.lastTimeDay = str;
    }

    public final void setLastVisibleIndex(int i10) {
        this.lastVisibleIndex = i10;
    }

    public final void setManager(@NotNull LinearLayoutManager linearLayoutManager) {
        Intrinsics.checkNotNullParameter(linearLayoutManager, "<set-?>");
        this.manager = linearLayoutManager;
    }

    public final void setPageCount(int i10) {
        this.pageCount = i10;
    }

    public final void setRefesh(boolean z10) {
        this.refesh = z10;
    }

    public final void setRowIndex(int i10) {
        this.rowIndex = i10;
    }

    public final void setShowDataList(@NotNull ArrayList<CommonListMainData> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.showDataList = arrayList;
    }

    public final void setType(int i10) {
        this.type = i10;
    }

    public final void showLoding() {
        fj bindingOrNull = getBindingOrNull();
        if (bindingOrNull == null) {
            return;
        }
        bindingOrNull.f38399c.f40741d.setVisibility(0);
        bindingOrNull.f38398b.f41919e.setVisibility(8);
        bindingOrNull.f38400d.setVisibility(8);
    }

    public final void updateDownStateList() {
        for (CommonListMainData commonListMainData : this.showDataList) {
            if (commonListMainData.getAny() instanceof Downloadable) {
                DlTaskManager.INSTANCE.updateDownloadTask((Downloadable) commonListMainData.getAny());
            }
        }
    }
}
