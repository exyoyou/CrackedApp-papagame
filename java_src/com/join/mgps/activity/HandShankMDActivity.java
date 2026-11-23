package com.join.mgps.activity;

import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.joystick.map.KeyMap;
import com.papa.controller.core.PadKeyEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_md_key_map)
public class HandShankMDActivity extends HandShankBaseActivity implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @ViewById
    Button f53773a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ViewById
    Button f53774b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    Button f53775c;
    private Map<String, a> data;
    private boolean isReset;
    private Map<Integer, String> keyMap;

    @ViewById
    Button select;
    private Button selectBtn;

    @ViewById
    Button start;

    @ViewById
    TextView titleText;
    private List<String> unSetKeyBoradName;
    private List<String> unSetTag;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @ViewById
    Button f53776x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @ViewById
    Button f53777y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @ViewById
    Button f53778z;
    private Map<String, String> okMap = new HashMap();
    private Map<String, Integer> KEY_MAP = new HashMap();
    private Map<String, String> MD_KEY_MAP = new HashMap();

    private class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f53779a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f53780b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f53781c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f53782d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f53783e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f53784f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f53785g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f53786h;

        public a(int id2, int normal_drawable, int select_drawable, int pressed_drawable, int normal_txt_color, int select_txt_color, int pressed_txt_color, int txt_id) {
            this.f53779a = id2;
            this.f53780b = normal_drawable;
            this.f53781c = select_drawable;
            this.f53782d = pressed_drawable;
            this.f53783e = normal_txt_color;
            this.f53784f = select_txt_color;
            this.f53785g = pressed_txt_color;
            this.f53786h = txt_id;
        }
    }

    private Map<String, String> getMap() {
        HashMap map = new HashMap();
        Map mapC = com.join.mgps.joystick.map.d.c(KeyMap.EmuMap.MD.section);
        for (Map.Entry<String, String> entry : com.join.mgps.joystick.map.b.B0.entrySet()) {
            map.put(entry.getKey(), (String) mapC.get(entry.getValue()));
        }
        return map;
    }

    private void initBtn() {
        this.titleText.setText("MD手柄设置");
        this.select.setTag(com.join.mgps.joystick.map.b.f71802t0);
        this.start.setTag(com.join.mgps.joystick.map.b.f71805u0);
        this.select.setText("选择");
        this.start.setText("开始");
        this.select.setOnClickListener(this);
        this.start.setOnClickListener(this);
        this.select.setOnClickListener(this);
        this.start.setOnClickListener(this);
        this.f53776x.setOnClickListener(this);
        this.f53777y.setOnClickListener(this);
        this.f53778z.setOnClickListener(this);
        this.f53773a.setOnClickListener(this);
        this.f53774b.setOnClickListener(this);
        this.f53775c.setOnClickListener(this);
    }

    private void initMap() {
        HashMap map = new HashMap();
        this.data = map;
        map.put(com.join.mgps.joystick.map.b.f71805u0, new a(R.id.start, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.start_tv));
        this.data.put(com.join.mgps.joystick.map.b.f71802t0, new a(R.id.select, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.select_tv));
        this.data.put(com.join.mgps.joystick.map.b.f71808v0, new a(R.id.f35491x, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.x_tv));
        this.data.put(com.join.mgps.joystick.map.b.f71817y0, new a(R.id.f35453b, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.b_tv));
        this.data.put(com.join.mgps.joystick.map.b.f71814x0, new a(R.id.f35492y, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.y_tv));
        this.data.put(com.join.mgps.joystick.map.b.f71811w0, new a(R.id.f35449a, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.a_tv));
        this.data.put(com.join.mgps.joystick.map.b.A0, new a(R.id.f35454c, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.r1_tv));
        this.data.put(com.join.mgps.joystick.map.b.f71820z0, new a(R.id.f35493z, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.l1_tv));
        initMapData();
    }

    private void initMapData() {
        Map mapC = com.join.mgps.joystick.map.d.c(KeyMap.keySection);
        for (String str : mapC.keySet()) {
            String str2 = (String) mapC.get(str);
            if (com.join.mgps.joystick.map.b.a(str)) {
                this.KEY_MAP.put(str, Integer.valueOf(Integer.parseInt(str2)));
            }
        }
        Map<String, Integer> map = this.KEY_MAP;
        if (map == null || map.size() == 0) {
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71753d, 108);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71750c, 109);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71756e, 99);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71762g, 96);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71759f, 100);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71765h, 97);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71768i, 102);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71771j, 104);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71774k, 103);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71777l, 105);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71795r, 107);
        }
        Map<String, String> map2 = getMap();
        this.MD_KEY_MAP = map2;
        if (map2 == null || map2.size() == 0) {
            this.MD_KEY_MAP.put(com.join.mgps.joystick.map.b.f71802t0, com.join.mgps.joystick.map.b.f71750c);
            this.MD_KEY_MAP.put(com.join.mgps.joystick.map.b.f71805u0, com.join.mgps.joystick.map.b.f71753d);
            this.MD_KEY_MAP.put(com.join.mgps.joystick.map.b.f71811w0, com.join.mgps.joystick.map.b.f71762g);
            this.MD_KEY_MAP.put(com.join.mgps.joystick.map.b.f71817y0, com.join.mgps.joystick.map.b.f71765h);
            this.MD_KEY_MAP.put(com.join.mgps.joystick.map.b.f71808v0, com.join.mgps.joystick.map.b.f71756e);
            this.MD_KEY_MAP.put(com.join.mgps.joystick.map.b.f71814x0, com.join.mgps.joystick.map.b.f71759f);
            this.MD_KEY_MAP.put(com.join.mgps.joystick.map.b.A0, com.join.mgps.joystick.map.b.f71774k);
            this.MD_KEY_MAP.put(com.join.mgps.joystick.map.b.f71820z0, com.join.mgps.joystick.map.b.f71768i);
        }
    }

    private void initView() {
        for (String str : this.MD_KEY_MAP.keySet()) {
            ((TextView) findViewById(this.data.get(str).f53786h)).setText(com.join.mgps.joystick.map.b.f71744a.get(this.MD_KEY_MAP.get(str)));
        }
    }

    private Map<String, String> putMap(Map<String, String> okMap) {
        HashMap map = new HashMap();
        for (String str : okMap.keySet()) {
            map.put(str, com.join.mgps.joystick.map.b.B0.get(okMap.get(str)));
        }
        return map;
    }

    private void reset() {
        this.isReset = true;
        this.okMap.clear();
        this.okMap.put(com.join.mgps.joystick.map.b.f71750c, com.join.mgps.joystick.map.b.f71802t0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71753d, com.join.mgps.joystick.map.b.f71805u0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71756e, com.join.mgps.joystick.map.b.f71808v0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71762g, com.join.mgps.joystick.map.b.f71811w0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71759f, com.join.mgps.joystick.map.b.f71814x0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71765h, com.join.mgps.joystick.map.b.f71817y0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71768i, com.join.mgps.joystick.map.b.f71820z0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71774k, com.join.mgps.joystick.map.b.A0);
        this.MD_KEY_MAP.clear();
        this.MD_KEY_MAP.put(com.join.mgps.joystick.map.b.f71802t0, com.join.mgps.joystick.map.b.f71750c);
        this.MD_KEY_MAP.put(com.join.mgps.joystick.map.b.f71805u0, com.join.mgps.joystick.map.b.f71753d);
        this.MD_KEY_MAP.put(com.join.mgps.joystick.map.b.f71808v0, com.join.mgps.joystick.map.b.f71756e);
        this.MD_KEY_MAP.put(com.join.mgps.joystick.map.b.f71811w0, com.join.mgps.joystick.map.b.f71762g);
        this.MD_KEY_MAP.put(com.join.mgps.joystick.map.b.f71814x0, com.join.mgps.joystick.map.b.f71759f);
        this.MD_KEY_MAP.put(com.join.mgps.joystick.map.b.f71817y0, com.join.mgps.joystick.map.b.f71765h);
        this.MD_KEY_MAP.put(com.join.mgps.joystick.map.b.f71820z0, com.join.mgps.joystick.map.b.f71768i);
        this.MD_KEY_MAP.put(com.join.mgps.joystick.map.b.A0, com.join.mgps.joystick.map.b.f71774k);
        for (String str : this.MD_KEY_MAP.keySet()) {
            String str2 = this.MD_KEY_MAP.get(str);
            a aVar = this.data.get(str);
            ((TextView) findViewById(aVar.f53786h)).setText(com.join.mgps.joystick.map.b.f71744a.get(str2));
            ((Button) findViewById(aVar.f53779a)).setBackgroundResource(aVar.f53780b);
            if (aVar.f53783e != 0) {
                ((Button) findViewById(aVar.f53779a)).setTextColor(getResources().getColor(aVar.f53783e));
            }
        }
        com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.MD, putMap(this.okMap));
        this.okMap.clear();
    }

    private void revertBtn() {
        Iterator<Map.Entry<String, a>> it2 = this.data.entrySet().iterator();
        while (it2.hasNext()) {
            String key = it2.next().getKey();
            a aVar = this.data.get(key);
            if (this.okMap.containsValue(key)) {
                Button button = (Button) findViewById(aVar.f53779a);
                if (aVar.f53783e != 0) {
                    button.setTextColor(getResources().getColor(aVar.f53785g));
                }
                button.setBackgroundResource(aVar.f53782d);
                ((TextView) findViewById(aVar.f53786h)).setText(com.join.mgps.joystick.map.b.f71744a.get(com.join.mgps.joystick.map.b.c(this.okMap, key)));
            } else {
                Button button2 = (Button) findViewById(aVar.f53779a);
                if (aVar.f53783e != 0) {
                    button2.setTextColor(getResources().getColor(aVar.f53783e));
                }
                button2.setBackgroundResource(aVar.f53780b);
            }
        }
    }

    private void unSet() {
        this.unSetKeyBoradName = new ArrayList();
        this.unSetTag = new ArrayList();
        for (String str : this.MD_KEY_MAP.keySet()) {
            if (!this.okMap.containsValue(str)) {
                this.unSetTag.add(str);
            }
        }
        for (String str2 : this.MD_KEY_MAP.values()) {
            if (!this.okMap.containsKey(str2)) {
                this.unSetKeyBoradName.add(str2);
            }
        }
        Iterator<String> it2 = this.unSetTag.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            String str3 = this.MD_KEY_MAP.get(next);
            if (this.unSetKeyBoradName.contains(str3)) {
                it2.remove();
                this.unSetKeyBoradName.remove(str3);
                this.okMap.put(str3, next);
            }
        }
        if (this.unSetKeyBoradName.size() >= this.unSetTag.size()) {
            for (int i10 = 0; i10 < this.unSetTag.size(); i10++) {
                this.okMap.put(this.unSetKeyBoradName.get(i10), this.unSetTag.get(i10));
            }
        }
    }

    @AfterViews
    void afterViews() {
        initMap();
        initBtn();
        initView();
    }

    @Click
    void backImage() {
        finish();
    }

    @Click
    void okButn() {
        if (this.isReset) {
            this.isReset = false;
            finish();
        } else {
            if (this.okMap.size() < 8) {
                unSet();
            }
            com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.MD, putMap(this.okMap));
            finish();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str = (String) view.getTag();
        if (this.okMap.containsValue(str)) {
            return;
        }
        Button button = this.selectBtn;
        if (button != null) {
            if (str.equals(button.getTag())) {
                return;
            }
            a aVar = this.data.get(this.selectBtn.getTag());
            this.selectBtn.setBackgroundResource(aVar.f53780b);
            if (aVar.f53783e != 0) {
                this.selectBtn.setTextColor(getResources().getColor(R.color.handshank_key_set_normal_txt));
            }
        }
        Button button2 = (Button) view;
        this.selectBtn = button2;
        a aVar2 = this.data.get(button2.getTag());
        this.selectBtn.setBackgroundResource(aVar2.f53781c);
        if (aVar2.f53783e != 0) {
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
        if (com.join.mgps.joystick.map.a.b().f(event.getDevice().getName())) {
            return false;
        }
        if (keyCode == 4) {
            return super.onKeyUp(keyCode, event);
        }
        if (!this.KEY_MAP.containsValue(Integer.valueOf(keyCode))) {
            return true;
        }
        if (keyCode == 4) {
            finish();
            return true;
        }
        Button button = this.selectBtn;
        if (button != null) {
            String str = (String) button.getTag();
            String str2 = (String) com.join.mgps.joystick.map.b.c(this.KEY_MAP, Integer.valueOf(keyCode));
            if (this.okMap.containsKey(str2)) {
                ((TextView) findViewById(this.data.get(this.okMap.get(str2)).f53786h)).setText("");
            }
            if (this.MD_KEY_MAP.containsValue(str2)) {
                ((TextView) findViewById(this.data.get((String) com.join.mgps.joystick.map.b.c(this.MD_KEY_MAP, str2)).f53786h)).setText("");
            }
            this.okMap.put(str2, str);
            this.isReset = false;
            this.selectBtn.setBackgroundResource(this.data.get(str).f53782d);
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
        reset();
    }
}
