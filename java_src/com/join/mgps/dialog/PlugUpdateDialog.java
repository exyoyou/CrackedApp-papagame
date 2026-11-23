package com.join.mgps.dialog;

import android.content.Context;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.EMUApkTable;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;

/* JADX INFO: loaded from: classes3.dex */
@EActivity
public class PlugUpdateDialog extends BaseAppCompatActivity implements View.OnClickListener {
    private View cancel;
    private CheckBox checkBox;
    private TextView content;
    private Context context;

    @Extra
    String from;

    @Extra
    String gameId;
    private View ok;

    @Extra
    EMUApkTable table;
    private TextView title;

    @AfterViews
    void afterViews() {
        this.title.setText(this.table.getApk_name());
        this.content.setText(Html.fromHtml(this.table.getVer_info()));
    }

    public void dismiss(String tagId) {
        EMUApkTable eMUApkTable;
        if (TextUtils.isEmpty(tagId) || (eMUApkTable = this.table) == null) {
            dismiss();
        } else if (eMUApkTable.getTag_id().equals(tagId)) {
            dismiss();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.dialog_button_cancle) {
            dismiss();
            IntentUtil.getInstance().goGameMainActivity(this.context, this.gameId, this.from);
            if (this.checkBox.isChecked()) {
                try {
                    EMUApkTable eMUApkTable = this.table;
                    eMUApkTable.setNotUpdateversion(Integer.parseInt(eMUApkTable.getVer().split("_")[0]));
                    t6.p.o().update(this.table);
                    return;
                } catch (NumberFormatException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            return;
        }
        if (id2 == R.id.dialog_button_ok) {
            dismiss();
            UtilsMy.q1(this.table, this.context);
            if (this.checkBox.isChecked()) {
                try {
                    EMUApkTable eMUApkTable2 = this.table;
                    eMUApkTable2.setNotUpdateversion(Integer.parseInt(eMUApkTable2.getVer().split("_")[0]));
                    t6.p.o().update(this.table);
                } catch (NumberFormatException e11) {
                    e11.printStackTrace();
                }
            }
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        com.join.mgps.Util.p2.r(this, 570425344, false);
        this.context = this;
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.plug_update_dialog_layout, (ViewGroup) null);
        this.title = (TextView) viewInflate.findViewById(R.id.title);
        this.content = (TextView) viewInflate.findViewById(R.id.content);
        this.checkBox = (CheckBox) viewInflate.findViewById(R.id.checkbox);
        this.ok = viewInflate.findViewById(R.id.dialog_button_ok);
        this.cancel = viewInflate.findViewById(R.id.dialog_button_cancle);
        this.ok.setOnClickListener(this);
        this.cancel.setOnClickListener(this);
        setContentView(viewInflate);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        com.join.mgps.Util.p2.r(this, 570425344, false);
    }

    public void dismiss() {
        finish();
    }
}
