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
@EActivity(R.layout.activity_psp_key_map)
public class HandShankPSPActivity extends HandShankBaseActivity implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @ViewById
    Button f53826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ViewById
    Button f53827b;
    private Map<String, a> data;
    private boolean isReset;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    Button f53828l;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @ViewById
    Button f53829r;

    @ViewById
    Button resetButn;

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
    Button f53830x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @ViewById
    Button f53831y;
    private Map<String, String> okMap = new HashMap();
    private Map<String, Integer> KEY_MAP = new HashMap();
    private Map<String, String> PSP_KEY_MAP = new HashMap();

    private class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f53832a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f53833b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f53834c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f53835d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f53836e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f53837f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f53838g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f53839h;

        public a(int id2, int normal_drawable, int select_drawable, int pressed_drawable, int normal_txt_color, int select_txt_color, int pressed_txt_color, int txt_id) {
            this.f53832a = id2;
            this.f53833b = normal_drawable;
            this.f53834c = select_drawable;
            this.f53835d = pressed_drawable;
            this.f53836e = normal_txt_color;
            this.f53837f = select_txt_color;
            this.f53838g = pressed_txt_color;
            this.f53839h = txt_id;
        }
    }

    private Map<String, String> getMap() {
        HashMap map = new HashMap();
        Map mapC = com.join.mgps.joystick.map.d.c(KeyMap.EmuMap.PSP.section);
        for (Map.Entry<String, String> entry : com.join.mgps.joystick.map.b.f71796r0.entrySet()) {
            map.put(entry.getKey(), (String) mapC.get(entry.getValue()));
        }
        return map;
    }

    private void initBtn() {
        this.titleText.setText("PSP游戏手柄设置");
        this.select.setTag(com.join.mgps.joystick.map.b.f71772j0);
        this.start.setTag(com.join.mgps.joystick.map.b.f71775k0);
        this.select.setText("选择");
        this.start.setText("开始");
        this.select.setOnClickListener(this);
        this.start.setOnClickListener(this);
        this.f53828l.setOnClickListener(this);
        this.f53829r.setOnClickListener(this);
        this.f53831y.setOnClickListener(this);
        this.f53830x.setOnClickListener(this);
        this.f53827b.setOnClickListener(this);
        this.f53826a.setOnClickListener(this);
    }

    private void initMap() {
        HashMap map = new HashMap();
        this.data = map;
        map.put(com.join.mgps.joystick.map.b.f71775k0, new a(R.id.start, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.start_tv));
        this.data.put(com.join.mgps.joystick.map.b.f71772j0, new a(R.id.select, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.select_tv));
        this.data.put(com.join.mgps.joystick.map.b.f71781m0, new a(R.id.f35449a, R.drawable.handshank_psp_a_normal, R.drawable.handshank_psp_a_selected, R.drawable.handshank_psp_a_pressed, 0, 0, 0, R.id.a_tv));
        this.data.put(com.join.mgps.joystick.map.b.f71787o0, new a(R.id.f35453b, R.drawable.handshank_psp_b_normal, R.drawable.handshank_psp_b_selected, R.drawable.handshank_psp_b_pressed, 0, 0, 0, R.id.b_tv));
        this.data.put(com.join.mgps.joystick.map.b.f71778l0, new a(R.id.f35491x, R.drawable.handshank_psp_x_normal, R.drawable.handshank_psp_x_selected, R.drawable.handshank_psp_x_pressed, 0, 0, 0, R.id.x_tv));
        this.data.put(com.join.mgps.joystick.map.b.f71784n0, new a(R.id.f35492y, R.drawable.handshank_psp_y_normal, R.drawable.handshank_psp_y_selected, R.drawable.handshank_psp_y_pressed, 0, 0, 0, R.id.y_tv));
        this.data.put(com.join.mgps.joystick.map.b.f71790p0, new a(R.id.f35471l, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.l1_tv));
        this.data.put(com.join.mgps.joystick.map.b.f71793q0, new a(R.id.f35481r, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.r1_tv));
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
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71774k, 103);
        }
        Map<String, String> map2 = getMap();
        this.PSP_KEY_MAP = map2;
        if (map2 == null || map2.size() == 0) {
            this.PSP_KEY_MAP.put(com.join.mgps.joystick.map.b.f71772j0, com.join.mgps.joystick.map.b.f71750c);
            this.PSP_KEY_MAP.put(com.join.mgps.joystick.map.b.f71775k0, com.join.mgps.joystick.map.b.f71753d);
            this.PSP_KEY_MAP.put(com.join.mgps.joystick.map.b.f71778l0, com.join.mgps.joystick.map.b.f71756e);
            this.PSP_KEY_MAP.put(com.join.mgps.joystick.map.b.f71781m0, com.join.mgps.joystick.map.b.f71762g);
            this.PSP_KEY_MAP.put(com.join.mgps.joystick.map.b.f71784n0, com.join.mgps.joystick.map.b.f71759f);
            this.PSP_KEY_MAP.put(com.join.mgps.joystick.map.b.f71787o0, com.join.mgps.joystick.map.b.f71765h);
            this.PSP_KEY_MAP.put(com.join.mgps.joystick.map.b.f71790p0, com.join.mgps.joystick.map.b.f71768i);
            this.PSP_KEY_MAP.put(com.join.mgps.joystick.map.b.f71793q0, com.join.mgps.joystick.map.b.f71774k);
        }
    }

    private void initView() {
        for (String str : this.PSP_KEY_MAP.keySet()) {
            String str2 = this.PSP_KEY_MAP.get(str);
            a aVar = this.data.get(str);
            if (this.KEY_MAP.containsKey(str2)) {
                ((TextView) findViewById(aVar.f53839h)).setText(com.join.mgps.joystick.map.b.f71744a.get(str2));
            } else {
                ((TextView) findViewById(aVar.f53839h)).setText("");
            }
        }
    }

    private Map<String, String> putMap(Map<String, String> okMap) {
        HashMap map = new HashMap();
        for (String str : okMap.keySet()) {
            map.put(str, com.join.mgps.joystick.map.b.f71796r0.get(okMap.get(str)));
        }
        return map;
    }

    private void reset() {
        this.isReset = true;
        this.okMap.clear();
        this.okMap.put(com.join.mgps.joystick.map.b.f71750c, com.join.mgps.joystick.map.b.f71772j0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71753d, com.join.mgps.joystick.map.b.f71775k0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71756e, com.join.mgps.joystick.map.b.f71778l0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71762g, com.join.mgps.joystick.map.b.f71781m0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71759f, com.join.mgps.joystick.map.b.f71784n0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71765h, com.join.mgps.joystick.map.b.f71787o0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71768i, com.join.mgps.joystick.map.b.f71790p0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71774k, com.join.mgps.joystick.map.b.f71793q0);
        this.PSP_KEY_MAP.clear();
        this.PSP_KEY_MAP.put(com.join.mgps.joystick.map.b.f71772j0, com.join.mgps.joystick.map.b.f71750c);
        this.PSP_KEY_MAP.put(com.join.mgps.joystick.map.b.f71775k0, com.join.mgps.joystick.map.b.f71753d);
        this.PSP_KEY_MAP.put(com.join.mgps.joystick.map.b.f71778l0, com.join.mgps.joystick.map.b.f71756e);
        this.PSP_KEY_MAP.put(com.join.mgps.joystick.map.b.f71781m0, com.join.mgps.joystick.map.b.f71762g);
        this.PSP_KEY_MAP.put(com.join.mgps.joystick.map.b.f71784n0, com.join.mgps.joystick.map.b.f71759f);
        this.PSP_KEY_MAP.put(com.join.mgps.joystick.map.b.f71787o0, com.join.mgps.joystick.map.b.f71765h);
        this.PSP_KEY_MAP.put(com.join.mgps.joystick.map.b.f71790p0, com.join.mgps.joystick.map.b.f71768i);
        this.PSP_KEY_MAP.put(com.join.mgps.joystick.map.b.f71793q0, com.join.mgps.joystick.map.b.f71774k);
        for (String str : this.PSP_KEY_MAP.keySet()) {
            String str2 = this.PSP_KEY_MAP.get(str);
            a aVar = this.data.get(str);
            ((TextView) findViewById(aVar.f53839h)).setText(com.join.mgps.joystick.map.b.f71744a.get(str2));
            ((Button) findViewById(aVar.f53832a)).setBackgroundResource(aVar.f53833b);
            if (aVar.f53836e != 0) {
                ((Button) findViewById(aVar.f53832a)).setTextColor(getResources().getColor(aVar.f53836e));
            }
        }
        com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.PSP, putMap(this.okMap));
        this.okMap.clear();
    }

    private void revertBtn() {
        Iterator<Map.Entry<String, a>> it2 = this.data.entrySet().iterator();
        while (it2.hasNext()) {
            String key = it2.next().getKey();
            a aVar = this.data.get(key);
            if (this.okMap.containsValue(key)) {
                Button button = (Button) findViewById(aVar.f53832a);
                if (aVar.f53836e != 0) {
                    button.setTextColor(getResources().getColor(aVar.f53838g));
                }
                button.setBackgroundResource(aVar.f53835d);
                ((TextView) findViewById(aVar.f53839h)).setText(com.join.mgps.joystick.map.b.f71744a.get(com.join.mgps.joystick.map.b.c(this.okMap, key)));
            } else {
                Button button2 = (Button) findViewById(aVar.f53832a);
                if (aVar.f53836e != 0) {
                    button2.setTextColor(getResources().getColor(aVar.f53836e));
                }
                button2.setBackgroundResource(aVar.f53833b);
            }
        }
    }

    private void unSet() {
        this.unSetKeyBoradName = new ArrayList();
        this.unSetTag = new ArrayList();
        for (String str : this.PSP_KEY_MAP.keySet()) {
            if (!this.okMap.containsValue(str)) {
                this.unSetTag.add(str);
            }
        }
        for (String str2 : this.PSP_KEY_MAP.values()) {
            if (!this.okMap.containsKey(str2)) {
                this.unSetKeyBoradName.add(str2);
            }
        }
        Iterator<String> it2 = this.unSetTag.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            String str3 = this.PSP_KEY_MAP.get(next);
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
            com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.PSP, putMap(this.okMap));
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
            this.selectBtn.setBackgroundResource(aVar.f53833b);
            if (aVar.f53836e != 0) {
                this.selectBtn.setTextColor(getResources().getColor(R.color.handshank_key_set_normal_txt));
            }
        }
        Button button2 = (Button) view;
        this.selectBtn = button2;
        a aVar2 = this.data.get(button2.getTag());
        this.selectBtn.setBackgroundResource(aVar2.f53834c);
        if (aVar2.f53836e != 0) {
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
        if (this.KEY_MAP.containsValue(Integer.valueOf(keyCode)) && (button = this.selectBtn) != null) {
            String str = (String) button.getTag();
            String str2 = (String) com.join.mgps.joystick.map.b.c(this.KEY_MAP, Integer.valueOf(keyCode));
            if (this.okMap.containsKey(str2)) {
                ((TextView) findViewById(this.data.get(this.okMap.get(str2)).f53839h)).setText("");
            }
            if (this.PSP_KEY_MAP.containsValue(str2)) {
                ((TextView) findViewById(this.data.get((String) com.join.mgps.joystick.map.b.c(this.PSP_KEY_MAP, str2)).f53839h)).setText("");
            }
            this.okMap.put(str2, str);
            this.isReset = false;
            this.selectBtn.setBackgroundResource(this.data.get(str).f53835d);
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
