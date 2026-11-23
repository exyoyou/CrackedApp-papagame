package com.join.android.app.component.photoviewer;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaScannerConnection;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.BaseFragmentActivity;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.c2;
import com.join.mgps.Util.o0;
import java.io.File;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes5.dex */
public class ImagePagerActivity extends BaseFragmentActivity {
    public static final String EXTRA_IMAGE_INDEX = "image_index";
    public static final String EXTRA_IMAGE_URLS = "image_urls";
    private static final String STATE_POSITION = "STATE_POSITION";
    private TextView indicator;
    View.OnLongClickListener mOnLongClickListener = new a();
    private MultiTouchViewPager mPager;
    g myImagePagerPopupWindow;
    private int pagerPosition;

    class a implements View.OnLongClickListener {
        a() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v10) {
            ImagePagerActivity.this.mPager.getCurrentItem();
            ImagePagerActivity imagePagerActivity = ImagePagerActivity.this;
            if (imagePagerActivity.myImagePagerPopupWindow == null) {
                imagePagerActivity.initPopupWindow();
            }
            if (ImagePagerActivity.this.myImagePagerPopupWindow.isShowing()) {
                return true;
            }
            ImagePagerActivity.this.showAlbumPopupWindow(v10);
            return true;
        }
    }

    class b implements ViewPager.OnPageChangeListener {
        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int arg0) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int arg0, float arg1, int arg2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int arg0) {
            ImagePagerActivity.this.indicator.setText(ImagePagerActivity.this.getString(R.string.viewpager_indicator, Integer.valueOf(arg0 + 1), Integer.valueOf(ImagePagerActivity.this.mPager.getAdapter().getCount())));
        }
    }

    class c implements PopupWindow.OnDismissListener {
        c() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            WindowManager.LayoutParams attributes = ImagePagerActivity.this.getWindow().getAttributes();
            attributes.alpha = 1.0f;
            ImagePagerActivity.this.getWindow().setAttributes(attributes);
        }
    }

    class d extends AsyncTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f35004a;

        d() {
        }

        /* JADX WARN: Code duplicated, block: B:19:0x0031  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r6v10 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v4, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v7, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r6v9 */
        private Bitmap a(String str) throws Throwable {
            Throwable th;
            HttpURLConnection httpURLConnectionB;
            Bitmap bitmapDecodeStream = null;
            try {
                try {
                    httpURLConnectionB = b(str);
                    try {
                        bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnectionB.getInputStream());
                        str = httpURLConnectionB;
                    } catch (Exception e10) {
                        e = e10;
                        ImagePagerActivity imagePagerActivity = ImagePagerActivity.this;
                        imagePagerActivity.showToast(imagePagerActivity.getString(R.string.net_connect_failed));
                        e.printStackTrace();
                        str = httpURLConnectionB;
                        if (httpURLConnectionB != null) {
                        }
                        return bitmapDecodeStream;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (str != 0) {
                        str.disconnect();
                    }
                    throw th;
                }
            } catch (Exception e11) {
                e = e11;
                httpURLConnectionB = null;
            } catch (Throwable th3) {
                th = th3;
                str = 0;
                if (str != 0) {
                    str.disconnect();
                }
                throw th;
            }
            str.disconnect();
            return bitmapDecodeStream;
        }

        private void d(Bitmap bitmap, String s10) throws Throwable {
            try {
                String str = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES) + "/wufan91/" + ("IMG_" + System.currentTimeMillis() + s10.substring(s10.lastIndexOf(o0.f49827a), s10.length()));
                File file = new File(str);
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                if (bitmap == null) {
                    ImagePagerActivity.this.showToast("保存失败");
                    return;
                }
                c2.n(bitmap, str);
                c(str, file.getName());
                ImagePagerActivity.this.showToast("保存成功");
            } catch (Exception e10) {
                ImagePagerActivity.this.showToast("保存失败");
                e10.printStackTrace();
            }
        }

        public HttpURLConnection b(String path) throws Exception {
            HttpURLConnection httpURLConnection;
            try {
                httpURLConnection = (HttpURLConnection) new URL(path).openConnection();
                try {
                    httpURLConnection.setConnectTimeout(5000);
                    httpURLConnection.setRequestMethod("GET");
                    if (httpURLConnection.getResponseCode() == 200) {
                        return httpURLConnection;
                    }
                    return null;
                } catch (Exception unused) {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                }
            } catch (Exception unused2) {
                httpURLConnection = null;
            }
        }

        void c(String filePath, String name) {
            MediaScannerConnection.scanFile(MApplication.f3182z, new String[]{new File(filePath).getParentFile().getAbsolutePath()}, new String[]{"image/*"}, null);
        }

        @Override // android.os.AsyncTask
        protected Object doInBackground(Object[] params) throws Throwable {
            String str = (String) params[0];
            this.f35004a = str;
            d(a(str), this.f35004a);
            return null;
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f35006b;

        e(final String val$msg) {
            this.f35006b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            a3.b(ImagePagerActivity.this).d(this.f35006b);
        }
    }

    private class f extends FragmentStatePagerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String[] f35008a;

        public f(FragmentManager fm2, String[] fileList) {
            super(fm2);
            this.f35008a = fileList;
        }

        public String b(int position) {
            if (position < 0) {
                return "";
            }
            String[] strArr = this.f35008a;
            return position < strArr.length ? strArr[position] : "";
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            String[] strArr = this.f35008a;
            if (strArr == null) {
                return 0;
            }
            return strArr.length;
        }

        @Override // androidx.fragment.app.FragmentStatePagerAdapter
        public Fragment getItem(int position) {
            com.join.android.app.component.photoviewer.a aVarR = com.join.android.app.component.photoviewer.a.R(this.f35008a[position]);
            aVarR.T(ImagePagerActivity.this.mOnLongClickListener);
            return aVarR;
        }
    }

    class g extends PopupWindow {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f35010a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f35011b;

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                ImagePagerActivity.this.getSaveImageTask().execute(((f) ImagePagerActivity.this.mPager.getAdapter()).b(ImagePagerActivity.this.mPager.getCurrentItem()));
                g.this.dismiss();
            }
        }

        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                g.this.dismiss();
            }
        }

        class c implements View.OnTouchListener {
            c() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v10, MotionEvent event) {
                if (event.getAction() != 4) {
                    return false;
                }
                g.this.dismiss();
                return true;
            }
        }

        public g(Context context, View parent, int width, int height) {
            super(parent, width, height, true);
            this.f35010a = context;
            this.f35011b = parent;
            b();
            a();
        }

        private void a() {
            View viewFindViewById = this.f35011b.findViewById(R.id.saveImage);
            View viewFindViewById2 = this.f35011b.findViewById(R.id.cancel);
            viewFindViewById.setOnClickListener(new a());
            viewFindViewById2.setOnClickListener(new b());
        }

        private void b() {
            setBackgroundDrawable(new BitmapDrawable());
            setTouchable(true);
            setOutsideTouchable(true);
            setTouchInterceptor(new c());
        }

        @Override // android.widget.PopupWindow
        public int getHeight() {
            return this.f35011b.getMeasuredHeight();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AsyncTask getSaveImageTask() {
        return new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initPopupWindow() {
        g gVar = new g(this, LayoutInflater.from(this).inflate(R.layout.image_detail_pager_popupwindow, (ViewGroup) null), -1, -2);
        this.myImagePagerPopupWindow = gVar;
        gVar.setOnDismissListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlbumPopupWindow(View view) {
        View viewFindViewById = findViewById(R.id.bottomLayout);
        if (this.myImagePagerPopupWindow == null) {
            initPopupWindow();
        }
        this.myImagePagerPopupWindow.setAnimationStyle(R.style.animation_image_pager_popup);
        int i10 = -this.myImagePagerPopupWindow.getHeight();
        if (i10 == 0) {
            i10 = (int) (viewFindViewById.getResources().getDisplayMetrics().density * (-92.0f));
        }
        this.myImagePagerPopupWindow.showAsDropDown(viewFindViewById, 0, i10);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.alpha = 0.3f;
        getWindow().setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showToast(final String msg) {
        runOnUiThread(new e(msg));
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.image_detail_pager);
        this.pagerPosition = getIntent().getIntExtra("image_index", 0);
        String[] stringArrayExtra = getIntent().getStringArrayExtra("image_urls");
        this.mPager = (MultiTouchViewPager) findViewById(R.id.pager);
        this.mPager.setAdapter(new f(getSupportFragmentManager(), stringArrayExtra));
        this.indicator = (TextView) findViewById(R.id.indicator);
        this.indicator.setText(getString(R.string.viewpager_indicator, 1, Integer.valueOf(this.mPager.getAdapter().getCount())));
        this.mPager.setOnPageChangeListener(new b());
        if (savedInstanceState != null) {
            this.pagerPosition = savedInstanceState.getInt(STATE_POSITION);
        }
        this.mPager.setCurrentItem(this.pagerPosition);
        initPopupWindow();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        g gVar = this.myImagePagerPopupWindow;
        if (gVar != null && gVar.isShowing()) {
            this.myImagePagerPopupWindow.dismiss();
        }
        super.onDestroy();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle outState) {
        outState.putInt(STATE_POSITION, this.mPager.getCurrentItem());
        super.onSaveInstanceState(outState);
    }
}
