package com.join.mgps.activity.screenshot;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.BaseActivity;
import com.facebook.drawee.drawable.s;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.b2;
import com.join.mgps.Util.h0;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.y0;
import com.join.mgps.Util.z;
import com.join.mgps.dialog.f1;
import com.kuaishou.weapon.p0.g;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.io.IOException;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.screenshort_upload_activity)
public class ScreenShortUploadImagActivity extends BaseActivity {
    Activity activity;

    @ViewById
    ImageView back;

    @ViewById
    EditText commitMessage;
    f1 dialog;
    File filePath;

    @ViewById
    TextView finishButn;

    @Extra
    String gameId;

    @Extra
    String imagepath;

    @ViewById
    SimpleDraweeView imgUpload;
    List<ScreenshortTabBean> listTables;
    Context mContext;
    private b2 mPhotoSelectUtils;
    private Dialog mPicChsDialog;

    @ViewById
    SlidingTabLayoutScreenShort selecter;

    @Extra
    int typeId;

    @ViewById
    ViewPager viewPager;

    private void ChangIcon() {
        Dialog dialog = new Dialog(this.mContext, R.style.floate_dialog);
        this.mPicChsDialog = dialog;
        dialog.setContentView(R.layout.dialog_pic_choose);
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Window window = this.mPicChsDialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        window.setGravity(80);
        attributes.width = defaultDisplay.getWidth();
        this.mPicChsDialog.getWindow().setAttributes(attributes);
        TextView textView = (TextView) this.mPicChsDialog.findViewById(R.id.chos_camera);
        textView.setVisibility(8);
        TextView textView2 = (TextView) this.mPicChsDialog.findViewById(R.id.pic_lib);
        TextView textView3 = (TextView) this.mPicChsDialog.findViewById(R.id.btn_cancel);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ScreenShortUploadImagActivity.this.mPicChsDialog.dismiss();
                boolean z10 = false;
                if (ContextCompat.checkSelfPermission(ScreenShortUploadImagActivity.this.activity, g.f74786j) != 0) {
                    UtilsMy.e3(ScreenShortUploadImagActivity.this.activity, g.f74786j);
                } else if (ContextCompat.checkSelfPermission(ScreenShortUploadImagActivity.this.activity, g.f74785i) != 0) {
                    UtilsMy.e3(ScreenShortUploadImagActivity.this.activity, g.f74785i);
                } else if (ContextCompat.checkSelfPermission(ScreenShortUploadImagActivity.this.activity, "android.permission.CAMERA") != 0) {
                    UtilsMy.e3(ScreenShortUploadImagActivity.this.activity, "android.permission.CAMERA");
                } else {
                    z10 = true;
                }
                if (z10) {
                    ScreenShortUploadImagActivity.this.mPhotoSelectUtils.g();
                }
            }
        });
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ScreenShortUploadImagActivity.this.mPicChsDialog.dismiss();
                boolean z10 = false;
                if (ContextCompat.checkSelfPermission(ScreenShortUploadImagActivity.this.activity, g.f74786j) != 0) {
                    UtilsMy.e3(ScreenShortUploadImagActivity.this.activity, g.f74786j);
                } else if (ContextCompat.checkSelfPermission(ScreenShortUploadImagActivity.this.activity, g.f74785i) != 0) {
                    UtilsMy.e3(ScreenShortUploadImagActivity.this.activity, g.f74785i);
                } else {
                    z10 = true;
                }
                if (z10) {
                    ScreenShortUploadImagActivity.this.mPhotoSelectUtils.d();
                }
            }
        });
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                ScreenShortUploadImagActivity.this.mPicChsDialog.dismiss();
            }
        });
        this.mPicChsDialog.show();
    }

    @AfterViews
    void afterview() {
        this.activity = this;
        this.mContext = this;
        this.dialog = h0.h0(this).x(this.mContext);
        if (t2.i(this.imagepath)) {
            File file = new File(this.imagepath);
            if (file.exists()) {
                this.filePath = file;
                l.i(this.imgUpload, "file://" + this.imagepath, s.c.f27292i);
            }
        }
        this.mPhotoSelectUtils = new b2(this, new b2.a() { // from class: com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity.1
            @Override // com.join.mgps.Util.b2.a
            public void onFinish(File outputFile, Uri outputUri) {
                l.i(ScreenShortUploadImagActivity.this.imgUpload, "file://" + outputFile.getAbsolutePath(), s.c.f27292i);
                ScreenShortUploadImagActivity.this.filePath = outputFile;
            }
        }, false);
        this.listTables = (List) getIntent().getBundleExtra("datas").getSerializable("datas");
        this.viewPager.setAdapter(new PagerAdapter() { // from class: com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity.2
            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                return ScreenShortUploadImagActivity.this.listTables.size();
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            @Nullable
            public CharSequence getPageTitle(int position) {
                return ScreenShortUploadImagActivity.this.listTables.get(position).getTitle();
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public boolean isViewFromObject(@NonNull View view, @NonNull Object object) {
                return false;
            }
        });
        this.selecter.setViewPager(this.viewPager);
        for (int i10 = 0; i10 < this.listTables.size(); i10++) {
            if (this.listTables.get(i10).getId() == this.typeId) {
                this.selecter.setCurrentTab(i10);
                return;
            }
        }
    }

    @Click
    void back() {
        finish();
    }

    @Click
    void finishButn() {
        String string = this.commitMessage.getText().toString();
        if (t2.h(string)) {
            a3.b(this.mContext).d("点评内容不能为空");
            return;
        }
        File file = this.filePath;
        if (file == null || !file.exists()) {
            a3.b(this.mContext).d("请选择截图");
        } else {
            this.dialog.show();
            uploadImagData(string);
        }
    }

    @Click
    void imgUpload() {
        ChangIcon();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        this.mPhotoSelectUtils.a(requestCode, resultCode, data);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == 1001) {
            this.mPhotoSelectUtils.g();
        } else if (requestCode == 1002) {
            this.mPhotoSelectUtils.d();
        }
    }

    @UiThread
    void uploadFailed(String message) {
        this.dialog.dismiss();
        if (t2.i(message)) {
            a3.b(this.mContext).d(message);
        }
    }

    @Background
    void uploadImagData(String describe) {
        try {
            int id2 = this.typeId;
            UserInfo accountData = AccountUtil_.getInstance_(this.mContext).getAccountData();
            for (int i10 = 0; i10 < this.listTables.size(); i10++) {
                if (i10 == this.viewPager.getCurrentItem()) {
                    id2 = this.listTables.get(i10).getId();
                    break;
                }
            }
            ImageFactory imageFactory = new ImageFactory();
            String str = z.f50172k + "uploadFile" + System.currentTimeMillis();
            try {
                imageFactory.compressAndGenImage(this.filePath.getAbsolutePath(), str, 500, false);
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            File file = new File(str);
            try {
                JSONObject jSONObject = new JSONObject(file.exists() ? y0.f(file, accountData.getUid() + "", accountData.getToken(), this.gameId, id2 + "", describe) : y0.f(this.filePath, accountData.getUid() + "", accountData.getToken(), this.gameId, id2 + "", describe));
                int i11 = jSONObject.getInt("flag");
                int i12 = jSONObject.getInt("code");
                if (i11 == 1 && i12 == 600) {
                    uploadSuccess();
                } else {
                    uploadFailed(jSONObject.getString("error_info"));
                }
            } catch (JSONException unused) {
                uploadFailed("");
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @UiThread
    void uploadSuccess() {
        this.dialog.dismiss();
        a3.b(this.mContext).d("图片审核后显示");
        finish();
    }
}
