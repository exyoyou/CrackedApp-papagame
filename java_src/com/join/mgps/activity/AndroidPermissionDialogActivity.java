package com.join.mgps.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.base.dialog.BaseDialogActivity;
import com.join.mgps.dto.AndroidPermissionParams;

/* JADX INFO: loaded from: classes4.dex */
public class AndroidPermissionDialogActivity extends BaseDialogActivity {
    public static final String KEY_PERMISSION_PARAMS = "_permission_params";
    Button dialog_button_close;
    Button dialog_button_i_know;
    Button dialog_button_keep;
    private TextView dialog_content;
    private ImageView dialog_title_image;
    private LinearLayout ll_content;
    AndroidPermissionParams permissionParams;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            AndroidPermissionDialogActivity.this.finish();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (((BaseDialogActivity) AndroidPermissionDialogActivity.this).callback instanceof com.join.mgps.callbacks.a) {
                ((com.join.mgps.callbacks.a) ((BaseDialogActivity) AndroidPermissionDialogActivity.this).callback).c();
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (((BaseDialogActivity) AndroidPermissionDialogActivity.this).callback instanceof com.join.mgps.callbacks.a) {
                ((com.join.mgps.callbacks.a) ((BaseDialogActivity) AndroidPermissionDialogActivity.this).callback).a(AndroidPermissionDialogActivity.this);
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (((BaseDialogActivity) AndroidPermissionDialogActivity.this).callback instanceof com.join.mgps.callbacks.a) {
                ((com.join.mgps.callbacks.a) ((BaseDialogActivity) AndroidPermissionDialogActivity.this).callback).b(AndroidPermissionDialogActivity.this);
            }
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (((BaseDialogActivity) AndroidPermissionDialogActivity.this).callback instanceof com.join.mgps.callbacks.a) {
                ((com.join.mgps.callbacks.a) ((BaseDialogActivity) AndroidPermissionDialogActivity.this).callback).a(AndroidPermissionDialogActivity.this);
            }
        }
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity
    public View getContentView() {
        return this.ll_content;
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.android_permiss_dialog);
        com.join.mgps.Util.p2.v(this);
        this.dialog_title_image = (ImageView) findViewById(R.id.dialog_title_image);
        this.dialog_content = (TextView) findViewById(R.id.dialog_content);
        this.dialog_title_image.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.dialog_button_keep = (Button) findViewById(R.id.dialog_button_keep);
        this.dialog_button_close = (Button) findViewById(R.id.dialog_button_close);
        this.dialog_button_i_know = (Button) findViewById(R.id.dialog_button_i_know);
        if (getIntent() != null) {
            this.permissionParams = (AndroidPermissionParams) getIntent().getSerializableExtra(KEY_PERMISSION_PARAMS);
        }
        AndroidPermissionParams androidPermissionParams = this.permissionParams;
        if (androidPermissionParams != null) {
            if (com.join.mgps.Util.t2.i(androidPermissionParams.getContent())) {
                this.dialog_content.setText(this.permissionParams.getContent());
            }
            if (com.join.mgps.Util.t2.i(this.permissionParams.getCancelText())) {
                this.dialog_button_keep.setText(this.permissionParams.getCancelText());
            }
            findViewById(R.id.llBtn).setVisibility(this.permissionParams.isSingleBtn() ? 8 : 0);
            findViewById(R.id.llBtnIKnow).setVisibility(this.permissionParams.isSingleBtn() ? 0 : 8);
        }
        findViewById(R.id.closed).setOnClickListener(new a());
        this.dialog_title_image.setOnClickListener(new b());
        this.dialog_button_close.setOnClickListener(new c());
        this.dialog_button_keep.setOnClickListener(new d());
        this.dialog_button_i_know.setOnClickListener(new e());
    }
}
