package com.join.mgps.dialog;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.Random;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EActivity(R.layout.dialog_download_high_speed)
public class DownloadHighSpeedDialog extends BaseFragmentActivity implements View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener {

    @ViewById
    View container;

    @ViewById
    View content;

    @Extra
    String gameId;

    @ViewById
    TextView tip;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onGlobalLayout$0(View view, MotionEvent motionEvent) {
        Rect rect = new Rect();
        View view2 = this.content;
        if (view2 != null) {
            view2.getGlobalVisibleRect(rect);
        }
        rect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        return false;
    }

    @AfterViews
    void afterViews() {
        this.tip.setText("本次下载预计可提速" + (new Random().nextInt(20) + 30) + "%");
        this.container.setOnTouchListener(this);
        com.papa.sim.statistic.t.l(this).R1(Event.AccelerationPopup, new Ext());
    }

    @Click
    void close() {
        finish();
    }

    @Click
    void confirm() {
        a3.b(this).d("已接入专属通道，加速成功！");
        q5.f.M().G(this.gameId);
        UtilsMy.H4(this, this.gameId);
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.q(this.gameId));
        com.papa.sim.statistic.t.l(this).R1(Event.DownloadAcceleration, new Ext());
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, R.anim.bottom_out);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        getWindow().setAttributes(attributes);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        getWindow().getDecorView().setOnTouchListener(new View.OnTouchListener() { // from class: com.join.mgps.dialog.i0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f67607b.lambda$onGlobalLayout$0(view, motionEvent);
            }
        });
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (event.getKeyCode() == 4) {
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View v10, MotionEvent event) {
        if (this.content != null) {
            return event.getX() < ((float) this.content.getLeft()) || event.getX() > this.content.getX() + ((float) this.content.getMeasuredWidth()) || event.getY() < ((float) this.content.getTop()) || event.getY() > this.content.getY() + ((float) this.content.getMeasuredHeight());
        }
        return false;
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        getWindow().setAttributes(attributes);
        com.join.mgps.Util.p2.r(this, 16777215, true);
    }
}
