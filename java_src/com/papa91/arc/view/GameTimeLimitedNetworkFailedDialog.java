package com.papa91.arc.view;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.papa91.arc.EmuActivity_psp;
import com.papa91.wrapper.UserPrefs;
import com.yatoooon.screenadaptation.e;
import org.ppsspp.ppsspp.NativeApp;
import org.ppsspp.ppsspp.R;

/* JADX INFO: loaded from: classes2.dex */
public class GameTimeLimitedNetworkFailedDialog extends BaseDialog implements View.OnClickListener {
    View close;
    Context context;
    OnTimeLimitedListener onTimeLimitedListener;
    private UserPrefs pref;
    TextView tip;
    View video;
    View vip;

    public interface OnTimeLimitedListener {
        void onBuyVip();

        void onExit();
    }

    public GameTimeLimitedNetworkFailedDialog(@NonNull Context context) {
        super(context, R.style.PspDialog);
        this.context = context;
        init();
    }

    @Override // com.papa91.arc.view.BaseDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        NativeApp.resumeGame();
    }

    public OnTimeLimitedListener getOnTimeLimitedListener() {
        return this.onTimeLimitedListener;
    }

    void init() {
        this.pref = new UserPrefs(this.context);
    }

    void initViews() {
        this.tip = (TextView) findViewById(R.id.tip);
        this.video = findViewById(R.id.video);
        this.vip = findViewById(R.id.vip);
        View viewFindViewById = findViewById(R.id.close);
        this.close = viewFindViewById;
        setOnListener(this.video, this.vip, viewFindViewById);
    }

    public boolean isNetworkConnected() {
        if (getContext() == null) {
            return false;
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isAvailable();
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 == R.id.close) {
            return;
        }
        if (id2 == R.id.vip) {
            OnTimeLimitedListener onTimeLimitedListener = this.onTimeLimitedListener;
            if (onTimeLimitedListener != null) {
                onTimeLimitedListener.onExit();
            }
            EmuActivity_psp.sendLimitStat("PSPLimitQuit");
            return;
        }
        if (id2 == R.id.video) {
            if (isNetworkConnected()) {
                EmuActivity_psp.startVideo();
            } else {
                ToastUtil.show(getContext(), "请联网继续游戏");
            }
        }
    }

    void setOnListener(View... viewArr) {
        if (viewArr == null) {
            return;
        }
        for (View view : viewArr) {
            view.setOnClickListener(this);
        }
    }

    public void setOnTimeLimitedListener(OnTimeLimitedListener onTimeLimitedListener) {
        this.onTimeLimitedListener = onTimeLimitedListener;
    }

    @Override // com.papa91.arc.view.BaseDialog, android.app.Dialog
    public void show() {
        setCancelable(false);
        setContentView(R.layout.dialog_time_limited_network_failed);
        initViews();
        e.a().f(getWindow().getDecorView());
        super.show();
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.gravity = 17;
        attributes.width = -1;
        attributes.height = -1;
        getWindow().getDecorView().setPadding(0, 0, 0, 0);
        getWindow().setAttributes(attributes);
        getWindow().setFlags(67108864, 67108864);
        getWindow().setFlags(134217728, 134217728);
        NativeApp.pauseGame();
    }

    public GameTimeLimitedNetworkFailedDialog(@NonNull Context context, int i10) {
        super(context, R.style.PspDialog);
        this.context = context;
        init();
    }
}
