package com.join.mgps.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import com.BaseActivity;
import com.baidu.oauth.sdkbqt.result.OauthResult;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.album.MyAlbumActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.UploadDialogBean;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.UpLoadGameConfig;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.upload_layout)
public class UploadActivity extends BaseActivity {
    public static final int UPLOAD_FAILD = -1;
    public static final int UPLOAD_ING = 1;
    public static final String UPLOAD_RECEIVE = "upload";
    public static final String UPLOAD_RESULT = "upload_result";
    public static final int UPLOAD_SUCCESS = 0;
    private static final String imgRelativeDir = "/wufan91/upload/img";

    @Pref
    static PrefDef_ prefDef;
    UserInfo accountBean;
    UpLoadGameConfig config;

    @ViewById
    TextView dscFaildTxt;

    @ViewById
    TextView dscIngTxt;

    @ViewById
    TextView dscSuccessTxt;

    @ViewById
    TextView fileName;

    @ViewById
    EditText gameDsc;

    @ViewById
    TextView gameIcon;

    @ViewById
    EditText gameName;

    @ViewById
    TextView gameType;
    File iconFile;
    File img1File;
    File img2File;
    File img3File;
    File imgTempFile;

    @ViewById
    SimpleDraweeView img_1;

    @ViewById
    SimpleDraweeView img_2;

    @ViewById
    SimpleDraweeView img_3;

    @ViewById
    ScrollView lay_1;

    @ViewById
    LinearLayout lay_2;

    @ViewById
    LinearLayout lay_3;

    @ViewById
    LinearLayout lay_4;
    UploadDialogBean platformBean;
    b platformDialog;
    List<UploadDialogBean> platformList;

    @ViewById
    TextView platformType;
    File srcFile;
    UploadDialogBean typeBean;
    c typeDialog;
    List<UploadDialogBean> typeList;
    File zipFile;

    class a implements com.join.android.app.common.http.b {
        a() {
        }

        @Override // com.join.android.app.common.http.b
        public void a(Object o10) {
            if (UploadActivity.prefDef.upLoadState().d().equals(1)) {
                UploadActivity.prefDef.upLoadState().g(-1);
                Intent intent = new Intent(UploadActivity.UPLOAD_RECEIVE);
                intent.putExtra("upload_result", -1);
                UploadActivity.this.sendBroadcast(intent);
            }
        }

        @Override // com.join.android.app.common.http.b
        public void onSuccess(Object o10) {
            if (UploadActivity.prefDef.upLoadState().d().equals(1)) {
                UploadActivity.prefDef.upLoadState().g(0);
                UploadActivity.prefDef.upLoadConfig().i();
                File file = new File(UploadActivity.prefDef.upLoadFileName().d());
                if (file.exists()) {
                    file.delete();
                }
                UploadActivity.prefDef.upLoadFileName().i();
                Intent intent = new Intent(UploadActivity.UPLOAD_RECEIVE);
                intent.putExtra("upload_result", 0);
                UploadActivity.this.sendBroadcast(intent);
                UploadActivity.this.showToast();
            }
        }
    }

    private boolean check() {
        if (TextUtils.isEmpty(this.gameName.getText().toString())) {
            com.join.mgps.Util.a3.b(this).d("游戏名称不能为空");
            return false;
        }
        if (this.typeBean == null) {
            com.join.mgps.Util.a3.b(this).d("游戏分类不能为空");
            return false;
        }
        if (this.platformBean == null) {
            com.join.mgps.Util.a3.b(this).d("平台类型不能为空");
            return false;
        }
        if (this.srcFile == null) {
            com.join.mgps.Util.a3.b(this).d("请选择游戏");
            return false;
        }
        if (this.iconFile == null) {
            com.join.mgps.Util.a3.b(this).d("请选择图标");
            return false;
        }
        if (this.img1File == null) {
            com.join.mgps.Util.a3.b(this).d("请选择截图");
            return false;
        }
        if (!TextUtils.isEmpty(this.gameDsc.getText().toString())) {
            return true;
        }
        com.join.mgps.Util.a3.b(this).d("游戏说明不能为空");
        return false;
    }

