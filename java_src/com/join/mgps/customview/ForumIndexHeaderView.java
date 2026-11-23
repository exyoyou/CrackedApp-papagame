package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.n3;
import com.join.mgps.activity.LocalGameActivity;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.RecommenGroup;
import com.join.mgps.dto.RecommendLabelTag;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumIndexHeaderView extends LinearLayout implements View.OnClickListener {
    ForumBaseAdapter A;
    private List<RecommendLabelTag> B;
    private List<RecommenGroup> C;
    Animation D;
    LinearLayout.LayoutParams E;
    List<Integer> F;
    View.OnClickListener G;
    c H;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ViewPagerWithADs f64913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    View f64914c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f64915d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    View f64916e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f64917f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    WrapContentListView f64918g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    TextView f64919h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    View f64920i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    LinearLayout f64921j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    LinearLayout f64922k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    View f64923l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    View f64924m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    MyFlowLayout f64925n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    View f64926o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    View f64927p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    TextView f64928q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    View f64929r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    View f64930s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    View f64931t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    SimpleDraweeView f64932u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    SimpleDraweeView f64933v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    SimpleDraweeView f64934w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    SimpleDraweeView f64935x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private List<BannerBean> f64936y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private volatile List<RecommenGroup> f64937z;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ IntentDateBean f64938b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f64939c;

        a(final IntentDateBean val$intentDateBean, final int val$position) {
            this.f64938b = val$intentDateBean;
            this.f64939c = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            Context context = v10.getContext();
            if (this.f64938b == null) {
                return;
            }
            IntentUtil.getInstance().intentActivity(context, this.f64938b);
            int i10 = this.f64939c + 1;
            com.papa.sim.statistic.t.l(context).u0("banner1-" + i10, AccountUtil_.getInstance_(context).getUid());
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecommendLabelTag f64941b;

        b(final RecommendLabelTag val$tag) {
            this.f64941b = val$tag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean zIsSelected = view.isSelected();
            view.setSelected(!zIsSelected);
            if (!zIsSelected) {
                ForumIndexHeaderView.this.F.add(Integer.valueOf(this.f64941b.getTag_id()));
            } else if (ForumIndexHeaderView.this.F.contains(Integer.valueOf(this.f64941b.getTag_id()))) {
                ForumIndexHeaderView.this.F.remove(Integer.valueOf(this.f64941b.getTag_id()));
            }
            if (ForumIndexHeaderView.this.F.size() >= 3) {
                ForumIndexHeaderView forumIndexHeaderView = ForumIndexHeaderView.this;
                forumIndexHeaderView.f64928q.setText(forumIndexHeaderView.getResources().getString(R.string.forum_label_recomm));
                ForumIndexHeaderView.this.f64928q.setEnabled(true);
            } else {
                ForumIndexHeaderView forumIndexHeaderView2 = ForumIndexHeaderView.this;
                forumIndexHeaderView2.f64928q.setText(forumIndexHeaderView2.getResources().getString(R.string.forum_label_recomm_disable));
                ForumIndexHeaderView.this.f64928q.setEnabled(false);
            }
        }
    }

    public interface c {
        void onMeasure(int height);
    }

    public ForumIndexHeaderView(@NonNull Context context) {
        super(context);
        this.F = new ArrayList();
        this.G = null;
        a(context);
    }

    private void a(Context context) {
        setOrientation(1);
        View.inflate(context, R.layout.mg_view_forum_index_header, this);
        this.f64913b = (ViewPagerWithADs) n3.b(this, R.id.ad_viewpager);
        this.f64914c = n3.b(this, R.id.section_follow);
        this.f64915d = (TextView) n3.b(this, R.id.title);
        this.f64916e = n3.b(this, R.id.more);
        this.f64917f = (TextView) n3.b(this, R.id.moreTv);
        this.f64918g = (WrapContentListView) n3.b(this, R.id.wrapListView);
        this.f64919h = (TextView) n3.b(this, R.id.forum_more);
        this.f64920i = n3.b(this, R.id.llForumMore);
        this.f64921j = (LinearLayout) n3.b(this, R.id.rlTagFollow);
        this.f64922k = (LinearLayout) n3.b(this, R.id.rlTagFollowB);
        this.f64924m = n3.b(this, R.id.forumExtFunc);
        this.f64923l = n3.b(this, R.id.rlTagTip);
        this.f64925n = (MyFlowLayout) n3.b(this, R.id.flowLayout);
        this.f64926o = n3.b(this, R.id.refreshTag);
        this.f64927p = n3.b(this, R.id.ivRefresh);
        this.f64928q = (TextView) n3.b(this, R.id.forumRecomm);
        this.f64930s = n3.b(this, R.id.llMyForum);
        this.f64931t = n3.b(this, R.id.llGroupAll);
        this.f64929r = n3.b(this, R.id.rlAdParent);
        this.f64932u = (SimpleDraweeView) n3.b(this, R.id.layout_forum_ad_1);
        this.f64933v = (SimpleDraweeView) n3.b(this, R.id.layout_forum_ad_2);
        this.f64934w = (SimpleDraweeView) n3.b(this, R.id.layout_forum_ad_3);
        this.f64935x = (SimpleDraweeView) n3.b(this, R.id.layout_forum_ad_4);
        this.f64926o.setOnClickListener(this);
        this.f64928q.setOnClickListener(this);
        this.f64924m.setOnClickListener(this);
        this.f64916e.setOnClickListener(this);
        this.f64919h.setOnClickListener(this);
        this.f64920i.setOnClickListener(this);
        this.f64930s.setOnClickListener(this);
        this.f64931t.setOnClickListener(this);
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(getContext(), null);
        this.A = forumBaseAdapter;
        this.f64918g.setAdapter((ListAdapter) forumBaseAdapter);
        g();
    }

    private boolean b() {
        List<RecommenGroup> list = this.C;
        return list != null && list.size() > 0;
    }

    private View c(final RecommendLabelTag tag) {
        View viewInflate = View.inflate(getContext(), R.layout.forum_group_tag_item1, null);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        marginLayoutParams.rightMargin = (int) TypedValue.applyDimension(1, 10.0f, getResources().getDisplayMetrics());
        marginLayoutParams.bottomMargin = (int) TypedValue.applyDimension(1, 10.0f, getResources().getDisplayMetrics());
        viewInflate.setLayoutParams(marginLayoutParams);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tagTv);
        if (textView == null) {
            return null;
        }
        textView.setText("#" + tag.getTag_name() + "#");
        textView.setOnClickListener(new b(tag));
        if (this.F.contains(Integer.valueOf(tag.getTag_id()))) {
            textView.setSelected(true);
        }
        return viewInflate;
    }

    private void d() {
        if (this.B == null) {
            return;
        }
        this.f64925n.removeAllViews();
        Iterator<RecommendLabelTag> it2 = this.B.iterator();
        while (it2.hasNext()) {
            View viewC = c(it2.next());
            if (viewC != null) {
                this.f64925n.addView(viewC);
            }
        }
        this.f64925n.invalidate();
    }

    private void f(final SimpleDraweeView imageView, BannerBean bean, final int position) {
        if (bean == null || imageView == null) {
            return;
        }
        com.join.android.app.common.utils.l.j(imageView, bean.getPic_remote(), com.join.android.app.common.utils.l.A(imageView.getContext()));
        if (this.E == null) {
            float f10 = getResources().getDisplayMetrics().density;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
            int i10 = ((int) (getResources().getDisplayMetrics().widthPixels - (f10 * 18.0f))) / 2;
            layoutParams.width = i10;
            layoutParams.height = (int) ((i10 * 1.0f) / 2.07f);
            this.E = layoutParams;
        }
        imageView.setLayoutParams(this.E);
        IntentDateBean intentDateBeanJ0 = com.join.mgps.Util.r0.j0(bean);
        ExtBean extBean = new ExtBean();
        extBean.setFrom("forum");
        extBean.setPosition("banner" + (position + 1));
        intentDateBeanJ0.setExtBean(extBean);
        imageView.setOnClickListener(new a(intentDateBeanJ0, position));
    }

    private void setBanner(final List<BannerBean> datas) {
        if (this.f64936y == null) {
            this.f64936y = new ArrayList();
        }
        this.f64936y.clear();
        if (datas != null) {
            this.f64936y.addAll(datas);
        }
        SimpleDraweeView[] simpleDraweeViewArr = {this.f64932u, this.f64933v, this.f64934w, this.f64935x};
        int i10 = 0;
        while (true) {
            List<BannerBean> list = this.f64936y;
            if (list == null || i10 >= list.size()) {
                break;
            }
            BannerBean bannerBean = this.f64936y.get(i10);
            SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i10];
            f(simpleDraweeView, bannerBean, i10);
            if (i10 == 1 || i10 == 3) {
                try {
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(simpleDraweeView.getLayoutParams().width, simpleDraweeView.getLayoutParams().height);
                    layoutParams.setMargins((int) (simpleDraweeView.getResources().getDisplayMetrics().density * 6.0f), 0, 0, 0);
                    simpleDraweeView.setLayoutParams(layoutParams);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            i10++;
        }
        List<BannerBean> list2 = this.f64936y;
        if (list2 == null) {
            this.f64929r.setVisibility(8);
            return;
        }
        if (list2.size() < 2) {
            this.f64929r.setVisibility(8);
        } else if (this.f64936y.size() < 4) {
            ViewGroup viewGroup = (ViewGroup) simpleDraweeViewArr[2].getParent();
            viewGroup.setVisibility(8);
            ((LinearLayout.LayoutParams) viewGroup.getLayoutParams()).topMargin = 0;
        }
    }

    private void setBanner1(final List<BannerBean> datas) {
        if (this.f64913b == null) {
            return;
        }
        if (datas == null || datas.size() <= 0) {
            this.f64913b.setVisibility(8);
            return;
        }
        if (this.f64936y == null) {
            this.f64936y = new ArrayList();
        }
        this.f64936y.clear();
        this.f64936y.addAll(datas);
        if (this.f64913b.getVisibility() == 8) {
            this.f64913b.setVisibility(0);
        }
        this.f64913b.setAll(getContext(), this.f64936y, (int) getResources().getDimension(R.dimen.wdp25), (int) getResources().getDimension(R.dimen.wdp62), 4000, 1);
    }

    void e() {
        if (b()) {
            this.f64915d.setText("我的小组");
            this.f64917f.setText(LocalGameActivity.ALL);
            this.f64919h.setText("发现更多小组");
        } else {
            this.f64915d.setText("推荐小组");
            this.f64917f.setText(LocalGameActivity.ALL);
            this.f64919h.setText("发现更多小组");
        }
    }

    void g() {
        if (this.f64936y != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.f64936y);
            setBanner(arrayList);
        }
    }

    public String getSelectedIds() {
        int i10 = 0;
        String string = "";
        while (true) {
            List<Integer> list = this.F;
            if (list == null || i10 >= list.size()) {
                break;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(string);
            sb2.append(this.F.get(i10));
            sb2.append(i10 == this.F.size() + (-1) ? "" : ",");
            string = sb2.toString();
            i10++;
        }
        return string;
    }

    public List<Integer> getSelectedLabel() {
        return this.F;
    }

    public c getmOnMeasureHeight() {
        return this.H;
    }

    public void h() {
        if (this.f64927p == null) {
            return;
        }
        if (this.D == null) {
            RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -360.0f, 1, 0.5f, 1, 0.5f);
            this.D = rotateAnimation;
            rotateAnimation.setDuration(300L);
            this.D.setRepeatCount(-1);
            this.D.setRepeatMode(1);
        }
        this.f64927p.startAnimation(this.D);
    }

    public void i() {
        View view = this.f64927p;
        if (view == null || this.D == null) {
            return;
        }
        view.clearAnimation();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id2 = view.getId();
        View.OnClickListener onClickListener = this.G;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
        if (id2 == R.id.forumExtFunc) {
            setLabelsTipVisibility(8);
            com.join.mgps.pref.h.n(getContext()).r0(false);
            return;
        }
        if (id2 == R.id.more) {
            if (b()) {
                IntentUtil.getInstance().goForumMyDynamicActivity(getContext());
                return;
            } else {
                IntentUtil.getInstance().goForumGroupActivity(getContext());
                return;
            }
        }
        if (id2 == R.id.llMyForum) {
            IntentUtil.getInstance().goForumMyDynamicActivity(getContext());
        } else if (id2 == R.id.llForumMore || id2 == R.id.llGroupAll) {
            IntentUtil.getInstance().goForumGroupActivity(getContext());
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int i10;
        int i11;
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int childCount = getChildCount();
        int measuredHeight = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, widthMeasureSpec, heightMeasureSpec);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof FrameLayout.LayoutParams) {
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                    int i13 = layoutParams2.leftMargin;
                    i11 = layoutParams2.topMargin;
                    i10 = layoutParams2.bottomMargin;
                } else if (layoutParams instanceof LinearLayout.LayoutParams) {
                    LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) layoutParams;
                    int i14 = layoutParams3.leftMargin;
                    i11 = layoutParams3.topMargin;
                    i10 = layoutParams3.bottomMargin;
                } else if (layoutParams instanceof RelativeLayout.LayoutParams) {
                    RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) layoutParams;
                    int i15 = layoutParams4.leftMargin;
                    i11 = layoutParams4.topMargin;
                    i10 = layoutParams4.bottomMargin;
                } else {
                    i10 = 0;
                    i11 = 0;
                }
                childAt.getMeasuredWidth();
                measuredHeight += childAt.getMeasuredHeight() + i11 + i10;
            }
        }
        if (mode != 1073741824) {
            size = 0;
        }
        if (mode2 != 1073741824) {
            size2 = measuredHeight;
        }
        setMeasuredDimension(size, size2);
        if (this.H != null) {
            this.H.onMeasure(measuredHeight + (getLayoutParams() instanceof RelativeLayout.LayoutParams ? ((RelativeLayout.LayoutParams) getLayoutParams()).bottomMargin : 0));
        }
    }

    public void setBannerData(List<BannerBean> banner) {
        setBanner(banner);
    }

    public void setHeaderClickListener(View.OnClickListener l10) {
        this.G = l10;
    }

    public synchronized void setHomepageRecommendGroup(List<RecommenGroup> recommenGroups) {
        if (recommenGroups == null) {
            return;
        }
        if (this.f64937z == null) {
            this.f64937z = new ArrayList();
        }
        this.A.x().clear();
        this.f64937z.clear();
        if (b()) {
            this.f64937z.addAll(this.C);
        } else {
            this.f64937z.addAll(recommenGroups);
        }
        boolean z10 = !AccountUtil_.getInstance_(getContext()).isTourist();
        e();
        for (int i10 = 0; i10 < this.f64937z.size(); i10++) {
            RecommenGroup recommenGroup = this.f64937z.get(i10);
            this.A.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.GROUP_ITEM, new ForumBaseAdapter.r1.d0(recommenGroup.getIcon_src(), recommenGroup.getName(), recommenGroup.getDescription(), z10, recommenGroup.getToday_posts(), recommenGroup.getFid(), b())));
        }
        this.A.notifyDataSetChanged();
    }

    public void setHomepageRecommendGroupMy(List<RecommenGroup> homepageRecommendGroupMy) {
        this.C = homepageRecommendGroupMy;
    }

    public void setHomepageRecommendLabel(List<RecommendLabelTag> homepageRecommendLabel) {
        if (homepageRecommendLabel == null) {
            return;
        }
        if (this.B == null) {
            this.B = new ArrayList();
        }
        this.B.clear();
        this.B.addAll(homepageRecommendLabel);
        d();
    }

    public void setLabelsTipVisibility(int visibility) {
        if (com.join.mgps.pref.h.n(getContext()).D()) {
            this.f64923l.setVisibility(visibility);
        } else {
            this.f64923l.setVisibility(8);
        }
    }

    public void setLabelsVisibility(int visibility) {
        this.f64921j.setVisibility(visibility);
        this.f64925n.setVisibility(visibility);
        this.f64922k.setVisibility(visibility);
    }

    public void setNoForumBanner() {
        ViewPagerWithADs viewPagerWithADs;
        List<BannerBean> list = this.f64936y;
        if ((list == null || list.size() == 0) && (viewPagerWithADs = this.f64913b) != null) {
            viewPagerWithADs.setVisibility(8);
        }
    }

    public void setmOnMeasureHeight(c mOnMeasureHeight) {
        this.H = mOnMeasureHeight;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateDefaultLayoutParams() {
        if (getOrientation() == 0) {
            return new LinearLayout.LayoutParams(-2, -2);
        }
        return getOrientation() == 1 ? new LinearLayout.LayoutParams(-1, -2) : super.generateDefaultLayoutParams();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams lp) {
        if (getOrientation() == 0) {
            return new LinearLayout.LayoutParams(-2, -2);
        }
        return getOrientation() == 1 ? new LinearLayout.LayoutParams(-1, -2) : super.generateLayoutParams(lp);
    }

    public ForumIndexHeaderView(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.F = new ArrayList();
        this.G = null;
        a(context);
    }

    public ForumIndexHeaderView(@NonNull Context context, @Nullable AttributeSet attrs, @AttrRes int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.F = new ArrayList();
        this.G = null;
        a(context);
    }
}
