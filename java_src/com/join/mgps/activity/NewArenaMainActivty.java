package com.join.mgps.activity;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.haima.hmcp.proto.GSSDK;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.ScrollTextViewLayout;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activty_new_arena)
public class NewArenaMainActivty extends FriendActivity {
    private Animation animation;
    TextView biground;
    LinearLayout downloadLayout;
    ImageView downloadLine;
    private FragmentManager fragmentManager;
    ImageView hasNewFinishedGameImage;
    ImageView imageLoading;

    @ViewById
    RelativeLayout layout_others;

    @ViewById
    FrameLayout mg_mian_fragmentlayout;
    private com.join.mgps.fragment.f4 newArenaMainFragment;
    TextView scroll_text;
    ScrollTextViewLayout scroll_text_layout;
    private Context context = this;
    private int num = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f55187n = 0;

    class a implements Animation.AnimationListener {
        a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    @AfterViews
    void afterViews() {
        setSystemUiHide(true);
        if (!org.greenrobot.eventbus.c.f().o(this)) {
            com.join.mgps.Util.j0.a().d(this);
        }
        getWindow().getDecorView().setSystemUiVisibility(GSSDK.OneInputOPData.InputOP.OP_XINPUT_THUMB_LY_VALUE);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        this.fragmentManager = supportFragmentManager;
        FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
        View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.download_title_layout, (ViewGroup) null);
        this.biground = (TextView) viewInflate.findViewById(R.id.biground);
        this.downloadLayout = (LinearLayout) viewInflate.findViewById(R.id.downloadLayout);
        this.scroll_text_layout = (ScrollTextViewLayout) viewInflate.findViewById(R.id.scroll_text_layout);
        this.scroll_text = (TextView) viewInflate.findViewById(R.id.scroll_text);
        this.hasNewFinishedGameImage = (ImageView) viewInflate.findViewById(R.id.hasNewFinishedGameImage);
        this.downloadLine = (ImageView) viewInflate.findViewById(R.id.downloadLine);
        this.imageLoading = (ImageView) viewInflate.findViewById(R.id.imageLoading);
        this.downloadLayout.setVisibility(8);
        this.layout_others.removeAllViews();
        this.layout_others.addView(viewInflate);
        com.join.mgps.fragment.f4 f4Var = this.newArenaMainFragment;
        if (f4Var == null) {
            com.join.mgps.fragment.g4 g4Var = new com.join.mgps.fragment.g4();
            this.newArenaMainFragment = g4Var;
            fragmentTransactionBeginTransaction.add(R.id.mg_mian_fragmentlayout, g4Var);
        } else {
            fragmentTransactionBeginTransaction.show(f4Var);
        }
        try {
            fragmentTransactionBeginTransaction.commit();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        checkDownlodingNumber();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkDownlodingNumber() {
        this.num = q5.f.M().V();
        this.f55187n = q5.f.M().Z(this);
        updateLine(q5.f.M().d0());
        int i10 = this.num;
        if (i10 != 0) {
            updateDownloadingPoint(i10);
        } else if (this.f55187n != 0) {
            updateNoOpenPoint();
        } else {
            updateHidePoint();
        }
    }

    @Click
    void layoutBack() {
        finish();
    }

    @Click
    void layout_others() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        this.type = "BATTLE_HOME_PAGE";
        super.onCreate(savedInstanceState);
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        if (downloadTaskEvent.c() != 8) {
            checkDownlodingNumber();
        }
    }

    void startLineAnimation() {
        this.downloadLine.setImageResource(R.drawable.line_blue_bg);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this, R.anim.img_translate);
        this.animation = animationLoadAnimation;
        animationLoadAnimation.setFillAfter(true);
        this.imageLoading.setVisibility(8);
        this.imageLoading.startAnimation(this.animation);
        this.animation.setAnimationListener(new a());
    }

    void stopLineAnimation() {
        this.imageLoading.clearAnimation();
        this.imageLoading.setVisibility(8);
        this.downloadLine.setImageResource(R.drawable.line_white_bg);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadingPoint(int number) {
        this.biground.setVisibility(8);
        if (number < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.biground.getLayoutParams();
            layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            this.biground.setLayoutParams(layoutParams);
            this.biground.setCompoundDrawables(null, null, null, null);
            this.biground.setBackgroundResource(R.drawable.mygame_big_round);
            this.biground.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.biground.getLayoutParams();
            layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
            layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams2.setMargins(0, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 4, 0);
            this.biground.setGravity(17);
            this.biground.setLayoutParams(layoutParams2);
            this.biground.setCompoundDrawables(null, null, null, null);
            this.biground.setBackgroundResource(R.drawable.message_round);
            this.biground.setPadding(1, 0, 2, 1);
        }
        this.biground.setText(number + "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateHidePoint() {
        stopLineAnimation();
        this.biground.setVisibility(8);
        this.biground.setText("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateLine(int downloadingNumber) {
        this.scroll_text_layout.setDrawable(getResources().getDrawable(R.drawable.papa_download_butn));
        if (downloadingNumber == 0) {
            stopLineAnimation();
        } else {
            this.downloadLine.setImageResource(R.drawable.line_blue_bg);
            startLineAnimation();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateNoOpenPoint() {
        stopLineAnimation();
        this.biground.setVisibility(8);
        this.biground.setText("");
        Drawable drawable = getResources().getDrawable(R.drawable.mygame_litle_round);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
    }
}
