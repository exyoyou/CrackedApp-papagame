package com.papa91.arc.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.AnimationDrawable;
import android.net.Uri;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.Html;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.papa91.arc.EmuActivity_psp;
import com.papa91.arc.bean.EndGameAllowBean;
import com.papa91.arc.widget.LoadingImageView;
import com.papa91.arc.widget.view.MImageView;
import com.sdk.base.module.manager.SDKManager;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.ppsspp.ppsspp.R;

/* JADX INFO: loaded from: classes2.dex */
public class MenuView extends RelativeLayout implements View.OnClickListener, View.OnTouchListener {
    private final String TAG;
    ImageView alert;
    LottieAnimationView animationResult;
    LottieAnimationView animationResult2;
    LottieAnimationView animationResult3;
    ImageView btnBorderReward;
    ImageView btnExit;
    View changeDisk;
    View cheating;
    ConstraintLayout clFailed;
    ConstraintLayout clReward;
    ConstraintLayout clStart;
    ConstraintLayout clSuccess;
    ConstraintLayout clSuccess2;
    CountDownTimer countDownTimer;
    Dialog dialog;
    private CountDownTimer endGameCountDownTimer;
    View exit;
    MImageView fAchievement;
    MImageView fCheating;
    MImageView fGate;
    MImageView fHide;
    MImageView fOneKey;
    MImageView fQuickSlot;
    MImageView fScreenShot;
    MImageView fShow;
    ImageView failedSubTitle;
    FrameLayout flCountDown;
    ConstraintLayout flStart;
    View forum;
    private boolean hasGetAward;
    private boolean hiding;
    boolean isRankTimeStop;
    boolean isSound;
    boolean isVibrate;
    ImageView ivBtn;
    ImageView ivBtnReward;
    ImageView ivCountDown;
    ImageView ivEndlessPoint;
    ImageView ivEndlessPointFailed;
    ImageView iv_timer;
    ConstraintLayout llAgain;
    LinearLayout llQuest;
    LinearLayout ll_menu_left;
    LinearLayout ll_menu_right;
    LinearLayout ll_play_time;
    LoadingImageView loadingView;
    View menuBar;
    View menuBarOutSide;
    int menuBarStatue;
    MenuViewListener menuViewListener;
    long millisUntilFinish;
    View pause;
    View pauseBar;
    View performance;
    View quickSlot;
    int rankTime;
    View reload;
    View resume;
    View rl_menu_left;
    ScheduledExecutorService scheduledExecutorService;
    private boolean showAdImage;
    private boolean showChangeDisk;
    View slot;
    View stickKeys;
    TextView timer;
    View timerBg;
    View timerContainer;
    TextView tip;
    TextView tvCloseTips;
    TextView tvCloseTips2;
    TextView tvDesc;
    TextView tvPointCount;
    TextView tvPointCountFailed;
    TextView tvQuest;
    TextView tvRewardCount;
    TextView tvRewardCountDouble;
    TextView tvRewardTips1;
    TextView tvRewardTips2;
    TextView tvTime;
    TextView tvTimeCost;
    TextView tvTimeCost2;
    TextView tv_game_pass;
    TextView tv_time;
    View v_line;
    View vibrate;
    View voice;

    /* JADX INFO: renamed from: com.papa91.arc.view.MenuView$12, reason: invalid class name */
    class AnonymousClass12 extends AnimatorListenerAdapter {
        final /* synthetic */ EndGameAllowBean val$bean;
        final /* synthetic */ int val$mills;

