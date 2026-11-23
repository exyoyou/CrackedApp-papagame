package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.MApplication;
import com.flyco.tablayout.SlidingTabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.fragment.GmaeFormPostFragment;
import com.join.mgps.fragment.GmaeFormPostFragment_;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_game_and_profile)
public class GameAndProfileActivity extends MyFragmentActivity1 {
    UserInfo accountBean;
    com.join.mgps.fragment.l3 build;
    Context context;

    @ViewById
    LinearLayout iv_back;
    GmaeFormPostFragment post;
    com.join.mgps.fragment.u3 sub;

    @ViewById
    SlidingTabLayout tableLayout;

    @ViewById
    TextView title;

    @ViewById
    RelativeLayout tv_back;

    @ViewById
    TextView tv_buildGmae;

    @Extra
    int type = 0;

    @Extra
    int uid = 0;

    @ViewById
    ViewPager viewPager;

    class a implements ViewPager.OnPageChangeListener {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i10, float v10, int i11) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            if (i10 == 0) {
                GameAndProfileActivity.this.tv_buildGmae.setVisibility(0);
            } else {
                GameAndProfileActivity.this.tv_buildGmae.setVisibility(8);
            }
        }
    }

    @AfterViews
    void AfterView() {
        this.context = this;
        MApplication.W = false;
        com.join.mgps.adapter.h0 h0Var = new com.join.mgps.adapter.h0(getSupportFragmentManager());
        ArrayList arrayList = new ArrayList();
        this.accountBean = AccountUtil_.getInstance_(this.context).getAccountData();
        this.post = new GmaeFormPostFragment_();
        this.sub = new com.join.mgps.fragment.v3();
        this.build = new com.join.mgps.fragment.m3();
        Bundle bundle = new Bundle();
        bundle.putInt("uid", this.uid);
        this.post.setArguments(bundle);
        this.sub.setArguments(bundle);
        this.build.setArguments(bundle);
        com.join.mgps.adapter.h0.a aVar = new com.join.mgps.adapter.h0.a("创建", this.build);
        com.join.mgps.adapter.h0.a aVar2 = new com.join.mgps.adapter.h0.a("订阅", this.sub);
        com.join.mgps.adapter.h0.a aVar3 = new com.join.mgps.adapter.h0.a("帖子", this.post);
        int uid = this.accountBean.getUid();
        int i10 = this.uid;
        if (uid == i10 || i10 == 0) {
            arrayList.add(aVar);
            arrayList.add(aVar2);
            arrayList.add(aVar3);
            this.tv_buildGmae.setVisibility(0);
        } else {
            this.tv_buildGmae.setVisibility(8);
            this.tableLayout.setVisibility(8);
            int i11 = this.type;
            if (i11 == 0) {
                this.title.setText("创建的游戏单");
                arrayList.add(aVar);
            } else if (i11 == 1) {
                this.title.setText("订阅的游戏单");
                arrayList.add(aVar2);
            }
        }
        h0Var.e(arrayList);
        this.viewPager.setAdapter(h0Var);
        this.viewPager.setOffscreenPageLimit(3);
        this.viewPager.setOnPageChangeListener(new a());
        this.tableLayout.setViewPager(this.viewPager);
        if (this.accountBean.getUid() == this.uid) {
            int i12 = this.type;
            if (i12 == 0) {
                this.viewPager.setCurrentItem(0);
            } else if (i12 == 1) {
                this.viewPager.setCurrentItem(1);
            } else if (i12 == 2) {
                this.viewPager.setCurrentItem(2);
            }
        }
    }

    @Click
    void iv_back() {
        finish();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (this.post instanceof GmaeFormPostFragment) {
            GmaeFormPostFragment.y0(keyCode, event);
        }
        return super.onKeyDown(keyCode, event);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.activity.MyFragmentActivity1, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (MApplication.W && this.uid == 0) {
            this.build.Q();
            MApplication.W = false;
        }
    }

    @Click
    void tv_buildGmae() {
        if (com.join.mgps.Util.t2.h(this.accountBean.getNickname()) || (this.accountBean.getAccount().equals(this.accountBean.getNickname()) && this.accountBean.getAccount().startsWith("pa"))) {
            IntentUtil.getInstance().goChangeNickname(this.context);
        } else {
            MApplication.W = true;
            startActivity(new Intent(this, (Class<?>) BuildGameFromActivity_.class));
        }
    }
}
