package com.join.android.app.component.video;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.byazt.bv.BaseConstants;
import com.join.mgps.Util.h1;

/* JADX INFO: loaded from: classes5.dex */
public class MediaController extends android.widget.MediaController {
    private static final int A = 3000;
    private static final int B = 1;
    private static final int C = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e f35029b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f35030c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PopupWindow f35031d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f35032e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f35033f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private View f35034g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SeekBar f35035h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TextView f35036i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f35037j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ImageButton f35038k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private OutlineTextView f35039l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f35040m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f35041n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f35042o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f35043p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f35044q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f35045r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ImageButton f35046s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private AudioManager f35047t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private g f35048u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private f f35049v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SuppressLint({"HandlerLeak"})
    private Handler f35050w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private View.OnClickListener f35051x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private View.OnClickListener f35052y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private SeekBar.OnSeekBarChangeListener f35053z;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i10 = msg.what;
            if (i10 == 1) {
                MediaController.this.hide();
                return;
            }
            if (i10 != 2) {
                return;
            }
            long jW = MediaController.this.w();
            if (MediaController.this.f35042o || !MediaController.this.f35041n) {
                return;
            }
            sendMessageDelayed(obtainMessage(2), 1000 - (jW % 1000));
            MediaController.this.y();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            MediaController.this.p();
            MediaController.this.show(3000);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            MediaController.this.o();
        }
    }

    class d implements SeekBar.OnSeekBarChangeListener {
        d() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar bar, int progress, boolean fromuser) {
            if (fromuser) {
                long j10 = (MediaController.this.f35040m * ((long) progress)) / 1000;
                String strF = com.join.android.app.common.utils.i.f(j10);
                if (MediaController.this.f35044q) {
                    MediaController.this.f35029b.seekTo((int) j10);
                }
                if (MediaController.this.f35039l != null) {
                    MediaController.this.f35039l.setText(strF);
                }
                if (MediaController.this.f35037j != null) {
                    MediaController.this.f35037j.setText(strF);
                }
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar bar) {
            MediaController.this.f35042o = true;
            MediaController.this.show(BaseConstants.Time.HOUR);
            MediaController.this.f35050w.removeMessages(2);
            if (MediaController.this.f35044q) {
                MediaController.this.f35047t.setStreamMute(3, true);
            }
            if (MediaController.this.f35039l != null) {
                MediaController.this.f35039l.setText("");
                MediaController.this.f35039l.setVisibility(0);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar bar) {
            if (!MediaController.this.f35044q) {
                MediaController.this.f35029b.seekTo((int) ((MediaController.this.f35040m * ((long) bar.getProgress())) / 1000));
            }
            if (MediaController.this.f35039l != null) {
                MediaController.this.f35039l.setText("");
                MediaController.this.f35039l.setVisibility(8);
            }
            MediaController.this.show(3000);
            MediaController.this.f35050w.removeMessages(2);
            MediaController.this.f35047t.setStreamMute(3, false);
            MediaController.this.f35042o = false;
            MediaController.this.f35050w.sendEmptyMessageDelayed(2, 1000L);
        }
    }

    public interface e {
        void a(boolean flag);

        boolean canPause();

        boolean canSeekBackward();

        boolean canSeekForward();

        int getAudioSessionId();

        int getBufferPercentage();

        int getCurrentPosition();

        int getDuration();

        boolean isPlaying();

        void pause();

        void seekTo(int msec);

        void start();
    }

    public interface f {
        void onHidden();
    }

    public interface g {
        void onShown();
    }

    public MediaController(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f35044q = false;
        this.f35045r = false;
        this.f35050w = new a();
        this.f35051x = new b();
        this.f35052y = new c();
        this.f35053z = new d();
        this.f35034g = this;
        this.f35045r = true;
        r(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (this.f35029b != null) {
            synchronized (Boolean.valueOf(this.f35043p)) {
                this.f35029b.a(this.f35043p);
            }
        }
        x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (this.f35029b.isPlaying()) {
            this.f35029b.pause();
        } else {
            this.f35029b.start();
        }
        y();
    }

    private boolean r(Context context) {
        this.f35030c = context;
        this.f35047t = (AudioManager) context.getSystemService("audio");
        return true;
    }

    private void s(View v10) {
        ImageButton imageButton = (ImageButton) v10.findViewById(getResources().getIdentifier("mediacontroller_play_pause", "id", this.f35030c.getPackageName()));
        this.f35046s = imageButton;
        if (imageButton != null) {
            imageButton.requestFocus();
            this.f35046s.setOnClickListener(this.f35051x);
        }
        SeekBar seekBar = (SeekBar) v10.findViewById(getResources().getIdentifier("mediacontroller_seekbar", "id", this.f35030c.getPackageName()));
        this.f35035h = seekBar;
        if (seekBar != null) {
            if (seekBar instanceof SeekBar) {
                seekBar.setOnSeekBarChangeListener(this.f35053z);
            }
            this.f35035h.setMax(1000);
        }
        this.f35036i = (TextView) v10.findViewById(getResources().getIdentifier("mediacontroller_time_total", "id", this.f35030c.getPackageName()));
        this.f35037j = (TextView) v10.findViewById(getResources().getIdentifier("mediacontroller_time_current", "id", this.f35030c.getPackageName()));
        ImageButton imageButton2 = (ImageButton) v10.findViewById(getResources().getIdentifier("mediacontroller_full_screen", "id", this.f35030c.getPackageName()));
        this.f35038k = imageButton2;
        if (imageButton2 != null) {
            imageButton2.setOnClickListener(this.f35052y);
        }
    }

    private void t() {
        PopupWindow popupWindow = new PopupWindow(this.f35030c);
        this.f35031d = popupWindow;
        popupWindow.setFocusable(false);
        this.f35031d.setBackgroundDrawable(null);
        this.f35031d.setOutsideTouchable(true);
        this.f35032e = R.style.Animation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long w() {
        e eVar = this.f35029b;
        if (eVar == null || this.f35042o) {
            return 0L;
        }
        long currentPosition = eVar.getCurrentPosition();
        long duration = this.f35029b.getDuration();
        SeekBar seekBar = this.f35035h;
        if (seekBar != null) {
            if (duration > 0) {
                seekBar.setProgress((int) ((1000 * currentPosition) / duration));
            }
            this.f35035h.setSecondaryProgress(this.f35029b.getBufferPercentage() * 10);
        }
        this.f35040m = duration;
        TextView textView = this.f35036i;
        if (textView != null) {
            textView.setText(com.join.android.app.common.utils.i.f(duration));
        }
        TextView textView2 = this.f35037j;
        if (textView2 != null) {
            textView2.setText(com.join.android.app.common.utils.i.f(currentPosition));
        }
        return currentPosition;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        if (this.f35034g == null || this.f35046s == null) {
            return;
        }
        if (this.f35029b.isPlaying()) {
            this.f35046s.setImageResource(getResources().getIdentifier("mediacontroller_pause", "drawable", this.f35030c.getPackageName()));
        } else {
            this.f35046s.setImageResource(getResources().getIdentifier("mediacontroller_play", "drawable", this.f35030c.getPackageName()));
        }
    }

    @Override // android.widget.MediaController, android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent event) {
        int keyCode = event.getKeyCode();
        if (event.getRepeatCount() == 0 && (keyCode == 79 || keyCode == 85 || keyCode == 62)) {
            p();
            show(3000);
            ImageButton imageButton = this.f35046s;
            if (imageButton != null) {
                imageButton.requestFocus();
            }
            return true;
        }
        if (keyCode == 86) {
            if (this.f35029b.isPlaying()) {
                this.f35029b.pause();
                y();
            }
            return true;
        }
        if (keyCode == 4 || keyCode == 82) {
            hide();
            return true;
        }
        show(3000);
        return super.dispatchKeyEvent(event);
    }

    @Override // android.widget.MediaController
    public void hide() {
        if (this.f35033f != null && this.f35041n) {
            try {
                this.f35050w.removeMessages(2);
                if (this.f35045r) {
                    setVisibility(8);
                } else {
                    this.f35031d.dismiss();
                }
            } catch (IllegalArgumentException unused) {
                h1.a("MediaController already removed", new Object[0]);
            }
            this.f35041n = false;
            f fVar = this.f35049v;
            if (fVar != null) {
                fVar.onHidden();
            }
        }
    }

    @Override // android.widget.MediaController
    public boolean isShowing() {
        return this.f35041n;
    }

    @Override // android.widget.MediaController, android.view.View
    public void onFinishInflate() {
        View view = this.f35034g;
        if (view != null) {
            s(view);
        }
        super.onFinishInflate();
    }

    @Override // android.widget.MediaController, android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        show(3000);
        return true;
    }

    @Override // android.widget.MediaController, android.view.View
    public boolean onTrackballEvent(MotionEvent ev) {
        show(3000);
        return false;
    }

    public void q() {
        this.f35045r = true;
    }

    @Override // android.widget.MediaController
    public void setAnchorView(View view) {
        this.f35033f = view;
        h1.e("setAnchorView", "mFromXml=" + this.f35045r);
        if (!this.f35045r) {
            removeAllViews();
            View viewV = v();
            this.f35034g = viewV;
            this.f35031d.setContentView(viewV);
            this.f35031d.setWidth(-1);
            this.f35031d.setHeight(-2);
        }
        if (this.f35034g == null) {
            this.f35034g = v();
        }
        if (this.f35045r) {
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this);
            }
            View view2 = this.f35033f;
            if (view2 instanceof RelativeLayout) {
                ((RelativeLayout) view2).addView(this);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.width = -1;
                    layoutParams.height = getResources().getDimensionPixelSize(com.join.android.app.mgsim.wufun.R.dimen.mediacontroller_height);
                    layoutParams.addRule(12, -1);
                }
            } else if (view2 instanceof LinearLayout) {
                ((LinearLayout) view2).addView(this);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) getLayoutParams();
                if (layoutParams2 != null) {
                    layoutParams2.width = -1;
                    layoutParams2.height = getResources().getDimensionPixelSize(com.join.android.app.mgsim.wufun.R.dimen.mediacontroller_height);
                    layoutParams2.gravity = 80;
                }
            } else if (view2 instanceof FrameLayout) {
                ((FrameLayout) view2).addView(this);
                FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) getLayoutParams();
                if (layoutParams3 != null) {
                    layoutParams3.width = -1;
                    layoutParams3.height = getResources().getDimensionPixelSize(com.join.android.app.mgsim.wufun.R.dimen.mediacontroller_height);
                    layoutParams3.gravity = 80;
                }
            }
        }
        s(this.f35034g);
        postInvalidate();
    }

    public void setAnimationStyle(int animationStyle) {
        this.f35032e = animationStyle;
    }

    @Override // android.widget.MediaController, android.view.View
    public void setEnabled(boolean enabled) {
        ImageButton imageButton = this.f35046s;
        if (imageButton != null) {
            imageButton.setEnabled(enabled);
        }
        SeekBar seekBar = this.f35035h;
        if (seekBar != null) {
            seekBar.setEnabled(enabled);
        }
        super.setEnabled(enabled);
    }

    public void setFullScreen(boolean mFullScreen) {
        this.f35043p = mFullScreen;
        x();
    }

    public void setInfoView(OutlineTextView v10) {
        this.f35039l = v10;
    }

    public void setInstantSeeking(boolean seekWhenDragging) {
        this.f35044q = seekWhenDragging;
    }

    public void setMediaPlayer(e player) {
        this.f35029b = player;
        y();
        x();
    }

    public void setOnHiddenListener(f l10) {
        this.f35049v = l10;
    }

    public void setOnShownListener(g l10) {
        this.f35048u = l10;
    }

    @TargetApi(16)
    public void setWindowLayoutType() {
        try {
            this.f35033f.setSystemUiVisibility(512);
            PopupWindow.class.getMethod("setWindowLayoutType", Integer.TYPE).invoke(this.f35031d, 1003);
        } catch (Exception e10) {
            h1.b("setWindowLayoutType", e10);
        }
    }

    @Override // android.widget.MediaController
    public void show() {
        show(3000);
    }

    public boolean u() {
        return this.f35043p;
    }

    protected View v() {
        return ((LayoutInflater) this.f35030c.getSystemService("layout_inflater")).inflate(getResources().getIdentifier("mediacontroller", "layout", this.f35030c.getPackageName()), this);
    }

    void x() {
        ImageButton imageButton;
        if (this.f35034g == null || (imageButton = this.f35038k) == null) {
            return;
        }
        if (this.f35043p) {
            imageButton.setImageResource(getResources().getIdentifier("mediacontroller_fullscreen_out", "drawable", this.f35030c.getPackageName()));
        } else {
            imageButton.setImageResource(getResources().getIdentifier("mediacontroller_fullscreen_in", "drawable", this.f35030c.getPackageName()));
        }
    }

    @Override // android.widget.MediaController
    public void show(int timeout) {
        View view;
        if (!this.f35041n && (view = this.f35033f) != null && view.getWindowToken() != null) {
            ImageButton imageButton = this.f35046s;
            if (imageButton != null) {
                imageButton.requestFocus();
            }
            if (this.f35045r) {
                setVisibility(0);
            } else {
                int[] iArr = new int[2];
                this.f35033f.getLocationOnScreen(iArr);
                int i10 = iArr[0];
                Rect rect = new Rect(i10, iArr[1], this.f35033f.getWidth() + i10, iArr[1] + this.f35033f.getHeight());
                this.f35031d.setAnimationStyle(this.f35032e);
                setWindowLayoutType();
                this.f35031d.showAtLocation(this.f35033f, 0, rect.left, rect.bottom);
            }
            this.f35041n = true;
            g gVar = this.f35048u;
            if (gVar != null) {
                gVar.onShown();
            }
        }
        y();
        x();
        this.f35050w.sendEmptyMessage(2);
        if (timeout != 0) {
            this.f35050w.removeMessages(1);
            Handler handler = this.f35050w;
            handler.sendMessageDelayed(handler.obtainMessage(1), timeout);
        }
    }

    public MediaController(Context context) {
        super(context);
        this.f35044q = false;
        this.f35045r = false;
        this.f35050w = new a();
        this.f35051x = new b();
        this.f35052y = new c();
        this.f35053z = new d();
        if (this.f35045r || !r(context)) {
            return;
        }
        t();
    }
}
