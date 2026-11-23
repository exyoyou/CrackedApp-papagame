package com.join.mgps.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.video_setting_activity)
public class VideoSettingActivity extends BaseActivity {

    @ViewById
    View homevideoAllNet;

    @ViewById
    ImageView homevideoAllNetSwitch;

    @ViewById
    View homevideoNotPlay;

    @ViewById
    ImageView homevideoNotPlaySwitch;

    @ViewById
    View homevideoOnlyWifi;

    @ViewById
    ImageView homevideoOnlyWifiSwitch;

    @ViewById
    TextView title_textview;

    @ViewById
    View videoAllNet;

    @ViewById
    ImageView videoAllNetSwitch;

    @ViewById
    View videoNotPlay;

    @ViewById
    ImageView videoNotPlaySwitch;

    @ViewById
    View videoOnlyWifi;

    @ViewById
    ImageView videoOnlyWifiSwitch;

    private void updateUI() {
        this.videoAllNetSwitch.setBackgroundResource(R.drawable.alph);
        this.videoOnlyWifiSwitch.setBackgroundResource(R.drawable.alph);
        this.videoNotPlaySwitch.setBackgroundResource(R.drawable.alph);
        this.homevideoAllNetSwitch.setBackgroundResource(R.drawable.alph);
        this.homevideoOnlyWifiSwitch.setBackgroundResource(R.drawable.alph);
        this.homevideoNotPlaySwitch.setBackgroundResource(R.drawable.alph);
        int iE = com.join.mgps.pref.h.n(this).e();
        int iZ = com.join.mgps.pref.h.n(this).z();
        if (iE == 0) {
            this.videoAllNetSwitch.setBackgroundResource(R.drawable.icon_choice_1);
        } else if (iE == 1) {
            this.videoOnlyWifiSwitch.setBackgroundResource(R.drawable.icon_choice_1);
        } else if (iE == 2) {
            this.videoNotPlaySwitch.setBackgroundResource(R.drawable.icon_choice_1);
        }
        if (iZ == 0) {
            this.homevideoAllNetSwitch.setBackgroundResource(R.drawable.icon_choice_1);
        } else if (iZ == 1) {
            this.homevideoOnlyWifiSwitch.setBackgroundResource(R.drawable.icon_choice_1);
        } else {
            if (iZ != 2) {
                return;
            }
            this.homevideoNotPlaySwitch.setBackgroundResource(R.drawable.icon_choice_1);
        }
    }

    @AfterViews
    void afterview() {
        this.title_textview.setText("视频播放设置");
        updateUI();
    }

    @Click
    void back_image() {
        finish();
    }

    @Click
    void homevideoAllNet() {
        com.join.mgps.pref.h.n(this).n0(0);
        updateUI();
    }

    @Click
    void homevideoNotPlay() {
        com.join.mgps.pref.h.n(this).n0(2);
        updateUI();
    }

    @Click
    void homevideoOnlyWifi() {
        com.join.mgps.pref.h.n(this).n0(1);
        updateUI();
    }

    @Click
    void videoAllNet() {
        com.join.mgps.pref.h.n(this).T(0);
        updateUI();
    }

    @Click
    void videoNotPlay() {
        com.join.mgps.pref.h.n(this).T(2);
        updateUI();
    }

    @Click
    void videoOnlyWifi() {
        com.join.mgps.pref.h.n(this).T(1);
        updateUI();
    }
}
