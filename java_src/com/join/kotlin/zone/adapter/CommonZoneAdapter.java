package com.join.kotlin.zone.adapter;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.c;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.component.video.h;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.cy;
import com.join.android.app.mgsim.wufun.databinding.ey;
import com.join.android.app.mgsim.wufun.databinding.gy;
import com.join.android.app.mgsim.wufun.databinding.iy;
import com.join.android.app.mgsim.wufun.databinding.vx;
import com.join.android.app.mgsim.wufun.databinding.zx;
import com.join.kotlin.base.impl.OnMultiItemAdapterListenerImpl;
import com.join.kotlin.zone.model.bean.ZoneMultiEntry;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.t2;
import com.join.mgps.callbacks.w;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GInfoBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.Nullable;
import v2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u0007¢\u0006\u0004\b\u0003\u0010\u0004B\u0013\b\u0016\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0003\u0010\u0007J*\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J*\u0010\u0011\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u00122\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010¨\u0006\u0014"}, d2 = {"Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;", "Lcom/chad/library/adapter/base/BaseMultiItemAdapter;", "Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;", "<init>", "()V", "videoHelper", "Lcom/join/android/app/component/video/RvListVideoHelper;", "(Lcom/join/android/app/component/video/RvListVideoHelper;)V", "fillLabel", "", "view", "Landroid/widget/TextView;", "tag_info", "", "Lcom/join/mgps/dto/TipBean;", "sp_tag_info", "Lcom/join/mgps/dto/TipNew;", "addTags", "Landroid/widget/LinearLayout;", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCommonZoneAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonZoneAdapter.kt\ncom/join/kotlin/zone/adapter/CommonZoneAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,219:1\n55#2:220\n55#2:221\n55#2:222\n55#2:223\n55#2:224\n55#2:225\n*S KotlinDebug\n*F\n+ 1 CommonZoneAdapter.kt\ncom/join/kotlin/zone/adapter/CommonZoneAdapter\n*L\n34#1:220\n47#1:221\n60#1:222\n84#1:223\n131#1:224\n154#1:225\n*E\n"})
public final class CommonZoneAdapter extends c<ZoneMultiEntry> {
    public static final int AD_PIC = 1;
    public static final int CARD_GAME_INFO_BOTTOM = 3;
    public static final int CARD_GAME_INFO_BOTTOM_VIDEO = 6;
    public static final int CARD_GAME_INFO_INNER_BOTTOM = 4;
    public static final int ITEM_GAME_INFO_BOTTOM = 5;
    public static final int TITLE = 2;

    public CommonZoneAdapter() {
        super(null, 1, null);
    }

