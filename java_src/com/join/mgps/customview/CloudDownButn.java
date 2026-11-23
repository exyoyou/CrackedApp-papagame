package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class CloudDownButn extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    TextView f64533b;

    public class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f64534b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f64535c = 2;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final int f64536d = 3;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f64537e = 4;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f64538f = 5;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final int f64539g = 6;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final int f64540h = 7;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final int f64541i = 8;

        public a() {
        }
    }

    public CloudDownButn(Context context) {
        super(context);
        a(context);
    }

    private void a(Context context) {
        this.f64533b = (TextView) LayoutInflater.from(context).inflate(getLayoutId(), this).findViewById(R.id.downView);
    }

    protected int getLayoutId() {
        return R.layout.cloud_down_butn;
    }

    public void setStatu(int statu) {
        if (statu == 0) {
            this.f64533b.setText("启动");
        }
        switch (statu) {
            case 2:
                this.f64533b.setText("上传中");
                break;
            case 3:
                this.f64533b.setText("下载中");
                break;
            case 4:
                this.f64533b.setText("备份");
                break;
            case 5:
                this.f64533b.setText("已备份");
                break;
            case 6:
                this.f64533b.setText("下载");
                break;
            case 7:
                this.f64533b.setText("备份中");
                break;
        }
    }

    public void setTextColor(int color) {
        this.f64533b.setTextColor(color);
    }

    public CloudDownButn(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        a(context);
    }

    public CloudDownButn(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        a(context);
    }
}
