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
@EActivity(R.layout.activity_wsc_key_map)
public class HandShankWSCActivity extends HandShankBaseActivity implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @ViewById
    Button f53885a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ViewById
    Button f53886b;
    private Map<String, a> data;

    @ViewById
    Button down;
    private boolean isReset;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    @ViewById
    Button f53887l1;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    @ViewById
    Button f53888l2;

    @ViewById
    Button left;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    @ViewById
    Button f53889r1;

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    @ViewById
    Button f53890r2;

    @ViewById
    Button resetButn;

    @ViewById
    Button right;

    @ViewById
    Button select;
    private Button selectBtn;

    @ViewById
    Button start;

    @ViewById
    TextView titleText;
    private List<String> unSetKeyBoradName;
    private List<String> unSetTag;

    @ViewById
    Button up;
    private Map<String, String> okMap = new HashMap();
    private Map<String, Integer> KEY_MAP = new HashMap();
    private Map<String, String> WSC_KEY_MAP = new HashMap();

    private class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f53891a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f53892b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f53893c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f53894d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f53895e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f53896f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f53897g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f53898h;

        public a(int id2, int normal_drawable, int select_drawable, int pressed_drawable, int normal_txt_color, int select_txt_color, int pressed_txt_color, int txt_id) {
            this.f53891a = id2;
            this.f53892b = normal_drawable;
            this.f53893c = select_drawable;
            this.f53894d = pressed_drawable;
            this.f53895e = normal_txt_color;
            this.f53896f = select_txt_color;
            this.f53897g = pressed_txt_color;
            this.f53898h = txt_id;
        }
    }

    private Map<String, String> getMap() {
        HashMap map = new HashMap();
        Map mapC = com.join.mgps.joystick.map.d.c(KeyMap.EmuMap.WSC.section);
        for (Map.Entry<String, String> entry : com.join.mgps.joystick.map.b.f71749b1.entrySet()) {
            map.put(entry.getKey(), (String) mapC.get(entry.getValue()));
        }
        return map;
    }

    private void initBtn() {
        this.titleText.setText("WSC游戏手柄设置");
        this.select.setTag(com.join.mgps.joystick.map.b.P0);
        this.start.setTag(com.join.mgps.joystick.map.b.Q0);
        this.select.setText("选择");
        this.start.setText("开始");
        this.select.setOnClickListener(this);
        this.start.setOnClickListener(this);
        this.f53887l1.setOnClickListener(this);
        this.f53889r1.setOnClickListener(this);
        this.f53890r2.setOnClickListener(this);
        this.f53888l2.setOnClickListener(this);
        this.up.setOnClickListener(this);
        this.left.setOnClickListener(this);
        this.right.setOnClickListener(this);
        this.down.setOnClickListener(this);
        this.f53886b.setOnClickListener(this);
        this.f53885a.setOnClickListener(this);
        ((View) this.select.getParent()).setVisibility(8);
    }

    private void initMap() {
        HashMap map = new HashMap();
        this.data = map;
        map.put(com.join.mgps.joystick.map.b.Q0, new a(R.id.start, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.start_tv));
        this.data.put(com.join.mgps.joystick.map.b.P0, new a(R.id.select, R.drawable.handshank_set_skey_normal, R.drawable.handshank_set_skey_selected, R.drawable.handshank_set_skey_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.select_tv));
        this.data.put(com.join.mgps.joystick.map.b.R0, new a(R.id.f35449a, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.a_tv));
        this.data.put(com.join.mgps.joystick.map.b.S0, new a(R.id.f35453b, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.b_tv));
        this.data.put(com.join.mgps.joystick.map.b.Y0, new a(R.id.up, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.up_tv));
        this.data.put(com.join.mgps.joystick.map.b.f71746a1, new a(R.id.down, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.down_tv));
        this.data.put(com.join.mgps.joystick.map.b.X0, new a(R.id.left, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.left_tv));
        this.data.put(com.join.mgps.joystick.map.b.Z0, new a(R.id.right, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.right_tv));
        this.data.put(com.join.mgps.joystick.map.b.T0, new a(R.id.f35472l1, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.l1_tv));
        this.data.put(com.join.mgps.joystick.map.b.V0, new a(R.id.f35473l2, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.l2_tv));
        this.data.put(com.join.mgps.joystick.map.b.U0, new a(R.id.f35482r1, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.r1_tv));
        this.data.put(com.join.mgps.joystick.map.b.W0, new a(R.id.f35483r2, R.drawable.handshank_set_key_normal, R.drawable.handshank_set_key_selected, R.drawable.handshank_set_key_pressed, R.color.handshank_key_set_normal_txt, R.color.handshank_key_set_selected_txt, R.color.handshank_key_set_pressed_txt, R.id.r2_tv));
        initMapData();
    }

    private void initMapData() {
        Map mapC = com.join.mgps.joystick.map.d.c(KeyMap.keySection);
        for (String str : mapC.keySet()) {
            String str2 = (String) mapC.get(str);
            if (com.join.mgps.joystick.map.b.b(str)) {
                this.KEY_MAP.put(str, Integer.valueOf(Integer.parseInt(str2)));
            }
        }
        Map<String, Integer> map = this.KEY_MAP;
        if (map == null || map.size() == 0) {
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71753d, 108);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71750c, 109);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71762g, 96);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71765h, 97);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71768i, 102);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71774k, 103);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71777l, 105);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71771j, 104);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71780m, 21);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71786o, 20);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71783n, 19);
            this.KEY_MAP.put(com.join.mgps.joystick.map.b.f71789p, 22);
        }
        Map<String, String> map2 = getMap();
        this.WSC_KEY_MAP = map2;
        if (map2 == null || map2.size() == 0) {
            this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.P0, com.join.mgps.joystick.map.b.f71750c);
            this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.Q0, com.join.mgps.joystick.map.b.f71753d);
            this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.R0, com.join.mgps.joystick.map.b.f71762g);
            this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.S0, com.join.mgps.joystick.map.b.f71765h);
            this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.T0, com.join.mgps.joystick.map.b.f71768i);
            this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.U0, com.join.mgps.joystick.map.b.f71774k);
            this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.V0, com.join.mgps.joystick.map.b.f71771j);
            this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.W0, com.join.mgps.joystick.map.b.f71777l);
            this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.X0, com.join.mgps.joystick.map.b.f71780m);
            this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.Y0, com.join.mgps.joystick.map.b.f71783n);
            this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.Z0, com.join.mgps.joystick.map.b.f71789p);
            this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.f71746a1, com.join.mgps.joystick.map.b.f71786o);
        }
    }

    private void initView() {
        for (String str : this.WSC_KEY_MAP.keySet()) {
            String str2 = this.WSC_KEY_MAP.get(str);
            a aVar = this.data.get(str);
            if (this.KEY_MAP.containsKey(str2)) {
                ((TextView) findViewById(aVar.f53898h)).setText(com.join.mgps.joystick.map.b.f71744a.get(str2));
            } else {
                ((TextView) findViewById(aVar.f53898h)).setText("");
            }
        }
    }

    private Map<String, String> putMap(Map<String, String> okMap) {
        HashMap map = new HashMap();
        for (String str : okMap.keySet()) {
            map.put(str, com.join.mgps.joystick.map.b.f71749b1.get(okMap.get(str)));
        }
        return map;
    }

    private void reset() {
        this.isReset = true;
        this.okMap.clear();
        this.okMap.put(com.join.mgps.joystick.map.b.f71750c, com.join.mgps.joystick.map.b.P0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71753d, com.join.mgps.joystick.map.b.Q0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71762g, com.join.mgps.joystick.map.b.R0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71765h, com.join.mgps.joystick.map.b.S0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71768i, com.join.mgps.joystick.map.b.T0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71774k, com.join.mgps.joystick.map.b.U0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71771j, com.join.mgps.joystick.map.b.V0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71777l, com.join.mgps.joystick.map.b.W0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71780m, com.join.mgps.joystick.map.b.X0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71783n, com.join.mgps.joystick.map.b.Y0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71789p, com.join.mgps.joystick.map.b.Z0);
        this.okMap.put(com.join.mgps.joystick.map.b.f71786o, com.join.mgps.joystick.map.b.f71746a1);
        this.WSC_KEY_MAP.clear();
        this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.P0, com.join.mgps.joystick.map.b.f71750c);
        this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.Q0, com.join.mgps.joystick.map.b.f71753d);
        this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.R0, com.join.mgps.joystick.map.b.f71762g);
        this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.S0, com.join.mgps.joystick.map.b.f71765h);
        this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.T0, com.join.mgps.joystick.map.b.f71768i);
        this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.U0, com.join.mgps.joystick.map.b.f71774k);
        this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.V0, com.join.mgps.joystick.map.b.f71771j);
        this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.W0, com.join.mgps.joystick.map.b.f71777l);
        this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.X0, com.join.mgps.joystick.map.b.f71780m);
        this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.Y0, com.join.mgps.joystick.map.b.f71783n);
        this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.Z0, com.join.mgps.joystick.map.b.f71789p);
        this.WSC_KEY_MAP.put(com.join.mgps.joystick.map.b.f71746a1, com.join.mgps.joystick.map.b.f71786o);
        for (String str : this.WSC_KEY_MAP.keySet()) {
            String str2 = this.WSC_KEY_MAP.get(str);
            a aVar = this.data.get(str);
            ((TextView) findViewById(aVar.f53898h)).setText(com.join.mgps.joystick.map.b.f71744a.get(str2));
            ((Button) findViewById(aVar.f53891a)).setBackgroundResource(aVar.f53892b);
            if (aVar.f53895e != 0) {
                ((Button) findViewById(aVar.f53891a)).setTextColor(getResources().getColor(aVar.f53895e));
            }
        }
        com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.WSC, putMap(this.okMap));
        this.okMap.clear();
    }

    private void revertBtn() {
        Iterator<Map.Entry<String, a>> it2 = this.data.entrySet().iterator();
        while (it2.hasNext()) {
            String key = it2.next().getKey();
            a aVar = this.data.get(key);
            if (this.okMap.containsValue(key)) {
                Button button = (Button) findViewById(aVar.f53891a);
                if (aVar.f53895e != 0) {
                    button.setTextColor(getResources().getColor(aVar.f53897g));
                }
                button.setBackgroundResource(aVar.f53894d);
                ((TextView) findViewById(aVar.f53898h)).setText(com.join.mgps.joystick.map.b.f71744a.get(com.join.mgps.joystick.map.b.c(this.okMap, key)));
            } else {
                Button button2 = (Button) findViewById(aVar.f53891a);
                if (aVar.f53895e != 0) {
                    button2.setTextColor(getResources().getColor(aVar.f53895e));
                }
                button2.setBackgroundResource(aVar.f53892b);
            }
        }
    }

    private void unSet() {
        this.unSetKeyBoradName = new ArrayList();
        this.unSetTag = new ArrayList();
        for (String str : this.WSC_KEY_MAP.keySet()) {
            if (!this.okMap.containsValue(str)) {
                this.unSetTag.add(str);
            }
        }
        for (String str2 : this.WSC_KEY_MAP.values()) {
            if (!this.okMap.containsKey(str2)) {
                this.unSetKeyBoradName.add(str2);
            }
        }
        Iterator<String> it2 = this.unSetTag.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            String str3 = this.WSC_KEY_MAP.get(next);
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
            if (this.okMap.size() < 12) {
                unSet();
            }
            com.join.mgps.joystick.map.d.o(this, KeyMap.EmuMap.WSC, putMap(this.okMap));
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
            this.selectBtn.setBackgroundResource(aVar.f53892b);
            if (aVar.f53895e != 0) {
                this.selectBtn.setTextColor(getResources().getColor(R.color.handshank_key_set_normal_txt));
            }
        }
        Button button2 = (Button) view;
        this.selectBtn = button2;
        a aVar2 = this.data.get(button2.getTag());
        this.selectBtn.setBackgroundResource(aVar2.f53893c);
        if (aVar2.f53895e != 0) {
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
                ((TextView) findViewById(this.data.get(this.okMap.get(str2)).f53898h)).setText("");
            }
            if (this.WSC_KEY_MAP.containsValue(str2)) {
                ((TextView) findViewById(this.data.get((String) com.join.mgps.joystick.map.b.c(this.WSC_KEY_MAP, str2)).f53898h)).setText("");
            }
            this.okMap.put(str2, str);
            this.isReset = false;
            this.selectBtn.setBackgroundResource(this.data.get(str).f53894d);
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
