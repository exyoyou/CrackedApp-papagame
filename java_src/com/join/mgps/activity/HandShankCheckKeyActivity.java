package com.join.mgps.activity;

import android.content.Intent;
import android.graphics.drawable.TransitionDrawable;
import android.media.AudioManager;
import android.media.SoundPool;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.joystick.map.KeyMap;
import com.papa.controller.core.PadKeyEvent;
import com.papa.controller.core.PadMotionEvent;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.handshank_check_key)
public class HandShankCheckKeyActivity extends HandShankBaseActivity {

    @Extra
    String from;
    private boolean isKeyDown;
    private SoundPool soundPool;

    @ViewById
    TextView titleText;
    private TransitionDrawable transition;
    private HashMap<Integer, c> map = new HashMap<>();
    private HashMap<String, Integer> keyMap = new HashMap<>();
    Handler mHandler = new Handler();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c f53687b;

        a(final c val$keyInfo) {
            this.f53687b = val$keyInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f53687b != null) {
                HandShankCheckKeyActivity.this.playBtnSound();
                ImageView imageView = (ImageView) HandShankCheckKeyActivity.this.findViewById(this.f53687b.f53691a);
                imageView.setImageResource(this.f53687b.f53693c);
                imageView.invalidate();
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c f53689b;

        b(final c val$keyInfo) {
            this.f53689b = val$keyInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = this.f53689b;
            if (cVar != null) {
                ImageView imageView = (ImageView) HandShankCheckKeyActivity.this.findViewById(cVar.f53691a);
                imageView.setImageResource(this.f53689b.f53692b);
                imageView.invalidate();
                HandShankCheckKeyActivity.this.isKeyDown = false;
            }
        }
    }

    private class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f53691a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f53692b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f53693c;

