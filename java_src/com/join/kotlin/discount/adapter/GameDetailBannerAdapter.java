package com.join.kotlin.discount.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.c;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.databinding.iz;
import com.join.android.app.mgsim.wufun.databinding.kz;
import com.join.android.app.mgsim.wufun.databinding.mz;
import com.join.android.app.mgsim.wufun.databinding.oz;
import com.join.android.app.mgsim.wufun.databinding.qz;
import com.join.kotlin.discount.model.bean.GameDetailBannerEntityBean;
import com.join.kotlin.discount.model.bean.GameDetailPicAndVideoInfoBean;
import com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.Nullable;
import v2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0003\u0010\u0004R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;", "Lcom/chad/library/adapter/base/BaseMultiItemAdapter;", "Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;", "<init>", "()V", "click", "Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;", "getClick", "()Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;", "setClick", "(Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;)V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameDetailBannerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailBannerAdapter.kt\ncom/join/kotlin/discount/adapter/GameDetailBannerAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,214:1\n55#2:215\n55#2:216\n55#2:217\n55#2:218\n55#2:219\n*S KotlinDebug\n*F\n+ 1 GameDetailBannerAdapter.kt\ncom/join/kotlin/discount/adapter/GameDetailBannerAdapter\n*L\n29#1:215\n73#1:216\n105#1:217\n146#1:218\n178#1:219\n*E\n"})
public final class GameDetailBannerAdapter extends c<GameDetailBannerEntityBean> {
    public static final int TYPE_PIC_H = 2;
    public static final int TYPE_PIC_V = 3;
    public static final int TYPE_PIC_V_SINGLE = 4;
    public static final int TYPE_PLACEHOLDER = 5;
    public static final int TYPE_VIDEO = 1;

    @Nullable
    private GameDetailFragmentClickProxy click;

