package com.join.mgps.activity;

import android.content.Intent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_handshank_mapkey)
public class HandShankMapKeyActivity extends BaseActivity implements View.OnClickListener {
    private ImageView handshank_on_off;
    private boolean isHide = true;
    private ImageView on_off_img;

    @ViewById
    Button rightButn;

    @ViewById
    TextView titleText;

    private IntentDateBean createnIntent(int type, String url) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(type);
        intentDateBean.setLink_type_val(url);
        intentDateBean.setObject("NDS游戏手柄设置");
        return intentDateBean;
    }

    private void setVirtualHide(boolean hide) {
        if (hide) {
            this.handshank_on_off.setImageResource(R.drawable.handshank_virtualkey_on);
            this.on_off_img.setImageResource(R.drawable.handshank_virtualkey_off_icon);
        } else {
            this.handshank_on_off.setImageResource(R.drawable.handshank_virtualkey_off);
            this.on_off_img.setImageResource(R.drawable.handshank_virtualkey_on_icon);
        }
        if (this.isHide != hide) {
            this.isHide = hide;
            com.join.mgps.joystick.map.d.l(0, Boolean.valueOf(hide));
        }
    }

    @AfterViews
    void afterView() {
        this.titleText.setText("映射按键");
        this.rightButn.setVisibility(8);
        this.handshank_on_off = (ImageView) findViewById(R.id.handshank_on_off);
        this.on_off_img = (ImageView) findViewById(R.id.on_off_img);
        setVirtualHide(com.join.mgps.joystick.map.d.l(0, new Boolean[0]));
        findViewById(R.id.lay_1).setOnClickListener(this);
        findViewById(R.id.lay_2).setOnClickListener(this);
        findViewById(R.id.fba_lay).setOnClickListener(this);
        findViewById(R.id.gba_lay).setOnClickListener(this);
        findViewById(R.id.fc_lay).setOnClickListener(this);
        findViewById(R.id.sfc_lay).setOnClickListener(this);
        findViewById(R.id.psp_lay).setOnClickListener(this);
        findViewById(R.id.md_lay).setOnClickListener(this);
        findViewById(R.id.ps_lay).setOnClickListener(this);
        findViewById(R.id.wsc_lay).setOnClickListener(this);
        findViewById(R.id.gbc_lay).setOnClickListener(this);
        findViewById(R.id.nds_lay).setOnClickListener(this);
        findViewById(R.id.papaHandList).setOnClickListener(this);
    }

    @Click
    void backImage() {
        finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        IntentDateBean intentDateBeanCreatenIntent;
        int id2 = v10.getId();
        if (id2 == R.id.papaHandList || id2 == R.id.nds_lay) {
            if (id2 == R.id.papaHandList) {
                intentDateBeanCreatenIntent = createnIntent(4, "http://h5.5fun.com/wf_shoubing.html");
            } else if (id2 == R.id.nds_lay) {
                intentDateBeanCreatenIntent = createnIntent(4, com.join.mgps.rpc.h.f72397x + "/nds/index.html");
            } else {
                intentDateBeanCreatenIntent = null;
            }
            IntentUtil.getInstance().intentActivity(this, intentDateBeanCreatenIntent);
            return;
        }
        if (id2 == R.id.lay_1) {
            setVirtualHide(!this.isHide);
            return;
        }
        if (id2 == R.id.lay_2) {
            startActivity(new Intent(this, (Class<?>) HandShankCheckKeyActivity_.class));
            return;
        }
        if (id2 == R.id.fba_lay) {
            startActivity(new Intent(this, (Class<?>) HandShankFBAActivity_.class));
            return;
        }
        if (id2 == R.id.gba_lay) {
            startActivity(new Intent(this, (Class<?>) HandShankGBAActivity_.class));
            return;
        }
        if (id2 == R.id.fc_lay) {
            startActivity(new Intent(this, (Class<?>) HandShankFCActivity_.class));
            return;
        }
        if (id2 == R.id.sfc_lay) {
            startActivity(new Intent(this, (Class<?>) HandShankSFCActivity_.class));
            return;
        }
        if (id2 == R.id.psp_lay) {
            startActivity(new Intent(this, (Class<?>) HandShankPSPActivity_.class));
            return;
        }
        if (id2 == R.id.md_lay) {
            startActivity(new Intent(this, (Class<?>) HandShankMDActivity_.class));
            return;
        }
        if (id2 == R.id.ps_lay) {
            startActivity(new Intent(this, (Class<?>) HandShankPSActivity_.class));
        } else if (id2 == R.id.wsc_lay) {
            startActivity(new Intent(this, (Class<?>) HandShankWSCActivity_.class));
        } else if (id2 == R.id.gbc_lay) {
            startActivity(new Intent(this, (Class<?>) HandShankGBCActivity_.class));
        }
    }
}
