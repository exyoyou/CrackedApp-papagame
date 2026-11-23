package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.n3;
import com.join.mgps.Util.t2;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumGroupHeaderView extends ForumBaseHeaderView {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    SimpleDraweeView f64896d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextView f64897e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f64898f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    View f64899g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    View f64900h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    SimpleDraweeView f64901i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    SimpleDraweeView f64902j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    SimpleDraweeView f64903k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    SimpleDraweeView f64904l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    SimpleDraweeView f64905m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    TextView f64906n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    TextView f64907o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    WrapContentListView f64908p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    View f64909q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    ForumBaseAdapter f64910r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ArrayList<Object> f64911s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ForumData.ForumGroupIndex f64912t;

    public ForumGroupHeaderView(@NonNull Context context) {
        super(context);
    }

    @Override // com.join.mgps.customview.ForumBaseHeaderView
    protected void a(Context context) {
        super.a(context);
        View.inflate(getContext(), R.layout.mg_view_forum_group_header, this);
        this.f64896d = (SimpleDraweeView) n3.b(this, R.id.icon);
        this.f64897e = (TextView) n3.b(this, R.id.name);
        this.f64898f = (TextView) n3.b(this, R.id.desc);
        this.f64899g = n3.b(this, R.id.arrow);
        this.f64900h = n3.b(this, R.id.arrowParent);
        this.f64901i = (SimpleDraweeView) n3.b(this, R.id.img1);
        this.f64902j = (SimpleDraweeView) n3.b(this, R.id.img2);
        this.f64903k = (SimpleDraweeView) n3.b(this, R.id.img3);
        this.f64904l = (SimpleDraweeView) n3.b(this, R.id.img4);
        this.f64905m = (SimpleDraweeView) n3.b(this, R.id.img5);
        this.f64906n = (TextView) n3.b(this, R.id.count);
        this.f64907o = (TextView) n3.b(this, R.id.follow);
        this.f64908p = (WrapContentListView) n3.b(this, R.id.wrapListView);
        this.f64909q = n3.b(this, R.id.memberLL);
        this.f64899g.setOnClickListener(this);
        this.f64900h.setOnClickListener(this);
        this.f64909q.setOnClickListener(this);
        this.f64907o.setOnClickListener(this);
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(getContext(), null);
        this.f64910r = forumBaseAdapter;
        this.f64908p.setAdapter((ListAdapter) forumBaseAdapter);
    }

    public boolean b() {
        ForumData.ForumGroupIndex forumGroupIndex = this.f64912t;
        return forumGroupIndex != null && forumGroupIndex.getIs_joined() == 1;
    }

    @Override // com.join.mgps.customview.ForumBaseHeaderView, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        int id2 = view.getId();
        if (id2 != R.id.memberLL && id2 == R.id.arrowParent) {
            if (this.f64899g.isSelected()) {
                this.f64898f.setVisibility(0);
                this.f64899g.setSelected(false);
            } else {
                this.f64898f.setVisibility(8);
                this.f64899g.setSelected(true);
            }
        }
    }

    public void setData(ForumData.ForumGroupIndex data) {
        if (data == null) {
            return;
        }
        this.f64912t = data;
        com.join.android.app.common.utils.l.h(this.f64896d, data.getForum_icon());
        this.f64897e.setText(data.getForum_name());
        this.f64898f.setText(data.getForum_description());
        int i10 = TextUtils.isEmpty(data.getForum_number()) ? 0 : Integer.parseInt(data.getForum_number());
        this.f64906n.setText(com.join.mgps.Util.r0.R(i10) + "");
        setJoinState(data.getIs_joined() == 1);
        SimpleDraweeView[] simpleDraweeViewArr = {this.f64901i, this.f64902j, this.f64903k, this.f64904l, this.f64905m};
        for (int i11 = 0; i11 < 5; i11++) {
            SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i11];
            if (data.getLast_joied() == null || i11 >= data.getLast_joied().size()) {
                simpleDraweeView.setVisibility(8);
            } else {
                simpleDraweeView.setVisibility(0);
                simpleDraweeView.getHierarchy().z(new com.facebook.drawee.drawable.o(Color.parseColor("#FFFFFF")));
                com.join.android.app.common.utils.l.y(simpleDraweeView, data.getLast_joied().get(i11));
            }
        }
        setTopPosts(data.getTop_posts());
    }

    public void setJoinState(boolean z10) {
        if (z10) {
            this.f64907o.setSelected(true);
            this.f64907o.setText("已加入");
            if (!this.f64899g.isSelected()) {
                this.f64900h.performClick();
            }
        } else {
            this.f64907o.setSelected(false);
            this.f64907o.setText("加入小组");
        }
        ForumData.ForumGroupIndex forumGroupIndex = this.f64912t;
        if (forumGroupIndex != null) {
            forumGroupIndex.setIs_joined(z10 ? 1 : 0);
        }
    }

    public void setTopPosts(List<ForumBean.ForumPostsBean> posts) {
        if (posts == null) {
            return;
        }
        if (this.f64911s == null) {
            this.f64911s = new ArrayList<>();
        }
        this.f64910r.x().clear();
        this.f64911s.clear();
        this.f64911s.addAll(posts);
        for (int i10 = 0; i10 < this.f64911s.size(); i10++) {
            ForumBean.ForumPostsBean forumPostsBean = posts.get(i10);
            this.f64910r.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.POST_TOP, new ForumBaseAdapter.r1.b0(forumPostsBean.getPid(), t2.h(forumPostsBean.getSubject()) ? forumPostsBean.getMessage() : forumPostsBean.getSubject(), forumPostsBean.getBest() > 0, forumPostsBean.isAttach_pic(), forumPostsBean.isAttach_video(), forumPostsBean.getTag_info())));
        }
        this.f64910r.notifyDataSetChanged();
    }

    public ForumGroupHeaderView(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
    }

    public ForumGroupHeaderView(@NonNull Context context, @Nullable AttributeSet attrs, @AttrRes int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
