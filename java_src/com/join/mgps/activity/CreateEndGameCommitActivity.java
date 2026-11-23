package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.media.ThumbnailUtils;
import android.provider.MediaStore;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.core.content.ContextCompat;
import com.BaseAppCompatActivity;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.data.ArchiveArgs;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.screenshot.ImageFactory;
import com.join.mgps.dto.ArchiveListBean;
import com.join.mgps.dto.BossBean;
import com.join.mgps.dto.RequestCreateEndGameArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.papa91.arc.interfaces.DialogListenerWrap;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.io.IOException;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_create_end_game_commit)
public class CreateEndGameCommitActivity extends BaseAppCompatActivity {
    public static final int REQUEST_CODE_PICK_VIDEO = 1001;

    @Extra
    ArchiveListBean archiveBean;

    @Extra
    BossBean bossBean;
    String cloudSlotPath;
    String cloudVideoCoverPath;
    String cloudVideoPath;
    com.join.mgps.dialog.b0 compressProgressDialog;

    @ViewById
    EditText et_desc;

    @ViewById
    EditText et_title;

    @Extra
    String gameId;

    @ViewById
    ImageView iv_thumb;

    @ViewById
    LinearLayout ll_choose_video;

    @ViewById
    RelativeLayout rl_video;
    com.join.mgps.rpc.k rpcGameClient;
    String slotCompressedPath;

    @ViewById
    StandardVideoView svv_view;
    com.join.mgps.dialog.i2 systemTipDialog;

    @Extra
    Long time;
    com.join.mgps.dialog.n2 uploadProgressDialog;
    String videoCompressPath;
    String videoPath;
    boolean videoUpFinish = false;
    boolean slotUpFinish = false;
    private boolean isUploading = false;
    private boolean videoUpload = false;
    private boolean slotUpload = false;
    boolean isRequesting = false;

    class a implements com.join.android.app.common.http.g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51137b;

        a(final int val$type) {
            this.f51137b = val$type;
        }

        @Override // com.join.android.app.common.http.g
        public void onRequestProgress(long bytesWritten, long contentLength, boolean b10, String url) {
            if (!b10) {
                CreateEndGameCommitActivity.this.onUpdateUploadProgress((int) ((bytesWritten * 100) / contentLength));
                return;
            }
            int i10 = this.f51137b;
            if (i10 == 1) {
                CreateEndGameCommitActivity.this.videoUpload = true;
            } else if (i10 == 2) {
                CreateEndGameCommitActivity.this.slotUpload = true;
            }
        }

