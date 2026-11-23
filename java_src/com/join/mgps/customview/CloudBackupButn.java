package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class CloudBackupButn extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    TextView f64524b;

    public class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f64525b = 1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f64526c = 2;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final int f64527d = 3;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f64528e = 4;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f64529f = 5;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final int f64530g = 6;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final int f64531h = 7;

        public a() {
        }
    }

    public CloudBackupButn(Context context) {
        super(context);
        a(context);
    }

    private void a(Context context) {
        this.f64524b = (TextView) LayoutInflater.from(context).inflate(R.layout.cloud_down_butn, this).findViewById(R.id.downView);
    }

    public void setStatu(int statu) {
        switch (statu) {
            case 1:
                this.f64524b.setText("启动");
                break;
            case 2:
                this.f64524b.setText("上传中");
                break;
            case 3:
                this.f64524b.setText("下载中");
                break;
            case 4:
                this.f64524b.setText("备份");
                break;
            case 5:
                this.f64524b.setText("已备份");
                break;
            case 6:
                this.f64524b.setText("下载");
                break;
            case 7:
                this.f64524b.setText("备份中");
                break;
        }
    }

    public CloudBackupButn(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        a(context);
    }

    public CloudBackupButn(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        a(context);
    }
}
