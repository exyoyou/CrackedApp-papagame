package com.join.android.app.component.album;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.core.content.FileProvider;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.h0;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.LocalGameActivity;
import com.kuaishou.weapon.p0.g;
import io.reactivex.functions.Consumer;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class MyAlbumActivity extends BaseActivity implements View.OnClickListener {
    private static final String DCIM_PATH = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM) + "/Camera";
    public static final String KEY_SELECTED_IMAGES = "key_selected_images";
    private static int MAX_PICK_SIZE = 0;
    public static final int REQUEST_CODE_ALBUM = 256;
    private static final int REQUEST_CODE_CAPTURE_CAMERA = 258;
    private static final int REQUEST_CODE_PICK_IMAGE = 257;
    private View actionbarLayout;
    private View cover;
    private com.join.android.app.component.album.lib.a currentImageFolder;
    private Uri destCaptureUri;
    private com.join.android.app.component.album.adapter.c mAdapter;
    private com.join.android.app.component.album.a mAlbumPopupWindow;
    private TextView mAlbumTitle;
    private ImageView mCancelView;
    private ImageView mCollapseView;
    private GridView mGridView;
    private List<String> mImages;
    private Button mOkView;
    private com.join.android.app.component.album.lib.b mScaner;
    private int mScreenHeight;
    private List<String> mSelectedImages;
    private TextView mSelectedNum;
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
            MyAlbumActivity.this.mImageFloders = (Map) result;
            MyAlbumActivity.this.mAlbumPopupWindow.h();
            MyAlbumActivity myAlbumActivity = MyAlbumActivity.this;
            myAlbumActivity.currentImageFolder = (com.join.android.app.component.album.lib.a) myAlbumActivity.mImageFloders.get("ALL");
            MyAlbumActivity.this.refreshAlbumImages();
        }
    }

    class b implements PopupWindow.OnDismissListener {
        b() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            WindowManager.LayoutParams attributes = MyAlbumActivity.this.getWindow().getAttributes();
            attributes.alpha = 1.0f;
            MyAlbumActivity.this.getWindow().setAttributes(attributes);
            MyAlbumActivity.this.setCollapse(true);
            MyAlbumActivity.this.cover.setVisibility(8);
        }
    }

    class c implements com.join.android.app.component.album.a.e {
        c() {
        }

        @Override // com.join.android.app.component.album.a.e
        public void a(com.join.android.app.component.album.lib.a folder) {
            MyAlbumActivity.this.currentImageFolder = folder;
            MyAlbumActivity.this.refreshAlbumImages();
        }
    }

    class d extends Handler {
        d() {
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message msg) {
            MyAlbumActivity.this.dismissLoading();
            MyAlbumActivity.this.updateList((List) msg.obj);
        }
    }

    class e extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.android.app.component.album.lib.a f34880b;

        e(final com.join.android.app.component.album.lib.a val$folder) {
            this.f34880b = val$folder;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            List<String> listK = MyAlbumActivity.this.mScaner.k(this.f34880b.d());
            Message message = new Message();
            message.what = 1;
            message.obj = listK;
            MyAlbumActivity.this.handler.sendMessage(message);
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
                    h0.h0(MyAlbumActivity.this).Z(MyAlbumActivity.this, permission);
                } else if (MyAlbumActivity.this.checkPermiss("android.permission.CAMERA") && MyAlbumActivity.this.checkPermiss(g.f74786j)) {
                    MyAlbumActivity.this.getImageFromCamera();
                }
            }
        }

        f() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            if (position >= 1) {
                MyAlbumActivity.this.processImageSelect(view, (String) ((com.join.android.app.component.album.adapter.c) parent.getAdapter()).getItem(position));
                return;
            }
            try {
                new com.tbruyelle.rxpermissions2.c(MyAlbumActivity.this).r("android.permission.CAMERA").subscribe(new a());
                UtilsMy.c4(MyAlbumActivity.this, "android.permission.CAMERA");
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
        int columnIndex;
        String string = null;
        if (uri == null) {
            return null;
        }
        String scheme = uri.getScheme();
        if (scheme == null || "file".equals(scheme)) {
            string = uri.getPath();
        } else if ("content".equals(scheme)) {
            File file = new File(uri.getPath());
            if (file.exists()) {
                string = file.getAbsolutePath();
            } else {
                Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
                if (cursorQuery != null) {
                    if (cursorQuery.moveToFirst() && (columnIndex = cursorQuery.getColumnIndex("_data")) > -1) {
                        string = cursorQuery.getString(columnIndex);
                    }
                    cursorQuery.close();
                }
            }
        }
        return TextUtils.isEmpty(string) ? uri.toString() : string;
    }

    private List<String> getSelectedImagesFromIntent(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return null;
        }
        return (List) extras.get(KEY_SELECTED_IMAGES);
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
        if (this.mSelectedImages == null) {
            this.mSelectedImages = new ArrayList();
        }
        this.currentImageFolder = getPapaAlbum();
        this.mScaner.i();
    }

    private void initViews() {
        this.mScaner = new com.join.android.app.component.album.lib.b(this);
        this.actionbarLayout = findViewById(R.id.album_title);
        this.cover = findViewById(R.id.cover);
        this.mGridView = (GridView) findViewById(R.id.album_grid);
        this.mCancelView = (ImageView) findViewById(R.id.back_image);
        this.mOkView = (Button) findViewById(R.id.ok_image);
        this.mAlbumTitle = (TextView) findViewById(R.id.layout_title);
        this.mCollapseView = (ImageView) findViewById(R.id.album_collapse_image);
        this.mSelectedNum = (TextView) findViewById(R.id.select_num);
        this.mScaner.l(new a());
        this.mCancelView.setOnClickListener(this);
        this.mOkView.setOnClickListener(this);
        ((View) this.mAlbumTitle.getParent()).setOnClickListener(this);
        setCollapse(true);
        this.mSelectedImages = getSelectedImagesFromIntent(getIntent());
        refreshSelectedImagesFlag();
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

    private void refreshSelectedImagesFlag() {
        List<String> list = this.mSelectedImages;
        if (list == null || list.size() == 0) {
            this.mOkView.setText("完成(0/" + MAX_PICK_SIZE + ")");
            this.mOkView.setEnabled(false);
            return;
        }
        this.mOkView.setEnabled(true);
        this.mOkView.setText("完成(" + this.mSelectedImages.size() + net.lingala.zip4j.util.e.F0 + MAX_PICK_SIZE + ")");
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
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putSerializable(KEY_SELECTED_IMAGES, (Serializable) this.mSelectedImages);
        intent.putExtras(bundle);
        setResult(256, intent);
        finish();
    }

    private void showAlbumPopupWindow(View view) {
        this.mAlbumPopupWindow.setAnimationStyle(R.style.animation_album_popup);
        showAsDropDown(this.mAlbumPopupWindow, view, 0, 0);
        setCollapse(false);
        this.cover.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateList(List<String> files) {
        if (this.allFiles.size() > 0) {
            this.allFiles.clear();
            this.allFiles.add("camera");
            if (files != null) {
                this.allFiles.addAll(files);
            }
            this.mAdapter.e(this.filesPath);
        } else {
            this.allFiles.clear();
            this.allFiles.add("camera");
            if (files != null) {
                this.allFiles.addAll(files);
                this.mAdapter = new com.join.android.app.component.album.adapter.c(this, this.allFiles, this.filesPath, this.mSelectedImages);
            } else {
                this.mAdapter = new com.join.android.app.component.album.adapter.c(this, this.allFiles, null, this.mSelectedImages);
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
            if (this.mSelectedImages == null) {
                this.mSelectedImages = new ArrayList();
            }
            Uri uri = this.destCaptureUri;
            String realFilePath = uri != null ? getRealFilePath(this, uri) : getCapturePath(data);
            if (t2.h(realFilePath)) {
                Toast.makeText(this, "获取图片失败", 0).show();
                return;
            }
            List<String> list = this.mSelectedImages;
            if (list != null && list.size() >= MAX_PICK_SIZE) {
                List<String> list2 = this.mSelectedImages;
                list2.remove(list2.size() - 1);
            }
            this.mSelectedImages.add(realFilePath);
            processImageCompress(realFilePath, true);
            setResultForRequest();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.back_image) {
            finish();
            return;
        }
        if (id2 == R.id.ok_image) {
            setResultForRequest();
        } else if (id2 == R.id.album_collapse_image || id2 == R.id.layout_title || id2 == R.id.layout_show_album) {
            showAlbumPopupWindow(findViewById(R.id.album_title));
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.my_album_activity);
        MAX_PICK_SIZE = getIntent().getIntExtra("MAX_PICK_SIZE", 9);
        initWindownParams();
        initViews();
        initAlbumPopupWindow();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        refreshAlbumImages();
    }

    public synchronized void processImageCompress(final String path, final boolean addTask) {
        net.bither.util.b.p().j(getApplicationContext(), path, addTask);
    }

    public void processImageSelect(View parent, String item) {
        ImageView imageView = (ImageView) parent.findViewById(R.id.image);
        ImageView imageView2 = (ImageView) parent.findViewById(R.id.image_flag);
        if (this.mSelectedImages == null) {
            this.mSelectedImages = new ArrayList();
        }
        if (this.mSelectedImages.contains(item)) {
            this.mSelectedImages.remove(item);
            imageView.setColorFilter((ColorFilter) null);
            imageView2.setImageResource(R.drawable.pic_select_normal);
            refreshSelectedImagesFlag();
            processImageCompress(item, false);
            return;
        }
        if (this.mSelectedImages.size() == MAX_PICK_SIZE) {
            Toast.makeText(this, "最多选择" + MAX_PICK_SIZE + "张图", 0).show();
            return;
        }
        this.mSelectedImages.add(item);
        imageView.setColorFilter(Color.parseColor("#7f989898"));
        imageView2.setImageResource(R.drawable.pic_select_selected);
        refreshSelectedImagesFlag();
        processImageCompress(item, true);
    }

    public void showAsDropDown(final PopupWindow pw, final View anchor, final int xoff, final int yoff) {
        if (Build.VERSION.SDK_INT < 24) {
            pw.showAsDropDown(anchor, xoff, yoff);
            return;
        }
        Rect rect = new Rect();
        anchor.getWindowVisibleDisplayFrame(rect);
        Activity activity = (Activity) anchor.getContext();
        Rect rect2 = new Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect2);
        pw.setHeight(rect2.height() - rect.bottom);
        pw.showAsDropDown(anchor, xoff, yoff);
    }
}