        @Override // com.join.android.app.common.http.g
        public void onUploadFailed(String msg) {
            CreateEndGameCommitActivity.this.showToast(msg);
        }
    }

    class b extends DialogListenerWrap {
        b() {
        }

        @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
        public void onClose() {
            CreateEndGameCommitActivity.this.onSystemTipClose();
        }

        @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
        public void onConfirm() {
            CreateEndGameCommitActivity.this.onSystemTipClose();
        }
    }

    class c implements com.vincent.videocompressor.h.a {
        c() {
        }

        @Override // com.vincent.videocompressor.h.a
        public void onFail() {
            CreateEndGameCommitActivity.this.showToast("压缩失败，请重试");
        }

        @Override // com.vincent.videocompressor.h.a
        public void onProgress(float percent) {
            CreateEndGameCommitActivity.this.onUpdateProgress((int) percent);
        }

        @Override // com.vincent.videocompressor.h.a
        public void onStart() {
            CreateEndGameCommitActivity.this.onCompressStart();
        }

        @Override // com.vincent.videocompressor.h.a
        public void onSuccess() {
            CreateEndGameCommitActivity.this.onCompressSuccess();
            CreateEndGameCommitActivity.this.showToast("压缩完成");
            System.out.println("压缩完成:" + CreateEndGameCommitActivity.this.videoCompressPath);
        }
    }

    private String compressImage(Context context, String imagePath) throws Throwable {
        String strReplace = imagePath.replace("file://", "");
        String str = com.join.mgps.Util.z.f50172k + "uploadCoverFile" + strReplace.substring(strReplace.lastIndexOf(com.join.mgps.Util.o0.f49827a), strReplace.length());
        File file = new File(str);
        try {
            if (!file.exists()) {
                file.getParentFile().mkdirs();
            }
            new ImageFactory().compressAndGenImage(strReplace, str, 500, false, context);
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        return str;
    }

    private String getFileSuffix(String path) {
        return com.join.mgps.Util.t2.h(path) ? "" : path.substring(path.lastIndexOf(com.join.mgps.Util.o0.f49827a) + 1);
    }

    private void onUploadError(String msg) {
        this.isUploading = false;
        showToast(msg);
        dismissUploading();
    }

    @AfterViews
    void afterViews() {
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
    }

    @Click({R.id.iv_back})
    void back() {
        finish();
    }

    @Click({R.id.ll_choose_video})
    void chooseVideo() {
        Intent intent;
        if (ContextCompat.checkSelfPermission(this, com.kuaishou.weapon.p0.g.f74785i) != 0) {
            UtilsMy.e3(this, com.kuaishou.weapon.p0.g.f74785i);
            return;
        }
        if (com.join.mgps.Util.e2.B() || com.join.mgps.Util.e2.t()) {
            intent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
            intent.setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "video/*");
        } else {
            intent = new Intent();
            intent.setAction("android.intent.action.OPEN_DOCUMENT");
            intent.addCategory("android.intent.category.OPENABLE");
            intent.setType("video/*");
        }
        startActivityForResult(Intent.createChooser(intent, "选择挑战视频"), 1001);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:18:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:22:0x00ce A[Catch: Exception -> 0x00b8, TRY_LEAVE, TryCatch #1 {Exception -> 0x00b8, blocks: (B:13:0x00a2, B:15:0x00ae, B:19:0x00bc, B:21:0x00c6, B:22:0x00ce), top: B:32:0x00a2, outer: #0 }] */
    @Background
    public void commitCreateEndGame() {
        if (this.isRequesting) {
            return;
        }
        this.isRequesting = true;
        if (!com.join.android.app.common.utils.m.j(this)) {
            this.isRequesting = false;
            return;
        }
        try {
            if (IntentUtil.getInstance().isNotLogin(this)) {
                showToast("请先登录");
                this.isRequesting = false;
                return;
            }
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            RequestModel requestModel = new RequestModel(this);
            RequestCreateEndGameArgs requestCreateEndGameArgs = new RequestCreateEndGameArgs();
            requestCreateEndGameArgs.setUid(accountData.getUid() + "");
            requestCreateEndGameArgs.setArchive(this.cloudSlotPath);
            requestCreateEndGameArgs.setVideo(this.cloudVideoPath);
            requestCreateEndGameArgs.setCover(this.cloudVideoCoverPath);
            requestCreateEndGameArgs.setIndex(this.bossBean.getIndex());
            requestCreateEndGameArgs.setGameId(this.bossBean.getGameId());
            requestCreateEndGameArgs.setDuration(this.time.longValue());
            requestCreateEndGameArgs.setTitle(this.et_title.getText().toString());
            requestCreateEndGameArgs.setSubTitle(this.et_desc.getText().toString());
            requestModel.setArgs(requestCreateEndGameArgs);
            ResponseModel<Boolean> responseModelE = this.rpcGameClient.E(requestModel.makeSign());
            this.isRequesting = false;
            if (responseModelE != null) {
                try {
                    if (responseModelE.getData().booleanValue()) {
                        dismissUploading();
                        onCreateSuccess();
                        onDeleteVideoCache();
                    } else if (responseModelE == null && com.join.mgps.Util.t2.i(responseModelE.getMessage())) {
                        showToast(responseModelE.getMessage());
                    } else {
                        showToast("创建失败请重试");
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    dismissUploading();
                    showToast("创建失败请重试");
                }
            } else if (responseModelE == null) {
                showToast("创建失败请重试");
            } else {
                showToast("创建失败请重试");
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            dismissUploading();
            showToast("创建失败请重试");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void compressVideo(String sourcePath) {
        String str = com.join.mgps.Util.z.f50173l + "compress/video";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        String str2 = str + File.separator + com.join.mgps.Util.i1.d(sourcePath) + com.join.mgps.Util.o0.f49827a + getFileSuffix(sourcePath);
        this.videoCompressPath = str2;
        com.vincent.videocompressor.h.b(sourcePath, str2, new c());
    }

    @Click({R.id.tv_commit})
    void createEndGame() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast("网络连接异常");
            return;
        }
        if (IntentUtil.getInstance().isNotLogin(this)) {
            showToast("请先登录");
            IntentUtil.getInstance().goLogin(this);
            return;
        }
        if (com.join.mgps.Util.t2.h(this.videoPath)) {
            showToast("请选择挑战视频");
            return;
        }
        if (com.join.mgps.Util.t2.h(this.et_title.getText().toString()) || this.et_title.getText().length() < 6) {
            showToast("请输入标题（6～20字）");
            return;
        }
        if (com.join.mgps.Util.t2.h(this.et_desc.getText().toString())) {
            showToast("请输入残局说明");
            return;
        }
        this.slotUpload = false;
        this.videoUpload = false;
        if (com.join.mgps.Util.t2.h(this.videoCompressPath)) {
            compressVideo(this.videoPath);
        } else {
            onCompressSuccess();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void dismissUploading() {
        com.join.mgps.dialog.n2 n2Var = this.uploadProgressDialog;
        if (n2Var != null) {
            n2Var.dismiss();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1001 && resultCode == -1) {
            this.videoPath = com.join.mgps.Util.d3.b(this, data.getData());
            if (this.svv_view != null) {
                this.rl_video.setVisibility(0);
                this.ll_choose_video.setVisibility(8);
                this.svv_view.f35112b.setImageBitmap(ThumbnailUtils.createVideoThumbnail(this.videoPath, 1));
                this.svv_view.setPlayTag("CreateEndGameActivity_Video");
                this.svv_view.setMuteWhenPlay(false);
                this.svv_view.setShowCoverWhenPause(false);
                this.svv_view.setUpLazy("file://" + this.videoPath, 0, new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void onCompressStart() {
        if (this.compressProgressDialog == null) {
            this.compressProgressDialog = new com.join.mgps.dialog.b0(this);
        }
        this.compressProgressDialog.a("视频");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void onCompressSuccess() {
        com.join.mgps.dialog.b0 b0Var = this.compressProgressDialog;
        if (b0Var != null) {
            b0Var.dismiss();
        }
        if (this.videoUpFinish) {
            return;
        }
        uploadFile(this.videoCompressPath, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void onCreateSuccess() {
        if (this.systemTipDialog == null) {
            this.systemTipDialog = new com.join.mgps.dialog.i2(this);
        }
        this.systemTipDialog.a(new b());
        this.systemTipDialog.b("上传成功，我们将在3个工作日内完成审核");
    }

    void onDeleteSlotCache() {
        if (com.join.mgps.Util.t2.i(this.slotCompressedPath)) {
            com.join.mgps.Util.o0.m(this.slotCompressedPath);
            this.slotCompressedPath = "";
        }
    }

    @Click({R.id.iv_delete_video})
    void onDeleteVideo() {
        this.videoPath = "";
        this.ll_choose_video.setVisibility(0);
        this.rl_video.setVisibility(8);
    }

    void onDeleteVideoCache() {
        if (com.join.mgps.Util.t2.i(this.videoCompressPath)) {
            com.join.mgps.Util.o0.m(this.videoCompressPath);
            this.videoCompressPath = "";
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this);
        StandardVideoView standardVideoView = this.svv_view;
        if (standardVideoView != null) {
            standardVideoView.release();
        }
        com.join.android.app.component.video.a.n0("CreateEndGameActivity_Video");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        StandardVideoView standardVideoView = this.svv_view;
        if (standardVideoView != null) {
            standardVideoView.onVideoPause();
        }
    }

    void onSystemTipClose() {
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.v(CreateEndGameActivity.FINISH_EVENT_TAG));
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void onUpdateProgress(int progress) {
        com.join.mgps.dialog.b0 b0Var = this.compressProgressDialog;
        if (b0Var == null || !b0Var.isShowing()) {
            return;
        }
        this.compressProgressDialog.update(progress);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void onUpdateUploadProgress(int progress) {
        com.join.mgps.dialog.n2 n2Var = this.uploadProgressDialog;
        if (n2Var == null || !n2Var.isShowing()) {
            return;
        }
        this.uploadProgressDialog.update(progress);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void onUploadStart(int type) {
        if (this.uploadProgressDialog == null) {
            this.uploadProgressDialog = new com.join.mgps.dialog.n2(this);
        }
        this.uploadProgressDialog.b(type == 1 ? "视频" : "存档");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void onUploadSuccess() {
        if (!this.slotUpFinish || !this.slotUpload) {
            dismissUploading();
        }
        if (this.slotUpFinish || this.slotUpload) {
            return;
        }
        uploadFile(this.archiveBean.getArchiveFilePath(), 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void uploadFile(String upFilePath, int type) {
        if (this.isUploading) {
            return;
        }
        this.isUploading = true;
        if (type == 1) {
            this.videoUpload = true;
        } else if (type == 2) {
            this.slotUpload = true;
        }
        if (!com.join.android.app.common.utils.m.j(this)) {
            onUploadError("网络连接异常");
            return;
        }
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(this);
        ArchiveArgs archiveArgs = new ArchiveArgs();
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        archiveArgs.setGameId(this.gameId);
        archiveArgs.setUid(accountData.getUid());
        requestModel.setArgs(archiveArgs);
        String strA = com.papa.sim.statistic.m.a(this);
        onUploadStart(type);
        String strG = com.join.android.app.common.http.h.b().g(upFilePath, accountData.getUid() + "", accountData.getToken(), requestModel, strA, new File(upFilePath).getName(), type == 2 ? 1 : 0, type == 1 ? 1 : 0, new a(type));
        try {
            if (!com.join.mgps.Util.t2.i(strG)) {
                onUploadError("上传失败，请重试");
                return;
            }
            JsonObject asJsonObject = JsonParser.parseString(strG).getAsJsonObject();
            if (asJsonObject == null || !asJsonObject.has("code") || asJsonObject.get("code").getAsInt() != 200) {
                onUploadError("上传失败，请重试");
                return;
            }
            if (!asJsonObject.has("data")) {
                if (asJsonObject.has("message") && !asJsonObject.get("message").isJsonNull() && com.join.mgps.Util.t2.i(asJsonObject.get("message").getAsString())) {
                    onUploadError(asJsonObject.get("message").getAsString());
                    return;
                } else {
                    onUploadError("上传失败，请重试");
                    return;
                }
            }
            JsonArray asJsonArray = asJsonObject.get("data").getAsJsonArray();
            if (asJsonArray.size() <= 0) {
                onUploadError("上传失败，请重试");
                return;
            }
            JsonObject asJsonObject2 = asJsonArray.get(0).getAsJsonObject();
            if (asJsonObject2.has("remoteUrl")) {
                if (type == 1) {
                    this.cloudVideoPath = asJsonObject2.get("remoteUrl").getAsString();
                    if (asJsonObject2.has(InstallAppDialogV2Activity_.COVER_EXTRA) && asJsonObject2.get(InstallAppDialogV2Activity_.COVER_EXTRA) != null && !asJsonObject2.get(InstallAppDialogV2Activity_.COVER_EXTRA).isJsonNull()) {
                        this.cloudVideoCoverPath = asJsonObject2.get(InstallAppDialogV2Activity_.COVER_EXTRA).getAsString();
                    }
                    this.videoUpFinish = true;
                } else if (type == 2) {
                    this.cloudSlotPath = asJsonObject2.get("remoteUrl").getAsString();
                    this.slotUpFinish = true;
                }
                this.isUploading = false;
                onUploadSuccess();
                if (this.videoUpFinish && this.slotUpFinish) {
                    commitCreateEndGame();
                }
            }
        } catch (Exception unused) {
            onUploadError("上传失败，请重试");
        }
    }
}