    private boolean copy(File fileFrom, File fileTo) {
        try {
            FileInputStream fileInputStream = new FileInputStream(fileFrom);
            FileOutputStream fileOutputStream = new FileOutputStream(fileTo);
            byte[] bArr = new byte[1024];
            while (true) {
                int i10 = fileInputStream.read(bArr);
                if (i10 <= 0) {
                    fileInputStream.close();
                    fileOutputStream.close();
                    return true;
                }
                fileOutputStream.write(bArr, 0, i10);
            }
        } catch (IOException unused) {
            return false;
        }
    }

    private boolean deleteDir(File dir) {
        if (dir == null || !dir.exists()) {
            return true;
        }
        if (dir.isDirectory()) {
            for (String str : dir.list()) {
                if (!deleteDir(new File(dir, str))) {
                    return false;
                }
            }
        }
        return dir.delete();
    }

    private String getFileName() {
        String str = ".zip";
        try {
            if (TextUtils.isEmpty(this.gameName.getText().toString().trim())) {
                str = prefDef.upLoadConfig().d().split(x.a.f97576d)[2] + "-" + this.accountBean.getAccount() + "-" + System.currentTimeMillis() + ".zip";
            } else {
                str = this.gameName.getText().toString().trim() + "-" + this.accountBean.getAccount() + "-" + System.currentTimeMillis() + ".zip";
            }
        } catch (Exception unused) {
            str = this.accountBean.getAccount() + "-" + System.currentTimeMillis() + str;
        }
        return Environment.getExternalStorageDirectory().getPath() + "/wufan91/upload/" + str;
    }

    private void init() {
        initTypeList();
        initPlatformList();
        c cVar = new c(this);
        this.typeDialog = cVar;
        cVar.a(this.typeList);
        this.typeDialog.b("选择游戏分类");
        b bVar = new b(this);
        this.platformDialog = bVar;
        bVar.a(this.platformList);
        this.platformDialog.b("选择游戏平台");
        this.config = new UpLoadGameConfig();
        prefDef.upLoadConfig().i();
        File file = new File(prefDef.upLoadFileName().d());
        if (file.exists()) {
            file.delete();
        }
        prefDef.upLoadFileName().i();
    }

    private void initPlatformList() {
        this.platformList = new ArrayList();
        UploadDialogBean uploadDialogBean = new UploadDialogBean();
        Boolean bool = Boolean.FALSE;
        uploadDialogBean.setIsSelect(bool);
        uploadDialogBean.setName("街机");
        uploadDialogBean.setCode(31);
        this.platformList.add(uploadDialogBean);
        UploadDialogBean uploadDialogBean2 = new UploadDialogBean();
        uploadDialogBean2.setIsSelect(bool);
        uploadDialogBean2.setName("gba");
        uploadDialogBean2.setCode(33);
        this.platformList.add(uploadDialogBean2);
        UploadDialogBean uploadDialogBean3 = new UploadDialogBean();
        uploadDialogBean3.setIsSelect(bool);
        uploadDialogBean3.setName("psp");
        uploadDialogBean3.setCode(34);
        this.platformList.add(uploadDialogBean3);
        UploadDialogBean uploadDialogBean4 = new UploadDialogBean();
        uploadDialogBean4.setIsSelect(bool);
        uploadDialogBean4.setName("fc");
        uploadDialogBean4.setCode(35);
        this.platformList.add(uploadDialogBean4);
        UploadDialogBean uploadDialogBean5 = new UploadDialogBean();
        uploadDialogBean5.setIsSelect(bool);
        uploadDialogBean5.setName("nds");
        uploadDialogBean5.setCode(32);
        this.platformList.add(uploadDialogBean5);
        UploadDialogBean uploadDialogBean6 = new UploadDialogBean();
        uploadDialogBean6.setIsSelect(bool);
        uploadDialogBean6.setName("sfc");
        uploadDialogBean6.setCode(43);
        this.platformList.add(uploadDialogBean6);
        UploadDialogBean uploadDialogBean7 = new UploadDialogBean();
        uploadDialogBean7.setIsSelect(bool);
        uploadDialogBean7.setName("android");
        uploadDialogBean7.setCode(46);
        this.platformList.add(uploadDialogBean7);
        UploadDialogBean uploadDialogBean8 = new UploadDialogBean();
        uploadDialogBean8.setIsSelect(bool);
        uploadDialogBean8.setName(LiveConfigKey.MEDIUM);
        uploadDialogBean8.setCode(51);
        this.platformList.add(uploadDialogBean8);
    }