    public final void addTags(@Nullable LinearLayout view, @Nullable List<? extends TipBean> tag_info, @Nullable TipNew sp_tag_info) {
        String upperCase;
        if (view == null) {
            return;
        }
        try {
            view.removeAllViews();
            if (sp_tag_info != null && sp_tag_info.getModel() != null) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                layoutParams.rightMargin = (int) view.getContext().getResources().getDimension(R.dimen.wdp20);
                View viewInflate = View.inflate(view.getContext(), R.layout.item_tag_common_zone, null);
                TextView textView = (TextView) viewInflate.findViewById(R.id.tv_tag);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("平台: ");
                String name = sp_tag_info.getModel().getName();
                if (name != null) {
                    upperCase = name.toUpperCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                } else {
                    upperCase = null;
                }
                sb2.append(upperCase);
                textView.setText(sb2.toString());
                view.addView(viewInflate, layoutParams);
            }
            if (tag_info == null || !(!tag_info.isEmpty())) {
                return;
            }
            TipBean tipBean = tag_info.get(0);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams2.rightMargin = (int) view.getContext().getResources().getDimension(R.dimen.wdp20);
            View viewInflate2 = View.inflate(view.getContext(), R.layout.item_tag_common_zone, null);
            ((TextView) viewInflate2.findViewById(R.id.tv_tag)).setText(tipBean.getName());
            view.addView(viewInflate2, layoutParams2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void fillLabel(@Nullable TextView view, @Nullable List<? extends TipBean> tag_info, @Nullable TipNew sp_tag_info) {
        if (view == null) {
            return;
        }
        view.setText(UtilsMy.R1(sp_tag_info, tag_info, " | "));
    }

    public CommonZoneAdapter(@Nullable final h hVar) {
        this();
        addItemType(1, a.class, new OnMultiItemAdapterListenerImpl<ZoneMultiEntry, vx>() { // from class: com.join.kotlin.zone.adapter.CommonZoneAdapter.1
            @Override // com.join.kotlin.base.impl.OnMultiItemAdapterListenerImpl, com.chad.library.adapter.base.c.b
            public boolean isFullSpanItem(int itemType) {
                return true;
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<vx> holder, int i10, ZoneMultiEntry zoneMultiEntry) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                vx vxVar = (vx) holder.a();
                if (vxVar != null) {
                    vxVar.n(zoneMultiEntry != null ? (CommonGameInfoBean) zoneMultiEntry.dataVal() : null);
                }
            }
        }).addItemType(2, a.class, new OnMultiItemAdapterListenerImpl<ZoneMultiEntry, iy>() { // from class: com.join.kotlin.zone.adapter.CommonZoneAdapter.2
            @Override // com.join.kotlin.base.impl.OnMultiItemAdapterListenerImpl, com.chad.library.adapter.base.c.b
            public boolean isFullSpanItem(int itemType) {
                return true;
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<iy> holder, int i10, ZoneMultiEntry zoneMultiEntry) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                iy iyVar = (iy) holder.a();
                if (iyVar != null) {
                    iyVar.n(zoneMultiEntry != null ? (String) zoneMultiEntry.dataVal() : null);
                }
            }
        }).addItemType(3, a.class, new OnMultiItemAdapterListenerImpl<ZoneMultiEntry, cy>() { // from class: com.join.kotlin.zone.adapter.CommonZoneAdapter.3
            {
                super(R.layout.item_common_zone_game_info_bottom_card);
            }

            @Override // com.join.kotlin.base.impl.OnMultiItemAdapterListenerImpl, com.chad.library.adapter.base.c.b
            public boolean isFullSpanItem(int itemType) {
                return true;
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<cy> holder, int i10, ZoneMultiEntry zoneMultiEntry) {
                GInfoBean g_info;
                Intrinsics.checkNotNullParameter(holder, "holder");
                cy cyVar = (cy) holder.a();
                if (cyVar != null) {
                    CommonZoneAdapter commonZoneAdapter = CommonZoneAdapter.this;
                    cyVar.n(zoneMultiEntry != null ? (CommonGameInfoBean) zoneMultiEntry.dataVal() : null);
                    CommonGameInfoBean commonGameInfoBeanD = cyVar.d();
                    if (commonGameInfoBeanD == null || (g_info = commonGameInfoBeanD.getG_info()) == null) {
                        return;
                    }
                    commonZoneAdapter.addTags(cyVar.f37147b, g_info.getTag_info(), g_info.getSp_tag_info());
                }
            }
        }).addItemType(6, a.class, new OnMultiItemAdapterListenerImpl<ZoneMultiEntry, ey>() { // from class: com.join.kotlin.zone.adapter.CommonZoneAdapter.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(R.layout.item_common_zone_game_info_bottom_card_video);
            }

            @Override // com.join.kotlin.base.impl.OnMultiItemAdapterListenerImpl, com.chad.library.adapter.base.c.b
            public boolean isFullSpanItem(int itemType) {
                return true;
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<ey> holder, int i10, ZoneMultiEntry zoneMultiEntry) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                ey eyVar = (ey) holder.a();
                if (eyVar != null) {
                    h hVar2 = hVar;
                    final CommonZoneAdapter commonZoneAdapter = this;
                    eyVar.n(zoneMultiEntry != null ? (CommonGameInfoBean) zoneMultiEntry.dataVal() : null);
                    final CommonGameInfoBean commonGameInfoBeanD = eyVar.d();
                    if (commonGameInfoBeanD != null) {
                        GInfoBean g_info = commonGameInfoBeanD.getG_info();
                        if (g_info != null) {
                            commonZoneAdapter.addTags(eyVar.f38163b, g_info.getTag_info(), g_info.getSp_tag_info());
                        }
                        if (t2.i(commonGameInfoBeanD.getV_url())) {
                            MultiStandVideo wfVideo = ((ey) holder.a()).f38167f;
                            Intrinsics.checkNotNullExpressionValue(wfVideo, "wfVideo");
                            if (wfVideo != null) {
                                wfVideo.l(commonGameInfoBeanD.getBig_pic());
                                wfVideo.setPlayTag(hVar2 != null ? hVar2.s() : null);
                                wfVideo.setPlayPosition(commonGameInfoBeanD.hashCode());
                                wfVideo.setUpLazy(commonGameInfoBeanD.getV_url(), false, null, null, "");
                                wfVideo.setRotateViewAuto(false);
                                wfVideo.setLockLand(true);
                                wfVideo.setReleaseWhenLossAudio(false);
                                wfVideo.setShowFullAnimation(false);
                                wfVideo.setIsTouchWiget(false);
                                wfVideo.setNeedLockFull(false);
                                wfVideo.setVideoAllCallBack(new w() { // from class: com.join.kotlin.zone.adapter.CommonZoneAdapter$4$onBind$1$1$2
                                    @Override // com.join.mgps.callbacks.w, v7.h
                                    public void onClickBlank(String s10, Object... objects) {
                                        Intrinsics.checkNotNullParameter(s10, "s");
                                        Intrinsics.checkNotNullParameter(objects, "objects");
                                        super.onClickBlank(s10, Arrays.copyOf(objects, objects.length));
                                        IntentUtil.getInstance().intentActivity(commonZoneAdapter.getContext(), commonGameInfoBeanD.getIntentDataBean());
                                    }

                                    @Override // com.join.mgps.callbacks.w, com.join.mgps.callbacks.y
                                    public void onClickCover() {
                                        super.onClickCover();
                                        IntentUtil.getInstance().intentActivity(commonZoneAdapter.getContext(), commonGameInfoBeanD.getIntentDataBean());
                                    }
                                });
                            }
                        }
                    }
                }
            }
        }).addItemType(4, a.class, new OnMultiItemAdapterListenerImpl<ZoneMultiEntry, gy>() { // from class: com.join.kotlin.zone.adapter.CommonZoneAdapter.5
            {
                super(R.layout.item_common_zone_game_info_inner_bottom_card);
            }

            @Override // com.join.kotlin.base.impl.OnMultiItemAdapterListenerImpl, com.chad.library.adapter.base.c.b
            public boolean isFullSpanItem(int itemType) {
                return true;
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<gy> holder, int i10, ZoneMultiEntry zoneMultiEntry) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                gy gyVar = (gy) holder.a();
                if (gyVar != null) {
                    CommonZoneAdapter commonZoneAdapter = CommonZoneAdapter.this;
                    gyVar.n(zoneMultiEntry != null ? (CommonGameInfoBean) zoneMultiEntry.dataVal() : null);
                    CommonGameInfoBean commonGameInfoBeanD = gyVar.d();
                    GInfoBean g_info = commonGameInfoBeanD != null ? commonGameInfoBeanD.getG_info() : null;
                    if (g_info != null) {
                        commonZoneAdapter.fillLabel(gyVar.f39059d, g_info.getTag_info(), g_info.getSp_tag_info());
                    }
                }
            }
        }).addItemType(5, a.class, new OnMultiItemAdapterListenerImpl<ZoneMultiEntry, zx>() { // from class: com.join.kotlin.zone.adapter.CommonZoneAdapter.6
            {
                super(R.layout.item_common_zone_game_info_bottom);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<zx> holder, int i10, ZoneMultiEntry zoneMultiEntry) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                zx zxVar = (zx) holder.a();
                if (zxVar != null) {
                    CommonZoneAdapter commonZoneAdapter = CommonZoneAdapter.this;
                    zxVar.n(zoneMultiEntry != null ? (CommonGameInfoBean) zoneMultiEntry.dataVal() : null);
                    CommonGameInfoBean commonGameInfoBeanD = zxVar.d();
                    GInfoBean g_info = commonGameInfoBeanD != null ? commonGameInfoBeanD.getG_info() : null;
                    if (g_info != null) {
                        commonZoneAdapter.fillLabel(zxVar.f48475d, g_info.getTag_info(), g_info.getSp_tag_info());
                    }
                }
            }
        });
        onItemViewType(new c.a<ZoneMultiEntry>() { // from class: com.join.kotlin.zone.adapter.CommonZoneAdapter.7
            @Override // com.chad.library.adapter.base.c.a
            public int onItemViewType(int position, List<? extends ZoneMultiEntry> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                return (list.isEmpty() || position == -1) ? BaseQuickAdapter.EMPTY_VIEW : list.get(position).getViewType();
            }
        });
    }
}