        public c(int id2, int normal_drawable, int pressed_drawable) {
            this.f53691a = id2;
            this.f53692b = normal_drawable;
            this.f53693c = pressed_drawable;
        }
    }

    private void adjustVolume(KeyEvent event) {
        int keyCode = event.getKeyCode();
        AudioManager audioManager = (AudioManager) getSystemService("audio");
        if (keyCode == 24) {
            audioManager.adjustStreamVolume(3, 1, 5);
        } else {
            if (keyCode != 25) {
                return;
            }
            audioManager.adjustStreamVolume(3, -1, 5);
        }
    }

    private void initMap() {
        this.keyMap.clear();
        Map mapC = com.join.mgps.joystick.map.d.c(KeyMap.keySection);
        for (String str : mapC.keySet()) {
            this.keyMap.put(str, Integer.valueOf(Integer.parseInt((String) mapC.get(str))));
        }
        if (this.keyMap.size() == 0) {
            this.keyMap.put(com.join.mgps.joystick.map.b.f71753d, 108);
            this.keyMap.put(com.join.mgps.joystick.map.b.f71750c, 109);
            this.keyMap.put(com.join.mgps.joystick.map.b.f71756e, 99);
            this.keyMap.put(com.join.mgps.joystick.map.b.f71762g, 96);
            this.keyMap.put(com.join.mgps.joystick.map.b.f71759f, 100);
            this.keyMap.put(com.join.mgps.joystick.map.b.f71765h, 97);
            this.keyMap.put(com.join.mgps.joystick.map.b.f71768i, 102);
            this.keyMap.put(com.join.mgps.joystick.map.b.f71771j, 104);
            this.keyMap.put(com.join.mgps.joystick.map.b.f71774k, 103);
            this.keyMap.put(com.join.mgps.joystick.map.b.f71777l, 105);
            this.keyMap.put(com.join.mgps.joystick.map.b.f71780m, 21);
            this.keyMap.put(com.join.mgps.joystick.map.b.f71783n, 19);
            this.keyMap.put(com.join.mgps.joystick.map.b.f71789p, 22);
            this.keyMap.put(com.join.mgps.joystick.map.b.f71786o, 20);
            this.keyMap.put(com.join.mgps.joystick.map.b.f71795r, 107);
            this.keyMap.put(com.join.mgps.joystick.map.b.f71792q, 106);
        }
        initMapData(this.keyMap);
    }

    private void initMapData(Map<String, Integer> keyMap) {
        this.map.clear();
        this.map.put(keyMap.get(com.join.mgps.joystick.map.b.f71759f), new c(R.id.f35492y, R.drawable.handshank_check_point_normal, R.drawable.handshank_check_point_pressed));
        this.map.put(keyMap.get(com.join.mgps.joystick.map.b.f71762g), new c(R.id.f35449a, R.drawable.handshank_check_point_normal, R.drawable.handshank_check_point_pressed));
        this.map.put(keyMap.get(com.join.mgps.joystick.map.b.f71756e), new c(R.id.f35491x, R.drawable.handshank_check_point_normal, R.drawable.handshank_check_point_pressed));
        this.map.put(keyMap.get(com.join.mgps.joystick.map.b.f71765h), new c(R.id.f35453b, R.drawable.handshank_check_point_normal, R.drawable.handshank_check_point_pressed));
        this.map.put(keyMap.get(com.join.mgps.joystick.map.b.f71768i), new c(R.id.handshank_check_lb, R.drawable.handshank_check_lb_normal, R.drawable.handshank_check_lb_pressed));
        this.map.put(keyMap.get(com.join.mgps.joystick.map.b.f71771j), new c(R.id.handshank_check_ls, R.drawable.handshank_check_ls_normal, R.drawable.handshank_check_ls_pressed));
        this.map.put(keyMap.get(com.join.mgps.joystick.map.b.f71774k), new c(R.id.handshank_check_rb, R.drawable.handshank_check_rb_normal, R.drawable.handshank_check_rb_pressed));
        this.map.put(keyMap.get(com.join.mgps.joystick.map.b.f71777l), new c(R.id.handshank_check_rs, R.drawable.handshank_check_rs_normal, R.drawable.handshank_check_rs_pressed));
        this.map.put(keyMap.get(com.join.mgps.joystick.map.b.f71792q), new c(R.id.handshank_check_stick_l, R.drawable.handshank_check_stick_normal, R.drawable.handshank_check_stick_pressed));
        this.map.put(keyMap.get(com.join.mgps.joystick.map.b.f71795r), new c(R.id.handshank_check_stick_r, R.drawable.handshank_check_stick_normal, R.drawable.handshank_check_stick_pressed));
        this.map.put(keyMap.get(com.join.mgps.joystick.map.b.f71780m), new c(R.id.handshank_check_cross, R.drawable.handshank_check_cross_bg, R.drawable.handshank_check_cross_left));
        this.map.put(keyMap.get(com.join.mgps.joystick.map.b.f71783n), new c(R.id.handshank_check_cross, R.drawable.handshank_check_cross_bg, R.drawable.handshank_check_cross_top));
        this.map.put(keyMap.get(com.join.mgps.joystick.map.b.f71789p), new c(R.id.handshank_check_cross, R.drawable.handshank_check_cross_bg, R.drawable.handshank_check_cross_right));
        this.map.put(keyMap.get(com.join.mgps.joystick.map.b.f71786o), new c(R.id.handshank_check_cross, R.drawable.handshank_check_cross_bg, R.drawable.handshank_check_cross_down));
    }

    private void initViews() {
        findViewById(R.id.handshank_check_layout).requestFocus();
        this.titleText.setText("校验手柄按键");
    }

    private void loadSound() {
        SoundPool soundPool = new SoundPool(21, 3, 10);
        this.soundPool = soundPool;
        soundPool.load(this, R.raw.jiejitoubi, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playBtnSound() {
        this.soundPool.play(1, 1.0f, 1.0f, 1, 0, 1.0f);
    }

    @AfterViews
    void afterView() {
        loadSound();
        initViews();
    }

    @Click
    void backImage() {
        if (TextUtils.isEmpty(this.from)) {
            finish();
        } else if (this.from.equals("first")) {
            Intent intent = new Intent(this, (Class<?>) HandShankYesActivity_.class);
            intent.setFlags(603979776);
            startActivity(intent);
            finish();
        }
    }

    @Click
    void errButn() {
        Intent intent = new Intent(this, (Class<?>) HandShankSetKeyActivity_.class);
        if (TextUtils.isEmpty(this.from)) {
            startActivity(intent);
            return;
        }
        intent.putExtra("from", this.from);
        startActivity(intent);
        finish();
    }

    void handleKeyDownUi(final c keyInfo) {
        this.mHandler.post(new a(keyInfo));
    }

    void handleKeyUpUi(final c keyInfo) {
        this.mHandler.post(new b(keyInfo));
    }

    @Click
    void okButn() {
        Intent intent = new Intent(this, (Class<?>) HandShankYesActivity_.class);
        intent.setFlags(603979776);
        startActivity(intent);
        finish();
    }

    public boolean onKeyDown1(int keyCode, KeyEvent event) {
        try {
            if (com.join.mgps.joystick.map.a.b().f(event.getDevice().getName())) {
                return false;
            }
            adjustVolume(event);
            if (keyCode != 4) {
                if (!this.isKeyDown) {
                    this.isKeyDown = true;
                    handleKeyDownUi(this.map.get(Integer.valueOf(keyCode)));
                }
                return true;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // com.join.mgps.activity.HandShankBaseActivity
    protected boolean onKeyEvent(int keyCode, PadKeyEvent event) {
        if (com.join.mgps.joystick.map.a.b().f(event.f())) {
            return false;
        }
        if (event.w() == 0) {
            onKeyDown1(keyCode, padEvent2KeyEvent(event));
        } else {
            onKeyUp1(keyCode, padEvent2KeyEvent(event));
        }
        return super.onKeyEvent(keyCode, event);
    }

    public boolean onKeyUp1(int keyCode, KeyEvent event) {
        if (com.join.mgps.joystick.map.a.b().f(event.getDevice().getName())) {
            return false;
        }
        if (keyCode == 4) {
            return super.onKeyUp(keyCode, event);
        }
        handleKeyUpUi(this.map.get(Integer.valueOf(keyCode)));
        return true;
    }

    @Override // com.join.mgps.activity.HandShankBaseActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        initMap();
    }

    @Override // com.join.mgps.activity.HandShankBaseActivity
    protected boolean onStickEvent(PadMotionEvent event) {
        return super.onStickEvent(event);
    }
}