    public GameDetailBannerAdapter() {
        super(null, 1, null);
        addItemType(1, a.class, new c.b<GameDetailBannerEntityBean, a<qz>>() { // from class: com.join.kotlin.discount.adapter.GameDetailBannerAdapter.1
            @Override // com.chad.library.adapter.base.c.b
            public boolean isFullSpanItem(int i10) {
                return c.b.a.a(this, i10);
            }

            @Override // com.chad.library.adapter.base.c.b
            public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
                return c.b.a.c(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
                c.b.a.d(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
                c.b.a.e(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
                c.b.a.f(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, GameDetailBannerEntityBean gameDetailBannerEntityBean, List list) {
                onBind((a<qz>) viewHolder, i10, gameDetailBannerEntityBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public a<qz> onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new a<>(qz.inflate(LayoutInflater.from(context), parent, false));
            }

            public void onBind(a<qz> aVar, int i10, GameDetailBannerEntityBean gameDetailBannerEntityBean, List<? extends Object> list) {
                c.b.a.b(this, aVar, i10, gameDetailBannerEntityBean, list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<qz> holder, int i10, GameDetailBannerEntityBean gameDetailBannerEntityBean) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                if ((gameDetailBannerEntityBean != null ? gameDetailBannerEntityBean.getData() : null) instanceof GameDetailPicAndVideoInfoBean) {
                    qz qzVar = (qz) holder.a();
                    MultiStandVideo multiStandVideo = qzVar != null ? qzVar.f44122b : null;
                    Object data = gameDetailBannerEntityBean.getData();
                    Intrinsics.checkNotNull(data, "null cannot be cast to non-null type com.join.kotlin.discount.model.bean.GameDetailPicAndVideoInfoBean");
                    GameDetailPicAndVideoInfoBean gameDetailPicAndVideoInfoBean = (GameDetailPicAndVideoInfoBean) data;
                    if (multiStandVideo != null) {
                        multiStandVideo.setPlayTag("detailBanner");
                    }
                    if (multiStandVideo != null) {
                        multiStandVideo.l(gameDetailPicAndVideoInfoBean.getVideo_cover());
                    }
                    if (multiStandVideo != null) {
                        multiStandVideo.setUpLazy(gameDetailPicAndVideoInfoBean.getVideo_url(), true, null, null, "");
                    }
                    if (multiStandVideo != null) {
                        multiStandVideo.setMute(false);
                    }
                    if (multiStandVideo != null) {
                        multiStandVideo.setRotateViewAuto(false);
                    }
                    if (multiStandVideo != null) {
                        multiStandVideo.setLockLand(true);
                    }
                    if (multiStandVideo != null) {
                        multiStandVideo.setReleaseWhenLossAudio(false);
                    }
                    if (multiStandVideo != null) {
                        multiStandVideo.setIsTouchWiget(false);
                    }
                    if (multiStandVideo != null) {
                        multiStandVideo.setNeedLockFull(false);
                    }
                }
            }
        });
        addItemType(2, a.class, new c.b<GameDetailBannerEntityBean, a<iz>>() { // from class: com.join.kotlin.discount.adapter.GameDetailBannerAdapter.2
            @Override // com.chad.library.adapter.base.c.b
            public boolean isFullSpanItem(int i10) {
                return c.b.a.a(this, i10);
            }

            @Override // com.chad.library.adapter.base.c.b
            public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
                return c.b.a.c(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
                c.b.a.d(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
                c.b.a.e(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
                c.b.a.f(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, GameDetailBannerEntityBean gameDetailBannerEntityBean, List list) {
                onBind((a<iz>) viewHolder, i10, gameDetailBannerEntityBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public a<iz> onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new a<>(iz.inflate(LayoutInflater.from(context), parent, false));
            }

            public void onBind(a<iz> aVar, int i10, GameDetailBannerEntityBean gameDetailBannerEntityBean, List<? extends Object> list) {
                c.b.a.b(this, aVar, i10, gameDetailBannerEntityBean, list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<iz> holder, int i10, GameDetailBannerEntityBean gameDetailBannerEntityBean) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                if ((gameDetailBannerEntityBean != null ? gameDetailBannerEntityBean.getData() : null) instanceof String) {
                    iz izVar = (iz) holder.a();
                    if (izVar != null) {
                        izVar.t(GameDetailBannerAdapter.this.getClick());
                    }
                    iz izVar2 = (iz) holder.a();
                    if (izVar2 != null) {
                        Object data = gameDetailBannerEntityBean.getData();
                        Intrinsics.checkNotNull(data, "null cannot be cast to non-null type kotlin.String");
                        izVar2.u((String) data);
                    }
                }
            }
        });
        addItemType(3, a.class, new c.b<GameDetailBannerEntityBean, a<kz>>() { // from class: com.join.kotlin.discount.adapter.GameDetailBannerAdapter.3
            @Override // com.chad.library.adapter.base.c.b
            public boolean isFullSpanItem(int i10) {
                return c.b.a.a(this, i10);
            }

            @Override // com.chad.library.adapter.base.c.b
            public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
                return c.b.a.c(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
                c.b.a.d(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
                c.b.a.e(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
                c.b.a.f(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, GameDetailBannerEntityBean gameDetailBannerEntityBean, List list) {
                onBind((a<kz>) viewHolder, i10, gameDetailBannerEntityBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public a<kz> onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new a<>(kz.inflate(LayoutInflater.from(context), parent, false));
            }

            public void onBind(a<kz> aVar, int i10, GameDetailBannerEntityBean gameDetailBannerEntityBean, List<? extends Object> list) {
                c.b.a.b(this, aVar, i10, gameDetailBannerEntityBean, list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<kz> holder, int i10, GameDetailBannerEntityBean gameDetailBannerEntityBean) {
                kz kzVar;
                kz kzVar2;
                kz kzVar3;
                Intrinsics.checkNotNullParameter(holder, "holder");
                if ((gameDetailBannerEntityBean != null ? gameDetailBannerEntityBean.getData() : null) instanceof List) {
                    Object data = gameDetailBannerEntityBean.getData();
                    Intrinsics.checkNotNull(data, "null cannot be cast to non-null type kotlin.collections.List<*>");
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : (List) data) {
                        if (obj instanceof String) {
                            arrayList.add(obj);
                        }
                    }
                    if (arrayList.size() > 0 && (kzVar3 = (kz) holder.a()) != null) {
                        kzVar3.C((String) arrayList.get(0));
                    }
                    if (arrayList.size() > 1 && (kzVar2 = (kz) holder.a()) != null) {
                        kzVar2.D((String) arrayList.get(1));
                    }
                    if (arrayList.size() > 2 && (kzVar = (kz) holder.a()) != null) {
                        kzVar.E((String) arrayList.get(2));
                    }
                    kz kzVar4 = (kz) holder.a();
                    if (kzVar4 != null) {
                        kzVar4.B(GameDetailBannerAdapter.this.getClick());
                    }
                }
            }
        });
        addItemType(4, a.class, new c.b<GameDetailBannerEntityBean, a<mz>>() { // from class: com.join.kotlin.discount.adapter.GameDetailBannerAdapter.4
            @Override // com.chad.library.adapter.base.c.b
            public boolean isFullSpanItem(int i10) {
                return c.b.a.a(this, i10);
            }

            @Override // com.chad.library.adapter.base.c.b
            public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
                return c.b.a.c(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
                c.b.a.d(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
                c.b.a.e(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
                c.b.a.f(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, GameDetailBannerEntityBean gameDetailBannerEntityBean, List list) {
                onBind((a<mz>) viewHolder, i10, gameDetailBannerEntityBean, (List<? extends Object>) list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public a<mz> onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new a<>(mz.inflate(LayoutInflater.from(context), parent, false));
            }

            public void onBind(a<mz> aVar, int i10, GameDetailBannerEntityBean gameDetailBannerEntityBean, List<? extends Object> list) {
                c.b.a.b(this, aVar, i10, gameDetailBannerEntityBean, list);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<mz> holder, int i10, GameDetailBannerEntityBean gameDetailBannerEntityBean) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                if ((gameDetailBannerEntityBean != null ? gameDetailBannerEntityBean.getData() : null) instanceof String) {
                    mz mzVar = (mz) holder.a();
                    if (mzVar != null) {
                        mzVar.t(GameDetailBannerAdapter.this.getClick());
                    }
                    mz mzVar2 = (mz) holder.a();
                    if (mzVar2 != null) {
                        Object data = gameDetailBannerEntityBean.getData();
                        Intrinsics.checkNotNull(data, "null cannot be cast to non-null type kotlin.String");
                        mzVar2.u((String) data);
                    }
                }
            }
        });
        addItemType(5, a.class, new c.b<GameDetailBannerEntityBean, a<oz>>() { // from class: com.join.kotlin.discount.adapter.GameDetailBannerAdapter.5
            @Override // com.chad.library.adapter.base.c.b
            public boolean isFullSpanItem(int i10) {
                return c.b.a.a(this, i10);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onBind(a<oz> holder, int i10, GameDetailBannerEntityBean gameDetailBannerEntityBean) {
                Intrinsics.checkNotNullParameter(holder, "holder");
            }

            @Override // com.chad.library.adapter.base.c.b
            public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
                return c.b.a.c(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
                c.b.a.d(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
                c.b.a.e(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
                c.b.a.f(this, viewHolder);
            }

            @Override // com.chad.library.adapter.base.c.b
            public a<oz> onCreate(Context context, ViewGroup parent, int i10) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                return new a<>(oz.inflate(LayoutInflater.from(context), parent, false));
            }

            @Override // com.chad.library.adapter.base.c.b
            public /* bridge */ /* synthetic */ void onBind(RecyclerView.ViewHolder viewHolder, int i10, GameDetailBannerEntityBean gameDetailBannerEntityBean, List list) {
                onBind((a<oz>) viewHolder, i10, gameDetailBannerEntityBean, (List<? extends Object>) list);
            }

            public void onBind(a<oz> aVar, int i10, GameDetailBannerEntityBean gameDetailBannerEntityBean, List<? extends Object> list) {
                c.b.a.b(this, aVar, i10, gameDetailBannerEntityBean, list);
            }
        });
        onItemViewType(new c.a<GameDetailBannerEntityBean>() { // from class: com.join.kotlin.discount.adapter.GameDetailBannerAdapter.6
            @Override // com.chad.library.adapter.base.c.a
            public int onItemViewType(int position, List<? extends GameDetailBannerEntityBean> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                return (position < 0 || position >= list.size()) ? position : list.get(position).getViewType();
            }
        });
    }

    @Nullable
    public final GameDetailFragmentClickProxy getClick() {
        return this.click;
    }

    public final void setClick(@Nullable GameDetailFragmentClickProxy gameDetailFragmentClickProxy) {
        this.click = gameDetailFragmentClickProxy;
    }
}
