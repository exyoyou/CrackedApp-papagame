package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.RecommendInfomationBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class d1 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f61487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<RecommendInfomationBean> f61488c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinearLayout.LayoutParams f61489d;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f61490b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String[] f61491c;

        a(final int val$imgIndex, final String[] val$rawPicList) {
            this.f61490b = val$imgIndex;
            this.f61491c = val$rawPicList;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.join.mgps.Util.r0.G0(v10.getContext(), this.f61490b, this.f61491c);
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f61493b;

        b(final int val$pid) {
            this.f61493b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(this.f61493b);
            com.join.mgps.Util.r0.v0(d1.this.f61487b, forumPostsBean);
        }
    }

    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f61495a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public RelativeLayout f61496b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f61497c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f61498d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f61499e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f61500f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f61501g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f61502h;

        public c(View convertView) {
            this.f61496b = (RelativeLayout) convertView.findViewById(R.id.forum_post_media_container);
            this.f61495a = (TextView) convertView.findViewById(R.id.images_count);
            convertView.setTag(this);
        }
    }

    public class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f61504a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f61505b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f61506c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public LinearLayout f61507d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f61508e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SimpleDraweeView f61509f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f61510g;

        public d() {
        }
    }

    public d1(Context context) {
        this.f61487b = context;
    }

    private View b(int position, View view, ViewGroup viewGroup) {
        View viewInflate;
        d dVar;
        if (view == null) {
            dVar = new d();
            viewInflate = LayoutInflater.from(this.f61487b).inflate(R.layout.mg_gamedetailmore_infomation_item_top, (ViewGroup) null);
            View viewFindViewById = viewInflate.findViewById(R.id.layoutInformation);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewFindViewById.getLayoutParams();
            layoutParams.setMargins(0, 0, 0, 0);
            viewFindViewById.setLayoutParams(layoutParams);
            dVar.f61509f = (SimpleDraweeView) viewInflate.findViewById(R.id.informationImage);
            dVar.f61507d = (LinearLayout) viewInflate.findViewById(R.id.layoutInformation);
            dVar.f61504a = (TextView) viewInflate.findViewById(R.id.pubtime);
            dVar.f61510g = (TextView) viewInflate.findViewById(R.id.messageType);
            dVar.f61508e = (TextView) viewInflate.findViewById(R.id.informationTv);
            dVar.f61505b = (TextView) viewInflate.findViewById(R.id.pv);
            dVar.f61506c = (TextView) viewInflate.findViewById(R.id.uv);
            viewInflate.setTag(dVar);
        } else {
            viewInflate = view;
            dVar = (d) view.getTag();
        }
        RecommendInfomationBean recommendInfomationBean = this.f61488c.get(position);
        if (recommendInfomationBean.getPic_list().length > 0) {
            com.join.android.app.common.utils.l.h(dVar.f61509f, recommendInfomationBean.getPic_list()[0]);
            dVar.f61509f.setVisibility(0);
        } else {
            dVar.f61509f.setVisibility(8);
        }
        dVar.f61505b.setText(recommendInfomationBean.getCommit() + "");
        dVar.f61506c.setText(recommendInfomationBean.getView() + "");
        dVar.f61504a.setText(com.join.android.app.common.utils.i.b(recommendInfomationBean.getTimes()));
        dVar.f61508e.setText(recommendInfomationBean.getTitle());
        dVar.f61510g.setText(recommendInfomationBean.getType());
        if (com.join.mgps.Util.t2.h(recommendInfomationBean.getType_color())) {
            recommendInfomationBean.setType_color("#8dbbec");
        }
        if (com.join.mgps.Util.t2.i(recommendInfomationBean.getType())) {
            dVar.f61510g.setVisibility(0);
            dVar.f61510g.setTextColor(Color.parseColor(recommendInfomationBean.getType_color() + ""));
            dVar.f61510g.setBackgroundDrawable(com.join.mgps.Util.z2.a(this.f61487b, recommendInfomationBean.getType_color() + ""));
        } else {
            dVar.f61510g.setVisibility(8);
        }
        return viewInflate;
    }

    private View d(int position, View view, ViewGroup viewGroup) {
        c cVar;
        RecommendInfomationBean recommendInfomationBean = this.f61488c.get(position);
        if (view == null) {
            view = LayoutInflater.from(this.f61487b).inflate(R.layout.detial_more_information_item_image_layout, (ViewGroup) null);
            cVar = new c(view);
            cVar.f61500f = (TextView) view.findViewById(R.id.informationTv);
            cVar.f61501g = (TextView) view.findViewById(R.id.images_count);
            cVar.f61502h = (TextView) view.findViewById(R.id.messageType);
            cVar.f61497c = (TextView) view.findViewById(R.id.pubtime);
            cVar.f61498d = (TextView) view.findViewById(R.id.pv);
            cVar.f61499e = (TextView) view.findViewById(R.id.uv);
            view.setTag(cVar);
        } else {
            cVar = (c) view.getTag();
        }
        if (recommendInfomationBean == null) {
            return view;
        }
        try {
            if (com.join.mgps.Util.t2.h(recommendInfomationBean.getType_color())) {
                recommendInfomationBean.setType_color("#8dbbec");
            }
            cVar.f61502h.setText(recommendInfomationBean.getType());
            if (com.join.mgps.Util.t2.i(recommendInfomationBean.getType())) {
                cVar.f61502h.setVisibility(0);
                cVar.f61502h.setTextColor(Color.parseColor(recommendInfomationBean.getType_color() + ""));
                cVar.f61502h.setBackgroundDrawable(com.join.mgps.Util.z2.a(this.f61487b, recommendInfomationBean.getType_color() + ""));
            } else {
                cVar.f61502h.setVisibility(8);
            }
            cVar.f61501g.setVisibility(8);
            cVar.f61498d.setText(recommendInfomationBean.getCommit() + "");
            cVar.f61499e.setText(recommendInfomationBean.getView() + "");
            cVar.f61497c.setText(com.join.android.app.common.utils.i.b(recommendInfomationBean.getTimes()));
            cVar.f61500f.setText(recommendInfomationBean.getTitle());
            f(cVar.f61496b, recommendInfomationBean);
            h(view, recommendInfomationBean.getPost_id());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return view;
    }

    private void f(RelativeLayout container, RecommendInfomationBean item) {
        item.getPic_list();
        if (this.f61489d == null) {
            this.f61489d = e();
        }
        String[] pic_list = item.getPic_list();
        int[] iArr = {R.id.img_m_1, R.id.img_m_2, R.id.img_m_3};
        for (int i10 = 0; i10 < 3; i10++) {
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) container.findViewById(iArr[i10]);
            if (i10 >= item.getPic_list().length) {
                simpleDraweeView.setVisibility(8);
            } else {
                g(simpleDraweeView, i10, item.getPic_list()[i10], i10 + 0, pic_list);
            }
        }
    }

    public List<RecommendInfomationBean> c() {
        if (this.f61488c == null) {
            this.f61488c = new ArrayList();
        }
        return this.f61488c;
    }

    LinearLayout.LayoutParams e() {
        DisplayMetrics displayMetrics = this.f61487b.getResources().getDisplayMetrics();
        int dimensionPixelSize = (int) (((displayMetrics.widthPixels - (this.f61487b.getResources().getDimensionPixelSize(R.dimen.dp24) * 2)) - ((displayMetrics.density * 6.0f) * 2.0f)) / 3.0f);
        return new LinearLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize);
    }

    void g(SimpleDraweeView img, int showIndex, String url, final int imgIndex, final String[] rawPicList) {
        if (this.f61489d == null) {
            this.f61489d = e();
        }
        int i10 = (int) (this.f61487b.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f61489d;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
        if (showIndex > 0) {
            layoutParams2.setMargins(i10, 0, 0, 0);
        } else {
            layoutParams2.setMargins(0, 0, 0, 0);
        }
        if (com.join.mgps.Util.t2.h(url)) {
            img.setVisibility(8);
            return;
        }
        img.setVisibility(0);
        img.setLayoutParams(layoutParams2);
        img.setScaleType(ImageView.ScaleType.CENTER_CROP);
        com.join.android.app.common.utils.l.i(img, url, com.facebook.drawee.drawable.s.c.f27292i);
        img.setOnClickListener(new a(imgIndex, rawPicList));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f61488c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        return this.f61488c.get(position).getPic_list().length >= 3 ? 1 : 2;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        int itemViewType = getItemViewType(position);
        RecommendInfomationBean recommendInfomationBean = this.f61488c.get(position);
        if (itemViewType == 1) {
            com.join.mgps.Util.g1.d("Strategy", "111" + recommendInfomationBean.getPic_list().length);
            return d(position, convertView, parent);
        }
        if (itemViewType != 2) {
            return convertView;
        }
        com.join.mgps.Util.g1.d("Strategy", "222" + recommendInfomationBean.getPic_list().length);
        return b(position, convertView, parent);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }

    public void h(View v10, final int pid) {
        v10.setOnClickListener(new b(pid));
    }

    public d1() {
    }
}
