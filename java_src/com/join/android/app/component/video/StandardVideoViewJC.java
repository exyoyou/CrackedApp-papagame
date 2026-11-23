package com.join.android.app.component.video;

import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.s1;
import com.join.mgps.customview.EqualizerView;
import com.join.mgps.customview.t;
import com.papa.gsyvideoplayer.utils.k;
import fm.jiecao.jcvideoplayer_lib.JCVideoPlayer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes5.dex */
public class StandardVideoViewJC extends JCVideoPlayer {
    protected static Timer T2 = null;
    public static boolean U2 = true;
    private static boolean V2 = true;
    protected Dialog A2;
    protected ProgressBar B2;
    protected TextView C2;
    private boolean D2;
    private BroadcastReceiver E2;
    SimpleDraweeView F2;
    View G2;
    View H2;
    TextView I2;
    int J2;
    long K2;
    public ImageView L2;
    protected ImageView M2;
    protected boolean N2;
    private boolean O2;
    private Handler P2;
    t Q2;
    private final int R2;
    public String S2;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    public ImageView f35146e2;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    public ProgressBar f35147f2;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    public ProgressBar f35148g2;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    public TextView f35149h2;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    public SimpleDraweeView f35150i2;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    public ImageView f35151j2;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    public LinearLayout f35152k2;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    public ImageView f35153l2;

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    public TextView f35154m2;

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    public TextView f35155n2;

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    public TextView f35156o2;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    public PopupWindow f35157p2;

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    protected e f35158q2;

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    protected Dialog f35159r2;

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    protected ProgressBar f35160s2;

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    protected TextView f35161t2;

    /* JADX INFO: renamed from: u2, reason: collision with root package name */
    protected TextView f35162u2;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    protected ImageView f35163v2;

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    protected Dialog f35164w2;

    /* JADX INFO: renamed from: x2, reason: collision with root package name */
    protected ProgressBar f35165x2;

    /* JADX INFO: renamed from: y2, reason: collision with root package name */
    protected TextView f35166y2;