        AnonymousClass12(int i10, EndGameAllowBean endGameAllowBean) {
            this.val$mills = i10;
            this.val$bean = endGameAllowBean;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            MenuView.this.tvTimeCost.setVisibility(0);
            float f10 = (this.val$mills * 1.0f) / 1000.0f;
            if (f10 < 60.0f) {
                new DecimalFormat("#0.00").format(f10);
            } else {
                int i10 = (int) f10;
                int i11 = i10 / 60;
                int i12 = i10 % 60;
            }
            MenuView.this.tvTimeCost.setText(this.val$bean.getElapsedTimeHint());
            if (this.val$bean.getAwardCards() <= 0 || this.val$bean.getMultipleAwardCards() <= 0) {
                MenuView.this.clReward.setVisibility(4);
            } else {
                MenuView.this.clReward.setVisibility(0);
            }
            MenuView.this.tvRewardCount.setText(this.val$bean.getAwardCards() + "");
            MenuView.this.tvRewardCountDouble.setText(this.val$bean.getMultipleAwardCards() + "");
            new Handler().postDelayed(new Runnable() { // from class: com.papa91.arc.view.MenuView.12.1
                @Override // java.lang.Runnable
                public void run() {
                    MenuView.this.tvCloseTips.setVisibility(0);
                    MenuView.this.clSuccess.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.view.MenuView.12.1.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            MenuView menuView = MenuView.this;
                            if (menuView.menuViewListener != null) {
                                if (menuView.hasGetAward || MenuView.this.clReward.getVisibility() != 0) {
                                    MenuView.this.menuViewListener.exitEndGame(false);
                                } else {
                                    MenuView.this.menuViewListener.getPassRewardPoint();
                                }
                            }
                        }
                    });
                }
            }, 1500L);
        }
    }

    /* JADX INFO: renamed from: com.papa91.arc.view.MenuView$13, reason: invalid class name */
    class AnonymousClass13 extends AnimatorListenerAdapter {
        final /* synthetic */ EndGameAllowBean val$bean;
        final /* synthetic */ int val$mills;

        AnonymousClass13(int i10, EndGameAllowBean endGameAllowBean) {
            this.val$mills = i10;
            this.val$bean = endGameAllowBean;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            String string;
            super.onAnimationEnd(animator);
            MenuView.this.tvTimeCost.setVisibility(0);
            float f10 = (this.val$mills * 1.0f) / 1000.0f;
            if (f10 < 60.0f) {
                string = new DecimalFormat("#0.00").format(f10) + "秒";
            } else {
                StringBuilder sb2 = new StringBuilder();
                int i10 = (int) f10;
                sb2.append(i10 / 60);
                sb2.append("分");
                sb2.append(i10 % 60);
                sb2.append("秒");
                string = sb2.toString();
            }
            MenuView.this.tvTimeCost.setText("用时：" + string);
            MenuView.this.tvRewardTips1.setVisibility(0);
            MenuView.this.tvRewardTips2.setVisibility(0);
            List<String> redPacketList = this.val$bean.getRedPacketList();
            if (redPacketList != null && redPacketList.size() > 0) {
                MenuView.this.tvRewardTips2.setText(redPacketList.get(new Random().nextInt(redPacketList.size())));
            }
            new Handler().postDelayed(new Runnable() { // from class: com.papa91.arc.view.MenuView.13.1
                @Override // java.lang.Runnable
                public void run() {
                    MenuView.this.tvCloseTips2.setVisibility(0);
                    MenuView.this.clSuccess2.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.view.MenuView.13.1.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            MenuViewListener menuViewListener = MenuView.this.menuViewListener;
                            if (menuViewListener != null) {
                                menuViewListener.exitEndGame(false);
                            }
                        }
                    });
                }
            }, 1500L);
        }
    }

    public MenuView(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.isSound = true;
        this.isVibrate = false;
        this.hiding = false;
        this.showAdImage = false;
        this.showChangeDisk = false;
        this.isRankTimeStop = false;
        this.rankTime = 0;
        this.menuBarStatue = 0;
        initView();
    }

    private String formatEndGameTime(int i10) {
        String str = "";
        if (i10 <= 0) {
            return "";
        }
        int i11 = i10 / 60;
        int i12 = i10 % 60;
        if (i11 > 0) {
            str = "" + i11 + "分钟";
        }
        if (i12 > 0) {
            str = str + i12 + "秒";
        }
        return str + "内,";
    }

    private void initView() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.menu_view, this);
        this.fCheating = (MImageView) viewInflate.findViewById(R.id.fCheating);
        this.fQuickSlot = (MImageView) viewInflate.findViewById(R.id.fQuickSlot);
        this.fHide = (MImageView) viewInflate.findViewById(R.id.fHide);
        this.fShow = (MImageView) viewInflate.findViewById(R.id.fShow);
        this.fScreenShot = (MImageView) viewInflate.findViewById(R.id.fScreenShot);
        this.fGate = (MImageView) viewInflate.findViewById(R.id.fGate);
        this.fOneKey = (MImageView) viewInflate.findViewById(R.id.fOneKey);
        this.fAchievement = (MImageView) viewInflate.findViewById(R.id.fAchievement);
        this.pause = viewInflate.findViewById(R.id.pause);
        this.pauseBar = viewInflate.findViewById(R.id.pauseBar);
        this.resume = viewInflate.findViewById(R.id.resume);
        this.menuBarOutSide = viewInflate.findViewById(R.id.menuBarOutSide);
        this.menuBar = viewInflate.findViewById(R.id.menuBar);
        this.exit = viewInflate.findViewById(R.id.exit);
        this.reload = viewInflate.findViewById(R.id.reload);
        this.voice = viewInflate.findViewById(R.id.voice);
        this.vibrate = viewInflate.findViewById(R.id.vibrate);
        this.quickSlot = viewInflate.findViewById(R.id.quickSlot);
        this.forum = viewInflate.findViewById(R.id.forum);
        this.changeDisk = viewInflate.findViewById(R.id.changeDisk);
        this.slot = viewInflate.findViewById(R.id.slot);
        this.cheating = viewInflate.findViewById(R.id.cheating);
        this.performance = viewInflate.findViewById(R.id.performance);
        this.stickKeys = viewInflate.findViewById(R.id.stickKeys);
        this.timerContainer = viewInflate.findViewById(R.id.timerContainer);
        this.timerBg = viewInflate.findViewById(R.id.timerBg);
        this.timer = (TextView) viewInflate.findViewById(R.id.timer);
        this.alert = (ImageView) viewInflate.findViewById(R.id.alert);
        this.btnBorderReward = (ImageView) viewInflate.findViewById(R.id.btnBorderReward);
        this.ivBtnReward = (ImageView) viewInflate.findViewById(R.id.ivBtnReward);
        this.tvRewardCount = (TextView) viewInflate.findViewById(R.id.tvRewardCount);
        this.tvRewardCountDouble = (TextView) viewInflate.findViewById(R.id.tvRewardCountDouble);
        this.ll_play_time = (LinearLayout) viewInflate.findViewById(R.id.ll_play_time);
        this.iv_timer = (ImageView) viewInflate.findViewById(R.id.iv_timer);
        this.tv_time = (TextView) viewInflate.findViewById(R.id.tv_time);
        this.v_line = viewInflate.findViewById(R.id.v_line);
        this.tv_game_pass = (TextView) viewInflate.findViewById(R.id.tv_game_pass);
        this.animationResult = (LottieAnimationView) viewInflate.findViewById(R.id.animationResult);
        this.animationResult2 = (LottieAnimationView) viewInflate.findViewById(R.id.animationResult2);
        this.animationResult3 = (LottieAnimationView) viewInflate.findViewById(R.id.animationResult3);
        this.ll_menu_left = (LinearLayout) viewInflate.findViewById(R.id.ll_menu_left);
        this.ll_menu_right = (LinearLayout) viewInflate.findViewById(R.id.ll_menu_right);
        this.clStart = (ConstraintLayout) viewInflate.findViewById(R.id.clStart);
        this.flStart = (ConstraintLayout) viewInflate.findViewById(R.id.flStart);
        this.tvPointCount = (TextView) viewInflate.findViewById(R.id.tvPointCount);
        this.ivEndlessPoint = (ImageView) viewInflate.findViewById(R.id.ivEndlessPoint);
        this.llAgain = (ConstraintLayout) viewInflate.findViewById(R.id.llAgain);
        this.ivCountDown = (ImageView) viewInflate.findViewById(R.id.ivCountDown);
        this.tvPointCountFailed = (TextView) viewInflate.findViewById(R.id.tvPointCountFailed);
        this.ivEndlessPointFailed = (ImageView) viewInflate.findViewById(R.id.ivEndlessPointFailed);
        this.failedSubTitle = (ImageView) viewInflate.findViewById(R.id.failedSubTitle);
        this.clFailed = (ConstraintLayout) viewInflate.findViewById(R.id.clFailed);
        this.flCountDown = (FrameLayout) viewInflate.findViewById(R.id.flCountDown);
        this.tvQuest = (TextView) viewInflate.findViewById(R.id.tvQuest);
        this.tvTime = (TextView) viewInflate.findViewById(R.id.tvTime);
        this.llQuest = (LinearLayout) viewInflate.findViewById(R.id.llQuest);
        this.clSuccess = (ConstraintLayout) viewInflate.findViewById(R.id.clSuccess);
        this.clSuccess2 = (ConstraintLayout) viewInflate.findViewById(R.id.clSuccess2);
        this.btnExit = (ImageView) viewInflate.findViewById(R.id.btnExit);
        this.tvDesc = (TextView) viewInflate.findViewById(R.id.tvDesc);
        this.tvCloseTips = (TextView) viewInflate.findViewById(R.id.tvCloseTips);
        this.tvCloseTips2 = (TextView) viewInflate.findViewById(R.id.tvCloseTips2);
        this.tvTimeCost = (TextView) viewInflate.findViewById(R.id.tvTimeCost);
        this.tvTimeCost2 = (TextView) viewInflate.findViewById(R.id.tvTimeCost2);
        this.tvRewardTips1 = (TextView) viewInflate.findViewById(R.id.tvRewardTips1);
        this.tvRewardTips2 = (TextView) viewInflate.findViewById(R.id.tvRewardTips2);
        this.clReward = (ConstraintLayout) viewInflate.findViewById(R.id.clReward);
        this.loadingView = (LoadingImageView) viewInflate.findViewById(R.id.loadingView);
        this.ivBtn = (ImageView) viewInflate.findViewById(R.id.ivBtn);
        this.rl_menu_left = viewInflate.findViewById(R.id.rl_menu_left);
        this.fCheating.setOnClickListener(this);
        this.fQuickSlot.setOnClickListener(this);
        this.fHide.setOnClickListener(this);
        this.fShow.setOnClickListener(this);
        this.fScreenShot.setOnClickListener(this);
        this.fGate.setOnClickListener(this);
        this.fOneKey.setOnClickListener(this);
        this.fAchievement.setOnClickListener(this);
        this.pause.setOnClickListener(this);
        this.resume.setOnClickListener(this);
        this.menuBar.setOnClickListener(this);
        this.exit.setOnClickListener(this);
        this.reload.setOnClickListener(this);
        this.voice.setOnClickListener(this);
        this.vibrate.setOnClickListener(this);
        this.quickSlot.setOnClickListener(this);
        this.forum.setOnClickListener(this);
        this.slot.setOnClickListener(this);
        this.cheating.setOnClickListener(this);
        this.performance.setOnClickListener(this);
        this.stickKeys.setOnClickListener(this);
        this.timerBg.setOnClickListener(this);
        this.timer.setOnClickListener(this);
        this.changeDisk.setOnClickListener(this);
        this.tv_game_pass.setOnClickListener(this);
        this.flStart.setOnClickListener(this);
        this.llAgain.setOnClickListener(this);
        this.btnExit.setOnClickListener(this);
        this.clSuccess.setOnClickListener(this);
        this.clStart.setOnClickListener(this);
        this.clFailed.setOnClickListener(this);
        this.flCountDown.setOnClickListener(this);
        this.ivBtnReward.setOnClickListener(this);
        this.btnBorderReward.setOnClickListener(this);
        this.menuBar.setOnTouchListener(new View.OnTouchListener() { // from class: com.papa91.arc.view.MenuView.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 4) {
                    return false;
                }
                MenuView.this.dismissMenu();
                return true;
            }
        });
        this.menuBarOutSide.setOnTouchListener(this);
        this.changeDisk.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateTime$0(int i10, int i11, int i12, int i13) {
        Object objValueOf;
        Object objValueOf2;
        Object objValueOf3;
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null) {
            if (i10 >= menuViewListener.getMiniRankTime()) {
                this.tv_game_pass.setTextColor(Color.parseColor("#A7E0FF"));
            } else {
                this.tv_game_pass.setTextColor(Color.parseColor("#6F7989"));
            }
        }
        TextView textView = this.tv_time;
        StringBuilder sb2 = new StringBuilder();
        if (i11 > 9) {
            objValueOf = Integer.valueOf(i11);
        } else {
            objValueOf = "0" + i11;
        }
        sb2.append(objValueOf);
        sb2.append(":");
        if (i12 > 9) {
            objValueOf2 = Integer.valueOf(i12);
        } else {
            objValueOf2 = "0" + i12;
        }
        sb2.append(objValueOf2);
        sb2.append(":");
        if (i13 > 9) {
            objValueOf3 = Integer.valueOf(i13);
        } else {
            objValueOf3 = "0" + i13;
        }
        sb2.append(objValueOf3);
        textView.setText(sb2.toString());
    }

    void alertRing() {
        if (this.millisUntilFinish / 1000 >= 10 || !(this.alert.getDrawable() instanceof AnimationDrawable)) {
            return;
        }
        ((AnimationDrawable) this.alert.getDrawable()).start();
    }

    void alertStop() {
        ImageView imageView = this.alert;
        if (imageView == null || !(imageView.getDrawable() instanceof AnimationDrawable)) {
            return;
        }
        ((AnimationDrawable) this.alert.getDrawable()).stop();
    }

    public void amplification() {
        if (menuShowing() || this.pauseBar.getVisibility() == 4) {
            return;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.pauseBar, "translationY", 0.0f, this.pauseBar.getMeasuredHeight()).setDuration(160L);
        duration.addListener(new AnimatorListenerAdapter() { // from class: com.papa91.arc.view.MenuView.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                MenuView.this.pauseBar.setVisibility(4);
            }
        });
        duration.start();
    }

    public void dismissMenu() {
        View view = this.menuBar;
        if (view == null || this.pauseBar == null || this.hiding) {
            return;
        }
        this.hiding = true;
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.menuBar, "translationY", 0, view.getMeasuredHeight() - this.pauseBar.getMeasuredHeight()).setDuration(160L);
        duration.addListener(new AnimatorListenerAdapter() { // from class: com.papa91.arc.view.MenuView.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                MenuView.this.menuBar.setVisibility(8);
                MenuView.this.hiding = false;
                MenuViewListener menuViewListener = MenuView.this.menuViewListener;
                if (menuViewListener != null) {
                    menuViewListener.saveGameConfig();
                }
            }
        });
        duration.start();
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null && menuViewListener.needShowBottomBar()) {
            this.pauseBar.setVisibility(0);
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.pauseBar, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.papa91.arc.view.MenuView.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
            }
        });
        objectAnimatorOfFloat.setDuration(180L);
        objectAnimatorOfFloat.start();
        this.changeDisk.setVisibility(8);
    }

    public void endGameFailed(int i10, boolean z10, int i11) {
        hideAllEndGameView();
        this.clFailed.setVisibility(0);
        this.btnExit.setVisibility(0);
        if (z10) {
            this.ivEndlessPointFailed.setVisibility(0);
            this.tvPointCountFailed.setVisibility(8);
        } else {
            this.ivEndlessPointFailed.setVisibility(8);
            this.tvPointCountFailed.setVisibility(0);
            this.tvPointCountFailed.setText(String.valueOf(i10));
        }
        if (i11 == 1) {
            this.failedSubTitle.setImageResource(R.drawable.failed_time_out);
        } else if (i11 == 2) {
            this.failedSubTitle.setImageResource(R.drawable.failed_player_dead);
        } else {
            if (i11 != 3) {
                return;
            }
            this.failedSubTitle.setImageResource(R.drawable.failed_player_harmed);
        }
    }

    public void endGameSuccess(int i10, EndGameAllowBean endGameAllowBean) {
        this.clSuccess.setOnClickListener(null);
        hideAllEndGameView();
        this.clSuccess.setVisibility(0);
        if (endGameAllowBean.isWelfareSwitch()) {
            showResultAnimationRedPackage(i10, endGameAllowBean);
        } else {
            showAnimationResult(i10, endGameAllowBean);
        }
    }

    public int getRankTime() {
        return this.rankTime;
    }

    public void hide() {
        hide(0);
    }

    public void hide2Float() {
        this.menuBarStatue = this.menuBar.getVisibility() == 0 ? 1 : 0;
        MImageView mImageView = this.fShow;
        ObjectAnimator duration = ObjectAnimator.ofFloat(mImageView, "translationX", -mImageView.getMeasuredWidth(), 0.0f).setDuration(180L);
        duration.addListener(new Animator.AnimatorListener() { // from class: com.papa91.arc.view.MenuView.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                MenuView.this.fShow.setVisibility(0);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        duration.start();
        this.fHide.hide(true);
        this.fScreenShot.hide(true);
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null && menuViewListener.isShowAchievementIcon()) {
            this.fAchievement.hide(true);
        }
        MenuViewListener menuViewListener2 = this.menuViewListener;
        if (menuViewListener2 != null && menuViewListener2.isShowGate()) {
            this.fGate.hide(true);
        }
        MenuViewListener menuViewListener3 = this.menuViewListener;
        if (menuViewListener3 != null && menuViewListener3.isShowOnekey()) {
            this.fOneKey.hide(true);
        }
        MenuViewListener menuViewListener4 = this.menuViewListener;
        if (menuViewListener4 != null && menuViewListener4.isShowCheating()) {
            this.fCheating.hide(true);
        }
        MenuViewListener menuViewListener5 = this.menuViewListener;
        if (menuViewListener5 != null && menuViewListener5.isShowQuickSlot()) {
            this.fQuickSlot.hide(true);
        }
        MenuViewListener menuViewListener6 = this.menuViewListener;
        if (menuViewListener6 != null && menuViewListener6.isRankGame()) {
            this.ll_play_time.setVisibility(8);
        }
        this.pauseBar.setVisibility(8);
        this.pause.setVisibility(8);
        this.menuBar.setVisibility(8);
    }

    public void hideAllEndGameView() {
        this.clStart.setVisibility(8);
        this.clFailed.setVisibility(8);
        this.clSuccess.setVisibility(8);
        this.flCountDown.setVisibility(8);
        this.btnExit.setVisibility(8);
        this.llQuest.setVisibility(8);
        this.clSuccess.setVisibility(8);
    }

    public void hideTimer() {
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null && menuViewListener.isRankGame()) {
            this.ll_play_time.setVisibility(8);
            return;
        }
        View view = this.timerContainer;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public boolean isTimerShowing() {
        return this.timerContainer.getVisibility() == 0 && this.millisUntilFinish / 1000 > 0;
    }

    public boolean menuShowing() {
        View view = this.menuBar;
        return view != null && view.getVisibility() == 0;
    }

    public void narrow() {
        if (this.pauseBar.getVisibility() == 0) {
            return;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.pauseBar, "translationY", this.pauseBar.getMeasuredHeight(), 0.0f).setDuration(160L);
        duration.addListener(new AnimatorListenerAdapter() { // from class: com.papa91.arc.view.MenuView.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                MenuView.this.pauseBar.setVisibility(0);
            }
        });
        duration.start();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MenuViewListener menuViewListener;
        int id2 = view.getId();
        if (id2 == R.id.pause) {
            popupMenu();
            MenuViewListener menuViewListener2 = this.menuViewListener;
            if (menuViewListener2 != null) {
                menuViewListener2.gameOnPause();
                return;
            }
            return;
        }
        if (id2 == R.id.resume) {
            dismissMenu();
            MenuViewListener menuViewListener3 = this.menuViewListener;
            if (menuViewListener3 != null) {
                menuViewListener3.gameOnResume();
                return;
            }
            return;
        }
        if (id2 == R.id.menuBarOutSide) {
            if (!menuShowing() || this.hiding) {
                return;
            }
            dismissMenu();
            MenuViewListener menuViewListener4 = this.menuViewListener;
            if (menuViewListener4 != null) {
                menuViewListener4.gameOnResume();
                return;
            }
            return;
        }
        if (id2 == R.id.menuBar) {
            return;
        }
        if (id2 == R.id.fHide) {
            hide2Float();
            MenuViewListener menuViewListener5 = this.menuViewListener;
            if (menuViewListener5 != null) {
                menuViewListener5.onHideMenu();
                return;
            }
            return;
        }
        if (id2 == R.id.fShow) {
            show();
            return;
        }
        if (id2 == R.id.slot || id2 == R.id.fQuickSlot) {
            MenuViewListener menuViewListener6 = this.menuViewListener;
            if (menuViewListener6 != null) {
                menuViewListener6.showMenuSlot();
            }
            dismissMenu();
            return;
        }
        if (id2 == R.id.cheating || id2 == R.id.fCheating) {
            MenuViewListener menuViewListener7 = this.menuViewListener;
            if (menuViewListener7 != null) {
                menuViewListener7.showMenuCheating();
            }
            dismissMenu();
            return;
        }
        if (id2 == R.id.performance) {
            MenuViewListener menuViewListener8 = this.menuViewListener;
            if (menuViewListener8 != null) {
                menuViewListener8.showMenuPerformance();
            }
            dismissMenu();
            return;
        }
        if (id2 == R.id.exit) {
            MenuViewListener menuViewListener9 = this.menuViewListener;
            if (menuViewListener9 != null) {
                menuViewListener9.exit();
                return;
            }
            return;
        }
        if (id2 == R.id.reload) {
            showReloadPrompt();
            return;
        }
        if (id2 == R.id.voice) {
            boolean z10 = !this.isSound;
            this.isSound = z10;
            MenuViewListener menuViewListener10 = this.menuViewListener;
            if (menuViewListener10 != null) {
                menuViewListener10.voice(z10);
            }
            if (this.isSound) {
                this.voice.setBackgroundResource(R.drawable.voice);
                return;
            } else {
                this.voice.setBackgroundResource(R.drawable.voice_mute);
                return;
            }
        }
        if (id2 == R.id.vibrate) {
            boolean z11 = !this.isVibrate;
            this.isVibrate = z11;
            MenuViewListener menuViewListener11 = this.menuViewListener;
            if (menuViewListener11 != null) {
                menuViewListener11.vibrate(z11);
            }
            if (this.isVibrate) {
                this.vibrate.setBackgroundResource(R.drawable.vibrate);
                return;
            } else {
                this.vibrate.setBackgroundResource(R.drawable.vibrate_off);
                return;
            }
        }
        if (id2 == R.id.quickSlot) {
            MenuViewListener menuViewListener12 = this.menuViewListener;
            if (menuViewListener12 != null) {
                menuViewListener12.quickSlot();
                return;
            }
            return;
        }
        if (id2 == R.id.forum) {
            MenuViewListener menuViewListener13 = this.menuViewListener;
            if (menuViewListener13 != null) {
                menuViewListener13.forum();
                return;
            }
            return;
        }
        if (id2 == R.id.stickKeys) {
            MenuViewListener menuViewListener14 = this.menuViewListener;
            if (menuViewListener14 != null) {
                menuViewListener14.keysSetting();
                return;
            }
            return;
        }
        if (id2 == R.id.timerBg || id2 == R.id.timer) {
            MenuViewListener menuViewListener15 = this.menuViewListener;
            if (menuViewListener15 != null) {
                menuViewListener15.showTimeLimitedDialog1();
            }
            EmuActivity_psp.sendLimitStat("OnClickPSPCutDown");
            return;
        }
        if (id2 == R.id.fGate) {
            MenuViewListener menuViewListener16 = this.menuViewListener;
            if (menuViewListener16 != null) {
                menuViewListener16.showMenuGate();
                return;
            }
            return;
        }
        if (id2 == R.id.fOneKey) {
            MenuViewListener menuViewListener17 = this.menuViewListener;
            if (menuViewListener17 != null) {
                menuViewListener17.showMenuOnekey();
                return;
            }
            return;
        }
        if (id2 == R.id.fScreenShot) {
            if (this.showAdImage) {
                MenuViewListener menuViewListener18 = this.menuViewListener;
                if (menuViewListener18 != null) {
                    menuViewListener18.onAdImageClick();
                    return;
                }
                return;
            }
            MenuViewListener menuViewListener19 = this.menuViewListener;
            if (menuViewListener19 != null) {
                menuViewListener19.onScreenShot();
                return;
            }
            return;
        }
        if (id2 == R.id.changeDisk) {
            dismissMenu();
            MenuViewListener menuViewListener20 = this.menuViewListener;
            if (menuViewListener20 != null) {
                menuViewListener20.onChangeDisk();
            }
            MenuViewListener menuViewListener21 = this.menuViewListener;
            if (menuViewListener21 != null) {
                menuViewListener21.gameOnResume();
                return;
            }
            return;
        }
        if (id2 == R.id.tv_game_pass) {
            MenuViewListener menuViewListener22 = this.menuViewListener;
            if (menuViewListener22 != null) {
                menuViewListener22.onRankFinish(this.rankTime);
                return;
            }
            return;
        }
        if (id2 == R.id.flStart) {
            MenuViewListener menuViewListener23 = this.menuViewListener;
            if (menuViewListener23 != null) {
                menuViewListener23.startEndGame();
                return;
            }
            return;
        }
        if (id2 == R.id.llAgain) {
            MenuViewListener menuViewListener24 = this.menuViewListener;
            if (menuViewListener24 != null) {
                menuViewListener24.restartEndGame();
                return;
            }
            return;
        }
        if (id2 == R.id.btnExit) {
            MenuViewListener menuViewListener25 = this.menuViewListener;
            if (menuViewListener25 != null) {
                menuViewListener25.exitEndGame(true);
                return;
            }
            return;
        }
        if (id2 == R.id.clSuccess) {
            MenuViewListener menuViewListener26 = this.menuViewListener;
            if (menuViewListener26 != null) {
                menuViewListener26.exitEndGame(false);
                return;
            }
            return;
        }
        if (id2 == R.id.clStart || id2 == R.id.clFailed || id2 == R.id.flCountDown) {
            return;
        }
        if (id2 == R.id.btnBorderReward) {
            MenuViewListener menuViewListener27 = this.menuViewListener;
            if (menuViewListener27 != null) {
                menuViewListener27.getPassRewardPoint();
                this.hasGetAward = true;
                return;
            }
            return;
        }
        if (id2 != R.id.ivBtnReward) {
            if (id2 != R.id.fAchievement || (menuViewListener = this.menuViewListener) == null) {
                return;
            }
            menuViewListener.showAchievementDialog(1);
            return;
        }
        MenuViewListener menuViewListener28 = this.menuViewListener;
        if (menuViewListener28 != null) {
            menuViewListener28.playVideoForReward();
            this.hasGetAward = true;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        releaseTimer();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!menuShowing()) {
            return false;
        }
        dismissMenu();
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener == null) {
            return true;
        }
        menuViewListener.gameOnResume();
        return true;
    }

    public void pauseTimer() {
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null && menuViewListener.isRankGame()) {
            this.isRankTimeStop = true;
        } else {
            releaseTimer();
            alertStop();
        }
    }

    public void popupMenu() {
        View view;
        if (this.menuBar == null || (view = this.pauseBar) == null) {
            return;
        }
        view.setVisibility(8);
        this.menuBar.setVisibility(0);
        int measuredHeight = this.menuBar.getMeasuredHeight() - this.pauseBar.getMeasuredHeight();
        if (measuredHeight == 0) {
            measuredHeight = (int) TypedValue.applyDimension(1, 106.0f, getResources().getDisplayMetrics());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("pop start=");
        sb2.append(0);
        sb2.append(", end=");
        sb2.append(measuredHeight);
        ObjectAnimator.ofFloat(this.menuBar, "translationY", measuredHeight, 0).setDuration(180L).start();
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null) {
            this.isSound = menuViewListener.IsSoundEnable();
        }
        MenuViewListener menuViewListener2 = this.menuViewListener;
        if (menuViewListener2 != null) {
            this.isVibrate = menuViewListener2.IsHapticFeedbackEnable();
        }
        if (this.isSound) {
            this.voice.setBackgroundResource(R.drawable.voice);
        } else {
            this.voice.setBackgroundResource(R.drawable.voice_mute);
        }
        if (this.isVibrate) {
            this.vibrate.setBackgroundResource(R.drawable.vibrate);
        } else {
            this.vibrate.setBackgroundResource(R.drawable.vibrate_off);
        }
        MenuViewListener menuViewListener3 = this.menuViewListener;
        if (menuViewListener3 != null) {
            this.changeDisk.setVisibility(menuViewListener3.getChangeDiskState() ? 0 : 8);
        }
    }

    public void releaseTimer() {
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener == null || !menuViewListener.isRankGame()) {
            alertStop();
            CountDownTimer countDownTimer = this.countDownTimer;
            if (countDownTimer != null) {
                countDownTimer.cancel();
                this.countDownTimer = null;
                return;
            }
            return;
        }
        ScheduledExecutorService scheduledExecutorService = this.scheduledExecutorService;
        if (scheduledExecutorService != null) {
            this.isRankTimeStop = true;
            try {
                scheduledExecutorService.shutdown();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void resumeTimer() {
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener == null || !menuViewListener.isRankGame()) {
            startTimer(this.millisUntilFinish);
        } else {
            this.isRankTimeStop = false;
        }
    }

    public void setDirection(int i10) {
        if (i10 != 1) {
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.rl_menu_left.getLayoutParams();
            layoutParams.topToBottom = -1;
            int i11 = R.id.guide;
            layoutParams.topToTop = i11;
            layoutParams.startToStart = 0;
            this.rl_menu_left.setLayoutParams(layoutParams);
            this.rl_menu_left.setRotation(0.0f);
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.ll_menu_right.getLayoutParams();
            layoutParams2.endToEnd = 0;
            layoutParams2.topToTop = i11;
            layoutParams2.startToStart = -1;
            this.ll_menu_right.setLayoutParams(layoutParams2);
            this.ll_menu_right.setTranslationY(0.0f);
            this.ll_menu_right.setRotation(0.0f);
            return;
        }
        ConstraintLayout.LayoutParams layoutParams3 = (ConstraintLayout.LayoutParams) this.rl_menu_left.getLayoutParams();
        layoutParams3.topToBottom = 0;
        layoutParams3.topToTop = -1;
        this.rl_menu_left.setLayoutParams(layoutParams3);
        this.rl_menu_left.setPivotX(0.0f);
        this.rl_menu_left.setPivotY(0.0f);
        this.rl_menu_left.setRotation(-90.0f);
        ConstraintLayout.LayoutParams layoutParams4 = (ConstraintLayout.LayoutParams) this.ll_menu_right.getLayoutParams();
        layoutParams4.endToEnd = -1;
        layoutParams4.topToTop = 0;
        layoutParams4.startToStart = 0;
        this.ll_menu_right.setLayoutParams(layoutParams4);
        float measuredWidth = this.ll_menu_right.getMeasuredWidth();
        if (measuredWidth == 0.0f) {
            measuredWidth = getResources().getDimension(R.dimen.wdp98);
        }
        this.ll_menu_right.setTranslationY(measuredWidth);
        this.ll_menu_right.setPivotX(0.0f);
        this.ll_menu_right.setPivotY(0.0f);
        this.ll_menu_right.setRotation(-90.0f);
    }

    public void setMenuViewListener(MenuViewListener menuViewListener) {
        this.menuViewListener = menuViewListener;
        if (menuViewListener.isShowAchievementIcon()) {
            this.fAchievement.setVisibility(0);
        } else {
            this.fAchievement.setVisibility(8);
        }
        if (this.menuViewListener.isShowGate()) {
            this.fGate.setVisibility(0);
        } else {
            this.fGate.setVisibility(8);
        }
        if (this.menuViewListener.isShowOnekey()) {
            this.fOneKey.setVisibility(0);
        } else {
            this.fOneKey.setVisibility(8);
        }
        if (this.menuViewListener.isShowCheating()) {
            this.fCheating.setVisibility(0);
        } else {
            this.fCheating.setVisibility(8);
        }
        if (this.menuViewListener.isShowQuickSlot()) {
            this.fQuickSlot.setVisibility(0);
        } else {
            this.fQuickSlot.setVisibility(8);
        }
        if (this.menuViewListener.needShowTimer()) {
            showTimer();
        } else {
            hideTimer();
        }
        MenuViewListener menuViewListener2 = this.menuViewListener;
        if (menuViewListener2 == null || !menuViewListener2.needShowBottomBar()) {
            this.pauseBar.setVisibility(8);
        } else {
            this.pauseBar.setVisibility(0);
        }
        MenuViewListener menuViewListener3 = this.menuViewListener;
        if (menuViewListener3 == null || !menuViewListener3.isRankAutoUpload()) {
            this.tv_game_pass.setVisibility(0);
            this.v_line.setVisibility(0);
        } else {
            this.tv_game_pass.setVisibility(8);
            this.v_line.setVisibility(8);
        }
        MenuViewListener menuViewListener4 = this.menuViewListener;
        if (menuViewListener4 == null || !menuViewListener4.isEndGame()) {
            return;
        }
        this.ll_menu_left.setVisibility(8);
        this.ll_menu_right.setVisibility(8);
        this.pause.setVisibility(8);
        this.pauseBar.setVisibility(8);
        this.menuBar.setVisibility(8);
    }

    public void setRankTimeStop(boolean z10) {
        this.isRankTimeStop = z10;
    }

    public void setTime(long j10) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) ((j10 / 1000) + " "));
        SpannableString spannableString = new SpannableString("进入广告");
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#9C7140")), 0, spannableString.length(), 33);
        spannableStringBuilder.append((CharSequence) spannableString);
        this.timer.setText(spannableStringBuilder);
    }

    public void show() {
        setVisibility(0);
        MImageView mImageView = this.fShow;
        ObjectAnimator duration = ObjectAnimator.ofFloat(mImageView, "translationX", 0.0f, -mImageView.getMeasuredWidth()).setDuration(180L);
        duration.addListener(new Animator.AnimatorListener() { // from class: com.papa91.arc.view.MenuView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                MenuView.this.fShow.setVisibility(8);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        duration.start();
        this.fHide.show(true);
        this.fScreenShot.show(true);
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null && menuViewListener.isShowOnekey()) {
            this.fOneKey.show(true);
        }
        MenuViewListener menuViewListener2 = this.menuViewListener;
        if (menuViewListener2 != null && menuViewListener2.isShowGate()) {
            this.fGate.show(true);
        }
        MenuViewListener menuViewListener3 = this.menuViewListener;
        if (menuViewListener3 != null && menuViewListener3.isShowCheating()) {
            this.fCheating.show(true);
        }
        MenuViewListener menuViewListener4 = this.menuViewListener;
        if (menuViewListener4 != null && menuViewListener4.isShowQuickSlot()) {
            this.fQuickSlot.show(true);
        }
        MenuViewListener menuViewListener5 = this.menuViewListener;
        if (menuViewListener5 != null && menuViewListener5.isShowAchievementIcon()) {
            this.fAchievement.show(true);
        }
        MenuViewListener menuViewListener6 = this.menuViewListener;
        if (menuViewListener6 == null || !menuViewListener6.needShowBottomBar()) {
            this.pauseBar.setVisibility(8);
            this.pause.setVisibility(8);
        } else {
            this.pauseBar.setVisibility(0);
            this.pause.setVisibility(0);
        }
        MenuViewListener menuViewListener7 = this.menuViewListener;
        if (menuViewListener7 == null || !menuViewListener7.isRankGame()) {
            this.ll_play_time.setVisibility(8);
        } else {
            this.ll_play_time.setVisibility(0);
        }
        this.menuBar.setVisibility(8);
        if (this.menuBarStatue == 1) {
            popupMenu();
            this.menuBarStatue = 0;
        }
    }

    public void showAdImage(boolean z10, String str) {
        this.showAdImage = z10;
        if (!z10) {
            this.fScreenShot.setImageResource(R.drawable.f_screen_shot);
            return;
        }
        this.fScreenShot.setController(Fresco.newDraweeControllerBuilder().b(Uri.parse(str)).F(true).build());
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void showAnimationResult(int i10, EndGameAllowBean endGameAllowBean) {
        this.clSuccess.setVisibility(0);
        this.clSuccess2.setVisibility(8);
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null) {
            String endGameScore = menuViewListener.getEndGameScore(i10);
            endGameScore.hashCode();
            byte b10 = -1;
            switch (endGameScore.hashCode()) {
                case 65:
                    if (endGameScore.equals("A")) {
                        b10 = 0;
                    }
                    break;
                case 66:
                    if (endGameScore.equals(SDKManager.ALGO_B_AES_SHA256_RSA)) {
                        b10 = 1;
                    }
                    break;
                case 67:
                    if (endGameScore.equals(SDKManager.ALGO_C_RFU)) {
                        b10 = 2;
                    }
                    break;
                case 83:
                    if (endGameScore.equals("S")) {
                        b10 = 3;
                    }
                    break;
            }
            String str = "C.json";
            switch (b10) {
                case 0:
                    str = "A.json";
                    break;
                case 1:
                    str = "B.json";
                    break;
                case 3:
                    str = "S.json";
                    break;
            }
            this.animationResult.setImageAssetsFolder("animation_png/");
            this.animationResult.setAnimation(str);
            this.animationResult.setRepeatCount(0);
            this.animationResult.E();
            this.animationResult.g(new AnonymousClass12(i10, endGameAllowBean));
        }
    }

    public void showEndGameCountdown() {
        hideAllEndGameView();
        this.flCountDown.setVisibility(0);
        this.ivCountDown.setImageResource(R.drawable.count_down_3);
        new CountDownTimer(3200L, 1000L) { // from class: com.papa91.arc.view.MenuView.14
            @Override // android.os.CountDownTimer
            public void onFinish() {
                MenuView.this.flCountDown.setVisibility(8);
                MenuView.this.showQuestAndTime();
                MenuViewListener menuViewListener = MenuView.this.menuViewListener;
                if (menuViewListener != null) {
                    menuViewListener.gameOnResume();
                }
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j10) {
                long j11 = j10 / 1000;
                if (j11 == 3) {
                    MenuView.this.ivCountDown.setImageResource(R.drawable.count_down_3);
                } else if (j11 == 2) {
                    MenuView.this.ivCountDown.setImageResource(R.drawable.count_down_2);
                } else if (j11 == 1) {
                    MenuView.this.ivCountDown.setImageResource(R.drawable.count_down_1);
                }
            }
        }.start();
    }

    public void showEndGameStart(boolean z10, int i10, boolean z11) {
        hideAllEndGameView();
        this.clStart.setVisibility(0);
        this.btnExit.setVisibility(0);
        this.loadingView.setVisibility(z10 ? 0 : 4);
        this.ivBtn.setVisibility(z10 ? 4 : 0);
        this.tvDesc.setVisibility(z10 ? 4 : 0);
        this.flStart.setVisibility(z10 ? 4 : 0);
        if (z11) {
            this.ivEndlessPoint.setVisibility(0);
            this.tvPointCount.setVisibility(8);
        } else {
            this.ivEndlessPoint.setVisibility(8);
            this.tvPointCount.setVisibility(0);
            this.tvPointCount.setText(String.valueOf(i10));
        }
        if (this.menuViewListener != null) {
            this.tvDesc.setText(Html.fromHtml("<font color='#FFA600'>" + formatEndGameTime(this.menuViewListener.getEndGameLimitTime()) + "</font>" + this.menuViewListener.getEndGameDesc()));
        }
    }

    public void showQuestAndTime() {
        if (this.menuViewListener != null) {
            hideAllEndGameView();
            this.llQuest.setVisibility(0);
            this.tvQuest.setText(this.menuViewListener.getEndGameDesc());
            final int endGameLimitTime = this.menuViewListener.getEndGameLimitTime();
            CountDownTimer countDownTimer = this.endGameCountDownTimer;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            CountDownTimer countDownTimer2 = new CountDownTimer(2147483647L, 1000L) { // from class: com.papa91.arc.view.MenuView.15
                @Override // android.os.CountDownTimer
                public void onFinish() {
                    MenuView.this.llQuest.setVisibility(8);
                    cancel();
                }

                @Override // android.os.CountDownTimer
                public void onTick(long j10) {
                    int gamePlayTime = endGameLimitTime - (MenuView.this.menuViewListener.getGamePlayTime() / 1000);
                    MenuView.this.tvTime.setText("剩余时间：" + gamePlayTime + "秒");
                    if (gamePlayTime <= 0) {
                        onFinish();
                    }
                }
            };
            this.endGameCountDownTimer = countDownTimer2;
            countDownTimer2.start();
        }
    }

    public void showReloadPrompt() {
        if (this.dialog == null) {
            Dialog dialog = new Dialog(getContext(), R.style.PspDialog);
            this.dialog = dialog;
            dialog.setContentView(R.layout.dialog_exit);
            this.dialog.setCanceledOnTouchOutside(true);
            this.tip = (TextView) this.dialog.findViewById(R.id.textView2);
            this.dialog.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.view.MenuView.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Dialog dialog2 = MenuView.this.dialog;
                    if (dialog2 != null) {
                        dialog2.dismiss();
                    }
                }
            });
        }
        this.dialog.findViewById(R.id.ok).setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.view.MenuView.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Dialog dialog2 = MenuView.this.dialog;
                if (dialog2 != null) {
                    dialog2.dismiss();
                }
                MenuView.this.dismissMenu();
                MenuViewListener menuViewListener = MenuView.this.menuViewListener;
                if (menuViewListener != null) {
                    menuViewListener.reload();
                }
            }
        });
        this.tip.setText("是否要重新启动游戏？");
        if (this.dialog.isShowing()) {
            return;
        }
        this.dialog.show();
    }

    public void showResultAnimationRedPackage(int i10, EndGameAllowBean endGameAllowBean) {
        this.clSuccess2.setVisibility(0);
        this.clSuccess.setVisibility(8);
        this.animationResult2.setImageAssetsFolder("light_png/");
        this.animationResult2.setAnimation("light.json");
        this.animationResult2.setRepeatCount(-1);
        this.animationResult2.E();
        this.animationResult3.setImageAssetsFolder("red_package_png/");
        this.animationResult3.setAnimation("red_package.json");
        this.animationResult3.setRepeatCount(0);
        this.animationResult3.E();
        this.animationResult3.g(new AnonymousClass13(i10, endGameAllowBean));
    }

    public void showTimer() {
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null && menuViewListener.isRankGame()) {
            this.ll_play_time.setVisibility(0);
            this.timerContainer.setVisibility(8);
        } else {
            View view = this.timerContainer;
            if (view != null) {
                view.setVisibility(0);
            }
        }
    }

    public void startTimer(long j10) {
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null && menuViewListener.isRankGame()) {
            if (this.scheduledExecutorService == null) {
                ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1);
                this.scheduledExecutorService = scheduledExecutorServiceNewScheduledThreadPool;
                scheduledExecutorServiceNewScheduledThreadPool.scheduleAtFixedRate(new Runnable() { // from class: com.papa91.arc.view.MenuView.10
                    @Override // java.lang.Runnable
                    public void run() {
                        MenuView menuView = MenuView.this;
                        if (!menuView.isRankTimeStop) {
                            menuView.rankTime++;
                        }
                        menuView.updateTime(menuView.rankTime);
                    }
                }, 1L, 1L, TimeUnit.SECONDS);
                return;
            }
            return;
        }
        if (this.countDownTimer == null) {
            this.millisUntilFinish = j10;
            CountDownTimer countDownTimer = new CountDownTimer(j10, 1000L) { // from class: com.papa91.arc.view.MenuView.11
                @Override // android.os.CountDownTimer
                public void onFinish() {
                    MenuView menuView = MenuView.this;
                    menuView.millisUntilFinish = 0L;
                    menuView.alertRing();
                    MenuView.this.hideTimer();
                    MenuViewListener menuViewListener2 = MenuView.this.menuViewListener;
                    if (menuViewListener2 != null) {
                        menuViewListener2.showTimeLimitedDialog2();
                    }
                    EmuActivity_psp.sendLimitStat("PSPLimitPopup");
                }

                @Override // android.os.CountDownTimer
                public void onTick(long j11) {
                    MenuView.this.millisUntilFinish = j11;
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    spannableStringBuilder.append((CharSequence) ((j11 / 1000) + " "));
                    SpannableString spannableString = new SpannableString("进入广告");
                    spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#9C7140")), 0, spannableString.length(), 33);
                    spannableStringBuilder.append((CharSequence) spannableString);
                    MenuView.this.timer.setText(spannableStringBuilder);
                    MenuView.this.alertRing();
                    MenuViewListener menuViewListener2 = MenuView.this.menuViewListener;
                    if (menuViewListener2 != null) {
                        menuViewListener2.onTimerTick(j11);
                    }
                }
            };
            this.countDownTimer = countDownTimer;
            countDownTimer.start();
        }
    }

    public void updateTime(final int i10) {
        final int i11 = i10 / 3600;
        int i12 = i10 - (i11 * 3600);
        final int i13 = i12 / 60;
        final int i14 = i12 - (i13 * 60);
        post(new Runnable() { // from class: com.papa91.arc.view.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f78074b.lambda$updateTime$0(i10, i11, i13, i14);
            }
        });
    }

    public void hide(int i10) {
        if (i10 == 1) {
            this.menuBarStatue = this.menuBar.getVisibility() != 0 ? 0 : 1;
        }
        setVisibility(4);
    }

    public MenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = getClass().getSimpleName();
        this.isSound = true;
        this.isVibrate = false;
        this.hiding = false;
        this.showAdImage = false;
        this.showChangeDisk = false;
        this.isRankTimeStop = false;
        this.rankTime = 0;
        this.menuBarStatue = 0;
        initView();
    }

    public MenuView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.TAG = getClass().getSimpleName();
        this.isSound = true;
        this.isVibrate = false;
        this.hiding = false;
        this.showAdImage = false;
        this.showChangeDisk = false;
        this.isRankTimeStop = false;
        this.rankTime = 0;
        this.menuBarStatue = 0;
        initView();
    }
}
