package com.join.android.app.component.album;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.MApplication;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.join.android.app.common.utils.l;
import com.join.android.app.common.utils.m;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.h0;
import com.join.mgps.Util.k2;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.z;
import com.join.mgps.customview.ClipImageLayout;
import com.join.mgps.dialog.f1;
import com.join.mgps.dto.Constant;
import com.join.mgps.dto.UploadPortraitRequestBean;
import com.join.mgps.dto.UploadResultMainBean;
import com.join.mgps.rpc.b;
import com.join.mgps.rpc.h;
import com.papa.sim.statistic.JsonMapper;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes5.dex */
@EActivity(R.layout.crop_pic_layout)
public class CropPicActivity extends FragmentActivity {
    static String TAG = "CropPicActivity";

    @Extra
    String CaptureUri;
    UserInfo accountBean;
    MApplication application;

    @ViewById
    ImageView back_image;
    private Context context;
    private f1 dialog;

    @Extra
    int from;

    @ViewById
    ClipImageLayout id_clipImageLayout;
    private boolean isSuccess = false;

    @ViewById
    LinearLayout loding_layout;
    private Uri mImageCaptureUri;
    b rpcAccountClient;

    @ViewById
    Button searchImage;

    @ViewById
    TextView title_textview;

    @AfterViews
    void afterViews() {
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.i(this);
        this.context = this;
        this.dialog = h0.h0(this).x(this);
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        showLoading();
    }

    @Click
    void back_image() {
        finish();
    }

    @UiThread
    void dialogLoading() {
        this.dialog.show();
    }

    @UiThread
    void error(String error_msg) {
        a3.b(this.context).d(error_msg);
    }

    @UiThread
    void finishUi() {
        this.application.j();
        w6.a.b().c();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        showLodingDismis();
        super.onDestroy();
    }

    public void saveCroppedImage(Bitmap bitmap) {
        try {
            File fileA = z.a();
            if (!fileA.getParentFile().isDirectory()) {
                fileA.getParentFile().delete();
            }
            if (!fileA.getParentFile().exists()) {
                fileA.getParentFile().mkdirs();
            }
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, 300, 300, true);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i10 = 100;
            bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
            while (byteArrayOutputStream.toByteArray().length / 1024 > 30) {
                byteArrayOutputStream.reset();
                i10 -= 10;
                bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.JPEG, i10, byteArrayOutputStream);
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(fileA);
                fileOutputStream.write(byteArrayOutputStream.toByteArray());
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            try {
                if (this.from == 1) {
                    uploadPortrait(fileA);
                    File fileC = z.c();
                    o0.f(fileA + "", fileC + "");
                    Fresco.getImagePipeline().e(l.H(fileC));
                    AccountUtil_.getInstance_(this.context).setLocalUserIcon(fileC + "");
                } else {
                    finishUi();
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    @Click
    void searchImage() {
        saveCroppedImage(this.id_clipImageLayout.a());
    }

    @UiThread
    void showLoading() {
        this.searchImage.setVisibility(0);
        this.title_textview.setText("裁剪图像");
        this.searchImage.setBackgroundResource(R.drawable.common_blue_selector);
        showPic();
    }

    @UiThread
    void showLodingDismis() {
        f1 f1Var = this.dialog;
        if (f1Var == null || !f1Var.isShowing()) {
            return;
        }
        this.dialog.dismiss();
    }

    @UiThread
    void showMainUi(Bitmap bitmapTemp) {
        this.loding_layout.setVisibility(8);
        this.id_clipImageLayout.setVisibility(0);
        if (bitmapTemp == null) {
            return;
        }
        this.id_clipImageLayout.getmZoomImageView().setImageBitmap(bitmapTemp);
    }

    @Background
    void showPic() {
        showMainUi(this.id_clipImageLayout.c(this.context, this.CaptureUri));
    }

    public boolean syncFile(UserInfo accountBean, File file, Context context) {
        this.isSuccess = false;
        UploadPortraitRequestBean uploadPortraitRequestBean = new UploadPortraitRequestBean();
        uploadPortraitRequestBean.setDevice_id("");
        uploadPortraitRequestBean.setToken(accountBean.getToken());
        uploadPortraitRequestBean.setUid(accountBean.getUid());
        try {
            UploadResultMainBean uploadResultMainBean = (UploadResultMainBean) JsonMapper.getInstance().fromJson(com.papa.sim.statistic.http.b.I().c(h.f72349j + "/user/upfile/upload_user_head_portrait", "files", file, new com.papa.sim.statistic.http.b.n[]{new com.papa.sim.statistic.http.b.n("uid", uploadPortraitRequestBean.getUid() + ""), new com.papa.sim.statistic.http.b.n(Constants.TOKEN, uploadPortraitRequestBean.getToken()), new com.papa.sim.statistic.http.b.n("device_id", uploadPortraitRequestBean.getDevice_id()), new com.papa.sim.statistic.http.b.n(Constant.MD5, k2.g(uploadPortraitRequestBean))}, file.getName()).body().string(), UploadResultMainBean.class);
            if (uploadResultMainBean != null && uploadResultMainBean.getError() == 0 && uploadResultMainBean.getData().is_success()) {
                this.isSuccess = true;
                UserInfo.b builder = accountBean.toBuilder();
                builder.setAvatarSrc(file.getAbsolutePath());
                AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(builder.build(), getApplicationContext());
            } else {
                this.isSuccess = false;
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            this.isSuccess = false;
        }
        return this.isSuccess;
    }

    @Background
    void uploadPortrait(File iconFile) {
        if (!m.j(this)) {
            error("没有网络，请先检查网络。");
            return;
        }
        dialogLoading();
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
            this.accountBean = accountData;
            if (accountData == null) {
                showLodingDismis();
                return;
            }
            boolean zSyncFile = (iconFile != null && iconFile.isFile() && iconFile.exists()) ? syncFile(this.accountBean, iconFile, this.context) : false;
            showLodingDismis();
            if (zSyncFile) {
                finishUi();
            } else {
                error("连接失败，请稍后再试。");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingDismis();
            error("连接失败，请稍后再试。");
        }
    }
}