    /* JADX INFO: renamed from: z2, reason: collision with root package name */
    protected ImageView f35167z2;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            StandardVideoViewJC.this.f91217i.performClick();
            StandardVideoViewJC.this.H2.setVisibility(4);
        }
    }

    class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            StandardVideoViewJC.this.j0();
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f35171b;

        c(final int val$netState) {
            this.f35171b = val$netState;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f35171b != -1) {
                StandardVideoViewJC.this.S();
            } else if (StandardVideoViewJC.this.getContext() instanceof Activity) {
                StandardVideoViewJC standardVideoViewJC = StandardVideoViewJC.this;
                if (standardVideoViewJC.N2) {
                    ((Activity) standardVideoViewJC.getContext()).finish();
                }
            }
            StandardVideoViewJC.this.Q2.dismiss();
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f35173b;

        d(final int val$netState) {
            this.f35173b = val$netState;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f35173b == 0 && (StandardVideoViewJC.this.getContext() instanceof Activity)) {
                StandardVideoViewJC standardVideoViewJC = StandardVideoViewJC.this;
                if (standardVideoViewJC.N2) {
                    ((Activity) standardVideoViewJC.getContext()).finish();
                }
            }
            StandardVideoViewJC.this.Q2.dismiss();
        }
    }

    public class e extends TimerTask {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                StandardVideoViewJC.this.f91224p.setVisibility(4);
                StandardVideoViewJC.this.f91223o.setVisibility(4);
                StandardVideoViewJC.this.f91217i.setVisibility(4);
                PopupWindow popupWindow = StandardVideoViewJC.this.f35157p2;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                }
                StandardVideoViewJC standardVideoViewJC = StandardVideoViewJC.this;
                if (standardVideoViewJC.f91212d != 3) {
                    standardVideoViewJC.f35147f2.setVisibility(0);
                }
                StandardVideoViewJC.this.q0(4);
            }
        }

        public e() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            StandardVideoViewJC standardVideoViewJC = StandardVideoViewJC.this;
            int i10 = standardVideoViewJC.f91211c;
            if (i10 == 0 || i10 == 7 || i10 == 6 || standardVideoViewJC.getContext() == null || !(StandardVideoViewJC.this.getContext() instanceof Activity)) {
                return;
            }
            ((Activity) StandardVideoViewJC.this.getContext()).runOnUiThread(new a());
        }
    }

    public StandardVideoViewJC(Context context) {
        super(context);
        this.D2 = false;
        this.E2 = new BroadcastReceiver() { // from class: com.join.android.app.component.video.StandardVideoViewJC.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                try {
                    if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                        int intExtra = (intent.getIntExtra("level", 0) * 100) / intent.getIntExtra("scale", 100);
                        if (intExtra < 15) {
                            StandardVideoViewJC.this.f35153l2.setBackgroundResource(R.drawable.jc_battery_level_10);
                        } else if (intExtra >= 15 && intExtra < 40) {
                            StandardVideoViewJC.this.f35153l2.setBackgroundResource(R.drawable.jc_battery_level_30);
                        } else if (intExtra >= 40 && intExtra < 60) {
                            StandardVideoViewJC.this.f35153l2.setBackgroundResource(R.drawable.jc_battery_level_50);
                        } else if (intExtra >= 60 && intExtra < 80) {
                            StandardVideoViewJC.this.f35153l2.setBackgroundResource(R.drawable.jc_battery_level_70);
                        } else if (intExtra >= 80 && intExtra < 95) {
                            StandardVideoViewJC.this.f35153l2.setBackgroundResource(R.drawable.jc_battery_level_90);
                        } else if (intExtra >= 95 && intExtra <= 100) {
                            StandardVideoViewJC.this.f35153l2.setBackgroundResource(R.drawable.jc_battery_level_100);
                        }
                        StandardVideoViewJC.this.getContext().unregisterReceiver(StandardVideoViewJC.this.E2);
                        StandardVideoViewJC.this.D2 = false;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        };
        this.N2 = false;
        this.O2 = false;
        this.P2 = new b();
        this.R2 = 13;
        this.S2 = "";
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void A() {
        super.A();
        j0();
        r0();
        if (this.O2) {
            h1.e("JieCaoVideoPlayer,setUiWitStateAndScreen--> currentState=3");
            setMute(true);
            this.O2 = false;
        } else {
            h1.e("JieCaoVideoPlayer,setUiWitStateAndScreen--> currentState=3, mute=" + U2);
            setMute(U2);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void B() {
        super.B();
        l0();
        r0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void C(int urlMapIndex, int seekToInAdvance) {
        super.C(urlMapIndex, seekToInAdvance);
        this.f35148g2.setVisibility(0);
        this.f91217i.setVisibility(4);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void D() {
        super.D();
        setAllControlsVisible(0, 4, 4, 4, 4, 4, 0);
        r0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void J() {
        super.J();
        this.f35147f2.setProgress(0);
        this.f35147f2.setSecondaryProgress(0);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void K(int brightnessPercent) {
        super.K(brightnessPercent);
        if (this.A2 == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.jc_dialog_brightness, (ViewGroup) null);
            this.C2 = (TextView) viewInflate.findViewById(R.id.tv_brightness);
            this.B2 = (ProgressBar) viewInflate.findViewById(R.id.brightness_progressbar);
            this.A2 = m0(viewInflate);
        }
        if (!this.A2.isShowing()) {
            this.A2.show();
        }
        if (brightnessPercent > 100) {
            brightnessPercent = 100;
        } else if (brightnessPercent < 0) {
            brightnessPercent = 0;
        }
        this.C2.setText(brightnessPercent + "%");
        this.B2.setProgress(brightnessPercent);
        o0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void L(float deltaX, String seekTime, int seekTimePosition, String totalTime, int totalTimeDuration) {
        super.L(deltaX, seekTime, seekTimePosition, totalTime, totalTimeDuration);
        if (this.f35159r2 == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.jc_dialog_progress, (ViewGroup) null);
            this.f35160s2 = (ProgressBar) viewInflate.findViewById(R.id.duration_progressbar);
            this.f35161t2 = (TextView) viewInflate.findViewById(R.id.tv_current);
            this.f35162u2 = (TextView) viewInflate.findViewById(R.id.tv_duration);
            this.f35163v2 = (ImageView) viewInflate.findViewById(R.id.duration_image_tip);
            this.f35159r2 = m0(viewInflate);
        }
        if (!this.f35159r2.isShowing()) {
            this.f35159r2.show();
        }
        this.f35161t2.setText(seekTime);
        this.f35162u2.setText(" / " + totalTime);
        this.f35160s2.setProgress(totalTimeDuration <= 0 ? 0 : (seekTimePosition * 100) / totalTimeDuration);
        if (deltaX > 0.0f) {
            this.f35163v2.setBackgroundResource(R.drawable.jc_forward_icon);
        } else {
            this.f35163v2.setBackgroundResource(R.drawable.jc_backward_icon);
        }
        o0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void N(float deltaY, int volumePercent) {
        super.N(deltaY, volumePercent);
        if (this.f35164w2 == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.jc_dialog_volume, (ViewGroup) null);
            this.f35167z2 = (ImageView) viewInflate.findViewById(R.id.volume_image_tip);
            this.f35166y2 = (TextView) viewInflate.findViewById(R.id.tv_volume);
            this.f35165x2 = (ProgressBar) viewInflate.findViewById(R.id.volume_progressbar);
            this.f35164w2 = m0(viewInflate);
        }
        if (!this.f35164w2.isShowing()) {
            this.f35164w2.show();
        }
        if (volumePercent <= 0) {
            this.f35167z2.setBackgroundResource(R.drawable.jc_close_volume);
        } else {
            this.f35167z2.setBackgroundResource(R.drawable.jc_add_volume);
        }
        if (volumePercent > 100) {
            volumePercent = 100;
        } else if (volumePercent < 0) {
            volumePercent = 0;
        }
        this.f35166y2.setText(volumePercent + "%");
        this.f35165x2.setProgress(volumePercent);
        o0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void O(int event) {
        String string;
        String str;
        t tVar;
        if (this.f91211c == 3) {
            s(3);
            fm.jiecao.jcvideoplayer_lib.b.b().f91282b.pause();
            y();
        }
        if (this.Q2 == null) {
            t tVar2 = new t(getContext(), R.style.MyDialog);
            this.Q2 = tVar2;
            tVar2.setContentView(R.layout.bind_dialog);
        }
        Button button = (Button) this.Q2.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) this.Q2.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.Q2.findViewById(R.id.tip_title);
        View viewFindViewById = this.Q2.findViewById(R.id.divider);
        TextView textView2 = (TextView) this.Q2.findViewById(R.id.dialog_content);
        TextView textView3 = (TextView) this.Q2.findViewById(R.id.dialog_desci);
        getResources().getString(R.string.tips_not_wifi_confirm);
        getResources().getString(R.string.tips_not_wifi_cancel);
        getResources().getString(R.string.tips_not_wifi);
        int iB = s1.b(getContext());
        if (iB != 0) {
            if (iB != 1) {
                viewFindViewById.setVisibility(8);
                button.setVisibility(8);
                string = getResources().getString(R.string.network_conn_failed);
                str = "关闭";
            }
            textView.setText("网络提示");
            textView2.setText(string);
            textView3.setVisibility(8);
            button2.setText(str);
            button.setText("取消");
            button2.setOnClickListener(new c(iB));
            button.setOnClickListener(new d(iB));
            tVar = this.Q2;
            if (tVar != null || tVar.isShowing()) {
            }
            this.Q2.show();
            return;
        }
        viewFindViewById.setVisibility(0);
        button.setVisibility(0);
        str = "继续观看";
        string = "您已切换到数据网络，是否继续观看视频？";
        textView.setText("网络提示");
        textView2.setText(string);
        textView3.setVisibility(8);
        button2.setText(str);
        button.setText("取消");
        button2.setOnClickListener(new c(iB));
        button.setOnClickListener(new d(iB));
        tVar = this.Q2;
        if (tVar != null) {
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void T() {
        super.T();
        if (this.f91224p.getVisibility() == 0) {
            i0();
        }
    }

    public boolean X() {
        int iE = com.join.mgps.pref.h.n(getContext()).e();
        if (iE != 1) {
            return iE != 2;
        }
        return k.i(getContext());
    }

    public void Y() {
        Timer timer = T2;
        if (timer != null) {
            timer.cancel();
        }
        e eVar = this.f35158q2;
        if (eVar != null) {
            eVar.cancel();
        }
    }

    public void Z(int size) {
        ViewGroup.LayoutParams layoutParams = this.f91217i.getLayoutParams();
        layoutParams.height = size;
        layoutParams.width = size;
        ViewGroup.LayoutParams layoutParams2 = this.f35148g2.getLayoutParams();
        layoutParams2.height = size;
        layoutParams2.width = size;
    }

    public void a0() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1) {
            setAllControlsVisible(0, 4, 0, 4, 0, 4, 4);
            s0();
        } else {
            if (i10 != 2) {
                return;
            }
            setAllControlsVisible(0, 4, 0, 4, 0, 4, 4);
            s0();
        }
    }

    public void b0() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1 || i10 == 2) {
            setAllControlsVisible(0, 0, 0, 4, 0, 4, 4);
            s0();
        }
        this.G2.setVisibility(4);
    }

    public void c0() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1) {
            setAllControlsVisible(4, 4, 0, 4, 4, 0, 4);
            s0();
        } else {
            if (i10 != 2) {
                return;
            }
            setAllControlsVisible(4, 4, 0, 4, 4, 0, 4);
            s0();
        }
    }

    public void d0() {
        r0();
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1 || i10 == 2) {
            setAllControlsVisible(0, 4, 0, 4, 0, 0, 4);
            s0();
        }
        this.H2.setVisibility(4);
        this.G2.setVisibility(4);
    }

    public void e0() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1) {
            setAllControlsVisible(4, 4, 4, 4, 4, 4, 4);
        } else {
            if (i10 != 2) {
                return;
            }
            setAllControlsVisible(4, 4, 4, 4, 4, 4, 4);
        }
    }

    public void f0() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1) {
            setAllControlsVisible(0, 0, 0, 4, 4, 4, 4);
            s0();
        } else {
            if (i10 != 2) {
                return;
            }
            setAllControlsVisible(0, 0, 0, 4, 4, 4, 4);
            s0();
        }
    }

    public void g0() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1) {
            setAllControlsVisible(4, 4, 4, 0, 4, 4, 0);
            s0();
        } else {
            if (i10 != 2) {
                return;
            }
            setAllControlsVisible(4, 4, 4, 0, 4, 4, 0);
            s0();
        }
    }

    public String getCurrentUrl() {
        try {
            return this.S2;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public int getLayoutId() {
        return R.layout.standard_video_view;
    }

    public void h0() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1) {
            setAllControlsVisible(0, 0, 4, 0, 4, 4, 4);
        } else {
            if (i10 != 2) {
                return;
            }
            setAllControlsVisible(0, 0, 4, 0, 4, 4, 4);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void i() {
        super.i();
        Dialog dialog = this.A2;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    public void i0() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1) {
            setAllControlsVisible(4, 4, 4, 4, 4, 4, 0);
        } else {
            if (i10 != 2) {
                return;
            }
            setAllControlsVisible(4, 4, 4, 4, 4, 4, 0);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void j() {
        super.j();
        Dialog dialog = this.f35159r2;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    public void j0() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1) {
            setAllControlsVisible(0, 0, 0, 4, 4, 4, 4);
            s0();
            this.G2.setVisibility(0);
            this.f35150i2.setVisibility(8);
            return;
        }
        if (i10 != 2) {
            return;
        }
        setAllControlsVisible(0, 4, 4, 4, 4, 4, 4);
        s0();
        this.G2.setVisibility(4);
        this.f91217i.setVisibility(4);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void k() {
        super.k();
        Dialog dialog = this.f35164w2;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    public void k0() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1) {
            setAllControlsVisible(0, 4, 4, 0, 0, 0, 4);
        } else {
            if (i10 != 2) {
                return;
            }
            setAllControlsVisible(0, 4, 4, 0, 0, 0, 4);
        }
    }

    public void l0() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1 || i10 == 2) {
            setAllControlsVisible(0, 4, 4, 0, 0, 0, 4);
        }
        this.H2.setVisibility(4);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void m(Context context) {
        super.m(context);
        JCVideoPlayer.M = 6;
        this.f35152k2 = (LinearLayout) findViewById(R.id.battery_time_layout);
        this.f35147f2 = (ProgressBar) findViewById(R.id.bottom_progress);
        this.f35149h2 = (TextView) findViewById(R.id.title);
        this.f35146e2 = (ImageView) findViewById(R.id.back);
        this.f35150i2 = (SimpleDraweeView) findViewById(R.id.thumb);
        this.f35148g2 = (ProgressBar) findViewById(R.id.loading);
        this.f35151j2 = (ImageView) findViewById(R.id.back_tiny);
        this.f35153l2 = (ImageView) findViewById(R.id.battery_level);
        this.f35154m2 = (TextView) findViewById(R.id.video_current_time);
        this.f35155n2 = (TextView) findViewById(R.id.retry_text);
        this.f35156o2 = (TextView) findViewById(R.id.clarity);
        this.F2 = (SimpleDraweeView) findViewById(R.id.loadingM);
        this.I2 = (TextView) findViewById(R.id.progressTextShow);
        JCVideoPlayer.P = true;
        ((EqualizerView) findViewById(R.id.equalizer_view)).a();
        this.G2 = findViewById(R.id.layout_bottom2);
        View viewFindViewById = findViewById(R.id.playFinishCover);
        this.H2 = viewFindViewById;
        viewFindViewById.setOnClickListener(new a());
        l.n(this.F2, Uri.parse("res:///2131235672"));
        SimpleDraweeView simpleDraweeView = this.f35150i2;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(this);
        }
        ImageView imageView = this.f35146e2;
        if (imageView != null) {
            imageView.setOnClickListener(this);
        }
        ImageView imageView2 = this.f35151j2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(this);
        }
        TextView textView = this.f35156o2;
        if (textView != null) {
            textView.setOnClickListener(this);
        }
        n0();
    }

    public Dialog m0(View localView) {
        Dialog dialog = new Dialog(getContext(), R.style.jc_style_dialog_progress);
        dialog.setContentView(localView);
        Window window = dialog.getWindow();
        window.addFlags(8);
        window.addFlags(32);
        window.addFlags(16);
        window.setLayout(-2, -2);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 17;
        window.setAttributes(attributes);
        return dialog;
    }

    void n0() {
        this.L2 = (ImageView) findViewById(R.id.mute);
        this.M2 = (ImageView) findViewById(R.id.autoPlay);
        this.L2.setOnClickListener(this);
        this.M2.setOnClickListener(this);
        setMuteView(U2);
        this.M2.setSelected(com.join.mgps.pref.h.n(getContext()).a());
    }

    public void o0() {
        int i10 = this.f91211c;
        if (i10 == 1) {
            if (this.f91224p.getVisibility() == 0) {
                k0();
                return;
            }
            return;
        }
        if (i10 == 3) {
            if (this.f91224p.getVisibility() == 0) {
                i0();
            }
        } else if (i10 == 5) {
            if (this.f91224p.getVisibility() == 0) {
                e0();
            }
        } else if (i10 == 6) {
            if (this.f91224p.getVisibility() == 0) {
                a0();
            }
        } else if (i10 == 4 && this.f91224p.getVisibility() == 0) {
            g0();
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.fullscreen) {
            int i10 = this.f91212d;
            int i11 = i10 == 2 ? 8 : 10;
            fm.jiecao.jcvideoplayer_lib.c cVar = JCVideoPlayer.V1;
            if (cVar != null) {
                cVar.a(i11, this.S2, i10, this.f91215g);
            }
        } else if (id2 == R.id.autoPlay) {
            boolean z10 = !this.M2.isSelected();
            this.M2.setSelected(z10);
            com.join.mgps.pref.h.n(getContext()).P(z10);
            a3.b(getContext()).d(z10 ? "已开启WiFi下自动播放" : "已关闭WiFi下自动播放");
        }
        super.onClick(v10);
        if (id2 == R.id.thumb) {
            if (TextUtils.isEmpty(getCurrentUrl())) {
                Toast.makeText(getContext(), getResources().getString(R.string.no_url), 0).show();
                return;
            }
            int i12 = this.f91211c;
            if (i12 == 0) {
                s(101);
                S();
                return;
            } else if (i12 == 6) {
                p0();
                return;
            } else {
                if (i12 == 1) {
                    this.f35150i2.setVisibility(4);
                    this.f91219k.performClick();
                    return;
                }
                return;
            }
        }
        if (id2 == R.id.surface_container) {
            r0();
            return;
        }
        if (id2 == R.id.back) {
            int i13 = this.f91212d;
            int i14 = i13 != 2 ? 10 : 8;
            fm.jiecao.jcvideoplayer_lib.c cVar2 = JCVideoPlayer.V1;
            if (cVar2 != null) {
                cVar2.a(i14, this.S2, i13, this.f91215g);
            }
            JCVideoPlayer.d();
            return;
        }
        if (id2 == R.id.back_tiny) {
            fm.jiecao.jcvideoplayer_lib.c cVar3 = JCVideoPlayer.V1;
            if (cVar3 != null) {
                cVar3.a(10, this.S2, this.f91212d, this.f91215g);
            }
            JCVideoPlayer.d();
            return;
        }
        if (id2 != R.id.clarity && id2 == R.id.mute) {
            h1.e("JieCaoVideoPlayer,onClick-mute--> mute=" + U2);
            setMute(U2 ^ true);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        super.onStartTrackingTouch(seekBar);
        Y();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        super.onStopTrackingTouch(seekBar);
        r0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.view.View.OnTouchListener
    public boolean onTouch(View v10, MotionEvent event) {
        int id2 = v10.getId();
        if (id2 == R.id.surface_container) {
            if (event.getAction() == 1) {
                r0();
                if (this.f91234z) {
                    int duration = getDuration();
                    this.f35147f2.setProgress((this.E * 100) / (duration != 0 ? duration : 1));
                }
                if (!this.f91234z && !this.f91233y) {
                    s(102);
                    p0();
                }
            }
        } else if (id2 == R.id.bottom_seek_progress) {
            int action = event.getAction();
            if (action == 0) {
                Y();
            } else if (action == 1) {
                r0();
            }
        }
        return super.onTouch(v10, event);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void p() {
        super.p();
        Y();
    }

    public void p0() {
        this.f91224p.getVisibility();
        int i10 = this.f91211c;
        if (i10 == 1) {
            if (this.f91224p.getVisibility() == 0) {
                k0();
                return;
            } else {
                l0();
                setSystemTimeAndBattery();
                return;
            }
        }
        if (i10 != 3) {
            if (i10 == 5) {
                if (this.f91224p.getVisibility() == 0) {
                    e0();
                    return;
                } else {
                    f0();
                    return;
                }
            }
            if (i10 == 4) {
                if (this.f91224p.getVisibility() == 0) {
                    g0();
                    return;
                } else {
                    h0();
                    return;
                }
            }
            return;
        }
        if (this.f91224p.getVisibility() == 0) {
            i0();
            return;
        }
        int i11 = this.f91212d;
        if (i11 == 0 || i11 == 1) {
            this.f91219k.performClick();
        } else {
            if (i11 != 2) {
                return;
            }
            setAllControlsVisible(0, 0, 0, 4, 4, 4, 4);
            s0();
            this.G2.setVisibility(4);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void q() {
        super.q();
        Y();
        PopupWindow popupWindow = this.f35157p2;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    public void q0(int visibility) {
        if (JCVideoPlayer.V1 == null || !o()) {
            return;
        }
        JCVideoPlayer.V1.a(13, this.S2, this.f91212d, Integer.valueOf(visibility));
    }

    public void r0() {
        Y();
        T2 = new Timer();
        e eVar = new e();
        this.f35158q2 = eVar;
        T2.schedule(eVar, 2500L);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void s(int type) {
        super.s(type);
        if (type == 4) {
            if (this.O2) {
                h1.e("JieCaoVideoPlayer,onEvent-ON_CLICK_RESUME--> mute=" + U2);
                setMute(true);
                this.O2 = false;
                return;
            }
            return;
        }
        if (type != 10) {
            if (type == 7) {
                h1.e("JieCaoVideoPlayer,onEvent-ON_ENTER_FULLSCREEN--> mute=" + U2);
                V2 = U2;
                setMute(false);
                return;
            }
            if (type != 8) {
                return;
            }
        }
        h1.e("JieCaoVideoPlayer,onEvent-ON_QUIT_FULLSCREEN--> mute=" + U2);
        setMute(V2);
        if (this.f91211c == 3) {
            this.f35150i2.setVisibility(8);
        }
    }

    public void s0() {
        int i10 = this.f91211c;
        if (i10 != 3 && i10 != 7 && i10 == 6) {
            this.f91217i.setVisibility(4);
            this.H2.setVisibility(0);
        }
        ImageView imageView = this.f91217i;
        int i11 = this.f91211c;
        if (i11 == 3) {
            imageView.setImageResource(R.drawable.video_pause_normal_video);
        } else if (i11 == 7) {
            imageView.setImageResource(R.drawable.video_click_error_selector);
        } else {
            imageView.setImageResource(R.drawable.video_play_normal_video);
        }
        int i12 = this.f91212d;
        if (i12 == 0 || i12 == 1) {
            this.f91217i.setVisibility(4);
        } else {
            if (i12 != 2) {
                return;
            }
            this.f91217i.setVisibility(0);
        }
    }

    public void setAllControlsVisible(int topCon, int bottomCon, int startBtn, int loadingPro, int thumbImg, int coverImg, int bottomPro) {
        int i10;
        if (!this.f91210b && (i10 = this.f91212d) != 2 && i10 != 3) {
            thumbImg = 0;
        }
        this.f91223o.setVisibility(topCon);
        this.f91224p.setVisibility(bottomCon);
        this.f91217i.setVisibility(startBtn);
        this.f35148g2.setVisibility(4);
        this.F2.setVisibility(loadingPro);
        this.f35150i2.setVisibility(thumbImg);
        if (this.f91212d == 2) {
            this.f91224p.setVisibility(bottomCon);
        } else {
            this.f91224p.setVisibility(4);
        }
        q0(bottomCon);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void setBufferProgress(int bufferProgress) {
        super.setBufferProgress(bufferProgress);
        if (bufferProgress != 0) {
            this.f35147f2.setSecondaryProgress(bufferProgress);
        }
    }

    public void setMute(boolean mute) {
        h1.e("JieCaoVideoPlayer,setMute--> mute=" + mute);
        setMuteOnly(mute);
        StandardVideoView.E = mute;
        U2 = mute;
    }

    public void setMuteOnly(boolean mute) {
        h1.e("JieCaoVideoPlayer,setMuteOnly--> mute=" + mute);
        try {
            fm.jiecao.jcvideoplayer_lib.b.b().f91282b.setAudioStreamType(3);
            if (mute) {
                fm.jiecao.jcvideoplayer_lib.b.b().f91282b.setVolume(0.0f, 0.0f);
            } else {
                fm.jiecao.jcvideoplayer_lib.b.b().f91282b.setVolume(1.0f, 1.0f);
            }
            setMuteView(mute);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setMuteView(boolean mute) {
        if (mute) {
            this.L2.setImageResource(R.drawable.mute_off);
        } else {
            this.L2.setImageResource(R.drawable.mute_on);
        }
    }

    public void setMuteWhenPlay(boolean muteWhenPlay) {
        this.O2 = muteWhenPlay;
    }

    public void setNoneNetFinishActivity(boolean noneNetFinishActivity) {
        this.N2 = noneNetFinishActivity;
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void setProgressAndText(int progress, int position, int duration) {
        super.setProgressAndText(progress, position, duration);
        if (progress != 0) {
            this.f35147f2.setProgress(progress);
        }
        this.J2 = position;
        if (position > 0) {
            this.K2 = duration - position;
            this.I2.setText(com.papa.gsyvideoplayer.utils.b.r(duration - position));
        }
    }

    public void setSystemTimeAndBattery() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");
        Date date = new Date();
        TextView textView = this.f35154m2;
        if (textView != null) {
            textView.setText(simpleDateFormat.format(date));
        }
        if (this.D2) {
            return;
        }
        getContext().registerReceiver(this.E2, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void setUp(String url, int screen, Object... objects) {
        this.S2 = url;
        super.setUp(url, screen, objects);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void v() {
        super.v();
        a0();
        Y();
        this.f35147f2.setProgress(100);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void w() {
        super.w();
        c0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void x() {
        super.x();
        d0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void y() {
        super.y();
        f0();
        Y();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void z() {
        super.z();
        h0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void setUp(LinkedHashMap urlMap, int defaultUrlMapIndex, int screen, Object... objects) {
        super.setUp(urlMap, defaultUrlMapIndex, screen, objects);
        if (objects.length == 0) {
            return;
        }
        this.f35149h2.setText(objects[0].toString());
        int i10 = this.f91212d;
        if (i10 == 2) {
            this.f91219k.setImageResource(R.drawable.mediacontroller_fullscreen_out);
            this.f35146e2.setVisibility(0);
            this.f35151j2.setVisibility(4);
            LinearLayout linearLayout = this.f35152k2;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            if (this.f35156o2 != null) {
                if (urlMap.size() == 1) {
                    this.f35156o2.setVisibility(8);
                } else {
                    this.f35156o2.setText(getCurrentUrl());
                    this.f35156o2.setVisibility(0);
                }
            }
            Z((int) getResources().getDimension(R.dimen.jc_start_button_w_h_fullscreen));
        } else if (i10 == 0 || i10 == 1) {
            this.f91219k.setImageResource(R.drawable.mediacontroller_fullscreen_in);
            this.f35146e2.setVisibility(8);
            this.f35151j2.setVisibility(4);
            Z((int) getResources().getDimension(R.dimen.jc_start_button_w_h_normal));
            LinearLayout linearLayout2 = this.f35152k2;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            TextView textView = this.f35156o2;
            if (textView != null) {
                textView.setVisibility(8);
            }
        } else if (i10 == 3) {
            this.f35151j2.setVisibility(0);
            setAllControlsVisible(4, 4, 4, 4, 4, 4, 4);
            LinearLayout linearLayout3 = this.f35152k2;
            if (linearLayout3 != null) {
                linearLayout3.setVisibility(8);
            }
            TextView textView2 = this.f35156o2;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
        }
        setSystemTimeAndBattery();
    }

    public StandardVideoViewJC(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.D2 = false;
        this.E2 = new BroadcastReceiver() { // from class: com.join.android.app.component.video.StandardVideoViewJC.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                try {
                    if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                        int intExtra = (intent.getIntExtra("level", 0) * 100) / intent.getIntExtra("scale", 100);
                        if (intExtra < 15) {
                            StandardVideoViewJC.this.f35153l2.setBackgroundResource(R.drawable.jc_battery_level_10);
                        } else if (intExtra >= 15 && intExtra < 40) {
                            StandardVideoViewJC.this.f35153l2.setBackgroundResource(R.drawable.jc_battery_level_30);
                        } else if (intExtra >= 40 && intExtra < 60) {
                            StandardVideoViewJC.this.f35153l2.setBackgroundResource(R.drawable.jc_battery_level_50);
                        } else if (intExtra >= 60 && intExtra < 80) {
                            StandardVideoViewJC.this.f35153l2.setBackgroundResource(R.drawable.jc_battery_level_70);
                        } else if (intExtra >= 80 && intExtra < 95) {
                            StandardVideoViewJC.this.f35153l2.setBackgroundResource(R.drawable.jc_battery_level_90);
                        } else if (intExtra >= 95 && intExtra <= 100) {
                            StandardVideoViewJC.this.f35153l2.setBackgroundResource(R.drawable.jc_battery_level_100);
                        }
                        StandardVideoViewJC.this.getContext().unregisterReceiver(StandardVideoViewJC.this.E2);
                        StandardVideoViewJC.this.D2 = false;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        };
        this.N2 = false;
        this.O2 = false;
        this.P2 = new b();
        this.R2 = 13;
        this.S2 = "";
    }
}
