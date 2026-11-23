package fm.jiecao.jcvideoplayer_lib;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes5.dex */
public class JCVideoPlayerStandard extends JCVideoPlayer {
    protected static Timer F2;
    protected TextView A2;
    protected ImageView B2;
    protected Dialog C2;
    protected ProgressBar D2;
    protected TextView E2;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    public ImageView f91237e2;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    public ProgressBar f91238f2;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    public ProgressBar f91239g2;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    public TextView f91240h2;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    public ImageView f91241i2;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    public ImageView f91242j2;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    public LinearLayout f91243k2;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    public ImageView f91244l2;

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    public TextView f91245m2;

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    public TextView f91246n2;

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    public TextView f91247o2;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    public PopupWindow f91248p2;

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    protected e f91249q2;

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    private boolean f91250r2;

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    private BroadcastReceiver f91251s2;

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    protected Dialog f91252t2;

    /* JADX INFO: renamed from: u2, reason: collision with root package name */
    protected ProgressBar f91253u2;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    protected TextView f91254v2;

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    protected TextView f91255w2;

    /* JADX INFO: renamed from: x2, reason: collision with root package name */
    protected ImageView f91256x2;

    /* JADX INFO: renamed from: y2, reason: collision with root package name */
    protected Dialog f91257y2;

    /* JADX INFO: renamed from: z2, reason: collision with root package name */
    protected ProgressBar f91258z2;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ LinearLayout f91260b;