    private void initTypeList() {
        this.typeList = new ArrayList();
        UploadDialogBean uploadDialogBean = new UploadDialogBean();
        Boolean bool = Boolean.FALSE;
        uploadDialogBean.setIsSelect(bool);
        uploadDialogBean.setName("格斗游戏");
        uploadDialogBean.setCode(18);
        this.typeList.add(uploadDialogBean);
        UploadDialogBean uploadDialogBean2 = new UploadDialogBean();
        uploadDialogBean2.setIsSelect(bool);
        uploadDialogBean2.setName("策略游戏");
        uploadDialogBean2.setCode(19);
        this.typeList.add(uploadDialogBean2);
        UploadDialogBean uploadDialogBean3 = new UploadDialogBean();
        uploadDialogBean3.setIsSelect(bool);
        uploadDialogBean3.setName("角色扮演");
        uploadDialogBean3.setCode(20);
        this.typeList.add(uploadDialogBean3);
        UploadDialogBean uploadDialogBean4 = new UploadDialogBean();
        uploadDialogBean4.setIsSelect(bool);
        uploadDialogBean4.setName("竞速游戏");
        uploadDialogBean4.setCode(21);
        this.typeList.add(uploadDialogBean4);
        UploadDialogBean uploadDialogBean5 = new UploadDialogBean();
        uploadDialogBean5.setIsSelect(bool);
        uploadDialogBean5.setName("体育游戏");
        uploadDialogBean5.setCode(22);
        this.typeList.add(uploadDialogBean5);
        UploadDialogBean uploadDialogBean6 = new UploadDialogBean();
        uploadDialogBean6.setIsSelect(bool);
        uploadDialogBean6.setName("休闲益智");
        uploadDialogBean6.setCode(23);
        this.typeList.add(uploadDialogBean6);
        UploadDialogBean uploadDialogBean7 = new UploadDialogBean();
        uploadDialogBean7.setIsSelect(bool);
        uploadDialogBean7.setName("动作游戏");
        uploadDialogBean7.setCode(24);
        this.typeList.add(uploadDialogBean7);
        UploadDialogBean uploadDialogBean8 = new UploadDialogBean();
        uploadDialogBean8.setIsSelect(bool);
        uploadDialogBean8.setName("射击飞行");
        uploadDialogBean8.setCode(25);
        this.typeList.add(uploadDialogBean8);
    }

    private boolean isImgIn2M(File file) {
        return new BigDecimal(file.length()).divide(new BigDecimal(1048576), 2, 0).floatValue() <= 2.0f;
    }

    private boolean judgePngOrJpg(String name) {
        return name.contains("jpg") || name.contains("png");
    }

