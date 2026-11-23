package com.join.mgps.activity.screenshot;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.viewpager.widget.ViewPager;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.b2;
import com.join.mgps.adapter.h0;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ResultMessageBean;
import com.join.mgps.rpc.e;
import com.join.mgps.rpc.impl.d;
import com.kuaishou.weapon.p0.g;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.screenshort_activity_layout)
public class ScreenshotTrueListAcvity extends BaseFragmentActivity {
    Activity activity;

    @ViewById
    ImageView back;
    e client;
    Context context;

    @Extra
    ScreenshotGamedetialBean fromData;

    @Extra
    String gameId;
    List<ScreenshortTabBean> listTables;
    private b2 mPhotoSelectUtils;
    private Dialog mPicChsDialog;

    @ViewById
    SlidingTabLayoutScreenShort tableLayout;

    @ViewById
    TextView upload;

    @ViewById
    ViewPager viewpager;

    private void ChangIcon() {
        Dialog dialog = new Dialog(this.context, R.style.floate_dialog);
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
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ScreenshotTrueListAcvity.this.mPicChsDialog.dismiss();
                boolean z10 = false;
                if (ContextCompat.checkSelfPermission(ScreenshotTrueListAcvity.this, g.f74786j) != 0) {
                    UtilsMy.e3(ScreenshotTrueListAcvity.this.context, g.f74786j);
                } else if (ContextCompat.checkSelfPermission(ScreenshotTrueListAcvity.this, g.f74785i) != 0) {
                    UtilsMy.e3(ScreenshotTrueListAcvity.this.context, g.f74785i);
                } else if (ContextCompat.checkSelfPermission(ScreenshotTrueListAcvity.this, "android.permission.CAMERA") != 0) {
                    UtilsMy.e3(ScreenshotTrueListAcvity.this.context, "android.permission.CAMERA");
                } else {
                    z10 = true;
                }
                if (z10) {
                    ScreenshotTrueListAcvity.this.mPhotoSelectUtils.g();
                }
            }
        });
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ScreenshotTrueListAcvity.this.mPicChsDialog.dismiss();
                boolean z10 = false;
                if (ContextCompat.checkSelfPermission(ScreenshotTrueListAcvity.this, g.f74786j) != 0) {
                    UtilsMy.e3(ScreenshotTrueListAcvity.this.context, g.f74786j);
                } else if (ContextCompat.checkSelfPermission(ScreenshotTrueListAcvity.this, g.f74785i) != 0) {
                    UtilsMy.e3(ScreenshotTrueListAcvity.this.context, g.f74785i);
                } else {
                    z10 = true;
                }
                if (z10) {
                    ScreenshotTrueListAcvity.this.mPhotoSelectUtils.d();
                }
            }
        });
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                ScreenshotTrueListAcvity.this.mPicChsDialog.dismiss();
            }
        });
        this.mPicChsDialog.show();
    }

    @AfterViews
    void afterView() {
        this.client = d.O1();
        this.context = this;
        this.activity = this;
        getTabdata();
    }

    @Click
    void back() {
        finish();
    }

    @Background
    void getTabdata() {
        ResultMessageBean<List<ScreenshortTabBean>> messages;
        try {
            ResultMainBean<List<ScreenshortTabBean>> resultMainBeanP0 = this.client.P0(RequestBeanUtil.getInstance(this.context).getScreenShortListRequest(this.gameId, 1, 1));
            if (resultMainBeanP0 == null || resultMainBeanP0.getFlag() != 1 || (messages = resultMainBeanP0.getMessages()) == null || messages.getData() == null) {
                return;
            }
            List<ScreenshortTabBean> data = messages.getData();
            this.listTables = data;
            updateTable(data);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        b2 b2Var = this.mPhotoSelectUtils;
        if (b2Var != null) {
            b2Var.a(requestCode, resultCode, data);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    @UiThread
    void updateTable(List<ScreenshortTabBean> listTable) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        for (int i11 = 0; i11 < listTable.size(); i11++) {
            ScreenshortTabBean screenshortTabBean = listTable.get(i11);
            ScreenShortListFragment_ screenShortListFragment_ = new ScreenShortListFragment_();
            Bundle bundle = new Bundle();
            bundle.putString("gameId", this.gameId);
            bundle.putInt("typeId", screenshortTabBean.getId());
            screenShortListFragment_.setArguments(bundle);
            arrayList.add(new h0.a(screenshortTabBean.getTitle() + "", screenShortListFragment_));
            if (this.fromData.getId() == screenshortTabBean.getId()) {
                i10 = i11;
            }
        }
        h0 h0Var = new h0(getSupportFragmentManager(), arrayList);
        h0Var.e(arrayList);
        this.viewpager.setAdapter(h0Var);
        this.tableLayout.setViewPager(this.viewpager);
        this.viewpager.setCurrentItem(i10);
    }

    @Click
    void upload() {
        this.mPhotoSelectUtils = new b2(this, new b2.a() { // from class: com.join.mgps.activity.screenshot.ScreenshotTrueListAcvity.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.join.mgps.Util.b2.a
            public void onFinish(File outputFile, Uri outputUri) {
                Bundle bundle = new Bundle();
                bundle.putSerializable("datas", (Serializable) ScreenshotTrueListAcvity.this.listTables);
                ScreenShortUploadImagActivity_.IntentBuilder_ intentBuilder_Imagepath = ScreenShortUploadImagActivity_.intent(ScreenshotTrueListAcvity.this.context).gameId(ScreenshotTrueListAcvity.this.gameId).imagepath(outputFile.getAbsolutePath());
                ScreenshotTrueListAcvity screenshotTrueListAcvity = ScreenshotTrueListAcvity.this;
                ((ScreenShortUploadImagActivity_.IntentBuilder_) intentBuilder_Imagepath.typeId(screenshotTrueListAcvity.listTables.get(screenshotTrueListAcvity.viewpager.getCurrentItem()).getId()).extra("datas", bundle)).start();
            }
        }, false);
        ChangIcon();
    }
}
