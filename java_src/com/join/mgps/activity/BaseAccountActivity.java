package com.join.mgps.activity;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public class BaseAccountActivity extends BaseActivity {
    protected ImageView backButn;
    protected TextView titleText;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseAccountActivity.this.finish();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.account_base_activity, (ViewGroup) null);
        ((FrameLayout) viewInflate.findViewById(R.id.childLayout)).addView(LayoutInflater.from(this).inflate(layoutResID, (ViewGroup) null));
        super.setContentView(viewInflate);
        this.backButn = (ImageView) viewInflate.findViewById(R.id.backButn);
        this.titleText = (TextView) viewInflate.findViewById(R.id.titleText);
        this.backButn.setOnClickListener(new a());
        com.join.mgps.Util.p2.r(this, -1215968, false);
    }

    void setOnclickBack(View.OnClickListener clickListener) {
        this.backButn.setOnClickListener(clickListener);
    }

    public void setTitle(String title) {
        this.titleText.setText(title);
    }
}
