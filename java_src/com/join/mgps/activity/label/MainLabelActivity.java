package com.join.mgps.activity.label;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.common.utils.m;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.r0;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.activity.posting.PostingActivity;
import com.join.mgps.activity.posting.PostingActivity_;
import com.join.mgps.adapter.h0;
import com.join.mgps.customview.ForumBaseHeaderView;
import com.join.mgps.customview.MainLabelHeaderView;
import com.join.mgps.customview.SlidingTabLayout6;
import com.join.mgps.dto.EmptyMessage;
import com.join.mgps.dto.MainLabelBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.fragment.LabelFragment_;
import com.join.mgps.fragment.b0;
import com.join.mgps.fragment.c0;
import com.join.mgps.fragment.v1;
import com.join.mgps.fragment.y3;
import com.join.mgps.rpc.i;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import ru.noties.scrollable.ScrollableLayout;
import ru.noties.scrollable.j;
import ru.noties.scrollable.k;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_main_label)
public class MainLabelActivity extends BaseAppCompatActivity {
    public static final int TYPE_FROM_GAME_DETAIL = 1;
    public static final int TYPE_FROM_GROUP = 2;

    @Bean
    com.join.mgps.Util.b accountUtil;
    h0 adapter;

    @ViewById
    TextView btnFocus;

    @ViewById
    Button btnSendPosts;
    b0 currentFragment;

    @Extra
    int fid;
    FragmentManager fragmentManager;

    @Extra
    int fromType;

    @ViewById
    ImageView iv_close_send_posting;

    @ViewById
    SimpleDraweeView iv_label_administrator_avatar;

    @ViewById
    ImageView iv_order;
    int keepJoinState;
    LabelFragment_[] labelFragmentList;

    @ViewById
    LinearLayout ll_label_property;

    @ViewById
    RelativeLayout ll_multi_type_posts;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    private int mLastSelectedPos;

    @ViewById
    MainLabelHeaderView mScrollableHeader;
    private h mSortPopWindow;
    private MainLabelBean mainLabelBean;

    @Extra
    String postingGroup;

    @ViewById
    RelativeLayout rlOrderBy;

    @ViewById
    RelativeLayout rl_main;

    @ViewById
    RelativeLayout rl_title;
    i rpcForumClient;

    @ViewById
    ScrollableLayout scrollableLayout;

    @ViewById
    SlidingTabLayout6 tabsLayout;

    @Extra
    int tag_id;

    @Extra
    String tag_name;

    @ViewById
    TextView tv_label_administrator_nickname;

    @ViewById
    TextView tv_label_name_head;

    @ViewById
    TextView tv_posts_counts;

