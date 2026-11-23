package com.join.android.app.common.dialog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.viewpager.widget.ViewPager;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.extention.MobclickAgentKt;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.o3;
import com.join.mgps.Util.s3;
import com.join.mgps.Util.z;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.adapter.h0;
import com.join.mgps.customview.NoScrollViewPager;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.event.r;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes5.dex */
public class j extends DialogFragment implements View.OnClickListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Button f34496c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f34497d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f34498e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private NoScrollViewPager f34499f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Map<String, CollectionBeanSub> f34500g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private h0 f34501h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List<DownloadTask> f34502i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f34504k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f34505l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f34506m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    long f34507n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private DownloadTask f34509p;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f34503j = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SuppressLint({"HandlerLeak"})
    private Handler f34508o = new c();

    class a implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: com.join.android.app.common.dialog.j$a$a, reason: collision with other inner class name */
        class RunnableC0635a implements Runnable {
            RunnableC0635a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                j.this.i0();
            }
        }

        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
            j.this.f34506m = i10;
            if (i10 == 2) {
                new Handler().postDelayed(new RunnableC0635a(), 300L);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i10, float v10, int i11) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f34512b;

        b(final int val$num) {
            this.f34512b = val$num;
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.f34499f.setCurrentItem(this.f34512b + 1);
            j.this.f34497d.setText((this.f34512b + 2) + net.lingala.zip4j.util.e.F0 + j.this.f34500g.size());
        }
    }

    class c extends Handler {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            j.this.dismissAllowingStateLoss();
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int currentItem = j.this.f34499f.getCurrentItem();
            Context activity = j.this.getActivity();
            if (activity == null) {
                activity = j.this.getContext();
            }
            switch (msg.what) {
                case 0:
                    j.this.f34496c.setText("确定");
                    j.this.f34496c.setEnabled(true);
                    j.this.f34498e.setEnabled(true);
                    if (activity != null) {
                        Toast.makeText(activity, "游戏检测完成！", 0).show();
                    }
                    new Handler().postDelayed(new Runnable() { // from class: com.join.android.app.common.dialog.k
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f34518b.b();
                        }
                    }, 500L);
                    break;
                case 1:
                    j.this.h0();
                    break;
                case 2:
                    j.this.f34496c.setText("确定");
                    j.this.f34496c.setEnabled(true);
                    j.this.f34498e.setEnabled(true);
                    if (activity != null) {
                        Toast.makeText(activity, "游戏已存在！", 0).show();
                    }
                    if (currentItem + 1 < j.this.f34500g.size()) {
                        j.this.h0();
                    } else {
                        Message message = new Message();
                        message.what = 0;
                        j.this.f34508o.sendMessage(message);
                    }
                    break;
                case 3:
                    j.this.f34496c.setText("确定");
                    j.this.f34496c.setEnabled(true);
                    j.this.f34498e.setEnabled(true);
                    if (activity != null) {
                        Toast.makeText(activity, "游戏已存在，但是未完成！", 0).show();
                    }
                    if (currentItem + 1 < j.this.f34500g.size()) {
                        j.this.h0();
                    } else {
                        Message message2 = new Message();
                        message2.what = 0;
                        j.this.f34508o.sendMessage(message2);
                    }
                    break;
                case 4:
                    j.this.f34496c.setText("解压中");
                    break;
                case 5:
                    if (currentItem + 1 < j.this.f34500g.size()) {
                        if (activity != null) {
                            Toast.makeText(activity, "文件复制出错！", 0).show();
                        }
                        j.this.h0();
                    }
                    break;
                case 6:
                    j.this.f34496c.setText("正在初始化");
                    j.this.f34496c.setEnabled(false);
                    j.this.f34498e.setEnabled(false);
                    break;
                case 7:
                    j.this.f34496c.setText("确定");
                    j.this.f34496c.setEnabled(true);
                    j.this.f34498e.setEnabled(true);
                    if (activity != null) {
                        Toast.makeText(activity, "文件初始化失败，请重试！", 0).show();
                    }
                    break;
                case 8:
                    j.this.f34496c.setText("确定");
                    j.this.f34496c.setEnabled(true);
                    j.this.f34498e.setEnabled(true);
                    break;
                case 9:
                    j.this.f34496c.setText("确定");
                    j.this.f34496c.setEnabled(true);
                    j.this.f34498e.setEnabled(true);
                    if (activity != null) {
                        Toast.makeText(activity, "解压失败，请重试！", 0).show();
                    }
                    break;
            }
            super.handleMessage(msg);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Boolean f34515b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Boolean f34516c;

        d() {
            Boolean bool = Boolean.FALSE;
            this.f34515b = bool;
            this.f34516c = bool;
        }

        /* JADX WARN: Code duplicated, block: B:105:0x01f1 A[Catch: IOException -> 0x024f, TRY_ENTER, TryCatch #19 {IOException -> 0x024f, blocks: (B:105:0x01f1, B:107:0x01f6, B:109:0x01fb, B:111:0x0200, B:116:0x021e, B:118:0x0223, B:120:0x0228, B:122:0x022d, B:127:0x024b, B:131:0x0253, B:133:0x0258, B:135:0x025d, B:92:0x01bc, B:94:0x01c1, B:96:0x01c6, B:98:0x01cb), top: B:161:0x000e }] */
        /* JADX WARN: Code duplicated, block: B:107:0x01f6 A[Catch: IOException -> 0x024f, TryCatch #19 {IOException -> 0x024f, blocks: (B:105:0x01f1, B:107:0x01f6, B:109:0x01fb, B:111:0x0200, B:116:0x021e, B:118:0x0223, B:120:0x0228, B:122:0x022d, B:127:0x024b, B:131:0x0253, B:133:0x0258, B:135:0x025d, B:92:0x01bc, B:94:0x01c1, B:96:0x01c6, B:98:0x01cb), top: B:161:0x000e }] */
        /* JADX WARN: Code duplicated, block: B:109:0x01fb A[Catch: IOException -> 0x024f, TryCatch #19 {IOException -> 0x024f, blocks: (B:105:0x01f1, B:107:0x01f6, B:109:0x01fb, B:111:0x0200, B:116:0x021e, B:118:0x0223, B:120:0x0228, B:122:0x022d, B:127:0x024b, B:131:0x0253, B:133:0x0258, B:135:0x025d, B:92:0x01bc, B:94:0x01c1, B:96:0x01c6, B:98:0x01cb), top: B:161:0x000e }] */
        /* JADX WARN: Code duplicated, block: B:111:0x0200 A[Catch: IOException -> 0x024f, TRY_LEAVE, TryCatch #19 {IOException -> 0x024f, blocks: (B:105:0x01f1, B:107:0x01f6, B:109:0x01fb, B:111:0x0200, B:116:0x021e, B:118:0x0223, B:120:0x0228, B:122:0x022d, B:127:0x024b, B:131:0x0253, B:133:0x0258, B:135:0x025d, B:92:0x01bc, B:94:0x01c1, B:96:0x01c6, B:98:0x01cb), top: B:161:0x000e }] */
        /* JADX WARN: Code duplicated, block: B:116:0x021e A[Catch: IOException -> 0x024f, TRY_ENTER, TryCatch #19 {IOException -> 0x024f, blocks: (B:105:0x01f1, B:107:0x01f6, B:109:0x01fb, B:111:0x0200, B:116:0x021e, B:118:0x0223, B:120:0x0228, B:122:0x022d, B:127:0x024b, B:131:0x0253, B:133:0x0258, B:135:0x025d, B:92:0x01bc, B:94:0x01c1, B:96:0x01c6, B:98:0x01cb), top: B:161:0x000e }] */
        /* JADX WARN: Code duplicated, block: B:118:0x0223 A[Catch: IOException -> 0x024f, TryCatch #19 {IOException -> 0x024f, blocks: (B:105:0x01f1, B:107:0x01f6, B:109:0x01fb, B:111:0x0200, B:116:0x021e, B:118:0x0223, B:120:0x0228, B:122:0x022d, B:127:0x024b, B:131:0x0253, B:133:0x0258, B:135:0x025d, B:92:0x01bc, B:94:0x01c1, B:96:0x01c6, B:98:0x01cb), top: B:161:0x000e }] */
        /* JADX WARN: Code duplicated, block: B:120:0x0228 A[Catch: IOException -> 0x024f, TryCatch #19 {IOException -> 0x024f, blocks: (B:105:0x01f1, B:107:0x01f6, B:109:0x01fb, B:111:0x0200, B:116:0x021e, B:118:0x0223, B:120:0x0228, B:122:0x022d, B:127:0x024b, B:131:0x0253, B:133:0x0258, B:135:0x025d, B:92:0x01bc, B:94:0x01c1, B:96:0x01c6, B:98:0x01cb), top: B:161:0x000e }] */
        /* JADX WARN: Code duplicated, block: B:122:0x022d A[Catch: IOException -> 0x024f, TRY_LEAVE, TryCatch #19 {IOException -> 0x024f, blocks: (B:105:0x01f1, B:107:0x01f6, B:109:0x01fb, B:111:0x0200, B:116:0x021e, B:118:0x0223, B:120:0x0228, B:122:0x022d, B:127:0x024b, B:131:0x0253, B:133:0x0258, B:135:0x025d, B:92:0x01bc, B:94:0x01c1, B:96:0x01c6, B:98:0x01cb), top: B:161:0x000e }] */
        /* JADX WARN: Code duplicated, block: B:127:0x024b A[Catch: IOException -> 0x024f, TRY_ENTER, TryCatch #19 {IOException -> 0x024f, blocks: (B:105:0x01f1, B:107:0x01f6, B:109:0x01fb, B:111:0x0200, B:116:0x021e, B:118:0x0223, B:120:0x0228, B:122:0x022d, B:127:0x024b, B:131:0x0253, B:133:0x0258, B:135:0x025d, B:92:0x01bc, B:94:0x01c1, B:96:0x01c6, B:98:0x01cb), top: B:161:0x000e }] */
        /* JADX WARN: Code duplicated, block: B:131:0x0253 A[Catch: IOException -> 0x024f, TryCatch #19 {IOException -> 0x024f, blocks: (B:105:0x01f1, B:107:0x01f6, B:109:0x01fb, B:111:0x0200, B:116:0x021e, B:118:0x0223, B:120:0x0228, B:122:0x022d, B:127:0x024b, B:131:0x0253, B:133:0x0258, B:135:0x025d, B:92:0x01bc, B:94:0x01c1, B:96:0x01c6, B:98:0x01cb), top: B:161:0x000e }] */
        /* JADX WARN: Code duplicated, block: B:133:0x0258 A[Catch: IOException -> 0x024f, TryCatch #19 {IOException -> 0x024f, blocks: (B:105:0x01f1, B:107:0x01f6, B:109:0x01fb, B:111:0x0200, B:116:0x021e, B:118:0x0223, B:120:0x0228, B:122:0x022d, B:127:0x024b, B:131:0x0253, B:133:0x0258, B:135:0x025d, B:92:0x01bc, B:94:0x01c1, B:96:0x01c6, B:98:0x01cb), top: B:161:0x000e }] */
        /* JADX WARN: Code duplicated, block: B:135:0x025d A[Catch: IOException -> 0x024f, TRY_LEAVE, TryCatch #19 {IOException -> 0x024f, blocks: (B:105:0x01f1, B:107:0x01f6, B:109:0x01fb, B:111:0x0200, B:116:0x021e, B:118:0x0223, B:120:0x0228, B:122:0x022d, B:127:0x024b, B:131:0x0253, B:133:0x0258, B:135:0x025d, B:92:0x01bc, B:94:0x01c1, B:96:0x01c6, B:98:0x01cb), top: B:161:0x000e }] */
        /* JADX WARN: Code duplicated, block: B:146:0x0271 A[Catch: IOException -> 0x026d, TryCatch #5 {IOException -> 0x026d, blocks: (B:142:0x0269, B:146:0x0271, B:148:0x0276, B:150:0x027b), top: B:159:0x0269 }] */
        /* JADX WARN: Code duplicated, block: B:148:0x0276 A[Catch: IOException -> 0x026d, TryCatch #5 {IOException -> 0x026d, blocks: (B:142:0x0269, B:146:0x0271, B:148:0x0276, B:150:0x027b), top: B:159:0x0269 }] */
        /* JADX WARN: Code duplicated, block: B:150:0x027b A[Catch: IOException -> 0x026d, TRY_LEAVE, TryCatch #5 {IOException -> 0x026d, blocks: (B:142:0x0269, B:146:0x0271, B:148:0x0276, B:150:0x027b), top: B:159:0x0269 }] */
        /* JADX WARN: Code duplicated, block: B:159:0x0269 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:166:0x0102 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:173:0x0138 A[EDGE_INSN: B:173:0x0138->B:54:0x0138 BREAK  A[LOOP:0: B:47:0x00dc->B:53:0x012c], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:175:0x012c A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:180:? A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:41:0x00c0 A[Catch: all -> 0x004c, Exception -> 0x0053, IOException -> 0x0058, ClientProtocolException -> 0x005d, TRY_ENTER, TRY_LEAVE, TryCatch #12 {ClientProtocolException -> 0x005d, IOException -> 0x0058, Exception -> 0x0053, all -> 0x004c, blocks: (B:31:0x0097, B:33:0x009d, B:41:0x00c0), top: B:172:0x0097 }] */
        /* JADX WARN: Code duplicated, block: B:49:0x00e3 A[Catch: all -> 0x015c, Exception -> 0x0164, IOException -> 0x016a, ClientProtocolException -> 0x0170, TRY_LEAVE, TryCatch #14 {ClientProtocolException -> 0x0170, IOException -> 0x016a, Exception -> 0x0164, all -> 0x015c, blocks: (B:46:0x00d7, B:47:0x00dc, B:49:0x00e3), top: B:168:0x00d7 }] */
        /* JADX WARN: Code duplicated, block: B:56:0x013e A[Catch: all -> 0x0143, Exception -> 0x0147, IOException -> 0x014a, ClientProtocolException -> 0x014d, TryCatch #16 {ClientProtocolException -> 0x014d, IOException -> 0x014a, Exception -> 0x0147, all -> 0x0143, blocks: (B:52:0x0102, B:53:0x012c, B:56:0x013e, B:64:0x0153), top: B:166:0x0102 }] */
        /* JADX WARN: Code duplicated, block: B:62:0x0150  */
        /* JADX WARN: Code duplicated, block: B:64:0x0153 A[Catch: all -> 0x0143, Exception -> 0x0147, IOException -> 0x014a, ClientProtocolException -> 0x014d, TRY_LEAVE, TryCatch #16 {ClientProtocolException -> 0x014d, IOException -> 0x014a, Exception -> 0x0147, all -> 0x0143, blocks: (B:52:0x0102, B:53:0x012c, B:56:0x013e, B:64:0x0153), top: B:166:0x0102 }] */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v15 */
        /* JADX WARN: Type inference failed for: r0v16, types: [java.io.BufferedInputStream] */
        /* JADX WARN: Type inference failed for: r0v28 */
        /* JADX WARN: Type inference failed for: r12v17, types: [java.lang.StringBuilder] */
        /* JADX WARN: Type inference failed for: r21v10 */
        /* JADX WARN: Type inference failed for: r21v11 */
        /* JADX WARN: Type inference failed for: r21v12 */
        /* JADX WARN: Type inference failed for: r21v13 */
        /* JADX WARN: Type inference failed for: r21v14 */
        /* JADX WARN: Type inference failed for: r21v9 */
        /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r3v1 */
        /* JADX WARN: Type inference failed for: r3v10 */
        /* JADX WARN: Type inference failed for: r3v11, types: [java.io.BufferedInputStream] */
        /* JADX WARN: Type inference failed for: r3v12 */
        /* JADX WARN: Type inference failed for: r3v13 */
        /* JADX WARN: Type inference failed for: r3v14 */
        /* JADX WARN: Type inference failed for: r3v15 */
        /* JADX WARN: Type inference failed for: r3v2 */
        /* JADX WARN: Type inference failed for: r3v21 */
        /* JADX WARN: Type inference failed for: r3v22 */
        /* JADX WARN: Type inference failed for: r3v23 */
        /* JADX WARN: Type inference failed for: r3v24 */
        /* JADX WARN: Type inference failed for: r3v28 */
        /* JADX WARN: Type inference failed for: r3v29 */
        /* JADX WARN: Type inference failed for: r3v3 */
        /* JADX WARN: Type inference failed for: r3v30 */
        /* JADX WARN: Type inference failed for: r3v32, types: [java.io.BufferedInputStream] */
        /* JADX WARN: Type inference failed for: r3v33 */
        /* JADX WARN: Type inference failed for: r3v34 */
        /* JADX WARN: Type inference failed for: r3v35 */
        /* JADX WARN: Type inference failed for: r3v36 */
        /* JADX WARN: Type inference failed for: r3v37 */
        /* JADX WARN: Type inference failed for: r3v38 */
        /* JADX WARN: Type inference failed for: r3v39 */
        /* JADX WARN: Type inference failed for: r3v4 */
        /* JADX WARN: Type inference failed for: r3v40 */
        /* JADX WARN: Type inference failed for: r3v41, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r3v45 */
        /* JADX WARN: Type inference failed for: r3v46 */
        /* JADX WARN: Type inference failed for: r3v47 */
        /* JADX WARN: Type inference failed for: r3v48 */
        /* JADX WARN: Type inference failed for: r3v49 */
        /* JADX WARN: Type inference failed for: r3v5 */
        /* JADX WARN: Type inference failed for: r3v50 */
        /* JADX WARN: Type inference failed for: r3v51 */
        /* JADX WARN: Type inference failed for: r3v52 */
        /* JADX WARN: Type inference failed for: r3v53 */
        /* JADX WARN: Type inference failed for: r3v54 */
        /* JADX WARN: Type inference failed for: r3v55 */
        /* JADX WARN: Type inference failed for: r3v56 */
        /* JADX WARN: Type inference failed for: r3v57 */
        /* JADX WARN: Type inference failed for: r3v58 */
        /* JADX WARN: Type inference failed for: r3v59 */
        /* JADX WARN: Type inference failed for: r3v6 */
        /* JADX WARN: Type inference failed for: r3v60 */
        /* JADX WARN: Type inference failed for: r3v61 */
        /* JADX WARN: Type inference failed for: r3v62 */
        /* JADX WARN: Type inference failed for: r3v63 */
        /* JADX WARN: Type inference failed for: r3v64 */
        /* JADX WARN: Type inference failed for: r3v65 */
        /* JADX WARN: Type inference failed for: r3v66 */
        /* JADX WARN: Type inference failed for: r3v67 */
        /* JADX WARN: Type inference failed for: r3v68 */
        /* JADX WARN: Type inference failed for: r3v69 */
        /* JADX WARN: Type inference failed for: r3v7, types: [java.io.BufferedInputStream] */
        /* JADX WARN: Type inference failed for: r3v8, types: [java.io.BufferedInputStream] */
        /* JADX WARN: Type inference failed for: r3v9, types: [java.io.BufferedInputStream] */
        private void a(DownloadTask downloadTask, int i10, String str) throws Throwable {
            Throwable th;
            ?? r10;
            InputStream inputStream;
            FileOutputStream fileOutputStream;
            InputStream inputStream2;
            ?? r11;
            ?? r12;
            ?? r13;
            ?? r14;
            BufferedOutputStream bufferedOutputStream;
            ?? r15;
            ?? r16;
            ?? r17;
            ?? r18;
            byte[] bArr;
            long j10;
            long j11;
            int i11;
            long j12;
            int i12;
            if (downloadTask == null) {
                return;
            }
            ?? bufferedInputStream = z.f50168g;
            BufferedOutputStream bufferedOutputStream2 = null;
            try {
                try {
                    try {
                        String url = downloadTask.getUrl();
                        if (i10 == 0) {
                            url = downloadTask.getDown_url_remote();
                        } else if (i10 == 1) {
                            url = downloadTask.getCfg_down_url();
                        } else if (i10 == 2) {
                            url = downloadTask.getSource_down_url();
                        }
                        HttpEntity entity = new DefaultHttpClient().execute(new HttpGet(url)).getEntity();
                        long contentLength = entity.getContentLength();
                        InputStream content = entity.getContent();
                        if (content != null) {
                            String str2 = "";
                            if (i10 == 1) {
                                str2 = "_cfg";
                            } else if (i10 == 2) {
                                str2 = "_res";
                            }
                            try {
                                File file = new File(bufferedInputStream + downloadTask.getRomType() + "/roms/" + downloadTask.getCrc_link_type_val() + str2);
                                File parentFile = file.getParentFile();
                                if (parentFile.exists()) {
                                    if (file.exists()) {
                                        UtilsMy.delete(file);
                                    }
                                    file.createNewFile();
                                    bufferedInputStream = new BufferedInputStream(content);
                                    fileOutputStream = new FileOutputStream(file);
                                    bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                                    bArr = new byte[1024];
                                    j10 = 0;
                                    j11 = 0;
                                    bufferedInputStream = bufferedInputStream;
                                    while (true) {
                                        i11 = bufferedInputStream.read(bArr);
                                        if (i11 != -1) {
                                            break;
                                            break;
                                        }
                                        bufferedOutputStream.write(bArr, 0, i11);
                                        j12 = contentLength;
                                        j10 += (long) i11;
                                        ?? r21 = bufferedInputStream;
                                        inputStream = content;
                                        byte[] bArr2 = bArr;
                                        i12 = (int) ((j10 / j12) * 100.0d);
                                        if (j10 - j11 >= 10240) {
                                            Bundle bundle = new Bundle();
                                            bundle.putLong("totalSize", j12);
                                            bundle.putLong("completeSize", j10);
                                            bundle.putInt("percent", i12);
                                            j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(13, bundle));
                                            j11 = j10;
                                        }
                                        bufferedOutputStream.flush();
                                        content = inputStream;
                                        bArr = bArr2;
                                        contentLength = j12;
                                        bufferedInputStream = r21;
                                        bufferedOutputStream2 = bufferedOutputStream;
                                        bufferedInputStream = r18;
                                        j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, "下载更新文件失败"));
                                        if (bufferedOutputStream2 != null) {
                                            bufferedOutputStream2.close();
                                        }
                                        if (fileOutputStream != null) {
                                            fileOutputStream.close();
                                        }
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                        if (bufferedInputStream != 0) {
                                            bufferedInputStream.close();
                                        }
                                    }
                                    ?? r22 = bufferedInputStream;
                                    inputStream2 = content;
                                    if (i10 == 1) {
                                        this.f34515b = Boolean.TRUE;
                                    } else if (i10 == 2) {
                                        this.f34516c = Boolean.TRUE;
                                    }
                                    r11 = r22;
                                    bufferedOutputStream2 = bufferedOutputStream;
                                } else {
                                    try {
                                        if (!parentFile.mkdirs()) {
                                            j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, "下载更新文件失败"));
                                            try {
                                                content.close();
                                                return;
                                            } catch (IOException e10) {
                                                e10.printStackTrace();
                                                return;
                                            }
                                        }
                                        if (file.exists()) {
                                            UtilsMy.delete(file);
                                        }
                                        file.createNewFile();
                                        bufferedInputStream = new BufferedInputStream(content);
                                        try {
                                            fileOutputStream = new FileOutputStream(file);
                                            try {
                                                bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                                                try {
                                                    bArr = new byte[1024];
                                                    j10 = 0;
                                                    j11 = 0;
                                                    bufferedInputStream = bufferedInputStream;
                                                    while (true) {
                                                        i11 = bufferedInputStream.read(bArr);
                                                        if (i11 != -1) {
                                                            break;
                                                        }
                                                        bufferedOutputStream.write(bArr, 0, i11);
                                                        j12 = contentLength;
                                                        j10 += (long) i11;
                                                        ?? r23 = bufferedInputStream;
                                                        inputStream = content;
                                                        byte[] bArr3 = bArr;
                                                        i12 = (int) ((j10 / j12) * 100.0d);
                                                        if (j10 - j11 >= 10240) {
                                                            try {
                                                                Bundle bundle2 = new Bundle();
                                                                bundle2.putLong("totalSize", j12);
                                                                bundle2.putLong("completeSize", j10);
                                                                bundle2.putInt("percent", i12);
                                                                j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(13, bundle2));
                                                                j11 = j10;
                                                            } catch (ClientProtocolException unused) {
                                                                r18 = r23;
                                                            } catch (IOException unused2) {
                                                                r17 = r23;
                                                                bufferedOutputStream2 = bufferedOutputStream;
                                                                bufferedInputStream = r17;
                                                                j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, "下载更新文件失败"));
                                                                if (bufferedOutputStream2 != null) {
                                                                    bufferedOutputStream2.close();
                                                                }
                                                                if (fileOutputStream != null) {
                                                                    fileOutputStream.close();
                                                                }
                                                                if (inputStream != null) {
                                                                    inputStream.close();
                                                                }
                                                                if (bufferedInputStream != 0) {
                                                                    bufferedInputStream.close();
                                                                }
                                                                return;
                                                            } catch (Exception unused3) {
                                                                r16 = r23;
                                                                bufferedOutputStream2 = bufferedOutputStream;
                                                                bufferedInputStream = r16;
                                                                j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, "下载更新文件失败"));
                                                                if (bufferedOutputStream2 != null) {
                                                                    bufferedOutputStream2.close();
                                                                }
                                                                if (fileOutputStream != null) {
                                                                    fileOutputStream.close();
                                                                }
                                                                if (inputStream != null) {
                                                                    inputStream.close();
                                                                }
                                                                if (bufferedInputStream != 0) {
                                                                    bufferedInputStream.close();
                                                                }
                                                                return;
                                                            } catch (Throwable th2) {
                                                                th = th2;
                                                                r15 = r23;
                                                                th = th;
                                                                bufferedOutputStream2 = bufferedOutputStream;
                                                                r10 = r15;
                                                                if (bufferedOutputStream2 != null) {
                                                                    try {
                                                                        bufferedOutputStream2.close();
                                                                    } catch (IOException e11) {
                                                                        e11.printStackTrace();
                                                                        throw th;
                                                                    }
                                                                }
                                                                if (fileOutputStream != null) {
                                                                    fileOutputStream.close();
                                                                }
                                                                if (inputStream != null) {
                                                                    inputStream.close();
                                                                }
                                                                if (r10 == 0) {
                                                                    throw th;
                                                                }
                                                                r10.close();
                                                                throw th;
                                                            }
                                                        }
                                                        bufferedOutputStream.flush();
                                                        content = inputStream;
                                                        bArr = bArr3;
                                                        contentLength = j12;
                                                        bufferedInputStream = r23;
                                                        bufferedOutputStream2 = bufferedOutputStream;
                                                        bufferedInputStream = r18;
                                                        j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, "下载更新文件失败"));
                                                        if (bufferedOutputStream2 != null) {
                                                            bufferedOutputStream2.close();
                                                        }
                                                        if (fileOutputStream != null) {
                                                            fileOutputStream.close();
                                                        }
                                                        if (inputStream != null) {
                                                            inputStream.close();
                                                        }
                                                        if (bufferedInputStream != 0) {
                                                            bufferedInputStream.close();
                                                        }
                                                    }
                                                    ?? r24 = bufferedInputStream;
                                                    inputStream2 = content;
                                                    if (i10 == 1) {
                                                        this.f34515b = Boolean.TRUE;
                                                    } else if (i10 == 2) {
                                                        this.f34516c = Boolean.TRUE;
                                                    }
                                                    r11 = r24;
                                                    bufferedOutputStream2 = bufferedOutputStream;
                                                } catch (ClientProtocolException unused4) {
                                                    inputStream = content;
                                                    r18 = bufferedInputStream;
                                                } catch (IOException unused5) {
                                                    inputStream = content;
                                                    r17 = bufferedInputStream;
                                                } catch (Exception unused6) {
                                                    inputStream = content;
                                                    r16 = bufferedInputStream;
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    inputStream = content;
                                                    r15 = bufferedInputStream;
                                                }
                                            } catch (ClientProtocolException unused7) {
                                                r14 = bufferedInputStream;
                                                inputStream = content;
                                                bufferedInputStream = r14;
                                            } catch (IOException unused8) {
                                                r13 = bufferedInputStream;
                                                inputStream = content;
                                                bufferedInputStream = r13;
                                                j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, "下载更新文件失败"));
                                                if (bufferedOutputStream2 != null) {
                                                    bufferedOutputStream2.close();
                                                }
                                                if (fileOutputStream != null) {
                                                    fileOutputStream.close();
                                                }
                                                if (inputStream != null) {
                                                    inputStream.close();
                                                }
                                                if (bufferedInputStream != 0) {
                                                    bufferedInputStream.close();
                                                }
                                                return;
                                            } catch (Exception unused9) {
                                                r12 = bufferedInputStream;
                                                inputStream = content;
                                                bufferedInputStream = r12;
                                                j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, "下载更新文件失败"));
                                                if (bufferedOutputStream2 != null) {
                                                    bufferedOutputStream2.close();
                                                }
                                                if (fileOutputStream != null) {
                                                    fileOutputStream.close();
                                                }
                                                if (inputStream != null) {
                                                    inputStream.close();
                                                }
                                                if (bufferedInputStream != 0) {
                                                    bufferedInputStream.close();
                                                }
                                                return;
                                            } catch (Throwable th4) {
                                                th = th4;
                                                inputStream = content;
                                                th = th;
                                                r10 = bufferedInputStream;
                                                if (bufferedOutputStream2 != null) {
                                                    bufferedOutputStream2.close();
                                                }
                                                if (fileOutputStream != null) {
                                                    fileOutputStream.close();
                                                }
                                                if (inputStream != null) {
                                                    inputStream.close();
                                                }
                                                if (r10 == 0) {
                                                    throw th;
                                                }
                                                r10.close();
                                                throw th;
                                            }
                                        } catch (ClientProtocolException unused10) {
                                            inputStream = content;
                                            fileOutputStream = null;
                                            bufferedInputStream = bufferedInputStream;
                                        } catch (IOException unused11) {
                                            inputStream = content;
                                            fileOutputStream = null;
                                            bufferedInputStream = bufferedInputStream;
                                        } catch (Exception unused12) {
                                            inputStream = content;
                                            fileOutputStream = null;
                                            bufferedInputStream = bufferedInputStream;
                                        } catch (Throwable th5) {
                                            inputStream = content;
                                            th = th5;
                                            fileOutputStream = null;
                                            r10 = bufferedInputStream;
                                        }
                                    } catch (ClientProtocolException unused13) {
                                        r14 = 0;
                                        fileOutputStream = null;
                                        inputStream = content;
                                        bufferedInputStream = r14;
                                        j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, "下载更新文件失败"));
                                        if (bufferedOutputStream2 != null) {
                                            bufferedOutputStream2.close();
                                        }
                                        if (fileOutputStream != null) {
                                            fileOutputStream.close();
                                        }
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                        if (bufferedInputStream != 0) {
                                            bufferedInputStream.close();
                                        }
                                        return;
                                    } catch (IOException unused14) {
                                        r13 = 0;
                                        fileOutputStream = null;
                                        inputStream = content;
                                        bufferedInputStream = r13;
                                        j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, "下载更新文件失败"));
                                        if (bufferedOutputStream2 != null) {
                                            bufferedOutputStream2.close();
                                        }
                                        if (fileOutputStream != null) {
                                            fileOutputStream.close();
                                        }
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                        if (bufferedInputStream != 0) {
                                            bufferedInputStream.close();
                                        }
                                        return;
                                    } catch (Exception unused15) {
                                        r12 = 0;
                                        fileOutputStream = null;
                                        inputStream = content;
                                        bufferedInputStream = r12;
                                        j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, "下载更新文件失败"));
                                        if (bufferedOutputStream2 != null) {
                                            bufferedOutputStream2.close();
                                        }
                                        if (fileOutputStream != null) {
                                            fileOutputStream.close();
                                        }
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                        if (bufferedInputStream != 0) {
                                            bufferedInputStream.close();
                                        }
                                        return;
                                    } catch (Throwable th6) {
                                        th = th6;
                                        r10 = 0;
                                        fileOutputStream = null;
                                        inputStream = content;
                                        if (bufferedOutputStream2 != null) {
                                            bufferedOutputStream2.close();
                                        }
                                        if (fileOutputStream != null) {
                                            fileOutputStream.close();
                                        }
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                        if (r10 == 0) {
                                            throw th;
                                        }
                                        r10.close();
                                        throw th;
                                    }
                                }
                            } catch (ClientProtocolException unused16) {
                                inputStream = content;
                                bufferedInputStream = 0;
                                fileOutputStream = null;
                            } catch (IOException unused17) {
                                inputStream = content;
                                bufferedInputStream = 0;
                                fileOutputStream = null;
                            } catch (Exception unused18) {
                                inputStream = content;
                                bufferedInputStream = 0;
                                fileOutputStream = null;
                            } catch (Throwable th7) {
                                inputStream = content;
                                th = th7;
                                r10 = 0;
                                fileOutputStream = null;
                            }
                            return;
                        }
                        inputStream2 = content;
                        r11 = 0;
                        fileOutputStream = null;
                        if (bufferedOutputStream2 != null) {
                            bufferedOutputStream2.close();
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                        if (r11 != 0) {
                            r11.close();
                        }
                    } catch (Throwable th8) {
                        th = th8;
                    }
                } catch (ClientProtocolException unused19) {
                    bufferedInputStream = 0;
                    inputStream = null;
                    fileOutputStream = null;
                } catch (IOException unused20) {
                    bufferedInputStream = 0;
                    inputStream = null;
                    fileOutputStream = null;
                } catch (Exception unused21) {
                    bufferedInputStream = 0;
                    inputStream = null;
                    fileOutputStream = null;
                } catch (Throwable th9) {
                    th = th9;
                    r10 = 0;
                    inputStream = null;
                    fileOutputStream = null;
                }
            } catch (IOException e12) {
                e12.printStackTrace();
            }
        }

        /* JADX WARN: Code duplicated, block: B:123:0x0344 A[Catch: IOException -> 0x03aa, TRY_ENTER, TryCatch #23 {IOException -> 0x03aa, blocks: (B:136:0x0375, B:138:0x037a, B:140:0x037f, B:142:0x0384, B:149:0x03a6, B:153:0x03ae, B:155:0x03b3, B:157:0x03b8, B:123:0x0344, B:125:0x0349, B:127:0x034e, B:129:0x0353, B:106:0x0305, B:108:0x030a, B:110:0x030f, B:112:0x0314), top: B:192:0x0015 }] */
        /* JADX WARN: Code duplicated, block: B:125:0x0349 A[Catch: IOException -> 0x03aa, TryCatch #23 {IOException -> 0x03aa, blocks: (B:136:0x0375, B:138:0x037a, B:140:0x037f, B:142:0x0384, B:149:0x03a6, B:153:0x03ae, B:155:0x03b3, B:157:0x03b8, B:123:0x0344, B:125:0x0349, B:127:0x034e, B:129:0x0353, B:106:0x0305, B:108:0x030a, B:110:0x030f, B:112:0x0314), top: B:192:0x0015 }] */
        /* JADX WARN: Code duplicated, block: B:127:0x034e A[Catch: IOException -> 0x03aa, TryCatch #23 {IOException -> 0x03aa, blocks: (B:136:0x0375, B:138:0x037a, B:140:0x037f, B:142:0x0384, B:149:0x03a6, B:153:0x03ae, B:155:0x03b3, B:157:0x03b8, B:123:0x0344, B:125:0x0349, B:127:0x034e, B:129:0x0353, B:106:0x0305, B:108:0x030a, B:110:0x030f, B:112:0x0314), top: B:192:0x0015 }] */
        /* JADX WARN: Code duplicated, block: B:129:0x0353 A[Catch: IOException -> 0x03aa, TRY_LEAVE, TryCatch #23 {IOException -> 0x03aa, blocks: (B:136:0x0375, B:138:0x037a, B:140:0x037f, B:142:0x0384, B:149:0x03a6, B:153:0x03ae, B:155:0x03b3, B:157:0x03b8, B:123:0x0344, B:125:0x0349, B:127:0x034e, B:129:0x0353, B:106:0x0305, B:108:0x030a, B:110:0x030f, B:112:0x0314), top: B:192:0x0015 }] */
        /* JADX WARN: Code duplicated, block: B:136:0x0375 A[Catch: IOException -> 0x03aa, TRY_ENTER, TryCatch #23 {IOException -> 0x03aa, blocks: (B:136:0x0375, B:138:0x037a, B:140:0x037f, B:142:0x0384, B:149:0x03a6, B:153:0x03ae, B:155:0x03b3, B:157:0x03b8, B:123:0x0344, B:125:0x0349, B:127:0x034e, B:129:0x0353, B:106:0x0305, B:108:0x030a, B:110:0x030f, B:112:0x0314), top: B:192:0x0015 }] */
        /* JADX WARN: Code duplicated, block: B:138:0x037a A[Catch: IOException -> 0x03aa, TryCatch #23 {IOException -> 0x03aa, blocks: (B:136:0x0375, B:138:0x037a, B:140:0x037f, B:142:0x0384, B:149:0x03a6, B:153:0x03ae, B:155:0x03b3, B:157:0x03b8, B:123:0x0344, B:125:0x0349, B:127:0x034e, B:129:0x0353, B:106:0x0305, B:108:0x030a, B:110:0x030f, B:112:0x0314), top: B:192:0x0015 }] */
        /* JADX WARN: Code duplicated, block: B:140:0x037f A[Catch: IOException -> 0x03aa, TryCatch #23 {IOException -> 0x03aa, blocks: (B:136:0x0375, B:138:0x037a, B:140:0x037f, B:142:0x0384, B:149:0x03a6, B:153:0x03ae, B:155:0x03b3, B:157:0x03b8, B:123:0x0344, B:125:0x0349, B:127:0x034e, B:129:0x0353, B:106:0x0305, B:108:0x030a, B:110:0x030f, B:112:0x0314), top: B:192:0x0015 }] */
        /* JADX WARN: Code duplicated, block: B:142:0x0384 A[Catch: IOException -> 0x03aa, TRY_LEAVE, TryCatch #23 {IOException -> 0x03aa, blocks: (B:136:0x0375, B:138:0x037a, B:140:0x037f, B:142:0x0384, B:149:0x03a6, B:153:0x03ae, B:155:0x03b3, B:157:0x03b8, B:123:0x0344, B:125:0x0349, B:127:0x034e, B:129:0x0353, B:106:0x0305, B:108:0x030a, B:110:0x030f, B:112:0x0314), top: B:192:0x0015 }] */
        /* JADX WARN: Code duplicated, block: B:149:0x03a6 A[Catch: IOException -> 0x03aa, TRY_ENTER, TryCatch #23 {IOException -> 0x03aa, blocks: (B:136:0x0375, B:138:0x037a, B:140:0x037f, B:142:0x0384, B:149:0x03a6, B:153:0x03ae, B:155:0x03b3, B:157:0x03b8, B:123:0x0344, B:125:0x0349, B:127:0x034e, B:129:0x0353, B:106:0x0305, B:108:0x030a, B:110:0x030f, B:112:0x0314), top: B:192:0x0015 }] */
        /* JADX WARN: Code duplicated, block: B:153:0x03ae A[Catch: IOException -> 0x03aa, TryCatch #23 {IOException -> 0x03aa, blocks: (B:136:0x0375, B:138:0x037a, B:140:0x037f, B:142:0x0384, B:149:0x03a6, B:153:0x03ae, B:155:0x03b3, B:157:0x03b8, B:123:0x0344, B:125:0x0349, B:127:0x034e, B:129:0x0353, B:106:0x0305, B:108:0x030a, B:110:0x030f, B:112:0x0314), top: B:192:0x0015 }] */
        /* JADX WARN: Code duplicated, block: B:155:0x03b3 A[Catch: IOException -> 0x03aa, TryCatch #23 {IOException -> 0x03aa, blocks: (B:136:0x0375, B:138:0x037a, B:140:0x037f, B:142:0x0384, B:149:0x03a6, B:153:0x03ae, B:155:0x03b3, B:157:0x03b8, B:123:0x0344, B:125:0x0349, B:127:0x034e, B:129:0x0353, B:106:0x0305, B:108:0x030a, B:110:0x030f, B:112:0x0314), top: B:192:0x0015 }] */
        /* JADX WARN: Code duplicated, block: B:157:0x03b8 A[Catch: IOException -> 0x03aa, TRY_LEAVE, TryCatch #23 {IOException -> 0x03aa, blocks: (B:136:0x0375, B:138:0x037a, B:140:0x037f, B:142:0x0384, B:149:0x03a6, B:153:0x03ae, B:155:0x03b3, B:157:0x03b8, B:123:0x0344, B:125:0x0349, B:127:0x034e, B:129:0x0353, B:106:0x0305, B:108:0x030a, B:110:0x030f, B:112:0x0314), top: B:192:0x0015 }] */
        /* JADX WARN: Code duplicated, block: B:168:0x03cc A[Catch: IOException -> 0x03c8, TryCatch #8 {IOException -> 0x03c8, blocks: (B:164:0x03c4, B:168:0x03cc, B:170:0x03d1, B:172:0x03d6), top: B:181:0x03c4 }] */
        /* JADX WARN: Code duplicated, block: B:170:0x03d1 A[Catch: IOException -> 0x03c8, TryCatch #8 {IOException -> 0x03c8, blocks: (B:164:0x03c4, B:168:0x03cc, B:170:0x03d1, B:172:0x03d6), top: B:181:0x03c4 }] */
        /* JADX WARN: Code duplicated, block: B:172:0x03d6 A[Catch: IOException -> 0x03c8, TRY_LEAVE, TryCatch #8 {IOException -> 0x03c8, blocks: (B:164:0x03c4, B:168:0x03cc, B:170:0x03d1, B:172:0x03d6), top: B:181:0x03c4 }] */
        /* JADX WARN: Code duplicated, block: B:181:0x03c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:208:? A[SYNTHETIC] */
        private void b(DownloadTask task, int downloadType, String downpath) throws Throwable {
            Throwable th;
            BufferedOutputStream bufferedOutputStream;
            InputStream content;
            BufferedInputStream bufferedInputStream;
            FileOutputStream fileOutputStream;
            BufferedOutputStream bufferedOutputStream2;
            String str = "解压失败";
            String str2 = "下载更新文件失败";
            if (task == null) {
                return;
            }
            String str3 = z.f50168g;
            try {
                try {
                    try {
                        String url = task.getUrl();
                        if (downloadType == 0) {
                            url = task.getDown_url_remote();
                        } else if (downloadType == 1) {
                            url = task.getCfg_down_url();
                        } else if (downloadType == 2) {
                            url = task.getSource_down_url();
                        }
                        HttpEntity entity = new DefaultHttpClient().execute(new HttpGet(url)).getEntity();
                        long contentLength = entity.getContentLength();
                        content = entity.getContent();
                        if (content != null) {
                            try {
                                File file = new File(str3 + task.getRomType() + "/roms/" + task.getCrc_link_type_val());
                                File parentFile = file.getParentFile();
                                if (!parentFile.exists() && !parentFile.mkdirs()) {
                                    j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, "下载更新文件失败"));
                                    try {
                                        content.close();
                                        return;
                                    } catch (IOException e10) {
                                        e10.printStackTrace();
                                        return;
                                    }
                                }
                                if (file.exists()) {
                                    UtilsMy.delete(file);
                                }
                                file.createNewFile();
                                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(content);
                                try {
                                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                                    try {
                                        BufferedOutputStream bufferedOutputStream3 = new BufferedOutputStream(fileOutputStream2);
                                        try {
                                            byte[] bArr = new byte[1024];
                                            long j10 = 0;
                                            long j11 = 0;
                                            while (true) {
                                                int i10 = bufferedInputStream2.read(bArr);
                                                bufferedInputStream = bufferedInputStream2;
                                                fileOutputStream = fileOutputStream2;
                                                if (i10 == -1) {
                                                    break;
                                                }
                                                try {
                                                    try {
                                                        bufferedOutputStream3.write(bArr, 0, i10);
                                                        long j12 = j10 + ((long) i10);
                                                        byte[] bArr2 = bArr;
                                                        String str4 = str;
                                                        str2 = str2;
                                                        int i11 = (int) ((j12 / contentLength) * 100.0d);
                                                        if (j12 - j11 >= 10240) {
                                                            try {
                                                                Bundle bundle = new Bundle();
                                                                bundle.putLong("totalSize", contentLength);
                                                                bundle.putLong("completeSize", j12);
                                                                bundle.putInt("percent", i11);
                                                                j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(13, bundle));
                                                                j11 = j12;
                                                            } catch (ClientProtocolException unused) {
                                                                bufferedOutputStream = bufferedOutputStream3;
                                                                str2 = str2;
                                                                j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, str2));
                                                                if (bufferedOutputStream != null) {
                                                                    bufferedOutputStream.close();
                                                                }
                                                                if (fileOutputStream != null) {
                                                                    fileOutputStream.close();
                                                                }
                                                                if (content != null) {
                                                                    content.close();
                                                                }
                                                                if (bufferedInputStream != null) {
                                                                    bufferedInputStream.close();
                                                                }
                                                                return;
                                                            } catch (IOException unused2) {
                                                                bufferedOutputStream = bufferedOutputStream3;
                                                                str2 = str2;
                                                                j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, str2));
                                                                if (bufferedOutputStream != null) {
                                                                    bufferedOutputStream.close();
                                                                }
                                                                if (fileOutputStream != null) {
                                                                    fileOutputStream.close();
                                                                }
                                                                if (content != null) {
                                                                    content.close();
                                                                }
                                                                if (bufferedInputStream != null) {
                                                                    bufferedInputStream.close();
                                                                }
                                                                return;
                                                            } catch (Exception unused3) {
                                                                bufferedOutputStream = bufferedOutputStream3;
                                                                j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, str2));
                                                                if (bufferedOutputStream != null) {
                                                                    bufferedOutputStream.close();
                                                                }
                                                                if (fileOutputStream != null) {
                                                                    fileOutputStream.close();
                                                                }
                                                                if (content != null) {
                                                                    content.close();
                                                                }
                                                                if (bufferedInputStream != null) {
                                                                    bufferedInputStream.close();
                                                                }
                                                                return;
                                                            }
                                                        }
                                                        bufferedOutputStream3.flush();
                                                        bArr = bArr2;
                                                        str = str4;
                                                        str2 = str2;
                                                        j10 = j12;
                                                        bufferedInputStream2 = bufferedInputStream;
                                                        fileOutputStream2 = fileOutputStream;
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        th = th;
                                                        bufferedOutputStream = bufferedOutputStream3;
                                                        if (bufferedOutputStream != null) {
                                                            try {
                                                                bufferedOutputStream.close();
                                                            } catch (IOException e11) {
                                                                e11.printStackTrace();
                                                                throw th;
                                                            }
                                                        }
                                                        if (fileOutputStream != null) {
                                                            fileOutputStream.close();
                                                        }
                                                        if (content != null) {
                                                            content.close();
                                                        }
                                                        if (bufferedInputStream == null) {
                                                            throw th;
                                                        }
                                                        bufferedInputStream.close();
                                                        throw th;
                                                    }
                                                } catch (ClientProtocolException unused4) {
                                                    str2 = str2;
                                                    bufferedOutputStream = bufferedOutputStream3;
                                                    j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, str2));
                                                    if (bufferedOutputStream != null) {
                                                        bufferedOutputStream.close();
                                                    }
                                                    if (fileOutputStream != null) {
                                                        fileOutputStream.close();
                                                    }
                                                    if (content != null) {
                                                        content.close();
                                                    }
                                                    if (bufferedInputStream != null) {
                                                        bufferedInputStream.close();
                                                    }
                                                    return;
                                                } catch (IOException unused5) {
                                                    str2 = str2;
                                                    bufferedOutputStream = bufferedOutputStream3;
                                                    j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, str2));
                                                    if (bufferedOutputStream != null) {
                                                        bufferedOutputStream.close();
                                                    }
                                                    if (fileOutputStream != null) {
                                                        fileOutputStream.close();
                                                    }
                                                    if (content != null) {
                                                        content.close();
                                                    }
                                                    if (bufferedInputStream != null) {
                                                        bufferedInputStream.close();
                                                    }
                                                    return;
                                                } catch (Exception unused6) {
                                                    str2 = str2;
                                                    bufferedOutputStream = bufferedOutputStream3;
                                                    j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, str2));
                                                    if (bufferedOutputStream != null) {
                                                        bufferedOutputStream.close();
                                                    }
                                                    if (fileOutputStream != null) {
                                                        fileOutputStream.close();
                                                    }
                                                    if (content != null) {
                                                        content.close();
                                                    }
                                                    if (bufferedInputStream != null) {
                                                        bufferedInputStream.close();
                                                    }
                                                    return;
                                                }
                                            }
                                            String str5 = str;
                                            str2 = str2;
                                            try {
                                                if (file.exists()) {
                                                    if (downloadType == 0) {
                                                        Bundle bundle2 = new Bundle();
                                                        bundle2.putInt("startOrEnd", 1);
                                                        bundle2.putString("message", "游戏资源解压中,请等待...");
                                                        j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(11, bundle2));
                                                        task.setGameZipPath(s3.e(file, file.getParent(), task.getPackageName()));
                                                        q5.f.M().m(task);
                                                    } else if (downloadType == 1) {
                                                        Bundle bundle3 = new Bundle();
                                                        bundle3.putInt("startOrEnd", 1);
                                                        bundle3.putString("message", "游戏资源解压中,请等待...");
                                                        j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(11, bundle3));
                                                        s3.e(file, file.getParent(), task.getPackageName());
                                                    } else if (downloadType == 2) {
                                                        Bundle bundle4 = new Bundle();
                                                        bundle4.putInt("startOrEnd", 1);
                                                        bundle4.putString("message", "游戏资源解压中,请等待...");
                                                        j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(11, bundle4));
                                                        task.setSource_down_path(s3.h(file, file.getParent()));
                                                    }
                                                    Bundle bundle5 = new Bundle();
                                                    bundle5.putInt("startOrEnd", 0);
                                                    bundle5.putString("message", "解压完成");
                                                    j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(11, bundle5));
                                                    if (downloadType == 1) {
                                                        this.f34515b = Boolean.TRUE;
                                                    } else if (downloadType == 2) {
                                                        this.f34516c = Boolean.TRUE;
                                                    }
                                                    j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(12, "更新完成"));
                                                    if (task.getGameZipPath() != null) {
                                                        try {
                                                            o3.E(".downloadTask", new File(task.getGameZipPath()).getParent(), JsonMapper.getInstance().toJson(task));
                                                        } catch (IOException e12) {
                                                            e12.printStackTrace();
                                                        }
                                                        o3.h(task.getGameZipPath(), task.getPackageName(), Integer.parseInt(task.getRomType()));
                                                    }
                                                }
                                            } catch (Exception e13) {
                                                e13.printStackTrace();
                                                Bundle bundle6 = new Bundle();
                                                bundle6.putInt("startOrEnd", 0);
                                                bundle6.putString("message", str5);
                                                j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(11, bundle6));
                                                j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, str5));
                                            }
                                            UtilsMy.delete(file);
                                            bufferedOutputStream2 = bufferedOutputStream3;
                                        } catch (ClientProtocolException unused7) {
                                            bufferedInputStream = bufferedInputStream2;
                                            fileOutputStream = fileOutputStream2;
                                        } catch (IOException unused8) {
                                            bufferedInputStream = bufferedInputStream2;
                                            fileOutputStream = fileOutputStream2;
                                        } catch (Exception unused9) {
                                            str2 = str2;
                                            bufferedInputStream = bufferedInputStream2;
                                            fileOutputStream = fileOutputStream2;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            bufferedInputStream = bufferedInputStream2;
                                            fileOutputStream = fileOutputStream2;
                                        }
                                    } catch (ClientProtocolException unused10) {
                                        bufferedInputStream = bufferedInputStream2;
                                        fileOutputStream = fileOutputStream2;
                                        str2 = "下载更新文件失败";
                                        bufferedOutputStream = null;
                                    } catch (IOException unused11) {
                                        bufferedInputStream = bufferedInputStream2;
                                        fileOutputStream = fileOutputStream2;
                                        str2 = "下载更新文件失败";
                                        bufferedOutputStream = null;
                                    } catch (Exception unused12) {
                                        str2 = "下载更新文件失败";
                                        bufferedInputStream = bufferedInputStream2;
                                        fileOutputStream = fileOutputStream2;
                                        bufferedOutputStream = null;
                                    } catch (Throwable th4) {
                                        bufferedInputStream = bufferedInputStream2;
                                        fileOutputStream = fileOutputStream2;
                                        th = th4;
                                        bufferedOutputStream = null;
                                    }
                                } catch (ClientProtocolException unused13) {
                                    bufferedInputStream = bufferedInputStream2;
                                    str2 = "下载更新文件失败";
                                    bufferedOutputStream = null;
                                    fileOutputStream = null;
                                    j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, str2));
                                    if (bufferedOutputStream != null) {
                                        bufferedOutputStream.close();
                                    }
                                    if (fileOutputStream != null) {
                                        fileOutputStream.close();
                                    }
                                    if (content != null) {
                                        content.close();
                                    }
                                    if (bufferedInputStream != null) {
                                        bufferedInputStream.close();
                                    }
                                    return;
                                } catch (IOException unused14) {
                                    bufferedInputStream = bufferedInputStream2;
                                    str2 = "下载更新文件失败";
                                    bufferedOutputStream = null;
                                    fileOutputStream = null;
                                    j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, str2));
                                    if (bufferedOutputStream != null) {
                                        bufferedOutputStream.close();
                                    }
                                    if (fileOutputStream != null) {
                                        fileOutputStream.close();
                                    }
                                    if (content != null) {
                                        content.close();
                                    }
                                    if (bufferedInputStream != null) {
                                        bufferedInputStream.close();
                                    }
                                    return;
                                } catch (Exception unused15) {
                                    str2 = "下载更新文件失败";
                                    bufferedInputStream = bufferedInputStream2;
                                    bufferedOutputStream = null;
                                    fileOutputStream = null;
                                    j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, str2));
                                    if (bufferedOutputStream != null) {
                                        bufferedOutputStream.close();
                                    }
                                    if (fileOutputStream != null) {
                                        fileOutputStream.close();
                                    }
                                    if (content != null) {
                                        content.close();
                                    }
                                    if (bufferedInputStream != null) {
                                        bufferedInputStream.close();
                                    }
                                    return;
                                } catch (Throwable th5) {
                                    bufferedInputStream = bufferedInputStream2;
                                    th = th5;
                                    bufferedOutputStream = null;
                                    fileOutputStream = null;
                                    if (bufferedOutputStream != null) {
                                        bufferedOutputStream.close();
                                    }
                                    if (fileOutputStream != null) {
                                        fileOutputStream.close();
                                    }
                                    if (content != null) {
                                        content.close();
                                    }
                                    if (bufferedInputStream == null) {
                                        throw th;
                                    }
                                    bufferedInputStream.close();
                                    throw th;
                                }
                            } catch (ClientProtocolException unused16) {
                                bufferedOutputStream = null;
                                bufferedInputStream = null;
                                fileOutputStream = null;
                                j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, str2));
                                if (bufferedOutputStream != null) {
                                    bufferedOutputStream.close();
                                }
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                                if (content != null) {
                                    content.close();
                                }
                                if (bufferedInputStream != null) {
                                    bufferedInputStream.close();
                                }
                                return;
                            } catch (IOException unused17) {
                                bufferedOutputStream = null;
                                bufferedInputStream = null;
                                fileOutputStream = null;
                                j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, str2));
                                if (bufferedOutputStream != null) {
                                    bufferedOutputStream.close();
                                }
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                                if (content != null) {
                                    content.close();
                                }
                                if (bufferedInputStream != null) {
                                    bufferedInputStream.close();
                                }
                                return;
                            } catch (Exception unused18) {
                                bufferedOutputStream = null;
                                bufferedInputStream = null;
                                fileOutputStream = null;
                                j.this.f34508o.sendMessage(j.this.f34508o.obtainMessage(14, str2));
                                if (bufferedOutputStream != null) {
                                    bufferedOutputStream.close();
                                }
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                                if (content != null) {
                                    content.close();
                                }
                                if (bufferedInputStream != null) {
                                    bufferedInputStream.close();
                                }
                                return;
                            } catch (Throwable th6) {
                                th = th6;
                                bufferedOutputStream = null;
                                bufferedInputStream = null;
                                fileOutputStream = null;
                                if (bufferedOutputStream != null) {
                                    bufferedOutputStream.close();
                                }
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                                if (content != null) {
                                    content.close();
                                }
                                if (bufferedInputStream == null) {
                                    throw th;
                                }
                                bufferedInputStream.close();
                                throw th;
                            }
                        } else {
                            bufferedOutputStream2 = null;
                            bufferedInputStream = null;
                            fileOutputStream = null;
                        }
                        if (bufferedOutputStream2 != null) {
                            bufferedOutputStream2.close();
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        if (content != null) {
                            content.close();
                        }
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                    } catch (Throwable th7) {
                        th = th7;
                    }
                } catch (ClientProtocolException unused19) {
                    bufferedOutputStream = null;
                    content = null;
                } catch (IOException unused20) {
                    bufferedOutputStream = null;
                    content = null;
                } catch (Exception unused21) {
                    bufferedOutputStream = null;
                    content = null;
                } catch (Throwable th8) {
                    th = th8;
                    bufferedOutputStream = null;
                    content = null;
                }
            } catch (IOException e14) {
                e14.printStackTrace();
            }
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            if (j.this.f34501h != null) {
                int currentItem = j.this.f34499f.getCurrentItem();
                String str = j.this.f34501h.c().get(currentItem).f62226a;
                j.this.f34509p = j.this.f34500g.get(str).buildDownloadTask();
                com.join.mgps.activity.d dVar = (com.join.mgps.activity.d) j.this.f34501h.getItem(currentItem);
                if (j.this.f34509p == null || dVar == null || dVar.f56901g.getDownloadTask() == null || dVar.f56901g.getDownloadTask().getCrc_link_type_val().equals(j.this.f34509p.getCrc_link_type_val())) {
                    boolean z10 = true;
                    if (j.this.f34509p != null && (!TextUtils.isEmpty(j.this.f34509p.getCfg_down_url()) || !TextUtils.isEmpty(j.this.f34509p.getSource_down_path()))) {
                        j.this.f34508o.sendEmptyMessage(6);
                        if (!TextUtils.isEmpty(j.this.f34509p.getCfg_down_url())) {
                            String str2 = j.this.f34505l + net.lingala.zip4j.util.e.F0 + str;
                            try {
                                str2 = j.this.f34505l + net.lingala.zip4j.util.e.F0 + j.this.f34509p.getCfg_down_url().substring(j.this.f34509p.getCfg_down_url().lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                            a(j.this.f34509p, 1, str2);
                            if (!this.f34515b.booleanValue()) {
                                j.this.f34508o.sendEmptyMessage(7);
                                return;
                            }
                        }
                        if (!TextUtils.isEmpty(j.this.f34509p.getSource_down_url())) {
                            String str3 = j.this.f34505l + net.lingala.zip4j.util.e.F0 + str;
                            try {
                                str3 = j.this.f34505l + net.lingala.zip4j.util.e.F0 + j.this.f34509p.getSource_down_url().substring(j.this.f34509p.getSource_down_url().lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                            a(j.this.f34509p, 2, str3);
                            if (!this.f34515b.booleanValue()) {
                                j.this.f34508o.sendEmptyMessage(7);
                                return;
                            }
                        }
                    }
                    if (!UtilsMy.I0(j.this.f34504k + net.lingala.zip4j.util.e.F0 + str, j.this.f34505l + net.lingala.zip4j.util.e.F0 + str)) {
                        Message message = new Message();
                        message.what = 5;
                        j.this.f34508o.sendMessage(message);
                        return;
                    }
                    UtilsMy.delete(new File(j.this.f34504k + net.lingala.zip4j.util.e.F0 + str));
                    if (j.this.f34502i == null) {
                        z10 = false;
                        break;
                    }
                    int i10 = 0;
                    while (true) {
                        if (i10 >= j.this.f34502i.size()) {
                            z10 = false;
                            break;
                        }
                        if (j.this.f34509p != null && j.this.f34502i.get(i10) != null && ((DownloadTask) j.this.f34502i.get(i10)).getCrc_link_type_val().equals(j.this.f34509p.getCrc_link_type_val())) {
                            if (((DownloadTask) j.this.f34502i.get(i10)).getStatus() != 5) {
                                Message message2 = new Message();
                                message2.what = 3;
                                j.this.f34508o.sendMessage(message2);
                                break;
                            } else {
                                Message message3 = new Message();
                                message3.what = 2;
                                j.this.f34508o.sendMessage(message3);
                                break;
                            }
                        }
                        i10++;
                    }
                    if (z10) {
                        return;
                    }
                    Message message4 = new Message();
                    message4.what = 4;
                    j.this.f34508o.sendMessage(message4);
                    j.this.f34509p.setPath(j.this.f34505l + net.lingala.zip4j.util.e.F0 + str);
                    j.this.f34509p.setLastTime(System.currentTimeMillis());
                    String str4 = z.f50168g + j.this.f34509p.getRomType() + "/roms/" + j.this.f34509p.getCrc_link_type_val();
                    try {
                        File file = new File(j.this.f34505l + net.lingala.zip4j.util.e.F0 + str);
                        if (!file.exists()) {
                            j.this.f34508o.sendEmptyMessage(9);
                            return;
                        }
                        String strE = s3.e(file, file.getParent(), j.this.f34509p.getPackageName());
                        j.this.f34509p.setGameZipPath(strE);
                        j.this.f34509p.setPath(strE);
                        if (this.f34515b.booleanValue()) {
                            File file2 = new File(str4 + "_cfg");
                            if (!file2.exists()) {
                                j.this.f34508o.sendEmptyMessage(9);
                                return;
                            }
                            s3.e(file2, file2.getParent(), j.this.f34509p.getPackageName());
                        }
                        if (this.f34516c.booleanValue()) {
                            File file3 = new File(str4 + "_res");
                            if (!file3.exists()) {
                                j.this.f34508o.sendEmptyMessage(9);
                                return;
                            } else {
                                j.this.f34509p.setSource_down_path(s3.h(file3, file3.getParent()));
                            }
                        }
                        File file4 = new File(str4 + "_cfg");
                        if (file4.exists()) {
                            UtilsMy.delete(file4);
                        }
                        File file5 = new File(str4 + "_res");
                        if (file5.exists()) {
                            UtilsMy.delete(file5);
                        }
                        File file6 = new File(j.this.f34505l + net.lingala.zip4j.util.e.F0 + str);
                        if (file6.exists()) {
                            UtilsMy.delete(file6);
                        }
                        j.this.f34508o.sendEmptyMessage(8);
                        j.this.f34509p.setStatus(5);
                        if (j.this.f34509p != null && j.this.f34509p.getGameZipPath() != null) {
                            try {
                                o3.E(".downloadTask", new File(j.this.f34509p.getGameZipPath()).getParent(), JsonMapper.getInstance().toJson(j.this.f34509p));
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                        if (q5.f.M().G(j.this.f34509p.getCrc_link_type_val()) == null) {
                            q5.f.M().k(j.this.f34509p);
                        }
                        org.greenrobot.eventbus.c.f().q(new r(j.this.f34509p, 5));
                    } catch (Exception e13) {
                        e13.printStackTrace();
                        j.this.f34508o.sendEmptyMessage(9);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d0(com.join.mgps.activity.d dVar, int i10) {
        if (dVar.f56901g.getDownloadTask() == null || !dVar.f56901g.getDownloadTask().getCrc_link_type_val().equals(this.f34509p.getCrc_link_type_val())) {
            return;
        }
        this.f34499f.setCurrentItem(i10 + 1);
        this.f34497d.setText((i10 + 2) + net.lingala.zip4j.util.e.F0 + this.f34500g.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e0(DownloadTask downloadTask) {
        q5.f.M().n(downloadTask.getCrc_link_type_val());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f0(DownloadTask downloadTask) {
        UtilsMy.l4(getActivity(), downloadTask, 0);
    }

    public static j g0(Map<String, CollectionBeanSub> map) {
        Bundle bundle = new Bundle();
        j jVar = new j();
        jVar.setArguments(bundle);
        jVar.f34500g = map;
        return jVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h0() {
        final int currentItem = this.f34499f.getCurrentItem();
        final com.join.mgps.activity.d dVar = (com.join.mgps.activity.d) this.f34501h.getItem(currentItem);
        new Handler().postDelayed(new Runnable() { // from class: com.join.android.app.common.dialog.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f34490b.d0(dVar, currentItem);
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0() {
        this.f34496c.setText("确定");
        this.f34496c.setEnabled(true);
        this.f34498e.setEnabled(true);
    }

    private void initViewPager() {
        if (this.f34500g != null) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, CollectionBeanSub> entry : this.f34500g.entrySet()) {
                com.join.mgps.activity.e eVar = new com.join.mgps.activity.e();
                eVar.f56900f = entry.getKey();
                eVar.f56901g = entry.getValue();
                arrayList.add(new h0.a(entry.getKey(), eVar));
            }
            this.f34497d.setText("1/" + this.f34500g.size());
            h0 h0Var = new h0(getChildFragmentManager(), arrayList);
            this.f34501h = h0Var;
            this.f34499f.setAdapter(h0Var);
            this.f34499f.setOffscreenPageLimit(2);
            this.f34499f.setNoScroll(true);
            this.f34499f.addOnPageChangeListener(new a());
        }
    }

    private void j0() {
        try {
            if ((getActivity() instanceof MGMainActivity) || (getActivity() instanceof MGMainActivity_)) {
                ((MGMainActivity) getActivity()).setTabSelect(2);
            } else {
                Intent intent = new Intent();
                intent.setClass(getActivity(), MGMainActivity_.class);
                intent.setFlags(603979776);
                Bundle bundle = new Bundle();
                bundle.putInt("MainPos", 2);
                bundle.putBoolean("ismygame", true);
                intent.putExtras(bundle);
                startActivity(intent);
            }
        } catch (Exception e10) {
            e10.getMessage();
        }
    }

    public void c0(boolean isFull) {
        if (isFull) {
            WindowManager.LayoutParams attributes = getActivity().getWindow().getAttributes();
            attributes.flags |= 1024;
            getActivity().getWindow().setAttributes(attributes);
            getActivity().getWindow().addFlags(512);
            return;
        }
        WindowManager.LayoutParams attributes2 = getActivity().getWindow().getAttributes();
        attributes2.flags &= -1025;
        getActivity().getWindow().setAttributes(attributes2);
        getActivity().getWindow().clearFlags(512);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int currentItem = this.f34499f.getCurrentItem();
        int id2 = view.getId();
        if (id2 != R.id.localGameThreeBt) {
            if (id2 != R.id.localGameThreeNotTv) {
                return;
            }
            if (currentItem + 1 < this.f34500g.size()) {
                new Handler().postDelayed(new b(currentItem), 300L);
                return;
            }
            Message message = new Message();
            message.what = 0;
            this.f34508o.sendMessage(message);
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f34507n > 500 || this.f34506m != 1) {
            MobclickAgentKt.onEvent(getContext(), "onComfirmGame");
            this.f34507n = jCurrentTimeMillis;
            this.f34496c.setText("复制中");
            this.f34496c.setEnabled(false);
            this.f34498e.setEnabled(false);
            new Thread(new d()).start();
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        c0(getResources().getConfiguration().orientation == 2);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        z.e(getContext());
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        org.greenrobot.eventbus.c.f().v(this);
        this.f34502i = q5.f.M().d();
        this.f34504k = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath();
        this.f34505l = z.f50164c + "/wufan91/31/roms";
        File file = new File(this.f34505l);
        if (!file.exists()) {
            file.mkdirs();
        }
        getDialog().requestWindowFeature(1);
        View viewInflate = inflater.inflate(R.layout.dialog_localgame_three_view, container);
        this.f34496c = (Button) viewInflate.findViewById(R.id.localGameThreeBt);
        this.f34497d = (TextView) viewInflate.findViewById(R.id.localGameThreeNumTv);
        this.f34498e = (TextView) viewInflate.findViewById(R.id.localGameThreeNotTv);
        this.f34499f = (NoScrollViewPager) viewInflate.findViewById(R.id.localGameThreeViewPager);
        this.f34496c.setOnClickListener(this);
        this.f34498e.setOnClickListener(this);
        setCancelable(false);
        initViewPager();
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        Intent intent = new Intent();
        intent.setAction(p5.a.I);
        getActivity().sendBroadcast(intent);
        super.onDestroyView();
        org.greenrobot.eventbus.c.f().A(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(r downloadTaskEvent) {
        if (downloadTaskEvent != null) {
            try {
                if (downloadTaskEvent.a() == null) {
                    return;
                }
                final DownloadTask downloadTaskA = downloadTaskEvent.a();
                int currentItem = this.f34499f.getCurrentItem();
                if (downloadTaskA != null) {
                    if ((downloadTaskA.getStatus() == 13 || downloadTaskA.getStatus() == 5) && this.f34509p != null && downloadTaskA.getCrc_link_type_val().equals(this.f34509p.getCrc_link_type_val())) {
                        if (downloadTaskA.getStatus() == 13) {
                            if (getContext() != null) {
                                Toast.makeText(getContext(), "游戏解压失败！", 0).show();
                            }
                            new Thread(new Runnable() { // from class: com.join.android.app.common.dialog.h
                                @Override // java.lang.Runnable
                                public final void run() {
                                    j.e0(downloadTaskA);
                                }
                            }).start();
                        } else if (UtilsMy.U(getContext(), downloadTaskA) == null) {
                            this.f34503j = true;
                        } else {
                            if (currentItem + 1 >= this.f34500g.size()) {
                                this.f34503j = false;
                            }
                            new Handler().postDelayed(new Runnable() { // from class: com.join.android.app.common.dialog.i
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f34494b.f0(downloadTaskA);
                                }
                            }, 200L);
                        }
                        if (currentItem + 1 >= this.f34500g.size()) {
                            Message message = new Message();
                            message.what = 0;
                            this.f34508o.sendMessage(message);
                        } else {
                            Message message2 = new Message();
                            message2.what = 1;
                            this.f34508o.sendMessage(message2);
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }
}
