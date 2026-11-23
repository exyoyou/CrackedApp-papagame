package com.join.mgps.activity;

import android.content.Intent;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import com.haima.hmcp.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.joystick.map.KeyMap;
import com.papa.controller.core.PadKeyEvent;
import com.sigmob.sdk.base.mta.PointType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.handshank_set_key)
public class HandShankSetKeyActivity extends HandShankBaseActivity implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @ViewById
    Button f53865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ViewById
    Button f53866b;
    private Map<String, a> data;

    @ViewById
    Button down;

    @Extra
    String from;
    private Map<String, String> keyMap;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    @ViewById
    Button f53867l1;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    @ViewById
    Button f53868l2;

    @ViewById
    Button left;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    @ViewById
    Button f53869r1;

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    @ViewById
    Button f53870r2;

    @ViewById
    Button right;

    @ViewById
    Button select;
    private Button selectBtn;

    @ViewById
    Button start;
    private List<String> unSetKeyCode;
    private List<String> unSetKeyTag;

    @ViewById
    Button up;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @ViewById
    Button f53871x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @ViewById
    Button f53872y;

    private class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f53873a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f53874b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f53875c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f53876d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f53877e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f53878f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f53879g;

        public a(int id2, int normal_drawable, int select_drawable, int pressed_drawable, int normal_txt_color, int select_txt_color, int pressed_txt_color) {
            this.f53873a = id2;
            this.f53874b = normal_drawable;
            this.f53875c = select_drawable;
            this.f53876d = pressed_drawable;
            this.f53877e = normal_txt_color;
            this.f53878f = select_txt_color;
            this.f53879g = pressed_txt_color;
        }
    }

    private void clear() {
        Iterator<String> it2 = this.data.keySet().iterator();
        while (it2.hasNext()) {
            a aVar = this.data.get(it2.next());
            Button button = (Button) findViewById(aVar.f53873a);
            button.setBackgroundResource(aVar.f53874b);
            if (aVar.f53877e != 0) {
                button.setTextColor(getResources().getColor(aVar.f53877e));
            }
        }
        this.keyMap.clear();
        this.keyMap.put("108", com.join.mgps.joystick.map.b.f71753d);
        this.keyMap.put("109", com.join.mgps.joystick.map.b.f71750c);
        this.keyMap.put("99", com.join.mgps.joystick.map.b.f71756e);
        this.keyMap.put("96", com.join.mgps.joystick.map.b.f71762g);
        this.keyMap.put(Constants.ERRORCODE_SDK_PREFIX, com.join.mgps.joystick.map.b.f71759f);
        this.keyMap.put("97", com.join.mgps.joystick.map.b.f71765h);
        this.keyMap.put(PointType.ANTI_SPAM_TOUCH, com.join.mgps.joystick.map.b.f71768i);
        this.keyMap.put("104", com.join.mgps.joystick.map.b.f71771j);
        this.keyMap.put("103", com.join.mgps.joystick.map.b.f71774k);
        this.keyMap.put("105", com.join.mgps.joystick.map.b.f71777l);
        this.keyMap.put("21", com.join.mgps.joystick.map.b.f71780m);
        this.keyMap.put("19", com.join.mgps.joystick.map.b.f71783n);
        this.keyMap.put("22", com.join.mgps.joystick.map.b.f71789p);
        this.keyMap.put(com.windmill.sdk.point.PointType.WIND_ADAPTER, com.join.mgps.joystick.map.b.f71786o);
        this.keyMap.put(PointType.WIND_ACTIVE, com.join.mgps.joystick.map.b.f71795r);
        this.keyMap.put("106", com.join.mgps.joystick.map.b.f71792q);
        com.join.mgps.joystick.map.d.p(KeyMap.keySection, this.keyMap);
        this.keyMap.clear();
        Toast.makeText(this, "按钮重置成功", 1).show();
    }

    private void initBtn() {
        this.f53868l2.setOnClickListener(this);
        this.f53867l1.setOnClickListener(this);
        this.f53870r2.setOnClickListener(this);
        this.f53869r1.setOnClickListener(this);
        this.f53871x.setOnClickListener(this);
        this.f53872y.setOnClickListener(this);
        this.f53865a.setOnClickListener(this);
        this.f53866b.setOnClickListener(this);
        this.up.setOnClickListener(this);
        this.down.setOnClickListener(this);
        this.left.setOnClickListener(this);
        this.right.setOnClickListener(this);
        this.start.setOnClickListener(this);
        this.select.setOnClickListener(this);
    }

    private void initMap() {
        HashMap map = new HashMap();
        this.data = map;
        map.put(com.join.mgps.joystick.map.b.f71768i, new a(R.id.f35472l1, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.data.put(com.join.mgps.joystick.map.b.f71771j, new a(R.id.f35473l2, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.data.put(com.join.mgps.joystick.map.b.f71774k, new a(R.id.f35482r1, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.data.put(com.join.mgps.joystick.map.b.f71777l, new a(R.id.f35483r2, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.data.put(com.join.mgps.joystick.map.b.f71759f, new a(R.id.f35492y, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.data.put(com.join.mgps.joystick.map.b.f71756e, new a(R.id.f35491x, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.data.put(com.join.mgps.joystick.map.b.f71762g, new a(R.id.f35449a, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.data.put(com.join.mgps.joystick.map.b.f71765h, new a(R.id.f35453b, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.data.put(com.join.mgps.joystick.map.b.f71750c, new a(R.id.select, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.data.put(com.join.mgps.joystick.map.b.f71753d, new a(R.id.start, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt));
        this.data.put(com.join.mgps.joystick.map.b.f71783n, new a(R.id.up, R.drawable.handshank_set_top_normal, R.drawable.handshank_set_top_selected, R.drawable.handshank_set_top_pressed, 0, 0, 0));
        this.data.put(com.join.mgps.joystick.map.b.f71786o, new a(R.id.down, R.drawable.handshank_set_down_normal, R.drawable.handshank_set_down_selected, R.drawable.handshank_set_down_pressed, 0, 0, 0));
        this.data.put(com.join.mgps.joystick.map.b.f71780m, new a(R.id.left, R.drawable.handshank_set_left_normal, R.drawable.handshank_set_left_selected, R.drawable.handshank_set_left_pressed, 0, 0, 0));
        this.data.put(com.join.mgps.joystick.map.b.f71789p, new a(R.id.right, R.drawable.handshank_set_right_normal, R.drawable.handshank_set_right_selected, R.drawable.handshank_set_right_pressed, 0, 0, 0));
        this.keyMap = new HashMap();
    }

    private void revertBtn() {
        Iterator<Map.Entry<String, a>> it2 = this.data.entrySet().iterator();
        while (it2.hasNext()) {
            String key = it2.next().getKey();
            a aVar = this.data.get(key);
            if (this.keyMap.containsValue(key)) {
                Button button = (Button) findViewById(aVar.f53873a);
                if (aVar.f53877e != 0) {
                    button.setTextColor(getResources().getColor(aVar.f53879g));
                }
                button.setBackgroundResource(aVar.f53876d);
            } else {
                Button button2 = (Button) findViewById(aVar.f53873a);
                if (aVar.f53877e != 0) {
                    button2.setTextColor(getResources().getColor(aVar.f53877e));
                }
                button2.setBackgroundResource(aVar.f53874b);
            }
        }
    }

    private void unSet() {
        this.unSetKeyCode = new ArrayList();
        this.unSetKeyTag = new ArrayList();
        for (String str : com.join.mgps.joystick.map.b.f71747b.keySet()) {
            if (!this.keyMap.containsValue(str)) {
                this.unSetKeyTag.add(str);
            }
        }
        for (Integer num : com.join.mgps.joystick.map.b.f71747b.values()) {
            if (!this.keyMap.containsKey(num + "")) {
                this.unSetKeyCode.add(num + "");
            }
        }
        Iterator<String> it2 = this.unSetKeyTag.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            Integer num2 = com.join.mgps.joystick.map.b.f71747b.get(next);
            if (this.unSetKeyCode.contains(num2 + "")) {
                it2.remove();
                this.unSetKeyCode.remove(num2 + "");
                this.keyMap.put(num2 + "", next);
            }
        }
        if (this.unSetKeyCode.size() == this.unSetKeyTag.size()) {
            for (int i10 = 0; i10 < this.unSetKeyCode.size(); i10++) {
                this.keyMap.put(this.unSetKeyCode.get(i10), this.unSetKeyTag.get(i10));
            }
        }
    }

    @AfterViews
    void afterViews() {
        initMap();
        initBtn();
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
    void okButn() {
        if (this.keyMap.size() < 14) {
            unSet();
        }
        this.keyMap.put(PointType.WIND_ACTIVE, com.join.mgps.joystick.map.b.f71795r);
        this.keyMap.put("106", com.join.mgps.joystick.map.b.f71792q);
        com.join.mgps.joystick.map.d.p(KeyMap.keySection, this.keyMap);
        Intent intent = new Intent(this, (Class<?>) HandShankYesActivity_.class);
        intent.setFlags(603979776);
        startActivity(intent);
        finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str = (String) view.getTag();
        if (this.keyMap.containsValue(str)) {
            return;
        }
        Button button = this.selectBtn;
        if (button != null) {
            if (str.equals(button.getTag())) {
                return;
            }
            a aVar = this.data.get(this.selectBtn.getTag());
            this.selectBtn.setBackgroundResource(aVar.f53874b);
            if (aVar.f53877e != 0) {
                this.selectBtn.setTextColor(getResources().getColor(R.color.handshank_key_set_normal_txt));
            }
        }
        Button button2 = (Button) view;
        this.selectBtn = button2;
        a aVar2 = this.data.get(button2.getTag());
        this.selectBtn.setBackgroundResource(aVar2.f53875c);
        if (aVar2.f53877e != 0) {
            this.selectBtn.setTextColor(getResources().getColor(R.color.handshank_key_set_selected_txt));
        }
    }

    @Override // com.join.mgps.activity.HandShankBaseActivity
    protected boolean onKeyEvent(int keyCode, PadKeyEvent event) {
        if (com.join.mgps.joystick.map.a.b().f(event.f())) {
            return false;
        }
        if (event.w() != 0) {
            onKeyUp1(keyCode, padEvent2KeyEvent(event));
        }
        return super.onKeyEvent(keyCode, event);
    }

    public boolean onKeyUp1(int keyCode, KeyEvent event) {
        Button button;
        if (com.join.mgps.joystick.map.a.b().f(event.getDevice().getName())) {
            return false;
        }
        if (keyCode == 4) {
            return super.onKeyUp(keyCode, event);
        }
        if (keyCode != 106 && keyCode != 107 && (button = this.selectBtn) != null) {
            String str = (String) button.getTag();
            this.keyMap.put(keyCode + "", str);
            this.selectBtn.setBackgroundResource(this.data.get(this.selectBtn.getTag()).f53876d);
            this.selectBtn.setTextColor(getResources().getColor(R.color.handshank_key_set_pressed_txt));
            this.selectBtn = null;
            revertBtn();
        }
        return true;
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.join.mgps.activity.HandShankBaseActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Click
    void resetButn() {
        clear();
    }
}