    private void reNameImg() {
        String str;
        if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(this, "android.permission-group.STORAGE") == 0) {
            deleteDir(new File(Environment.getExternalStorageDirectory().getPath() + imgRelativeDir));
        }
        if (getExternalFilesDir("") != null) {
            str = getExternalFilesDir("") + imgRelativeDir;
        } else {
            str = getFilesDir() + imgRelativeDir;
        }
        File file = new File(str);
        this.imgTempFile = file;
        if (file.exists()) {
            deleteDir(this.imgTempFile);
        }
        this.imgTempFile.mkdirs();
        File file2 = this.iconFile;
        if (file2 != null && file2.exists()) {
            if (this.iconFile.getName().contains("png")) {
                copy(this.iconFile, new File(this.imgTempFile.getAbsolutePath() + "/icon.png"));
            } else if (this.iconFile.getName().contains("jpg")) {
                copy(this.iconFile, new File(this.imgTempFile.getAbsolutePath() + "/icon.jpg"));
            }
        }
        File file3 = this.img1File;
        if (file3 != null && file3.exists()) {
            if (this.img1File.getName().contains("png")) {
                copy(this.img1File, new File(this.imgTempFile.getAbsolutePath() + "/img_1.png"));
            } else if (this.iconFile.getName().contains("jpg")) {
                copy(this.img1File, new File(this.imgTempFile.getAbsolutePath() + "/img_1.jpg"));
            }
        }
        File file4 = this.img2File;
        if (file4 != null && file4.exists()) {
            if (this.img2File.getName().contains("png")) {
                copy(this.img2File, new File(this.imgTempFile.getAbsolutePath() + "/img_2.png"));
            } else if (this.iconFile.getName().contains("jpg")) {
                copy(this.img2File, new File(this.imgTempFile.getAbsolutePath() + "/img_2.jpg"));
            }
        }
        File file5 = this.img3File;
        if (file5 == null || !file5.exists()) {
            return;
        }
        if (this.img3File.getName().contains("png")) {
            copy(this.img3File, new File(this.imgTempFile.getAbsolutePath() + "/img_3.png"));
            return;
        }
        if (this.iconFile.getName().contains("jpg")) {
            copy(this.img3File, new File(this.imgTempFile.getAbsolutePath() + "/img_3.jpg"));
        }
    }

    @AfterViews
    void afterView() {
        this.accountBean = AccountUtil_.getInstance_(this).getAccountData();
        if (prefDef.upLoadState().d().intValue() == 0) {
            String strD = prefDef.upLoadGame().d();
            if (TextUtils.isEmpty(strD)) {
                this.lay_1.setVisibility(0);
                init();
                return;
            }
            this.lay_4.setVisibility(0);
            this.dscSuccessTxt.setText("游戏 " + strD + " 已上传成功，感谢分享");
            return;
        }
        if (prefDef.upLoadState().d().intValue() == 1) {
            this.lay_2.setVisibility(0);
            this.dscIngTxt.setText("你的游戏 " + prefDef.upLoadGame().d() + " 正在上传中");
            return;
        }
        if (prefDef.upLoadState().d().intValue() == -1) {
            File file = new File(prefDef.upLoadFileName().d());
            String strD2 = prefDef.upLoadConfig().d();
            if (!file.exists() || TextUtils.isEmpty(strD2)) {
                prefDef.upLoadState().g(0);
                this.lay_1.setVisibility(0);
                init();
                return;
            }
            this.lay_3.setVisibility(0);
            this.dscFaildTxt.setText("你的游戏 " + prefDef.upLoadGame().d() + " 上传已中止");
        }
    }

    @Click
    void backImage() {
        finish();
    }

    @Click
    void continue_upload() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            com.join.mgps.Util.a3.b(this).d(OauthResult.RESULT_MSG_NETWORK_EXCEPTION);
            return;
        }
        prefDef.upLoadGame().i();
        this.lay_4.setVisibility(8);
        this.lay_1.setVisibility(0);
        init();
    }

    @Click
    void file_lay() {
        startActivityForResult(new Intent(this, (Class<?>) SDCardFileExplorerActivity_.class), 100);
    }

    @Click
    void gameIcon_lay() {
        goMyAlbumActivity4Icon();
    }

    @Click
    void gameType_lay() {
        this.typeDialog.show();
    }

    public void goMyAlbumActivity4Icon() {
        Intent intent = new Intent(this, (Class<?>) MyAlbumActivity.class);
        intent.putExtra("MAX_PICK_SIZE", 1);
        startActivityForResult(intent, 200);
    }

    public void goMyAlbumActivity4Img() {
        Intent intent = new Intent(this, (Class<?>) MyAlbumActivity.class);
        intent.putExtra("MAX_PICK_SIZE", 3);
        startActivityForResult(intent, 300);
    }

    @Click
    void img_lay() {
        goMyAlbumActivity4Img();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        ArrayList<String> stringArrayListExtra;
        ArrayList<String> stringArrayListExtra2;
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == 100) {
            File file = (File) data.getSerializableExtra("srcFile");
            this.srcFile = file;
            this.fileName.setText(file.getName());
            return;
        }
        if (requestCode == 200) {
            if (data == null || (stringArrayListExtra2 = data.getStringArrayListExtra(MyAlbumActivity.KEY_SELECTED_IMAGES)) == null || stringArrayListExtra2.size() <= 0) {
                return;
            }
            if (!judgePngOrJpg(stringArrayListExtra2.get(0))) {
                com.join.mgps.Util.a3.b(this).d("请选择PNG或JPG格式图片");
                return;
            }
            File file2 = new File(stringArrayListExtra2.get(0));
            this.iconFile = file2;
            this.gameIcon.setText(file2.getName());
            return;
        }
        if (requestCode != 300 || data == null || (stringArrayListExtra = data.getStringArrayListExtra(MyAlbumActivity.KEY_SELECTED_IMAGES)) == null || stringArrayListExtra.size() <= 0) {
            return;
        }
        if (stringArrayListExtra.size() == 1) {
            if (!judgePngOrJpg(stringArrayListExtra.get(0))) {
                com.join.mgps.Util.a3.b(this).d("请选择PNG或JPG格式图片");
                return;
            }
            this.img_1.setVisibility(0);
            this.img_2.setVisibility(8);
            this.img_3.setVisibility(8);
            File file3 = new File(stringArrayListExtra.get(0));
            this.img1File = file3;
            this.img2File = null;
            this.img3File = null;
            if (isImgIn2M(file3)) {
                com.join.android.app.common.utils.l.h(this.img_1, stringArrayListExtra.get(0));
                return;
            }
            com.join.mgps.Util.a3.b(this).d("为了你的流量，上传图片不能超过2M哦");
            this.img1File.delete();
            this.img1File = null;
            return;
        }
        if (stringArrayListExtra.size() == 2) {
            if (!judgePngOrJpg(stringArrayListExtra.get(0)) || !judgePngOrJpg(stringArrayListExtra.get(1))) {
                com.join.mgps.Util.a3.b(this).d("请选择PNG或JPG格式图片");
                return;
            }
            this.img_1.setVisibility(0);
            this.img_2.setVisibility(0);
            this.img_3.setVisibility(8);
            this.img1File = new File(stringArrayListExtra.get(0));
            this.img2File = new File(stringArrayListExtra.get(1));
            this.img3File = null;
            if (isImgIn2M(this.img1File) && isImgIn2M(this.img2File)) {
                com.join.android.app.common.utils.l.h(this.img_1, stringArrayListExtra.get(0));
                com.join.android.app.common.utils.l.h(this.img_2, stringArrayListExtra.get(1));
                return;
            }
            com.join.mgps.Util.a3.b(this).d("为了你的流量，上传图片不能超过2M哦");
            this.img1File.delete();
            this.img2File.delete();
            this.img1File = null;
            this.img2File = null;
            return;
        }
        if (stringArrayListExtra.size() >= 3) {
            if (!judgePngOrJpg(stringArrayListExtra.get(0)) || !judgePngOrJpg(stringArrayListExtra.get(1)) || !judgePngOrJpg(stringArrayListExtra.get(2))) {
                com.join.mgps.Util.a3.b(this).d("请选择PNG或JPG格式图片");
                return;
            }
            this.img_1.setVisibility(0);
            this.img_2.setVisibility(0);
            this.img_3.setVisibility(0);
            this.img1File = new File(stringArrayListExtra.get(0));
            this.img2File = new File(stringArrayListExtra.get(1));
            this.img3File = new File(stringArrayListExtra.get(2));
            if (isImgIn2M(this.img1File) && isImgIn2M(this.img2File) && isImgIn2M(this.img3File)) {
                com.join.android.app.common.utils.l.h(this.img_1, stringArrayListExtra.get(0));
                com.join.android.app.common.utils.l.h(this.img_2, stringArrayListExtra.get(1));
                com.join.android.app.common.utils.l.h(this.img_3, stringArrayListExtra.get(2));
                return;
            }
            com.join.mgps.Util.a3.b(this).d("为了你的流量，上传图片不能超过2M哦");
            this.img1File.delete();
            this.img2File.delete();
            this.img3File.delete();
            this.img1File = null;
            this.img2File = null;
            this.img3File = null;
        }
    }

    @Click
    void platformType_lay() {
        this.platformDialog.show();
    }

    @Click
    void re_continue_upload() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            com.join.mgps.Util.a3.b(this).d(OauthResult.RESULT_MSG_NETWORK_EXCEPTION);
            return;
        }
        prefDef.upLoadGame().i();
        this.lay_4.setVisibility(8);
        this.lay_3.setVisibility(8);
        this.lay_2.setVisibility(8);
        this.lay_1.setVisibility(0);
        init();
    }

    @Click
    void reupload() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            com.join.mgps.Util.a3.b(this).d(OauthResult.RESULT_MSG_NETWORK_EXCEPTION);
            return;
        }
        try {
            File file = new File(prefDef.upLoadFileName().d());
            String[] strArrSplit = prefDef.upLoadConfig().d().split(x.a.f97576d);
            UpLoadGameConfig upLoadGameConfig = new UpLoadGameConfig();
            upLoadGameConfig.setUid(Integer.parseInt(strArrSplit[0]));
            upLoadGameConfig.setToken(strArrSplit[1]);
            upLoadGameConfig.setGame_name(strArrSplit[2]);
            upLoadGameConfig.setGame_type(Integer.parseInt(strArrSplit[3]));
            upLoadGameConfig.setGame_platform_type(Integer.parseInt(strArrSplit[4]));
            upLoadGameConfig.setGame_explain(strArrSplit[5]);
            syncUpLoadInfo(this, upLoadGameConfig, file);
            com.join.mgps.Util.a3.b(this).d("开始上传");
            prefDef.upLoadState().g(1);
        } catch (Exception unused) {
            com.join.mgps.Util.a3.b(this).d("上传失败");
            prefDef.upLoadState().g(0);
        }
        finish();
    }

    @UiThread
    void showToast() {
        Toast.makeText(getApplicationContext(), "上传完成", 0).show();
    }

    @Click
    void stopupload() {
        try {
            com.join.android.app.common.http.h.b().a(this.zipFile.getName());
            prefDef.upLoadState().g(-1);
            Intent intent = new Intent(UPLOAD_RECEIVE);
            intent.putExtra("upload_result", 1);
            sendBroadcast(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    public void syncUpLoadInfo(final Context context, final UpLoadGameConfig upLoadGameConfig, final File file) {
        if (file.exists()) {
            com.join.android.app.common.http.h.b().h(context, upLoadGameConfig, file, new a());
        }
    }

    @UiThread
    void upLoad() {
        com.join.mgps.Util.a3.b(this).d("开始上传");
        finish();
    }

    @Receiver(actions = {UPLOAD_RECEIVE}, registerAt = Receiver.RegisterAt.OnResumeOnPause)
    void updateUI(@Receiver.Extra("upload_result") int UPLOAD_STATE) {
        if (UPLOAD_STATE == 0) {
            uploadFinishInUI();
        } else if (UPLOAD_STATE == -1) {
            uploadFaildInUI();
        } else if (UPLOAD_STATE == 1) {
            uploadFaildInUI();
        }
    }

    @Click
    void uploadBtn() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            com.join.mgps.Util.a3.b(this).d(OauthResult.RESULT_MSG_NETWORK_EXCEPTION);
        } else if (check()) {
            zipFile();
            upLoad();
        }
    }

    @Click
    void uploadDsc() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(8);
        intentDateBean.setLink_type_val("12449");
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }

    @UiThread
    void uploadFaildInUI() {
        this.lay_1.setVisibility(8);
        this.lay_2.setVisibility(8);
        this.lay_3.setVisibility(8);
        this.lay_4.setVisibility(8);
        File file = new File(prefDef.upLoadFileName().d());
        String strD = prefDef.upLoadConfig().d();
        if (!file.exists() || TextUtils.isEmpty(strD)) {
            prefDef.upLoadState().g(0);
            this.lay_1.setVisibility(0);
            init();
            return;
        }
        this.lay_3.setVisibility(0);
        this.dscFaildTxt.setText("你的游戏 " + prefDef.upLoadGame().d() + " 上传已终止");
    }

    @UiThread
    void uploadFinishInUI() {
        this.lay_4.setVisibility(0);
        this.lay_1.setVisibility(8);
        this.lay_2.setVisibility(8);
        this.lay_3.setVisibility(8);
        this.dscSuccessTxt.setText("游戏 " + prefDef.upLoadGame().d() + " 已上传成功，感谢分享");
    }

    @Background
    void zipFile() {
        this.config.setUid(this.accountBean.getUid());
        this.config.setToken(this.accountBean.getToken());
        this.config.setGame_name(this.gameName.getText().toString());
        this.config.setGame_type(this.typeBean.getCode());
        this.config.setGame_platform_type(this.platformBean.getCode());
        this.config.setGame_explain(this.gameDsc.getText().toString());
        reNameImg();
        String fileName = getFileName();
        File file = new File(fileName);
        this.zipFile = file;
        if (file.exists()) {
            this.zipFile.delete();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.srcFile);
        arrayList.add(this.imgTempFile);
        prefDef.upLoadFileName().g(fileName);
        if (prefDef.upLoadState().d().intValue() != 1) {
            prefDef.upLoadState().g(1);
            prefDef.upLoadGame().g(this.gameName.getText().toString());
            prefDef.upLoadConfig().i();
            if (this.config != null) {
                prefDef.upLoadConfig().g(this.config.toString());
            }
            try {
                com.join.mgps.Util.s3.l(arrayList, this.zipFile, "");
                syncUpLoadInfo(this, this.config, this.zipFile);
            } catch (IOException unused) {
                prefDef.upLoadState().g(-1);
            }
        }
    }

    class b extends Dialog {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ListView f56350b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Context f56351c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        com.join.mgps.adapter.l8 f56352d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f56353e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        UploadDialogBean f56354f;

        class a implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ UploadActivity f56356b;

            a(final UploadActivity val$this$0) {
                this.f56356b = val$this$0;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
                UploadDialogBean uploadDialogBean = (UploadDialogBean) adapterView.getItemAtPosition(i10);
                uploadDialogBean.setIsSelect(Boolean.TRUE);
                UploadDialogBean uploadDialogBean2 = UploadActivity.this.platformBean;
                if (uploadDialogBean2 != null) {
                    uploadDialogBean2.setIsSelect(Boolean.FALSE);
                }
                b.this.f56352d.notifyDataSetChanged();
                UploadActivity uploadActivity = UploadActivity.this;
                uploadActivity.platformBean = uploadDialogBean;
                uploadActivity.platformType.setText(uploadDialogBean.getName());
                b.this.dismiss();
            }
        }

        public b(Context context) {
            super(context, R.style.dialog_error);
            this.f56351c = context;
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.dialog_upload, (ViewGroup) null);
            setContentView(viewInflate);
            ListView listView = (ListView) viewInflate.findViewById(R.id.listView);
            this.f56350b = listView;
            listView.setOnItemClickListener(new a(UploadActivity.this));
            this.f56353e = (TextView) viewInflate.findViewById(R.id.name);
            setCancelable(true);
            setCanceledOnTouchOutside(true);
        }

        public void a(List<UploadDialogBean> list) {
            com.join.mgps.adapter.l8 l8Var = new com.join.mgps.adapter.l8(this.f56351c, list);
            this.f56352d = l8Var;
            this.f56350b.setAdapter((ListAdapter) l8Var);
        }

        public void b(String string) {
            this.f56353e.setText(string);
        }

        public b(Context context, int theme) {
            super(context, theme);
            this.f56351c = context;
        }
    }

    class c extends Dialog {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ListView f56358b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Context f56359c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        com.join.mgps.adapter.l8 f56360d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f56361e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        UploadDialogBean f56362f;

        class a implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ UploadActivity f56364b;

            a(final UploadActivity val$this$0) {
                this.f56364b = val$this$0;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
                UploadDialogBean uploadDialogBean = (UploadDialogBean) adapterView.getItemAtPosition(i10);
                uploadDialogBean.setIsSelect(Boolean.TRUE);
                UploadDialogBean uploadDialogBean2 = UploadActivity.this.typeBean;
                if (uploadDialogBean2 != null) {
                    uploadDialogBean2.setIsSelect(Boolean.FALSE);
                }
                c.this.f56360d.notifyDataSetChanged();
                UploadActivity uploadActivity = UploadActivity.this;
                uploadActivity.typeBean = uploadDialogBean;
                uploadActivity.gameType.setText(uploadDialogBean.getName());
                c.this.dismiss();
            }
        }

        public c(Context context) {
            super(context, R.style.dialog_error);
            this.f56359c = context;
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.dialog_upload, (ViewGroup) null);
            setContentView(viewInflate);
            ListView listView = (ListView) viewInflate.findViewById(R.id.listView);
            this.f56358b = listView;
            listView.setOnItemClickListener(new a(UploadActivity.this));
            this.f56361e = (TextView) viewInflate.findViewById(R.id.name);
            setCancelable(true);
            setCanceledOnTouchOutside(true);
        }

        public void a(List<UploadDialogBean> list) {
            com.join.mgps.adapter.l8 l8Var = new com.join.mgps.adapter.l8(this.f56359c, list);
            this.f56360d = l8Var;
            this.f56358b.setAdapter((ListAdapter) l8Var);
        }

        public void b(String string) {
            this.f56361e.setText(string);
        }

        public c(Context context, int theme) {
            super(context, theme);
            this.f56359c = context;
        }
    }
}
