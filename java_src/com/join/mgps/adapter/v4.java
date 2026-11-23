package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.customview.InterceptEventHorizontalScrollView;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.CollectionInfo;
import com.join.mgps.dto.GameFactoryListBean;
import com.join.mgps.dto.GameHeadAd;
import com.join.mgps.dto.PaPaBean;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class v4 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<PaPaBean> f63288b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f63289c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f63290d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final View.OnClickListener f63291e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View.OnClickListener f63292f;

    public class a extends RecyclerView.Adapter<b> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<AppBean> f63293e = new ArrayList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Context f63294f;

        public a(Context context) {
            this.f63294f = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(b holder, int position) {
            c(holder, this.f63293e.get(position));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public b onCreateViewHolder(ViewGroup parent, int viewType) {
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.intersting_horiz_listitem, (ViewGroup) null);
            b bVar = v4.this.new b(viewInflate);
            bVar.f63296d = (SimpleDraweeView) viewInflate.findViewById(R.id.image1);
            bVar.f63297e = (TextView) viewInflate.findViewById(R.id.appname1);
            bVar.f63298f = (DownloadNormalView) viewInflate.findViewById(R.id.dv_view);
            LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.rootView);
            bVar.f63299g = linearLayout;
            linearLayout.setOnClickListener(v4.this.f63292f);
            return bVar;
        }

        public void c(b holder, AppBean gameInfoV2_2Bean) {
            holder.f63299g.setTag(gameInfoV2_2Bean);
            holder.f63297e.setText(gameInfoV2_2Bean.getGame_name());
            com.join.android.app.common.utils.l.h(holder.f63296d, gameInfoV2_2Bean.getIco_remote());
            holder.f63298f.f(new m6.c(this.f63294f, gameInfoV2_2Bean));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f63293e.size();
        }

        public void setListDatas(List<AppBean> datas) {
            this.f63293e.clear();
            this.f63293e.addAll(datas);
        }
    }

    public class b extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        SimpleDraweeView f63296d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f63297e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        DownloadNormalView f63298f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        LinearLayout f63299g;

        public b(View itemView) {
            super(itemView);
        }
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        InterceptEventHorizontalScrollView f63301a;

        c() {
        }
    }

    public class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SimpleDraweeView f63302a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ImageView f63303b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f63304c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ProgressBar f63305d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ProgressBar f63306e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f63307f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private DownloadNormalView f63308g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private LinearLayout f63309h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f63310i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f63311j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private LinearLayout f63312k;

        public d() {
        }
    }

    static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f63314a;

        e() {
        }
    }

    static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f63315a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f63316b;

        f() {
        }
    }

    static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f63317a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f63318b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f63319c;

        g() {
        }
    }

    public v4(Context context, List<PaPaBean> datas, View.OnClickListener listener) {
        this.f63290d = 1;
        this.f63289c = context;
        this.f63288b = datas;
        this.f63290d = PaPaBean.getTypes() + 1;
        this.f63291e = listener;
    }

    public void b(View.OnClickListener listener) {
        this.f63292f = listener;
    }

    void c(d viewHolderListItem, Boolean isNormal, Boolean isZip) {
        if (isNormal.booleanValue()) {
            viewHolderListItem.f63309h.setVisibility(8);
            viewHolderListItem.f63306e.setVisibility(8);
            viewHolderListItem.f63305d.setVisibility(8);
            viewHolderListItem.f63307f.setVisibility(0);
            return;
        }
        viewHolderListItem.f63309h.setVisibility(0);
        if (isZip.booleanValue()) {
            viewHolderListItem.f63306e.setVisibility(8);
            viewHolderListItem.f63305d.setVisibility(0);
        } else {
            viewHolderListItem.f63305d.setVisibility(8);
            viewHolderListItem.f63306e.setVisibility(0);
        }
        viewHolderListItem.f63307f.setVisibility(8);
    }

    void d(View convertView, c contentCollectionViewHolder, PaPaBean paPaBean) {
        List<AppBean> list = (List) paPaBean.getTypeValue();
        a aVar = (a) convertView.getTag(R.id.papa_recycleview_adapter);
        if (aVar == null) {
            aVar = new a(this.f63289c);
            convertView.setTag(R.id.papa_recycleview_adapter, aVar);
        }
        contentCollectionViewHolder.f63301a.setAdapter(aVar);
        aVar.setListDatas(list);
        aVar.notifyDataSetChanged();
    }

    void e(d viewHolderListItem, PaPaBean paPaBean) {
        AppBean appBean = (AppBean) paPaBean.getTypeValue();
        com.join.android.app.common.utils.l.d(viewHolderListItem.f63302a, R.drawable.main_normal_icon, appBean.getIco_remote());
        viewHolderListItem.f63303b.setVisibility(8);
        viewHolderListItem.f63304c.setText(appBean.getGame_name());
        viewHolderListItem.f63307f.setText(appBean.getInfo());
        long j10 = (long) (Double.parseDouble(appBean.getAppSize()) * 1048576.0d);
        UtilsMy.K(appBean.getScore(), appBean.getDown_count(), appBean.getAppSize(), appBean.getSp_tag_info(), appBean.getTag_info(), viewHolderListItem.f63312k, this.f63289c);
        DownloadTask downloadTask = appBean.getDownloadTask();
        viewHolderListItem.f63308g.f(new m6.c(this.f63289c, appBean));
        if (appBean.isH5Game()) {
            viewHolderListItem.f63312k.setVisibility(8);
            viewHolderListItem.f63303b.setVisibility(8);
            return;
        }
        if (downloadTask == null) {
            c(viewHolderListItem, Boolean.TRUE, Boolean.FALSE);
            return;
        }
        int status = downloadTask.getStatus();
        if (UtilsMy.x0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 48) {
                c(viewHolderListItem, Boolean.TRUE, Boolean.FALSE);
                return;
            }
            if (status == 2) {
                UtilsMy.U4(downloadTask);
                Boolean bool = Boolean.FALSE;
                c(viewHolderListItem, bool, bool);
                if (downloadTask.getSize() == 0) {
                    viewHolderListItem.f63310i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                } else {
                    viewHolderListItem.f63310i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                }
                viewHolderListItem.f63306e.setProgress((int) downloadTask.getProgress());
                String speed = downloadTask.getSpeed();
                viewHolderListItem.f63311j.setText(speed + "/S");
                return;
            }
            if (status != 3) {
                if (status != 5) {
                    if (status != 6) {
                        if (status != 7) {
                            if (status != 42) {
                                if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            c(viewHolderListItem, Boolean.TRUE, Boolean.FALSE);
                                            break;
                                        case 10:
                                            Boolean bool2 = Boolean.FALSE;
                                            c(viewHolderListItem, bool2, bool2);
                                            viewHolderListItem.f63310i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                            try {
                                                viewHolderListItem.f63306e.setProgress((int) downloadTask.getProgress());
                                            } catch (Exception e10) {
                                                e10.printStackTrace();
                                            }
                                            viewHolderListItem.f63311j.setText("等待中");
                                            break;
                                        case 11:
                                            c(viewHolderListItem, Boolean.TRUE, Boolean.FALSE);
                                            break;
                                        case 12:
                                            c(viewHolderListItem, Boolean.FALSE, Boolean.TRUE);
                                            viewHolderListItem.f63310i.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                            viewHolderListItem.f63311j.setText("解压中..");
                                            viewHolderListItem.f63305d.setProgress((int) downloadTask.getProgress());
                                            break;
                                        case 13:
                                            c(viewHolderListItem, Boolean.FALSE, Boolean.TRUE);
                                            viewHolderListItem.f63310i.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                            viewHolderListItem.f63311j.setText("点击重新解压");
                                            viewHolderListItem.f63305d.setProgress((int) downloadTask.getProgress());
                                            break;
                                    }
                                }
                            }
                        }
                    }
                }
                Boolean bool3 = Boolean.TRUE;
                c(viewHolderListItem, bool3, bool3);
                return;
            }
            Boolean bool4 = Boolean.FALSE;
            c(viewHolderListItem, bool4, bool4);
            try {
                if (downloadTask.getSize() == 0) {
                    viewHolderListItem.f63310i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                } else {
                    viewHolderListItem.f63310i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                }
                viewHolderListItem.f63306e.setProgress((int) downloadTask.getProgress());
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            viewHolderListItem.f63311j.setText("暂停中");
            return;
        }
        c(viewHolderListItem, Boolean.TRUE, Boolean.FALSE);
    }

    void f(e headerImageViewHolder, PaPaBean paPaBean) {
        List list = (List) paPaBean.getTypeValue();
        if (list == null || list.size() == 0) {
            return;
        }
        if (((GameHeadAd) list.get(0)).getMain().getAd_switch() == 0) {
            headerImageViewHolder.f63314a.setVisibility(8);
            return;
        }
        headerImageViewHolder.f63314a.setVisibility(0);
        if (((GameHeadAd) list.get(0)).getSub() != null && ((GameHeadAd) list.get(0)).getSub().size() > 0) {
            headerImageViewHolder.f63314a.setTag(((GameHeadAd) list.get(0)).getSub().get(0));
            headerImageViewHolder.f63314a.setOnClickListener(this.f63292f);
        }
        com.join.android.app.common.utils.l.h(headerImageViewHolder.f63314a, ((GameHeadAd) list.get(0)).getMain().getPic_remote());
    }

    void g(f titleCollectionViewHolder, PaPaBean paPaBean) {
        CollectionInfo collectionInfo = (CollectionInfo) paPaBean.getTypeValue();
        titleCollectionViewHolder.f63315a.setText(collectionInfo.getTitle());
        titleCollectionViewHolder.f63316b.setTag(collectionInfo);
        titleCollectionViewHolder.f63316b.setOnClickListener(this.f63292f);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<PaPaBean> list = this.f63288b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.f63288b.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        return this.f63288b.get(position).getType();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        d dVar;
        c cVar;
        g gVar;
        g gVar2;
        Object obj;
        f fVar;
        f fVar2;
        View view2;
        d dVar2;
        f fVar3;
        c cVar2;
        View view3;
        View view4;
        f fVar4;
        g gVar3;
        View view5;
        View view6;
        f fVar5;
        View view7;
        View view8;
        View view9;
        int itemViewType = getItemViewType(i10);
        e eVar = null;
        if (view == null) {
            if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_IMAGE_HEADER.value()) {
                e eVar2 = new e();
                View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_papa_header_image, (ViewGroup) null);
                PaPaBean paPaBean = this.f63288b.get(i10);
                eVar2.f63314a = (SimpleDraweeView) viewInflate.findViewById(R.id.gameCover);
                if (paPaBean.getImageHeaderParams() != null) {
                    HashMap<String, Object> imageHeaderParams = paPaBean.getImageHeaderParams();
                    if (imageHeaderParams.containsKey(PaPaBean.KEY_IMAGE_HEADER_HEIGHT)) {
                        eVar2.f63314a.setLayoutParams(new LinearLayout.LayoutParams(-1, com.join.mgps.Util.i0.a(this.f63289c, ((Integer) imageHeaderParams.get(PaPaBean.KEY_IMAGE_HEADER_HEIGHT)).intValue())));
                    }
                }
                viewInflate.setTag(eVar2);
                gVar2 = null;
                obj = null;
                fVar = null;
                eVar = eVar2;
                view9 = viewInflate;
                fVar3 = fVar;
                cVar2 = obj;
                dVar2 = fVar;
                view8 = view9;
            } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_TITLE_COLLECTION.value()) {
                View viewInflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_papa_standalone_rec_title, (ViewGroup) null);
                f fVar6 = new f();
                fVar6.f63316b = (TextView) viewInflate2.findViewById(R.id.tv_all);
                fVar6.f63315a = (TextView) viewInflate2.findViewById(R.id.tv_title);
                viewInflate2.setTag(fVar6);
                view7 = viewInflate2;
                fVar5 = fVar6;
                gVar2 = null;
                view6 = view7;
                fVar2 = fVar5;
                gVar3 = gVar2;
                view5 = view6;
                fVar4 = fVar2;
                dVar2 = gVar3;
                cVar2 = gVar3;
                view8 = view5;
                fVar3 = fVar4;
            } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_GAMEFACTORY_LIST.value()) {
                View viewInflate3 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_gamefactory_list_title, (ViewGroup) null);
                gVar = new g();
                gVar.f63317a = (SimpleDraweeView) viewInflate3.findViewById(R.id.gameLogo);
                gVar.f63318b = (TextView) viewInflate3.findViewById(R.id.tv_name);
                gVar.f63319c = (TextView) viewInflate3.findViewById(R.id.tv_desc);
                viewInflate3.setTag(gVar);
                view4 = viewInflate3;
                gVar2 = gVar;
                fVar4 = null;
                gVar3 = null;
                view5 = view4;
                dVar2 = gVar3;
                cVar2 = gVar3;
                view8 = view5;
                fVar3 = fVar4;
            } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_COLLECTION.value()) {
                View viewInflate4 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_papa_standalone_rec, (ViewGroup) null);
                cVar = new c();
                cVar.f63301a = (InterceptEventHorizontalScrollView) viewInflate4.findViewById(R.id.mHorizontalScrollView);
                viewInflate4.setTag(cVar);
                view3 = viewInflate4;
                cVar2 = cVar;
                fVar3 = null;
                gVar2 = null;
                dVar2 = 0;
                view8 = view3;
            } else {
                if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value()) {
                    View viewInflate5 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_papa_download_list, (ViewGroup) null);
                    dVar = new d();
                    dVar.f63302a = (SimpleDraweeView) viewInflate5.findViewById(R.id.mgListviewItemIcon);
                    dVar.f63303b = (ImageView) viewInflate5.findViewById(R.id.giftPackageSwich);
                    dVar.f63304c = (TextView) viewInflate5.findViewById(R.id.mgListviewItemAppname);
                    dVar.f63305d = (ProgressBar) viewInflate5.findViewById(R.id.progressBarZip);
                    dVar.f63306e = (ProgressBar) viewInflate5.findViewById(R.id.progressBar);
                    dVar.f63307f = (TextView) viewInflate5.findViewById(R.id.mgListviewItemDescribe);
                    dVar.f63308g = (DownloadNormalView) viewInflate5.findViewById(R.id.dv_view);
                    dVar.f63309h = (LinearLayout) viewInflate5.findViewById(R.id.linearLayout2);
                    dVar.f63310i = (TextView) viewInflate5.findViewById(R.id.appSize);
                    dVar.f63311j = (TextView) viewInflate5.findViewById(R.id.loding_info);
                    dVar.f63312k = (LinearLayout) viewInflate5.findViewById(R.id.tipsLayout);
                    viewInflate5.setTag(dVar);
                    view2 = viewInflate5;
                    dVar2 = dVar;
                    fVar3 = null;
                    gVar2 = null;
                    cVar2 = 0;
                    view8 = view2;
                }
                fVar2 = null;
                gVar2 = null;
                view6 = view;
                gVar3 = gVar2;
                view5 = view6;
                fVar4 = fVar2;
                dVar2 = gVar3;
                cVar2 = gVar3;
                view8 = view5;
                fVar3 = fVar4;
            }
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_IMAGE_HEADER.value()) {
            gVar2 = null;
            obj = null;
            fVar = null;
            eVar = (e) view.getTag();
            view9 = view;
            fVar3 = fVar;
            cVar2 = obj;
            dVar2 = fVar;
            view8 = view9;
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_TITLE_COLLECTION.value()) {
            f fVar7 = (f) view.getTag();
            view7 = view;
            fVar5 = fVar7;
            gVar2 = null;
            view6 = view7;
            fVar2 = fVar5;
            gVar3 = gVar2;
            view5 = view6;
            fVar4 = fVar2;
            dVar2 = gVar3;
            cVar2 = gVar3;
            view8 = view5;
            fVar3 = fVar4;
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_GAMEFACTORY_LIST.value()) {
            gVar = (g) view.getTag();
            view4 = view;
            gVar2 = gVar;
            fVar4 = null;
            gVar3 = null;
            view5 = view4;
            dVar2 = gVar3;
            cVar2 = gVar3;
            view8 = view5;
            fVar3 = fVar4;
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_COLLECTION.value()) {
            cVar = (c) view.getTag();
            view3 = view;
            cVar2 = cVar;
            fVar3 = null;
            gVar2 = null;
            dVar2 = 0;
            view8 = view3;
        } else {
            if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value()) {
                dVar = (d) view.getTag();
                view2 = view;
                dVar2 = dVar;
                fVar3 = null;
                gVar2 = null;
                cVar2 = 0;
                view8 = view2;
            }
            fVar2 = null;
            gVar2 = null;
            view6 = view;
            gVar3 = gVar2;
            view5 = view6;
            fVar4 = fVar2;
            dVar2 = gVar3;
            cVar2 = gVar3;
            view8 = view5;
            fVar3 = fVar4;
        }
        PaPaBean paPaBean2 = this.f63288b.get(i10);
        if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_IMAGE_HEADER.value()) {
            f(eVar, paPaBean2);
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_TITLE_COLLECTION.value()) {
            g(fVar3, paPaBean2);
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_GAMEFACTORY_LIST.value()) {
            h(gVar2, paPaBean2);
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_COLLECTION.value()) {
            d(view8, cVar2, paPaBean2);
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value()) {
            e(dVar2, paPaBean2);
        }
        return view8;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.f63290d;
    }

    void h(g holder, PaPaBean paPaBean) {
        GameFactoryListBean.LogoInfo logoInfo = (GameFactoryListBean.LogoInfo) paPaBean.getTypeValue();
        com.join.android.app.common.utils.l.h(holder.f63317a, logoInfo.getLogo_pic());
        holder.f63319c.setText(logoInfo.getIntroduce());
        holder.f63318b.setText(logoInfo.getTitle());
    }
}
