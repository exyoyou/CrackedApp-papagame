package com.join.android.app.component.album;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.core.content.FileProvider;
import com.BaseActivity;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.h0;
import com.join.mgps.activity.LocalGameActivity;
import com.kuaishou.weapon.p0.g;
import io.reactivex.functions.Consumer;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class MyIconActivity extends BaseActivity implements View.OnClickListener {
    private static final String DCIM_PATH = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM) + "/Camera";
    private static final int REQUEST_CODE_CAPTURE_CAMERA = 258;
    private static final int REQUEST_CODE_PICK_IMAGE = 257;
    MApplication application;
    private ImageView back_image;
    private com.join.android.app.component.album.lib.a currentImageFolder;
    private Uri destCaptureUri;
    private int from;
    private com.join.android.app.component.album.adapter.d mAdapter;
    private com.join.android.app.component.album.a mAlbumPopupWindow;
    private TextView mAlbumTitle;
    private ImageView mCancelView;
    private ImageView mCollapseView;
    private Context mContext;
    private GridView mGridView;
    private List<String> mImages;
    private com.join.android.app.component.album.lib.b mScaner;
    private int mScreenHeight;
    private final boolean useSpecifyDestCaptureUri = true;
    private Map<String, com.join.android.app.component.album.lib.a> mImageFloders = new HashMap();
    public Handler handler = new d();
    String filesName = "";
    String filesPath = "";
    List<String> allFiles = new ArrayList();

    class a implements com.join.android.app.component.album.lib.b.g {
        a() {
        }

        @Override // com.join.android.app.component.album.lib.b.g
        public void a() {
        }

        @Override // com.join.android.app.component.album.lib.b.g
        public void b(Object item) {
        }

        @Override // com.join.android.app.component.album.lib.b.g
        public void c(Object result) {
            MyIconActivity.this.mImageFloders = (Map) result;
            MyIconActivity.this.mAlbumPopupWindow.h();
            MyIconActivity myIconActivity = MyIconActivity.this;
            myIconActivity.currentImageFolder = (com.join.android.app.component.album.lib.a) myIconActivity.mImageFloders.get("ALL");
            MyIconActivity.this.refreshAlbumImages();
        }
    }

    class b implements PopupWindow.OnDismissListener {
        b() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            WindowManager.LayoutParams attributes = MyIconActivity.this.getWindow().getAttributes();
            attributes.alpha = 1.0f;
            MyIconActivity.this.getWindow().setAttributes(attributes);
            MyIconActivity.this.setCollapse(true);
        }
    }

    class c implements com.join.android.app.component.album.a.e {
        c() {
        }

        @Override // com.join.android.app.component.album.a.e
        public void a(com.join.android.app.component.album.lib.a folder) {
            MyIconActivity.this.currentImageFolder = folder;
            MyIconActivity.this.refreshAlbumImages();
        }
    }

    class d extends Handler {
        d() {
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message msg) {
            List list = (List) msg.obj;
            MyIconActivity.this.dismissLoading();
            MyIconActivity.this.updateList(list);
        }
    }

    class e extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.android.app.component.album.lib.a f34888b;

        e(final com.join.android.app.component.album.lib.a val$folder) {
            this.f34888b = val$folder;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            List<String> listK = MyIconActivity.this.mScaner.k(this.f34888b.d());
            Message message = new Message();
            message.what = 1;
            message.obj = listK;
            MyIconActivity.this.handler.sendMessage(message);
        }
    }

    class f implements AdapterView.OnItemClickListener {

        class a implements Consumer<com.tbruyelle.rxpermissions2.b> {
            a() {
            }

            @Override // io.reactivex.functions.Consumer
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
                if (!permission.f83019b) {
                    if (permission.f83020c) {
                        return;
                    }
                    h0.h0(MyIconActivity.this).Z(MyIconActivity.this, permission);
                } else if (MyIconActivity.this.checkPermiss("android.permission.CAMERA") && MyIconActivity.this.checkPermiss(g.f74786j)) {
                    MyIconActivity.this.getImageFromCamera();
                }
            }
        }

        f() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            if (position >= 1) {
                CropPicActivity_.intent(MyIconActivity.this.mContext).a(MyIconActivity.this.mAdapter.getItem(position).toString()).b(MyIconActivity.this.from).start();
                return;
            }
            try {
                new com.tbruyelle.rxpermissions2.c(MyIconActivity.this).r("android.permission.CAMERA").subscribe(new a());
                UtilsMy.c4(MyIconActivity.this, "android.permission.CAMERA");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private String getCapturePath(Intent data) {
        if (data == null) {
            return "";
        }
        Uri data2 = data.getData();
        if (data2 != null) {
            return getRealFilePath(this, data2);
        }
        if (data.hasExtra("data")) {
            return new File(getRealFilePath(this, getImageUri(getApplicationContext(), (Bitmap) data.getParcelableExtra("data")))).getAbsolutePath();
        }
        Toast.makeText(getApplicationContext(), "拍照失败", 1).show();
        return null;
    }

    private com.join.android.app.component.album.lib.a getDciAlbum() {
        com.join.android.app.component.album.lib.a aVar = new com.join.android.app.component.album.lib.a();
        File file = new File(DCIM_PATH);
        aVar.j(file.getPath());
        aVar.l(file.getName());
        return aVar;
    }

    private com.join.android.app.component.album.lib.a getPapaAlbum() {
        com.join.android.app.component.album.lib.a aVar = new com.join.android.app.component.album.lib.a();
        aVar.j("All");
        aVar.k("");
        aVar.i(1);
        aVar.l(LocalGameActivity.ALL);
        return aVar;
    }

    private String getRealFilePath(final Context context, final Uri uri) {
        Cursor cursorQuery;
        int columnIndex;
        String string = null;
        if (uri == null || context == null) {
            return null;
        }
        int i10 = context.getApplicationInfo().targetSdkVersion;
        try {
            return uri.toString();
        } catch (Exception e10) {
            e10.printStackTrace();
            String scheme = uri.getScheme();
            if (scheme == null) {
                return uri.getPath();
            }
            if ("file".equals(scheme)) {
                return uri.getPath();
            }
            if (!"content".equals(scheme) || (cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null)) == null) {
                return null;
            }
            if (cursorQuery.moveToFirst() && (columnIndex = cursorQuery.getColumnIndex("_data")) > -1) {
                string = cursorQuery.getString(columnIndex);
            }
            cursorQuery.close();
            return string;
        }
    }

    private List<String> getSelectedImagesFromIntent(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return null;
        }
        return (List) extras.get(MyAlbumActivity.KEY_SELECTED_IMAGES);
    }

    private void initAlbumPopupWindow() {
        com.join.android.app.component.album.a aVar = new com.join.android.app.component.album.a(this, LayoutInflater.from(this).inflate(R.layout.album_layout, (ViewGroup) null), -1, this.mScreenHeight, this.mScaner);
        this.mAlbumPopupWindow = aVar;
        aVar.setOnDismissListener(new b());
        this.mAlbumPopupWindow.f(new c());
    }

    private void initMyAlbumDetail() {
        if (this.mImages == null) {
            this.mImages = new ArrayList();
        }
        this.mScaner.i();
        this.currentImageFolder = getPapaAlbum();
        this.mScaner.i();
    }

    private void initViews() {
        this.mScaner = new com.join.android.app.component.album.lib.b(this);
        this.mGridView = (GridView) findViewById(R.id.album_grid);
        this.mCancelView = (ImageView) findViewById(R.id.back_image);
        this.mAlbumTitle = (TextView) findViewById(R.id.layout_title);
        this.mCollapseView = (ImageView) findViewById(R.id.album_collapse_image);
        this.back_image = (ImageView) findViewById(R.id.back_image);
        this.mCancelView.setOnClickListener(this);
        this.back_image.setOnClickListener(this);
        ((View) this.mAlbumTitle.getParent()).setOnClickListener(this);
        this.mScaner.l(new a());
        setCollapse(true);
        initMyAlbumDetail();
    }

    private void initWindownParams() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.mScreenHeight = displayMetrics.heightPixels;
    }

    private void loadImages(com.join.android.app.component.album.lib.a folder) {
        if (this.allFiles.size() == 0) {
            showLoading();
        }
        new e(folder).start();
    }

    private void processAlbumSelected(com.join.android.app.component.album.lib.a folder) {
        this.filesName = folder.f();
        this.filesPath = folder.d();
        updateList(folder.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshAlbumImages() {
        com.join.android.app.component.album.lib.a aVar = this.currentImageFolder;
        if (aVar != null) {
            processAlbumSelected(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCollapse(boolean collapse) {
        if (collapse) {
            this.mCollapseView.setBackgroundResource(R.drawable.arrow_down);
        } else {
            this.mCollapseView.setBackgroundResource(R.drawable.arrow_up);
        }
    }

    private void setResultForRequest() {
    }

    private void showAlbumPopupWindow(View view) {
        this.mAlbumPopupWindow.setAnimationStyle(R.style.animation_album_popup);
        this.mAlbumPopupWindow.showAsDropDown(view, 0, 0);
        setCollapse(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateList(List<String> files) {
        if (this.allFiles.size() > 0) {
            this.allFiles.clear();
            this.allFiles.add("camera");
            if (files != null) {
                this.allFiles.addAll(files);
            }
            this.mAdapter.d(this.filesPath);
        } else {
            this.allFiles.clear();
            this.allFiles.add("camera");
            if (files != null) {
                this.allFiles.addAll(files);
                this.mAdapter = new com.join.android.app.component.album.adapter.d(this, this.allFiles, this.filesPath);
            } else {
                this.mAdapter = new com.join.android.app.component.album.adapter.d(this, this.allFiles, null);
            }
            this.mGridView.setAdapter((ListAdapter) this.mAdapter);
            this.mGridView.setOnItemClickListener(new f());
        }
        this.mAdapter.notifyDataSetChanged();
        this.mAlbumTitle.setText(this.filesName);
        setCollapse(true);
        com.join.android.app.component.album.a aVar = this.mAlbumPopupWindow;
        if (aVar != null) {
            aVar.dismiss();
        }
    }

    protected void getImageFromCamera() {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            Toast.makeText(getApplicationContext(), "请确认已经插入SD卡", 1).show();
            return;
        }
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM) + "/Camera/IMG_" + new SimpleDateFormat("yyyyMMdd_HHmmss").format(Long.valueOf(System.currentTimeMillis())) + ".jpg");
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        Uri uriForFile = FileProvider.getUriForFile(this, getPackageName() + ".fileprovider", file);
        intent.putExtra("output", uriForFile);
        this.destCaptureUri = uriForFile;
        if (intent.resolveActivity(getPackageManager()) != null) {
            startActivityForResult(intent, 258);
        }
    }

    protected void getImageFromLocalAlbum() {
        Intent intent = new Intent("android.intent.action.PICK");
        intent.setType("image/*");
        startActivityForResult(intent, 257);
    }

    public Uri getImageUri(Context inContext, Bitmap inImage) {
        inImage.compress(Bitmap.CompressFormat.JPEG, 100, new ByteArrayOutputStream());
        return Uri.parse(MediaStore.Images.Media.insertImage(inContext.getContentResolver(), inImage, "Title", (String) null));
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 258 && resultCode == -1) {
            Uri uri = this.destCaptureUri;
            CropPicActivity_.intent(this.mContext).a(uri != null ? getRealFilePath(this, uri) : getCapturePath(data)).b(this.from).start();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.back_image) {
            finish();
        } else if (id2 == R.id.album_collapse_image || id2 == R.id.layout_title || id2 == R.id.layout_show_album) {
            showAlbumPopupWindow(findViewById(R.id.album_title));
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.my_icon_activity);
        this.mContext = this;
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.i(this);
        initWindownParams();
        initViews();
        initAlbumPopupWindow();
        this.from = getIntent().getIntExtra("from", 0);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        refreshAlbumImages();
    }
}