        a(LinearLayout linearLayout) {
            this.f91260b = linearLayout;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iIntValue = ((Integer) view.getTag()).intValue();
            JCVideoPlayerStandard jCVideoPlayerStandard = JCVideoPlayerStandard.this;
            jCVideoPlayerStandard.C(iIntValue, jCVideoPlayerStandard.getCurrentPositionWhenPlaying());
            JCVideoPlayerStandard jCVideoPlayerStandard2 = JCVideoPlayerStandard.this;
            jCVideoPlayerStandard2.f91247o2.setText(fm.jiecao.jcvideoplayer_lib.e.e(jCVideoPlayerStandard2.F, jCVideoPlayerStandard2.G));
            for (int i10 = 0; i10 < this.f91260b.getChildCount(); i10++) {
                if (i10 == JCVideoPlayerStandard.this.G) {
                    ((TextView) this.f91260b.getChildAt(i10)).setTextColor(Color.parseColor("#fff85959"));
                } else {
                    ((TextView) this.f91260b.getChildAt(i10)).setTextColor(Color.parseColor("#ffffff"));
                }
            }
            PopupWindow popupWindow = JCVideoPlayerStandard.this.f91248p2;
            if (popupWindow != null) {
                popupWindow.dismiss();
            }
        }
    }

    class b implements DialogInterface.OnClickListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            dialogInterface.dismiss();
            JCVideoPlayerStandard.this.s(101);
            JCVideoPlayerStandard.this.S();
            JCVideoPlayer.P = true;
        }
    }

    class c implements DialogInterface.OnClickListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            dialogInterface.dismiss();
            if (JCVideoPlayerStandard.this.f91212d == 2) {
                dialogInterface.dismiss();
                JCVideoPlayerStandard.this.g();
            }
        }
    }

    class d implements DialogInterface.OnCancelListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            dialogInterface.dismiss();
            if (JCVideoPlayerStandard.this.f91212d == 2) {
                dialogInterface.dismiss();
                JCVideoPlayerStandard.this.g();
            }
        }
    }

    public class e extends TimerTask {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                JCVideoPlayerStandard.this.f91224p.setVisibility(4);
                JCVideoPlayerStandard.this.f91223o.setVisibility(4);
                JCVideoPlayerStandard.this.f91217i.setVisibility(4);
                PopupWindow popupWindow = JCVideoPlayerStandard.this.f91248p2;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                }
                JCVideoPlayerStandard jCVideoPlayerStandard = JCVideoPlayerStandard.this;
                if (jCVideoPlayerStandard.f91212d != 3) {
                    jCVideoPlayerStandard.f91238f2.setVisibility(0);
                }
            }
        }

        public e() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            JCVideoPlayerStandard jCVideoPlayerStandard = JCVideoPlayerStandard.this;
            int i10 = jCVideoPlayerStandard.f91211c;
            if (i10 == 0 || i10 == 7 || i10 == 6 || jCVideoPlayerStandard.getContext() == null || !(JCVideoPlayerStandard.this.getContext() instanceof Activity)) {
                return;
            }
            ((Activity) JCVideoPlayerStandard.this.getContext()).runOnUiThread(new a());
        }
    }

    public JCVideoPlayerStandard(Context context) {
        super(context);
        this.f91250r2 = false;
        this.f91251s2 = new BroadcastReceiver() { // from class: fm.jiecao.jcvideoplayer_lib.JCVideoPlayerStandard.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                    int intExtra = (intent.getIntExtra("level", 0) * 100) / intent.getIntExtra("scale", 100);
                    if (intExtra < 15) {
                        JCVideoPlayerStandard.this.f91244l2.setBackgroundResource(R.drawable.jc_battery_level_10);
                    } else if (intExtra >= 15 && intExtra < 40) {
                        JCVideoPlayerStandard.this.f91244l2.setBackgroundResource(R.drawable.jc_battery_level_30);
                    } else if (intExtra >= 40 && intExtra < 60) {
                        JCVideoPlayerStandard.this.f91244l2.setBackgroundResource(R.drawable.jc_battery_level_50);
                    } else if (intExtra >= 60 && intExtra < 80) {
                        JCVideoPlayerStandard.this.f91244l2.setBackgroundResource(R.drawable.jc_battery_level_70);
                    } else if (intExtra >= 80 && intExtra < 95) {
                        JCVideoPlayerStandard.this.f91244l2.setBackgroundResource(R.drawable.jc_battery_level_90);
                    } else if (intExtra >= 95 && intExtra <= 100) {
                        JCVideoPlayerStandard.this.f91244l2.setBackgroundResource(R.drawable.jc_battery_level_100);
                    }
                    JCVideoPlayerStandard.this.getContext().unregisterReceiver(JCVideoPlayerStandard.this.f91251s2);
                    JCVideoPlayerStandard.this.f91250r2 = false;
                }
            }
        };
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void A() {
        super.A();
        i0();
        o0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void B() {
        super.B();
        k0();
        o0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void C(int i10, int i11) {
        super.C(i10, i11);
        this.f91239g2.setVisibility(0);
        this.f91217i.setVisibility(4);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void D() {
        super.D();
        setAllControlsVisible(0, 4, 4, 4, 4, 4, 0);
        o0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void J() {
        super.J();
        this.f91238f2.setProgress(0);
        this.f91238f2.setSecondaryProgress(0);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void K(int i10) {
        super.K(i10);
        if (this.C2 == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.jc_dialog_brightness, (ViewGroup) null);
            this.E2 = (TextView) viewInflate.findViewById(R.id.tv_brightness);
            this.D2 = (ProgressBar) viewInflate.findViewById(R.id.brightness_progressbar);
            this.C2 = l0(viewInflate);
        }
        if (!this.C2.isShowing()) {
            this.C2.show();
        }
        if (i10 > 100) {
            i10 = 100;
        } else if (i10 < 0) {
            i10 = 0;
        }
        this.E2.setText(i10 + "%");
        this.D2.setProgress(i10);
        m0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void L(float f10, String str, int i10, String str2, int i11) {
        super.L(f10, str, i10, str2, i11);
        if (this.f91252t2 == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.jc_dialog_progress, (ViewGroup) null);
            this.f91253u2 = (ProgressBar) viewInflate.findViewById(R.id.duration_progressbar);
            this.f91254v2 = (TextView) viewInflate.findViewById(R.id.tv_current);
            this.f91255w2 = (TextView) viewInflate.findViewById(R.id.tv_duration);
            this.f91256x2 = (ImageView) viewInflate.findViewById(R.id.duration_image_tip);
            this.f91252t2 = l0(viewInflate);
        }
        if (!this.f91252t2.isShowing()) {
            this.f91252t2.show();
        }
        this.f91254v2.setText(str);
        this.f91255w2.setText(" / " + str2);
        this.f91253u2.setProgress(i11 <= 0 ? 0 : (i10 * 100) / i11);
        if (f10 > 0.0f) {
            this.f91256x2.setBackgroundResource(R.drawable.jc_forward_icon);
        } else {
            this.f91256x2.setBackgroundResource(R.drawable.jc_backward_icon);
        }
        m0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void N(float f10, int i10) {
        super.N(f10, i10);
        if (this.f91257y2 == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.jc_dialog_volume, (ViewGroup) null);
            this.B2 = (ImageView) viewInflate.findViewById(R.id.volume_image_tip);
            this.A2 = (TextView) viewInflate.findViewById(R.id.tv_volume);
            this.f91258z2 = (ProgressBar) viewInflate.findViewById(R.id.volume_progressbar);
            this.f91257y2 = l0(viewInflate);
        }
        if (!this.f91257y2.isShowing()) {
            this.f91257y2.show();
        }
        if (i10 <= 0) {
            this.B2.setBackgroundResource(R.drawable.jc_close_volume);
        } else {
            this.B2.setBackgroundResource(R.drawable.jc_add_volume);
        }
        if (i10 > 100) {
            i10 = 100;
        } else if (i10 < 0) {
            i10 = 0;
        }
        this.A2.setText(i10 + "%");
        this.f91258z2.setProgress(i10);
        m0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void O(int i10) {
        super.O(i10);
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(getResources().getString(R.string.tips_not_wifi));
        builder.setPositiveButton(getResources().getString(R.string.tips_not_wifi_confirm), new b());
        builder.setNegativeButton(getResources().getString(R.string.tips_not_wifi_cancel), new c());
        builder.setOnCancelListener(new d());
        builder.create().show();
    }

    public void X() {
        Timer timer = F2;
        if (timer != null) {
            timer.cancel();
        }
        e eVar = this.f91249q2;
        if (eVar != null) {
            eVar.cancel();
        }
    }

    public void Y(int i10) {
        ViewGroup.LayoutParams layoutParams = this.f91217i.getLayoutParams();
        layoutParams.height = i10;
        layoutParams.width = i10;
        ViewGroup.LayoutParams layoutParams2 = this.f91239g2.getLayoutParams();
        layoutParams2.height = i10;
        layoutParams2.width = i10;
    }

    public void Z() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1) {
            setAllControlsVisible(0, 4, 0, 4, 0, 4, 4);
            p0();
        } else {
            if (i10 != 2) {
                return;
            }
            setAllControlsVisible(0, 4, 0, 4, 0, 4, 4);
            p0();
        }
    }

    public void a0() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1) {
            setAllControlsVisible(0, 0, 0, 4, 0, 4, 4);
            p0();
        } else {
            if (i10 != 2) {
                return;
            }
            setAllControlsVisible(0, 0, 0, 4, 0, 4, 4);
            p0();
        }
    }

    public void b0() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1) {
            setAllControlsVisible(4, 4, 0, 4, 4, 0, 4);
            p0();
        } else {
            if (i10 != 2) {
                return;
            }
            setAllControlsVisible(4, 4, 0, 4, 4, 0, 4);
            p0();
        }
    }

    public void c0() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1) {
            setAllControlsVisible(0, 4, 0, 4, 0, 0, 4);
            p0();
        } else {
            if (i10 != 2) {
                return;
            }
            setAllControlsVisible(0, 4, 0, 4, 0, 0, 4);
            p0();
        }
    }

    public void d0() {
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

    public void e0() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1) {
            setAllControlsVisible(0, 0, 0, 4, 4, 4, 4);
            p0();
        } else {
            if (i10 != 2) {
                return;
            }
            setAllControlsVisible(0, 0, 0, 4, 4, 4, 4);
            p0();
        }
    }

    public void f0() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1) {
            setAllControlsVisible(4, 4, 4, 0, 4, 4, 0);
            p0();
        } else {
            if (i10 != 2) {
                return;
            }
            setAllControlsVisible(4, 4, 4, 0, 4, 4, 0);
            p0();
        }
    }

    public void g0() {
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
    public int getLayoutId() {
        return R.layout.jc_layout_standard;
    }

    public void h0() {
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
    public void i() {
        super.i();
        Dialog dialog = this.C2;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    public void i0() {
        int i10 = this.f91212d;
        if (i10 == 0 || i10 == 1) {
            setAllControlsVisible(0, 0, 0, 4, 4, 4, 4);
            p0();
        } else {
            if (i10 != 2) {
                return;
            }
            setAllControlsVisible(0, 0, 0, 4, 4, 4, 4);
            p0();
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void j() {
        super.j();
        Dialog dialog = this.f91252t2;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    public void j0() {
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

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void k() {
        super.k();
        Dialog dialog = this.f91257y2;
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

    public Dialog l0(View view) {
        Dialog dialog = new Dialog(getContext(), R.style.jc_style_dialog_progress);
        dialog.setContentView(view);
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

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void m(Context context) {
        super.m(context);
        this.f91243k2 = (LinearLayout) findViewById(R.id.battery_time_layout);
        this.f91238f2 = (ProgressBar) findViewById(R.id.bottom_progress);
        this.f91240h2 = (TextView) findViewById(R.id.title);
        this.f91237e2 = (ImageView) findViewById(R.id.back);
        this.f91241i2 = (ImageView) findViewById(R.id.thumb);
        this.f91239g2 = (ProgressBar) findViewById(R.id.loading);
        this.f91242j2 = (ImageView) findViewById(R.id.back_tiny);
        this.f91244l2 = (ImageView) findViewById(R.id.battery_level);
        this.f91245m2 = (TextView) findViewById(R.id.video_current_time);
        this.f91246n2 = (TextView) findViewById(R.id.retry_text);
        this.f91247o2 = (TextView) findViewById(R.id.clarity);
        this.f91241i2.setOnClickListener(this);
        this.f91237e2.setOnClickListener(this);
        this.f91242j2.setOnClickListener(this);
        this.f91247o2.setOnClickListener(this);
    }

    public void m0() {
        int i10 = this.f91211c;
        if (i10 == 1) {
            if (this.f91224p.getVisibility() == 0) {
                j0();
                return;
            }
            return;
        }
        if (i10 == 3) {
            if (this.f91224p.getVisibility() == 0) {
                h0();
            }
        } else if (i10 == 5) {
            if (this.f91224p.getVisibility() == 0) {
                d0();
            }
        } else if (i10 == 6) {
            if (this.f91224p.getVisibility() == 0) {
                Z();
            }
        } else if (i10 == 4 && this.f91224p.getVisibility() == 0) {
            f0();
        }
    }

    public void n0() {
        if (this.f91224p.getVisibility() != 0) {
            setSystemTimeAndBattery();
            this.f91247o2.setText(fm.jiecao.jcvideoplayer_lib.e.e(this.F, this.G));
        }
        int i10 = this.f91211c;
        if (i10 == 1) {
            if (this.f91224p.getVisibility() == 0) {
                j0();
                return;
            } else {
                k0();
                setSystemTimeAndBattery();
                return;
            }
        }
        if (i10 == 3) {
            if (this.f91224p.getVisibility() == 0) {
                h0();
                return;
            } else {
                i0();
                return;
            }
        }
        if (i10 == 5) {
            if (this.f91224p.getVisibility() == 0) {
                d0();
                return;
            } else {
                e0();
                return;
            }
        }
        if (i10 == 4) {
            if (this.f91224p.getVisibility() == 0) {
                f0();
            } else {
                g0();
            }
        }
    }

    public void o0() {
        X();
        F2 = new Timer();
        e eVar = new e();
        this.f91249q2 = eVar;
        F2.schedule(eVar, 2500L);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        int id2 = view.getId();
        if (id2 == R.id.thumb) {
            if (TextUtils.isEmpty(fm.jiecao.jcvideoplayer_lib.e.d(this.F, this.G))) {
                Toast.makeText(getContext(), getResources().getString(R.string.no_url), 0).show();
                return;
            }
            int i10 = this.f91211c;
            if (i10 != 0) {
                if (i10 == 6) {
                    n0();
                    return;
                }
                return;
            } else if (!fm.jiecao.jcvideoplayer_lib.e.d(this.F, this.G).startsWith("file") && !fm.jiecao.jcvideoplayer_lib.e.d(this.F, this.G).startsWith(net.lingala.zip4j.util.e.F0) && !fm.jiecao.jcvideoplayer_lib.e.h(getContext()) && !JCVideoPlayer.P) {
                O(101);
                return;
            } else {
                s(101);
                S();
                return;
            }
        }
        if (id2 == R.id.surface_container) {
            o0();
            return;
        }
        if (id2 == R.id.back) {
            JCVideoPlayer.d();
            return;
        }
        if (id2 == R.id.back_tiny) {
            JCVideoPlayer.d();
            return;
        }
        if (id2 == R.id.clarity) {
            LinearLayout linearLayout = (LinearLayout) ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.jc_layout_clarity, (ViewGroup) null);
            a aVar = new a(linearLayout);
            for (int i11 = 0; i11 < this.F.size(); i11++) {
                String strE = fm.jiecao.jcvideoplayer_lib.e.e(this.F, i11);
                TextView textView = (TextView) View.inflate(getContext(), R.layout.jc_layout_clarity_item, null);
                textView.setText(strE);
                textView.setTag(Integer.valueOf(i11));
                linearLayout.addView(textView, i11);
                textView.setOnClickListener(aVar);
                if (i11 == this.G) {
                    textView.setTextColor(Color.parseColor("#fff85959"));
                }
            }
            PopupWindow popupWindow = new PopupWindow((View) linearLayout, -2, -2, true);
            this.f91248p2 = popupWindow;
            popupWindow.setContentView(linearLayout);
            this.f91248p2.showAsDropDown(this.f91247o2);
            linearLayout.measure(0, 0);
            this.f91248p2.update(this.f91247o2, -40, 46, Math.round(linearLayout.getMeasuredWidth() * 2), linearLayout.getMeasuredHeight());
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        super.onStartTrackingTouch(seekBar);
        X();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        super.onStopTrackingTouch(seekBar);
        o0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int id2 = view.getId();
        if (id2 == R.id.surface_container) {
            if (motionEvent.getAction() == 1) {
                o0();
                if (this.f91234z) {
                    int duration = getDuration();
                    this.f91238f2.setProgress((this.E * 100) / (duration != 0 ? duration : 1));
                }
                if (!this.f91234z && !this.f91233y) {
                    s(102);
                    n0();
                }
            }
        } else if (id2 == R.id.bottom_seek_progress) {
            int action = motionEvent.getAction();
            if (action == 0) {
                X();
            } else if (action == 1) {
                o0();
            }
        }
        return super.onTouch(view, motionEvent);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void p() {
        super.p();
        X();
    }

    public void p0() {
        int i10 = this.f91211c;
        if (i10 == 3) {
            this.f91217i.setImageResource(R.drawable.jc_click_pause_selector);
            this.f91246n2.setVisibility(4);
        } else if (i10 == 7) {
            this.f91217i.setImageResource(R.drawable.jc_click_error_selector);
            this.f91246n2.setVisibility(4);
        } else if (i10 == 6) {
            this.f91217i.setImageResource(R.drawable.jc_click_replay_selector);
            this.f91246n2.setVisibility(0);
        } else {
            this.f91217i.setImageResource(R.drawable.jc_click_play_selector);
            this.f91246n2.setVisibility(4);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void q() {
        super.q();
        X();
        PopupWindow popupWindow = this.f91248p2;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    public void setAllControlsVisible(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        int i17;
        if (!this.f91210b && (i17 = this.f91212d) != 2 && i17 != 3) {
            i14 = 0;
        }
        this.f91223o.setVisibility(i10);
        this.f91224p.setVisibility(i11);
        this.f91217i.setVisibility(i12);
        this.f91239g2.setVisibility(i13);
        this.f91241i2.setVisibility(i14);
        this.f91238f2.setVisibility(i16);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void setBufferProgress(int i10) {
        super.setBufferProgress(i10);
        if (i10 != 0) {
            this.f91238f2.setSecondaryProgress(i10);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void setProgressAndText(int i10, int i11, int i12) {
        super.setProgressAndText(i10, i11, i12);
        if (i10 != 0) {
            this.f91238f2.setProgress(i10);
        }
    }

    public void setSystemTimeAndBattery() {
        this.f91245m2.setText(new SimpleDateFormat("HH:mm").format(new Date()));
        if (this.f91250r2) {
            return;
        }
        getContext().registerReceiver(this.f91251s2, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void setUp(LinkedHashMap linkedHashMap, int i10, int i11, Object... objArr) {
        super.setUp(linkedHashMap, i10, i11, objArr);
        if (objArr.length == 0) {
            return;
        }
        this.f91240h2.setText(objArr[0].toString());
        int i12 = this.f91212d;
        if (i12 == 2) {
            this.f91219k.setImageResource(R.drawable.jc_shrink);
            this.f91237e2.setVisibility(0);
            this.f91242j2.setVisibility(4);
            this.f91243k2.setVisibility(0);
            if (linkedHashMap.size() == 1) {
                this.f91247o2.setVisibility(8);
            } else {
                this.f91247o2.setText(fm.jiecao.jcvideoplayer_lib.e.e(linkedHashMap, this.G));
                this.f91247o2.setVisibility(0);
            }
            Y((int) getResources().getDimension(R.dimen.jc_start_button_w_h_fullscreen));
        } else if (i12 == 0 || i12 == 1) {
            this.f91219k.setImageResource(R.drawable.jc_enlarge);
            this.f91237e2.setVisibility(8);
            this.f91242j2.setVisibility(4);
            Y((int) getResources().getDimension(R.dimen.jc_start_button_w_h_normal));
            this.f91243k2.setVisibility(8);
            this.f91247o2.setVisibility(8);
        } else if (i12 == 3) {
            this.f91242j2.setVisibility(0);
            setAllControlsVisible(4, 4, 4, 4, 4, 4, 4);
            this.f91243k2.setVisibility(8);
            this.f91247o2.setVisibility(8);
        }
        setSystemTimeAndBattery();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void v() {
        super.v();
        Z();
        X();
        this.f91238f2.setProgress(100);
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void w() {
        super.w();
        b0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void x() {
        super.x();
        c0();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void y() {
        super.y();
        e0();
        X();
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void z() {
        super.z();
        g0();
    }

    public JCVideoPlayerStandard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f91250r2 = false;
        this.f91251s2 = new BroadcastReceiver() { // from class: fm.jiecao.jcvideoplayer_lib.JCVideoPlayerStandard.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                    int intExtra = (intent.getIntExtra("level", 0) * 100) / intent.getIntExtra("scale", 100);
                    if (intExtra < 15) {
                        JCVideoPlayerStandard.this.f91244l2.setBackgroundResource(R.drawable.jc_battery_level_10);
                    } else if (intExtra >= 15 && intExtra < 40) {
                        JCVideoPlayerStandard.this.f91244l2.setBackgroundResource(R.drawable.jc_battery_level_30);
                    } else if (intExtra >= 40 && intExtra < 60) {
                        JCVideoPlayerStandard.this.f91244l2.setBackgroundResource(R.drawable.jc_battery_level_50);
                    } else if (intExtra >= 60 && intExtra < 80) {
                        JCVideoPlayerStandard.this.f91244l2.setBackgroundResource(R.drawable.jc_battery_level_70);
                    } else if (intExtra >= 80 && intExtra < 95) {
                        JCVideoPlayerStandard.this.f91244l2.setBackgroundResource(R.drawable.jc_battery_level_90);
                    } else if (intExtra >= 95 && intExtra <= 100) {
                        JCVideoPlayerStandard.this.f91244l2.setBackgroundResource(R.drawable.jc_battery_level_100);
                    }
                    JCVideoPlayerStandard.this.getContext().unregisterReceiver(JCVideoPlayerStandard.this.f91251s2);
                    JCVideoPlayerStandard.this.f91250r2 = false;
                }
            }
        };
    }
}