    @ViewById
    ViewPager viewPager;
    private boolean isAttention = false;
    private String currentOrder = "hot";
    List<MainLabelBean.TagType> mLabelLists = new ArrayList();
    boolean lastState = false;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            MainLabelActivity mainLabelActivity = MainLabelActivity.this;
            LabelFragment_ labelFragment_ = mainLabelActivity.labelFragmentList[mainLabelActivity.viewPager.getCurrentItem()];
            boolean zY = labelFragment_.Y();
            if (zY) {
                MainLabelActivity.this.mScrollableHeader.getPostsFilterSwitch().setImageResource(R.drawable.icon_switch_yellow_close);
                labelFragment_.f0("");
            } else {
                MainLabelActivity.this.mScrollableHeader.getPostsFilterSwitch().setImageResource(R.drawable.icon_switch_yellow_open);
                labelFragment_.f0(MainLabelActivity.this.fid + "");
            }
            labelFragment_.j0(!zY);
        }
    }

    class b implements ForumBaseHeaderView.a {
        b() {
        }

        @Override // com.join.mgps.customview.ForumBaseHeaderView.a
        public void onMeasure(int height) {
            ScrollableLayout scrollableLayout = MainLabelActivity.this.scrollableLayout;
            if (scrollableLayout != null) {
                scrollableLayout.setMaxScrollY(height);
                ViewGroup.LayoutParams layoutParams = MainLabelActivity.this.viewPager.getLayoutParams();
                layoutParams.width = -1;
                int measuredHeight = MainLabelActivity.this.rl_main.getMeasuredHeight() - MainLabelActivity.this.rl_title.getMeasuredHeight();
                if (MainLabelActivity.this.ll_multi_type_posts.getVisibility() == 0) {
                    measuredHeight -= MainLabelActivity.this.ll_multi_type_posts.getMeasuredHeight();
                }
                layoutParams.height = measuredHeight;
                MainLabelActivity.this.viewPager.setLayoutParams(layoutParams);
            }
        }
    }

    class c implements ViewPager.OnPageChangeListener {
        c() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            if (MainLabelActivity.this.labelFragmentList[position].Y()) {
                MainLabelActivity.this.mScrollableHeader.getPostsFilterSwitch().setImageResource(R.drawable.icon_switch_yellow_open);
            } else {
                MainLabelActivity.this.mScrollableHeader.getPostsFilterSwitch().setImageResource(R.drawable.icon_switch_yellow_close);
            }
        }
    }

    class d implements ViewPager.OnPageChangeListener {
        d() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            try {
                MainLabelActivity mainLabelActivity = MainLabelActivity.this;
                h0 h0Var = mainLabelActivity.adapter;
                Fragment item = h0Var != null ? h0Var.getItem(mainLabelActivity.mLastSelectedPos) : null;
                if (item != null) {
                    item.onPause();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            MainLabelActivity.this.mLastSelectedPos = position;
            MainLabelActivity.this.playVideoDelay();
        }
    }

    class e implements ru.noties.scrollable.b {
        e() {
        }

        @Override // ru.noties.scrollable.b
        public boolean i(int direction) {
            v1 currentFragment = MainLabelActivity.this.getCurrentFragment();
            return currentFragment != null && currentFragment.i(direction);
        }
    }

    class f implements j {
        f() {
        }

        @Override // ru.noties.scrollable.j
        public void C(int y10, long duration) {
            v1 currentFragment = MainLabelActivity.this.getCurrentFragment();
            if (currentFragment != null) {
                currentFragment.C(y10, duration);
            }
        }
    }

    class g implements k {
        g() {
        }

        @Override // ru.noties.scrollable.k
        public void a(int y10, int oldY, int maxY) {
            try {
                MainLabelActivity.this.changeState(y10 >= maxY + (-15));
                MainLabelActivity mainLabelActivity = MainLabelActivity.this;
                ((y3) mainLabelActivity.adapter.getItem(mainLabelActivity.mLastSelectedPos)).Q();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private void getData() {
        if (!m.j(this)) {
            showFailed();
        } else {
            showLoading1();
            getMainLabelInfo();
        }
    }

    private List<h0.a> items(List<MainLabelBean.TagType> types) {
        int size = types.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new h0.a(types.get(i10).getType_name(), newInstance(i10)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateMainUi$0(MainLabelBean mainLabelBean, View view) {
        CommentSelfListActivity_.intent(view.getContext()).a(mainLabelBean.getManager_info().getUid()).start();
    }

    private Fragment newInstance(int position) {
        LabelFragment_ labelFragment_ = this.labelFragmentList[position];
        if (labelFragment_ != null) {
            return labelFragment_;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("tag_id", this.tag_id);
        bundle.putString("tag_name", this.tag_name);
        bundle.putInt("position", position);
        bundle.putString("fid", "" + this.fid);
        bundle.putInt("type", this.mLabelLists.get(position).getType_id());
        LabelFragment_ labelFragment_2 = new LabelFragment_();
        labelFragment_2.setArguments(bundle);
        this.labelFragmentList[position] = labelFragment_2;
        return labelFragment_2;
    }

    @AfterViews
    void afterViews() {
        this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        if (this.fid <= 0) {
            this.fromType = 1;
        }
        this.fragmentManager = getSupportFragmentManager();
        this.mScrollableHeader.setOnClickListener(new a());
        this.mScrollableHeader.setFilterVisibility(this.fromType == 2, this.postingGroup);
        this.scrollableLayout.setFriction(0.09f);
        this.scrollableLayout.setAutoMaxScroll(false);
        this.mScrollableHeader.setmOnMeasureHeight(new b());
        getData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void attention(int type) {
        if (!m.j(this)) {
            showToast("当前网络不可用！");
            return;
        }
        try {
            ResultResMainBean<EmptyMessage> resultResMainBeanH = this.rpcForumClient.H(this.accountUtil.getUid(), "" + this.tag_id, type, this.tag_name);
            if (resultResMainBeanH.getError() == 0) {
                boolean z10 = true;
                showToast(type == 1 ? "关注成功!" : "取消关注成功!");
                if (type != 1) {
                    z10 = false;
                }
                updateAttention(z10);
            } else {
                showToast(resultResMainBeanH.getData().getMsg());
            }
        } catch (Exception unused) {
            showToast("网络异常！");
        }
    }

    @Click
    void back_image() {
        finish();
    }

    @Click
    void btnFocus() {
        if (AccountUtil_.getInstance_(this).isTourist()) {
            showDialog();
        } else if (this.isAttention) {
            attention(0);
        } else {
            attention(1);
        }
    }

    @Click
    void btnSendPosts() {
        if (IntentUtil.getInstance().goLogin(this)) {
            showToast(getString(R.string.forum_user_not_login));
            return;
        }
        if (this.mainLabelBean != null && this.mLabelLists.size() > 0) {
            MainLabelBean mainLabelBean = this.mainLabelBean;
            String forum_name = mainLabelBean != null ? mainLabelBean.getForum_name() : "";
            if (TextUtils.isEmpty(this.postingGroup)) {
                forum_name = this.postingGroup;
            }
            PostingActivity_.intent(this).e(this.mainLabelBean.getTag_name()).b(100).h(this.tag_id + "").i(this.tag_name + "").g(getType()).f(forum_name).a(this.fid).startForResult(PostingActivity.ACTIVITY_RESULT_POSTING);
        }
    }

    void changeState(boolean show) {
        if (this.lastState != show) {
            this.tv_label_name_head.setVisibility(show ? 0 : 8);
            this.btnFocus.setVisibility(show ? 0 : 8);
            this.ll_label_property.setVisibility(show ? 8 : 0);
            this.lastState = show;
        }
    }

    v1 getCurrentFragment() {
        b0 b0Var = this.currentFragment;
        if (b0Var != null) {
            return b0Var.a();
        }
        return null;
    }

    public int getCurrentItem() {
        ViewPager viewPager = this.viewPager;
        if (viewPager != null) {
            return viewPager.getCurrentItem();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getMainLabelInfo() {
        try {
            ResultResMainBean<MainLabelBean> resultResMainBeanS = this.rpcForumClient.S(this.accountUtil.getUid(), this.tag_id, this.fid, this.tag_name);
            if (resultResMainBeanS.getError() == 0) {
                updateMainUi(resultResMainBeanS.getData());
                hideLoading();
            } else {
                showFailed();
            }
        } catch (Exception e10) {
            g1.b("MainLabel", "getMainLabelInfo Exception:" + e10.getMessage());
            showFailed();
        }
    }

    int getType() {
        return this.mLabelLists.size() <= 1 ? this.mLabelLists.get(0).getType_id() : this.mLabelLists.get(this.viewPager.getCurrentItem()).getType_id();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoading() {
        this.rl_main.setVisibility(0);
        this.loding_layout.setVisibility(8);
        this.loding_faile.setVisibility(8);
    }

    void initTab(final MainLabelBean mainLabelBean) {
        List<MainLabelBean.TagType> tag_type = mainLabelBean.getTag_type();
        this.mLabelLists.clear();
        this.mLabelLists.addAll(tag_type);
        int size = this.mLabelLists.size();
        this.labelFragmentList = new LabelFragment_[size];
        h0 h0Var = new h0(getSupportFragmentManager());
        this.adapter = h0Var;
        h0Var.e(items(tag_type));
        this.viewPager.setAdapter(this.adapter);
        this.viewPager.setOffscreenPageLimit(this.adapter.getCount());
        this.viewPager.addOnPageChangeListener(new c());
        this.tabsLayout.setViewPager(this.viewPager);
        this.tabsLayout.setOnPageChangeListener(new d());
        this.tabsLayout.g();
        this.adapter.notifyDataSetChanged();
        this.scrollableLayout.setDraggableView(this.mScrollableHeader);
        if (size <= 1) {
            this.ll_multi_type_posts.setVisibility(8);
            this.scrollableLayout.removeView(this.ll_multi_type_posts);
        } else {
            this.ll_multi_type_posts.setVisibility(0);
            if (this.adapter.getCount() <= 4) {
                this.tabsLayout.setShouldExpand(true);
            } else {
                this.tabsLayout.setShouldExpand(false);
            }
        }
        this.currentFragment = new c0(this.viewPager, getSupportFragmentManager());
        this.scrollableLayout.setCanScrollVerticallyDelegate(new e());
        this.scrollableLayout.setOnFlingOverListener(new f());
        this.scrollableLayout.invalidate();
        this.scrollableLayout.w(new g());
    }

    boolean isActivityFinish() {
        return isFinishing() || isDestroyed();
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 17476 && resultCode == -1 && m.j(this)) {
            LabelFragment_[] labelFragment_Arr = this.labelFragmentList;
            if (labelFragment_Arr == null || labelFragment_Arr.length <= 0) {
                getData();
            } else {
                this.currentOrder = "new";
                labelFragment_Arr[this.viewPager.getCurrentItem()].g0(this.currentOrder, true);
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        y3 y3Var;
        try {
            h0 h0Var = this.adapter;
            if (h0Var != null) {
                int count = h0Var.getCount();
                int i10 = this.mLastSelectedPos;
                if (count >= i10 && (y3Var = (y3) this.adapter.getItem(i10)) != null && y3Var.onBackPressedMy()) {
                    return;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        super.onBackPressed();
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        h hVar = this.mSortPopWindow;
        if (hVar != null) {
            hVar.dismiss();
        }
    }

    public void onFocusClick() {
        btnFocus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void playVideoDelay() {
        ((y3) this.adapter.getItem(this.mLastSelectedPos)).Q();
    }

    @Click
    void relodingimag() {
        getData();
    }

    @Click
    void rlOrderBy() {
        showSort(this.iv_order);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showDialog() {
        com.join.mgps.Util.h0.h0(this).m(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showFailed() {
        this.rl_main.setVisibility(8);
        this.loding_layout.setVisibility(8);
        this.loding_faile.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoading1() {
        try {
            this.rl_main.setVisibility(8);
            this.loding_layout.setVisibility(0);
            this.loding_faile.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void showSort(View view) {
        h hVar = this.mSortPopWindow;
        if (hVar != null && hVar.isShowing()) {
            this.mSortPopWindow.dismiss();
        }
        if (this.mSortPopWindow == null) {
            this.mSortPopWindow = new h(this, -2, -2);
        }
        h hVar2 = this.mSortPopWindow;
        if (hVar2 != null && hVar2.getContentView() != null) {
            this.mSortPopWindow.getContentView().measure(0, 0);
            this.mSortPopWindow.setHeight(this.mSortPopWindow.getContentView().getMeasuredHeight());
        }
        this.mSortPopWindow.showAsDropDown(view, view.getMeasuredWidth() - getResources().getDimensionPixelOffset(R.dimen.dp15), 0);
        this.mSortPopWindow.e(this.currentOrder);
        this.mSortPopWindow.getContentView().invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String info) {
        if (isActivityFinish()) {
            return;
        }
        a3.b(this).d(info);
    }

    void sortLabelListByOrder(String order) {
        this.currentOrder = order;
        this.labelFragmentList[this.viewPager.getCurrentItem()].g0(order, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateAttention(boolean isAttention) {
        if (isAttention) {
            this.btnFocus.setText("已关注");
            MainLabelHeaderView mainLabelHeaderView = this.mScrollableHeader;
            if (mainLabelHeaderView != null) {
                mainLabelHeaderView.d("已关注");
            }
        } else {
            this.btnFocus.setText("关注");
            MainLabelHeaderView mainLabelHeaderView2 = this.mScrollableHeader;
            if (mainLabelHeaderView2 != null) {
                mainLabelHeaderView2.d("关注");
            }
        }
        this.isAttention = isAttention;
        if ((this.keepJoinState == 1) != isAttention) {
            com.join.mgps.pref.h.n(this).o0(true);
        } else {
            com.join.mgps.pref.h.n(this).o0(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateMainUi(final MainLabelBean mainLabelBean) {
        if (com.join.mgps.pref.h.n(this).A() || this.mainLabelBean == null || mainLabelBean.getIs_follow() == mainLabelBean.getIs_follow()) {
            this.keepJoinState = mainLabelBean.getIs_follow();
        } else {
            com.join.mgps.pref.h.n(this).o0(true);
        }
        this.mainLabelBean = mainLabelBean;
        if (this.tag_id == 0) {
            this.tag_id = mainLabelBean.getTag_id();
        }
        this.tv_posts_counts.setText(r0.R(mainLabelBean.getPosts()) + "帖子");
        l.j(this.iv_label_administrator_avatar, mainLabelBean.getManager_info().getAvatar_src(), l.D(this, R.color.white, R.dimen.live_avatar_round_width_first_width, R.dimen.live_avatar_round_stroke_width));
        this.tv_label_administrator_nickname.setText(mainLabelBean.getManager_info().getNickname());
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.join.mgps.activity.label.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainLabelActivity.lambda$updateMainUi$0(mainLabelBean, view);
            }
        };
        this.iv_label_administrator_avatar.setOnClickListener(onClickListener);
        this.tv_label_administrator_nickname.setOnClickListener(onClickListener);
        this.mScrollableHeader.setViewData(mainLabelBean);
        this.tv_label_name_head.setText("#" + mainLabelBean.getTag_name() + "#");
        if (mainLabelBean.is_allow()) {
            this.btnSendPosts.setVisibility(0);
        } else {
            this.btnSendPosts.setVisibility(8);
        }
        updateAttention(mainLabelBean.getIs_follow() == 1);
        initTab(mainLabelBean);
    }

    class h extends PopupWindow {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f57413a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f57414b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        RadioGroup f57415c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        RadioButton f57416d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        RadioButton f57417e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        RadioButton f57418f;

        class a implements View.OnTouchListener {
            a() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v10, MotionEvent event) {
                if (event.getAction() != 4) {
                    return false;
                }
                h.this.dismiss();
                return true;
            }
        }

        public h(Context context) {
            super(context);
            this.f57413a = context;
            c();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(RadioGroup radioGroup, int i10) {
            if (i10 == R.id.radioButton_mostReply) {
                MainLabelActivity.this.sortLabelListByOrder("");
            } else if (i10 == R.id.radioButton_new) {
                MainLabelActivity.this.sortLabelListByOrder("new");
            } else if (i10 == R.id.radioButton_hot) {
                MainLabelActivity.this.sortLabelListByOrder("hot");
            }
            dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e(String orderBy) {
            this.f57414b = orderBy;
            if (orderBy.equals("new")) {
                this.f57415c.check(R.id.radioButton_new);
            } else if (this.f57414b.equals("hot")) {
                this.f57415c.check(R.id.radioButton_hot);
            } else {
                this.f57415c.check(R.id.radioButton_mostReply);
            }
        }

        private void f() {
            setBackgroundDrawable(new BitmapDrawable());
            setFocusable(true);
            setTouchable(true);
            setOutsideTouchable(true);
            setTouchInterceptor(new a());
        }

        void c() {
            View viewInflate = LayoutInflater.from(this.f57413a).inflate(R.layout.pop_lable_list_sort, (ViewGroup) null);
            setContentView(viewInflate);
            setWidth(-2);
            setHeight(-2);
            f();
            RadioGroup radioGroup = (RadioGroup) viewInflate.findViewById(R.id.rgSort);
            this.f57415c = radioGroup;
            radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.join.mgps.activity.label.b
                @Override // android.widget.RadioGroup.OnCheckedChangeListener
                public final void onCheckedChanged(RadioGroup radioGroup2, int i10) {
                    this.f57443a.d(radioGroup2, i10);
                }
            });
        }

        public h(Context mContext, int width, int height) {
            super(width, height);
            this.f57413a = mContext;
            c();
        }
    }
}
