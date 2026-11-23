package com.join.mgps.activity;

import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.joystick.map.KeyCodes;
import com.join.mgps.joystick.map.KeyMap;
import com.papa.controller.core.PadKeyEvent;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_fba_key_map1)
public class HandShankFBAActivity extends HandShankBaseActivity implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @ViewById
    Button f53699a;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    @ViewById
    Button f53700ab;

    @ViewById
    Button abc;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ViewById
    Button f53701b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    Button f53702c;

    /* JADX INFO: renamed from: cd, reason: collision with root package name */
    @ViewById
    Button f53703cd;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    Button f53704d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    Button f53705e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    Button f53706f;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    @ViewById
    Button f53707f1;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    @ViewById
    Button f53708f2;

    /* JADX INFO: renamed from: f3, reason: collision with root package name */
    @ViewById
    Button f53709f3;

    /* JADX INFO: renamed from: f4, reason: collision with root package name */
    @ViewById
    Button f53710f4;
    private boolean isReset;
    a[] items;

    @ViewById
    Button resetButn;

    @ViewById
    Button select;

    @ViewById
    Button sp1;

    @ViewById
    Button sp2;

    @ViewById
    Button sp3;

    @ViewById
    Button sp4;

    @ViewById
    Button sp5;

    @ViewById
    Button start;

    @ViewById
    TextView titleText;
    View[] views;
    final String title = "街机游戏手柄设置";
    KeyMap.EmuMap emuMap = KeyMap.EmuMap.FBA;
    com.join.mgps.joystick.map.d keyMapManager = new com.join.mgps.joystick.map.d(this.emuMap);
    HashMap<String, String> customKeys = new HashMap<>();
    HashMap<String, String> emuMapKeys = new HashMap<>();
    HashMap<String, String> emuMapKeysTemp = new HashMap<>();
    View selectView = null;

    private View findPreBindedView(String customKey) {
        int i10 = 0;
        while (true) {
            View[] viewArr = this.views;
            if (viewArr == null || i10 >= viewArr.length) {
                break;
            }
            a aVar = (a) viewArr[i10].getTag();
            if (aVar != null && !TextUtils.isEmpty(aVar.f53712b) && aVar.f53712b.equals(customKey)) {
                return this.views[i10];
            }
            i10++;
        }
        return null;
    }

    private void initEmuMap() {
        com.join.mgps.joystick.map.d.f(this.emuMap);
        for (Map.Entry entry : com.join.mgps.joystick.map.d.c(KeyMap.keySection).entrySet()) {
            this.customKeys.put((String) entry.getValue(), (String) entry.getKey());
        }
        this.emuMapKeys.putAll(com.join.mgps.joystick.map.d.c(this.emuMap.section));
        this.emuMapKeysTemp.putAll(this.emuMapKeys);
    }

    private void initView() {
        this.views = new View[]{this.select, this.start, this.abc, this.f53700ab, this.f53703cd, this.f53699a, this.f53701b, this.f53702c, this.f53704d, this.f53705e, this.f53706f, this.f53707f1, this.f53708f2, this.f53709f3, this.f53710f4, this.sp1, this.sp2, this.sp3, this.sp4, this.sp5};
        KeyCodes keyCodes = KeyCodes.KEY_A;
        int iValue = keyCodes.value();
        KeyCodes keyCodes2 = KeyCodes.KEY_B;
        int iValue2 = iValue | keyCodes2.value();
        KeyCodes keyCodes3 = KeyCodes.KEY_C;
        int iValue3 = keyCodes3.value();
        KeyCodes keyCodes4 = KeyCodes.KEY_D;
        a[] aVarArr = {new a(KeyCodes.KEY_SELECT), new a(KeyCodes.KEY_START), new a(iValue2 | keyCodes3.value()), new a(keyCodes.value() | keyCodes2.value()), new a(iValue3 | keyCodes4.value()), new a(keyCodes), new a(keyCodes2), new a(keyCodes3), new a(keyCodes4), new a(KeyCodes.KEY_E), new a(KeyCodes.KEY_F), new a(KeyCodes.KEY_1), new a(KeyCodes.KEY_2), new a(KeyCodes.KEY_3), new a(KeyCodes.KEY_4), new a(KeyCodes.KEY_SP0), new a(KeyCodes.KEY_SP1), new a(KeyCodes.KEY_SP2), new a(KeyCodes.KEY_SP3), new a(KeyCodes.KEY_SP4)};
        this.items = aVarArr;
        bindViews(this.views, aVarArr);
    }

    @AfterViews
    void afterViews() {
        this.titleText.setText("街机游戏手柄设置");
        initEmuMap();
        initView();
    }

    @Click
    void backImage() {
        finish();
    }

    void bind(View view, String customKey) {
        if (view == null || view.getTag() == null) {
            return;
        }
        View viewFindPreBindedView = findPreBindedView(customKey);
        if (viewFindPreBindedView != null) {
            bindCancel(viewFindPreBindedView);
        }
        a aVar = (a) view.getTag();
        aVar.f53712b = customKey;
        this.emuMapKeysTemp.put(aVar.f53711a, customKey);
        selectCancel(view);
    }

    void bindCancel(View view) {
        if (view == null || view.getTag() == null) {
            return;
        }
        a aVar = (a) view.getTag();
        aVar.f53712b = "";
        this.emuMapKeysTemp.put(aVar.f53711a, "");
        selectCancel(view);
    }

    void bindViews(View[] views, a[] items) {
        for (int i10 = 0; views != null && i10 < views.length; i10++) {
            View view = views[i10];
            if (view != null) {
                view.setOnClickListener(this);
                items[i10].b();
                views[i10].setTag(items[i10]);
                selectCancel(views[i10]);
            }
        }
    }

    String getCustomKeyName(String customKey) {
        return TextUtils.isEmpty(customKey) ? "" : customKey.replace("KEY_", "").replace("BUTTON_", "");
    }

    boolean isCustomKey(int key) {
        HashMap<String, String> map = this.customKeys;
        if (map == null) {
            return false;
        }
        return map.containsKey(key + "");
    }

    @Click
    void okButn() {
        if (this.isReset) {
            this.isReset = false;
            finish();
        } else {
            com.join.mgps.joystick.map.d.m(this, this.emuMap, this.emuMapKeysTemp);
            finish();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        select(v10);
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
        if (isCustomKey(keyCode) && this.selectView != null) {
            bind(this.selectView, this.customKeys.get(keyCode + ""));
            this.isReset = false;
        }
        return true;
    }

    @Click
    void resetButn() {
        this.emuMapKeysTemp.clear();
        Iterator<String> it2 = this.emuMapKeys.keySet().iterator();
        while (it2.hasNext()) {
            this.emuMapKeys.put(it2.next(), "");
        }
        KeyMap.EmuMap emuMap = this.emuMap;
        if (emuMap != null) {
            for (String str : emuMap.map.keySet()) {
                this.emuMapKeys.put(str, this.emuMap.map.get(str));
            }
        }
        this.emuMapKeysTemp.putAll(this.emuMapKeys);
        bindViews(this.views, this.items);
    }

    void select(View view) {
        if (view == null) {
            return;
        }
        View view2 = this.selectView;
        if (view2 != null) {
            if (view2.getId() == view.getId()) {
                selectCancel(this.selectView);
                return;
            }
            selectCancel(this.selectView);
        }
        this.selectView = view;
        if (view instanceof Button) {
            view.setBackgroundResource(R.drawable.handshank_set_skey_selected);
            ((Button) view).setTextColor(getResources().getColor(R.color.handshank_key_set_selected_txt));
        }
    }

    void selectCancel(View view) {
        if (view == null || view.getTag() == null) {
            return;
        }
        a aVar = (a) view.getTag();
        if (view instanceof Button) {
            if (aVar.a()) {
                view.setBackgroundResource(R.drawable.handshank_set_skey_pressed);
                Button button = (Button) view;
                button.setTextColor(getResources().getColor(R.color.handshank_key_set_pressed_txt));
                String customKeyName = getCustomKeyName(aVar.f53712b);
                if (TextUtils.isEmpty(customKeyName)) {
                    customKeyName = "";
                }
                button.setText(customKeyName);
            } else {
                view.setBackgroundResource(R.drawable.handshank_set_skey_normal);
                Button button2 = (Button) view;
                button2.setTextColor(getResources().getColor(R.color.handshank_key_set_normal_txt));
                button2.setText("待定");
            }
        }
        this.selectView = null;
    }

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f53711a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f53712b;

        public a(KeyCodes key) {
            String str = key.value() + "";
            this.f53711a = str;
            HashMap<String, String> map = HandShankFBAActivity.this.emuMapKeysTemp;
            if (map != null) {
                this.f53712b = map.get(str);
            }
        }

        public boolean a() {
            return !TextUtils.isEmpty(this.f53712b);
        }

        public void b() {
            HashMap<String, String> map = HandShankFBAActivity.this.emuMapKeysTemp;
            if (map != null) {
                this.f53712b = map.get(this.f53711a);
            }
        }

        public a(int key) {
            String str = key + "";
            this.f53711a = str;
            HashMap<String, String> map = HandShankFBAActivity.this.emuMapKeysTemp;
            if (map != null) {
                this.f53712b = map.get(str);
            }
        }

        public a(String key, String customKey) {
            this.f53711a = key;
            this.f53712b = customKey;
        }
    }
}
