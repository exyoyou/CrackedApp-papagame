package com.join.mgps.Util;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class b2 {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f49502m = 10001;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f49503n = 10002;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f49504o = 10003;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f49505a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f49506b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f49507c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f49508d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Uri f49509e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private File f49510f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private File f49511g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f49512h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f49513i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f49514j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f49515k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    a f49516l;

    public interface a {
        void onFinish(File outputFile, Uri outputUri);
    }

    public b2(Activity activity, a listener, boolean shouldCrop) {
        this.f49506b = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + String.valueOf(System.currentTimeMillis()) + ".jpg";
        this.f49507c = "packageName.fileprovider";
        this.f49509e = null;
        this.f49511g = null;
        this.f49512h = 1;
        this.f49513i = 1;
        this.f49514j = 800;
        this.f49515k = 480;
        this.f49505a = activity;
        this.f49516l = listener;
        this.f49508d = shouldCrop;
        this.f49507c = activity.getPackageName() + ".fileprovider";
        this.f49506b = b();
    }

    private String b() {
        String absolutePath;
        Activity activity = this.f49505a;
        if (activity == null) {
            absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "Android/data/com.join.android.app.mgsim.wufun";
        } else {
            absolutePath = activity.getExternalFilesDir("").getAbsolutePath();
        }
        return absolutePath + File.separator + System.currentTimeMillis() + ".jpg";
    }

    private Uri c(Context context, File imageFile) {
        try {
            String absolutePath = imageFile.getAbsolutePath();
            Cursor cursorQuery = context.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=? ", new String[]{absolutePath}, null);
            if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                if (!imageFile.exists()) {
                    return null;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("_data", absolutePath);
                return context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
            }
            int i10 = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("_id"));
            return Uri.withAppendedPath(Uri.parse("content://media/external/images/media"), "" + i10);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private void h(File inputFile, File outputFile) {
        File parentFile = outputFile.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        Intent intent = new Intent("com.android.camera.action.CROP");
        if (Build.VERSION.SDK_INT >= 24) {
            intent.setDataAndType(c(this.f49505a, inputFile), "image/*");
        } else {
            intent.setDataAndType(Uri.fromFile(inputFile), "image/*");
        }
        intent.putExtra("crop", "true");
        intent.putExtra("mAspectX", this.f49512h);
        intent.putExtra("mAspectY", this.f49513i);
        intent.putExtra("mOutputX", this.f49514j);
        intent.putExtra("mOutputY", this.f49515k);
        intent.putExtra("return-data", false);
        intent.putExtra("output", Uri.fromFile(outputFile));
        intent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());
        this.f49505a.startActivityForResult(intent, 10003);
    }

    public void a(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            switch (requestCode) {
                case 10001:
                    File file = new File(this.f49506b);
                    this.f49510f = file;
                    if (!this.f49508d) {
                        Uri uriFromFile = Uri.fromFile(file);
                        this.f49509e = uriFromFile;
                        a aVar = this.f49516l;
                        if (aVar != null) {
                            aVar.onFinish(this.f49510f, uriFromFile);
                        }
                    } else {
                        File file2 = new File(b());
                        this.f49511g = file2;
                        this.f49509e = Uri.fromFile(file2);
                        h(this.f49510f, this.f49511g);
                    }
                    break;
                case 10002:
                    if (data != null) {
                        Cursor cursorManagedQuery = this.f49505a.managedQuery(data.getData(), new String[]{"_data"}, null, null, null);
                        int columnIndexOrThrow = cursorManagedQuery.getColumnIndexOrThrow("_data");
                        cursorManagedQuery.moveToFirst();
                        File file3 = new File(cursorManagedQuery.getString(columnIndexOrThrow));
                        this.f49510f = file3;
                        if (!this.f49508d) {
                            Uri uriFromFile2 = Uri.fromFile(file3);
                            this.f49509e = uriFromFile2;
                            a aVar2 = this.f49516l;
                            if (aVar2 != null) {
                                aVar2.onFinish(this.f49510f, uriFromFile2);
                            }
                        } else {
                            File file4 = new File(b());
                            this.f49511g = file4;
                            this.f49509e = Uri.fromFile(file4);
                            h(this.f49510f, this.f49511g);
                        }
                    }
                    break;
                case 10003:
                    if (data != null && this.f49509e != null) {
                        File file5 = new File(this.f49506b);
                        if (file5.exists()) {
                            file5.delete();
                        }
                        a aVar3 = this.f49516l;
                        if (aVar3 != null) {
                            aVar3.onFinish(this.f49511g, this.f49509e);
                        }
                        break;
                    }
                    break;
            }
        }
    }

    public void d() {
        Intent intent = new Intent("android.intent.action.PICK", (Uri) null);
        intent.setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image/*");
        this.f49505a.startActivityForResult(intent, 10002);
    }

    public void e(String authorities) {
        this.f49507c = authorities;
    }

    public void f(String imgPath) {
        this.f49506b = imgPath;
    }

    public void g() {
        Uri uriInsert;
        File file = new File(this.f49506b);
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        if (Build.VERSION.SDK_INT < 24) {
            uriInsert = Uri.fromFile(file);
        } else {
            ContentValues contentValues = new ContentValues(1);
            contentValues.put("_data", file.getAbsolutePath());
            uriInsert = this.f49505a.getApplication().getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
        }
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", uriInsert);
        this.f49505a.startActivityForResult(intent, 10001);
    }

    public b2(Activity activity, a listener, int aspectX, int aspectY, int outputX, int outputY) {
        this(activity, listener, true);
        this.f49512h = aspectX;
        this.f49513i = aspectY;
        this.f49514j = outputX;
        this.f49515k = outputY;
    }
}
