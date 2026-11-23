package com.join.mgps.recycler;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewStub;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class LoadingFooter extends RelativeLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected State f72291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f72292c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f72293d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f72294e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ProgressBar f72295f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f72296g;

    public enum State {
        Normal,
        TheEnd,
        Loading,
        NetWorkError
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f72297a;

        static {
            int[] iArr = new int[State.values().length];
            f72297a = iArr;
            try {
                iArr[State.Normal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f72297a[State.Loading.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f72297a[State.TheEnd.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f72297a[State.NetWorkError.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public LoadingFooter(Context context) {
        super(context);
        this.f72291b = State.Normal;
        a(context);
    }

    public void a(Context context) {
        View.inflate(context, R.layout.sample_common_list_footer, this);
        setOnClickListener(null);
        setState(State.Normal, true);
    }

    public State getState() {
        return this.f72291b;
    }

    public void setState(State status) {
        setState(status, true);
    }

    public void setState(State status, boolean showView) {
        if (this.f72291b == status) {
            return;
        }
        this.f72291b = status;
        int i10 = a.f72297a[status.ordinal()];
        if (i10 == 1) {
            setOnClickListener(null);
            View view = this.f72292c;
            if (view != null) {
                view.setVisibility(8);
            }
            View view2 = this.f72294e;
            if (view2 != null) {
                view2.setVisibility(8);
            }
            View view3 = this.f72293d;
            if (view3 == null) {
                this.f72293d = ((ViewStub) findViewById(R.id.normal_viewstub)).inflate();
                return;
            } else {
                view3.setVisibility(0);
                return;
            }
        }
        if (i10 != 2) {
            if (i10 != 3) {
                return;
            }
            setOnClickListener(null);
            View view4 = this.f72292c;
            if (view4 != null) {
                view4.setVisibility(8);
            }
            View view5 = this.f72293d;
            if (view5 != null) {
                view5.setVisibility(8);
            }
            View view6 = this.f72294e;
            if (view6 == null) {
                this.f72294e = ((ViewStub) findViewById(R.id.end_viewstub)).inflate();
            } else {
                view6.setVisibility(0);
            }
            this.f72294e.setVisibility(showView ? 0 : 8);
            return;
        }
        setOnClickListener(null);
        View view7 = this.f72294e;
        if (view7 != null) {
            view7.setVisibility(8);
        }
        View view8 = this.f72293d;
        if (view8 != null) {
            view8.setVisibility(8);
        }
        View view9 = this.f72292c;
        if (view9 == null) {
            View viewInflate = ((ViewStub) findViewById(R.id.loading_viewstub)).inflate();
            this.f72292c = viewInflate;
            this.f72295f = (ProgressBar) viewInflate.findViewById(R.id.loading_progress);
        } else {
            view9.setVisibility(0);
        }
        this.f72292c.setVisibility(showView ? 0 : 8);
        this.f72295f.setVisibility(0);
    }

    public LoadingFooter(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f72291b = State.Normal;
        a(context);
    }

    public LoadingFooter(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f72291b = State.Normal;
        a(context);
    }
}
