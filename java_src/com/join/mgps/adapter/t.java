package com.join.mgps.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionSevenListBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GInfoBean;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension({"SMAP\nCollectionModuleSevenAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionModuleSevenAdapter.kt\ncom/join/mgps/adapter/CollectionModuleSevenAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,366:1\n55#2:367\n55#2:368\n55#2:369\n55#2:370\n55#2:371\n*S KotlinDebug\n*F\n+ 1 CollectionModuleSevenAdapter.kt\ncom/join/mgps/adapter/CollectionModuleSevenAdapter\n*L\n48#1:367\n68#1:368\n88#1:369\n108#1:370\n128#1:371\n*E\n"})
public final class t extends com.chad.library.adapter.base.c<CollectionSevenListBean> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    public static final g f63162g = new g(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f63163h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f63164i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f63165j = 3;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f63166k = 4;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f63167l = 5;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final com.join.android.app.component.video.h f63168e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @JvmField
    public boolean f63169f;

    public static final class a implements com.chad.library.adapter.base.c.a<CollectionSevenListBean> {
        a() {
        }

        @Override // com.chad.library.adapter.base.c.a
        public int onItemViewType(int i10, List<? extends CollectionSevenListBean> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            return (i10 < 0 || i10 >= list.size()) ? i10 : list.get(i10).getType();
        }
    }

    public static final class b implements com.chad.library.adapter.base.c.b<CollectionSevenListBean, v2.c> {
        b() {
        }

        @Override // com.chad.library.adapter.base.c.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onBind(v2.c holder, int i10, CollectionSevenListBean collectionSevenListBean) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            t.this.A(holder, collectionSevenListBean);
        }

        @Override // com.chad.library.adapter.base.c.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onBind(v2.c cVar, int i10, CollectionSevenListBean collectionSevenListBean, List<? extends Object> list) {
            com.chad.library.adapter.base.c.b.a.b(this, cVar, i10, collectionSevenListBean, list);
        }

        @Override // com.chad.library.adapter.base.c.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public v2.c onCreate(Context context, ViewGroup parent, int i10) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parent, "parent");
            return new v2.c(R.layout.item_collection_seven_title, parent);
        }

        @Override // com.chad.library.adapter.base.c.b
        public boolean isFullSpanItem(int i10) {
            return com.chad.library.adapter.base.c.b.a.a(this, i10);
        }

        @Override // com.chad.library.adapter.base.c.b
        public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
            return com.chad.library.adapter.base.c.b.a.c(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.d(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.e(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.f(this, viewHolder);
        }
    }

    public static final class c implements com.chad.library.adapter.base.c.b<CollectionSevenListBean, v2.c> {
        c() {
        }

        @Override // com.chad.library.adapter.base.c.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onBind(v2.c holder, int i10, CollectionSevenListBean collectionSevenListBean) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            t.this.v(holder, collectionSevenListBean);
        }

        @Override // com.chad.library.adapter.base.c.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onBind(v2.c cVar, int i10, CollectionSevenListBean collectionSevenListBean, List<? extends Object> list) {
            com.chad.library.adapter.base.c.b.a.b(this, cVar, i10, collectionSevenListBean, list);
        }

        @Override // com.chad.library.adapter.base.c.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public v2.c onCreate(Context context, ViewGroup parent, int i10) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parent, "parent");
            return new v2.c(R.layout.item_collection_seven_video_game, parent);
        }

        @Override // com.chad.library.adapter.base.c.b
        public boolean isFullSpanItem(int i10) {
            return com.chad.library.adapter.base.c.b.a.a(this, i10);
        }

        @Override // com.chad.library.adapter.base.c.b
        public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
            return com.chad.library.adapter.base.c.b.a.c(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.d(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.e(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.f(this, viewHolder);
        }
    }

    public static final class d implements com.chad.library.adapter.base.c.b<CollectionSevenListBean, v2.c> {
        d() {
        }

        @Override // com.chad.library.adapter.base.c.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onBind(v2.c holder, int i10, CollectionSevenListBean collectionSevenListBean) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            t.this.w(holder, i10, collectionSevenListBean);
        }

        @Override // com.chad.library.adapter.base.c.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onBind(v2.c cVar, int i10, CollectionSevenListBean collectionSevenListBean, List<? extends Object> list) {
            com.chad.library.adapter.base.c.b.a.b(this, cVar, i10, collectionSevenListBean, list);
        }

        @Override // com.chad.library.adapter.base.c.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public v2.c onCreate(Context context, ViewGroup parent, int i10) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parent, "parent");
            return new v2.c(R.layout.item_collection_seven_game_list, parent);
        }

        @Override // com.chad.library.adapter.base.c.b
        public boolean isFullSpanItem(int i10) {
            return com.chad.library.adapter.base.c.b.a.a(this, i10);
        }

        @Override // com.chad.library.adapter.base.c.b
        public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
            return com.chad.library.adapter.base.c.b.a.c(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.d(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.e(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.f(this, viewHolder);
        }
    }

    public static final class e implements com.chad.library.adapter.base.c.b<CollectionSevenListBean, v2.c> {
        e() {
        }

        @Override // com.chad.library.adapter.base.c.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onBind(v2.c holder, int i10, CollectionSevenListBean collectionSevenListBean) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            t.this.y(holder, collectionSevenListBean);
        }

        @Override // com.chad.library.adapter.base.c.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onBind(v2.c cVar, int i10, CollectionSevenListBean collectionSevenListBean, List<? extends Object> list) {
            com.chad.library.adapter.base.c.b.a.b(this, cVar, i10, collectionSevenListBean, list);
        }

        @Override // com.chad.library.adapter.base.c.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public v2.c onCreate(Context context, ViewGroup parent, int i10) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parent, "parent");
            return new v2.c(R.layout.item_collection_seven_horizontal_game, parent);
        }

        @Override // com.chad.library.adapter.base.c.b
        public boolean isFullSpanItem(int i10) {
            return com.chad.library.adapter.base.c.b.a.a(this, i10);
        }

        @Override // com.chad.library.adapter.base.c.b
        public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
            return com.chad.library.adapter.base.c.b.a.c(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.d(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.e(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.f(this, viewHolder);
        }
    }

    public static final class f implements com.chad.library.adapter.base.c.b<CollectionSevenListBean, v2.c> {
        f() {
        }

        @Override // com.chad.library.adapter.base.c.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onBind(v2.c holder, int i10, CollectionSevenListBean collectionSevenListBean) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            t.this.t(holder, collectionSevenListBean);
        }

        @Override // com.chad.library.adapter.base.c.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onBind(v2.c cVar, int i10, CollectionSevenListBean collectionSevenListBean, List<? extends Object> list) {
            com.chad.library.adapter.base.c.b.a.b(this, cVar, i10, collectionSevenListBean, list);
        }

        @Override // com.chad.library.adapter.base.c.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public v2.c onCreate(Context context, ViewGroup parent, int i10) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parent, "parent");
            return new v2.c(R.layout.item_collection_seven_ad_list, parent);
        }

        @Override // com.chad.library.adapter.base.c.b
        public boolean isFullSpanItem(int i10) {
            return com.chad.library.adapter.base.c.b.a.a(this, i10);
        }

        @Override // com.chad.library.adapter.base.c.b
        public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
            return com.chad.library.adapter.base.c.b.a.c(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.d(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.e(this, viewHolder);
        }

        @Override // com.chad.library.adapter.base.c.b
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            com.chad.library.adapter.base.c.b.a.f(this, viewHolder);
        }
    }

    public static final class g {
        public /* synthetic */ g(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private g() {
        }
    }

    public static final class h extends com.join.mgps.callbacks.w {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommonGameInfoBean f63175b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ t f63176c;

        h(CommonGameInfoBean commonGameInfoBean, t tVar) {
            this.f63175b = commonGameInfoBean;
            this.f63176c = tVar;
        }

        @Override // com.join.mgps.callbacks.w, v7.h
        public void onClickBlank(String str, Object... objects) {
            Intrinsics.checkNotNullParameter(objects, "objects");
            super.onClickBlank(str, Arrays.copyOf(objects, objects.length));
            IntentUtil.getInstance().intentActivity(this.f63176c.getContext(), this.f63175b.getIntentDataBean());
        }

        @Override // com.join.mgps.callbacks.w, com.join.mgps.callbacks.y
        public void onClickCover() {
            super.onClickCover();
            IntentUtil.getInstance().intentActivity(this.f63176c.getContext(), this.f63175b.getIntentDataBean());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(@NotNull List<? extends CollectionSevenListBean> data, @NotNull com.join.android.app.component.video.h videoHelper) {
        super(CollectionsKt___CollectionsKt.toMutableList((Collection) data));
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(videoHelper, "videoHelper");
        this.f63168e = videoHelper;
        onItemViewType(new a()).addItemType(1, v2.c.class, new b()).addItemType(2, v2.c.class, new c()).addItemType(3, v2.c.class, new d()).addItemType(4, v2.c.class, new e()).addItemType(5, v2.c.class, new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A(v2.c cVar, final CollectionSevenListBean collectionSevenListBean) {
        if (collectionSevenListBean == null) {
            cVar.itemView.setVisibility(8);
            return;
        }
        if (collectionSevenListBean.getTitle() == null) {
            cVar.itemView.setVisibility(8);
            return;
        }
        cVar.itemView.setVisibility(0);
        cVar.n(R.id.title, collectionSevenListBean.getTitle());
        cVar.q(R.id.more, !TextUtils.isEmpty(collectionSevenListBean.getCollection_id()));
        cVar.n(R.id.subTitle, collectionSevenListBean.getSubTitle());
        cVar.h(R.id.subTitle, !TextUtils.isEmpty(collectionSevenListBean.getSubTitle()));
        cVar.getView(R.id.more).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                t.B(this.f62982b, collectionSevenListBean, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(t tVar, CollectionSevenListBean collectionSevenListBean, View view) {
        IntentUtil.getInstance().goColloctionList(tVar.getContext(), collectionSevenListBean.getTpl_type(), collectionSevenListBean.getCollection_id());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t(v2.c cVar, CollectionSevenListBean collectionSevenListBean) {
        if (collectionSevenListBean == null) {
            cVar.itemView.setVisibility(8);
            return;
        }
        try {
            if (collectionSevenListBean.getItem() == null || !(collectionSevenListBean.getItem() instanceof ArrayList)) {
                cVar.itemView.setVisibility(8);
            } else {
                Object item = collectionSevenListBean.getItem();
                Intrinsics.checkNotNull(item, "null cannot be cast to non-null type java.util.ArrayList<com.join.mgps.dto.CommonGameInfoBean?>");
                final ArrayList arrayList = (ArrayList) item;
                RecyclerView recyclerView = (RecyclerView) cVar.getView(R.id.recyclerView);
                recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
                o oVar = new o(arrayList);
                oVar.setOnItemClickListener(new BaseQuickAdapter.j() { // from class: com.join.mgps.adapter.q
                    @Override // com.join.mgps.base.BaseQuickAdapter.j
                    public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                        t.u(this.f63008a, arrayList, baseQuickAdapter, view, i10);
                    }
                });
                recyclerView.setAdapter(oVar);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            cVar.itemView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(t tVar, ArrayList arrayList, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        IntentUtil intentUtil = IntentUtil.getInstance();
        Context context = tVar.getContext();
        Object obj = arrayList.get(i10);
        Intrinsics.checkNotNull(obj);
        intentUtil.intentActivity(context, ((CommonGameInfoBean) obj).getIntentDataBean());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v(v2.c cVar, CollectionSevenListBean collectionSevenListBean) {
        if (collectionSevenListBean == null) {
            cVar.itemView.setVisibility(8);
            return;
        }
        if (collectionSevenListBean.getItem() == null || !(collectionSevenListBean.getItem() instanceof CommonGameInfoBean)) {
            cVar.itemView.setVisibility(8);
            return;
        }
        Object item = collectionSevenListBean.getItem();
        Intrinsics.checkNotNull(item, "null cannot be cast to non-null type com.join.mgps.dto.CommonGameInfoBean");
        CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) item;
        cVar.itemView.setVisibility(0);
        if (commonGameInfoBean.getG_info() != null) {
            GInfoBean g_info = commonGameInfoBean.getG_info();
            com.join.android.app.common.utils.l.o((SimpleDraweeView) cVar.getView(R.id.icon), TextUtils.isEmpty(g_info.getGif_ico()) ? g_info.getIco() : g_info.getGif_ico());
            cVar.n(R.id.gameName, g_info.getName());
            String app_size = g_info.getApp_size();
            Intrinsics.checkNotNullExpressionValue(app_size, "getApp_size(...)");
            double d10 = 1024;
            long j10 = (long) (Double.parseDouble(app_size) * d10 * d10);
            cVar.n(R.id.tv_text_3, UtilsMy.R1(commonGameInfoBean.getSpTagInfo(), commonGameInfoBean.getTagInfo(), " | "));
            if (g_info.isHmCloud()) {
                cVar.h(R.id.tv_text_4, true);
            } else {
                cVar.h(R.id.tv_text_4, false);
            }
            cVar.n(R.id.tv_text_4, UtilsMy.Z2(j10));
            cVar.n(R.id.gameMessage, g_info.getInfo());
        }
        ((DownloadNormalView) cVar.getView(R.id.dv_view)).f(new m6.c(getContext(), commonGameInfoBean));
        MultiStandVideo multiStandVideo = (MultiStandVideo) cVar.getView(R.id.wf_video);
        if (multiStandVideo != null) {
            if (TextUtils.equals(commonGameInfoBean.getV_url(), multiStandVideo.getUrl())) {
                if (commonGameInfoBean.getJp_info() == null) {
                    return;
                }
                Integer link_type = commonGameInfoBean.getJp_info().getLink_type();
                if (link_type != null && link_type.intValue() == 1) {
                    return;
                }
            }
            multiStandVideo.l(commonGameInfoBean.getBig_pic());
            multiStandVideo.setName(commonGameInfoBean.getTitle());
            multiStandVideo.setPlayTag(this.f63168e.s());
            multiStandVideo.setPlayPosition(commonGameInfoBean.hashCode());
            multiStandVideo.setUpLazy(commonGameInfoBean.getV_url(), false, null, null, "");
            multiStandVideo.setRotateViewAuto(false);
            multiStandVideo.setLockLand(true);
            multiStandVideo.setReleaseWhenLossAudio(false);
            multiStandVideo.setShowFullAnimation(false);
            multiStandVideo.setIsTouchWiget(false);
            multiStandVideo.setNeedLockFull(false);
            multiStandVideo.setBottomProgressBarDrawable(null);
            multiStandVideo.setVideoAllCallBack(new h(commonGameInfoBean, this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w(v2.c cVar, int i10, CollectionSevenListBean collectionSevenListBean) {
        if (!((collectionSevenListBean != null ? collectionSevenListBean.getItem() : null) instanceof CommonGameInfoBean)) {
            cVar.itemView.setVisibility(8);
            return;
        }
        Object item = collectionSevenListBean.getItem();
        Intrinsics.checkNotNull(item, "null cannot be cast to non-null type com.join.mgps.dto.CommonGameInfoBean");
        final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) item;
        GInfoBean g_info = commonGameInfoBean.getG_info();
        if (g_info == null) {
            cVar.itemView.setVisibility(8);
            return;
        }
        cVar.itemView.setVisibility(0);
        cVar.n(R.id.tv_text_1, g_info.getName());
        cVar.n(R.id.tv_text_5, g_info.getInfo());
        cVar.n(R.id.tv_text_3, UtilsMy.R1(commonGameInfoBean.getSpTagInfo(), g_info.getTag_info(), " | "));
        cVar.n(R.id.tv_text_2, commonGameInfoBean.getShowScore());
        if (g_info.getGift_package_switch() == 1) {
            cVar.h(R.id.iv_1, false);
        } else {
            cVar.h(R.id.iv_1, true);
        }
        com.join.android.app.common.utils.l.o((SimpleDraweeView) cVar.getView(R.id.sdv_image), TextUtils.isEmpty(g_info.getGif_ico()) ? g_info.getIco() : g_info.getGif_ico());
        if (!TextUtils.isEmpty(g_info.getApp_size())) {
            if (g_info.isHmCloud()) {
                cVar.h(R.id.tv_text_4, true);
            } else {
                cVar.h(R.id.tv_text_4, false);
                String app_size = g_info.getApp_size();
                Intrinsics.checkNotNullExpressionValue(app_size, "getApp_size(...)");
                double d10 = 1024;
                cVar.n(R.id.tv_text_4, UtilsMy.c((long) (Double.parseDouble(app_size) * d10 * d10)));
            }
        }
        ((DownloadNormalView) cVar.getView(R.id.dv_view)).f(new m6.c(getContext(), commonGameInfoBean));
        cVar.h(R.id.g_1, commonGameInfoBean.isH5Game());
        cVar.h(R.id.tv_text_3, commonGameInfoBean.isH5Game());
        cVar.h(R.id.tv_text_4, commonGameInfoBean.isH5Game());
        cVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                t.x(commonGameInfoBean, this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(CommonGameInfoBean commonGameInfoBean, t tVar, View view) {
        if (commonGameInfoBean.getG_info() != null) {
            IntentUtil.getInstance().intentActivity(tVar.getContext(), commonGameInfoBean.getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y(v2.c cVar, CollectionSevenListBean collectionSevenListBean) {
        if (collectionSevenListBean == null) {
            cVar.itemView.setVisibility(8);
            return;
        }
        if (collectionSevenListBean.getItem() == null || !(collectionSevenListBean.getItem() instanceof ArrayList)) {
            cVar.itemView.setVisibility(8);
            return;
        }
        Object item = collectionSevenListBean.getItem();
        Intrinsics.checkNotNull(item, "null cannot be cast to non-null type java.util.ArrayList<com.join.mgps.dto.CommonGameInfoBean>");
        final ArrayList arrayList = (ArrayList) item;
        RecyclerView recyclerView = (RecyclerView) cVar.getView(R.id.recyclerView);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        u uVar = new u(arrayList);
        recyclerView.setAdapter(uVar);
        uVar.setOnItemClickListener(new BaseQuickAdapter.j() { // from class: com.join.mgps.adapter.r
            @Override // com.join.mgps.base.BaseQuickAdapter.j
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                t.z(arrayList, this, baseQuickAdapter, view, i10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(ArrayList arrayList, t tVar, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Object obj = arrayList.get(i10);
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        IntentUtil.getInstance().intentActivity(tVar.getContext(), ((CommonGameInfoBean) obj).getIntentDataBean());
    }

    public final void C(@NotNull List<? extends CollectionSevenListBean> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        submitList(data);
    }
}
