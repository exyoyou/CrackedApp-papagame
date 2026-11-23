package com.aggmoread.sdk.z.a.t;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.RotateDrawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;
import java.util.Formatter;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
public class a extends FrameLayout {
    private Handler A;
    private View.OnClickListener B;
    private View.OnClickListener C;
    private View.OnClickListener D;
    private View.OnClickListener E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected f f3942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f3943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3944c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3945d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3946e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3947f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private StringBuilder f3948g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Formatter f3949h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ProgressBar f3950i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f3951j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f3952k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private TextView f3953l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ImageButton f3954m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ImageButton f3955n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ImageButton f3956o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private LinearLayout f3957p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private LinearLayout f3958q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private FrameLayout f3959r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private LinearLayout f3960s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private RelativeLayout f3961t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ImageView f3962u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ImageView f3963v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected Context f3964w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private TextView f3965x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private h f3966y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private g f3967z;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.t.a$a, reason: collision with other inner class name */
    class C0100a implements Handler.Callback {
        C0100a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            f fVar;
            a aVar;
            int i10;
            switch (message.what) {
                case 1:
                    a.this.f();
                    return false;
                case 2:
                    int iN = a.this.n();
                    if (a.this.f3944c || (fVar = a.this.f3942a) == null || !fVar.a()) {
                        return false;
                    }
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 2;
                    a.this.A.sendMessageDelayed(messageObtain, 1000 - (iN % 1000));
                    return false;
                case 3:
                    a.this.o();
                    aVar = a.this;
                    i10 = 3;
                    break;
                case 4:
                case 6:
                case 8:
                    a.this.f();
                    a.this.h();
                    return false;
                case 5:
                    a.this.o();
                    aVar = a.this;
                    i10 = 5;
                    break;
                case 7:
                    aVar = a.this;
                    i10 = 7;
                    break;
                default:
                    return false;
            }
            aVar.c(i10);
            return false;
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a aVar = a.this;
            if (aVar.f3942a != null) {
                aVar.b();
                a.this.b(3000);
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a aVar = a.this;
            aVar.f3946e = !aVar.f3946e;
            a.this.v();
            a.this.t();
            a aVar2 = a.this;
            aVar2.f3942a.a(aVar2.f3946e);
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.f3946e) {
                a.this.f3946e = false;
                a.this.v();
                a.this.t();
                a.this.f3942a.a(false);
            }
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.h();
            a.this.i();
            a.this.f3942a.d();
            if (a.this.f3967z != null) {
                a.this.f3967z.a(1);
            }
        }
    }

    public interface f {
        void a(boolean z10);

        boolean a();

        void b();

        boolean c();

        void d();

        int e();

        int f();

        int g();
    }

    public interface g {
        void a(int i10);
    }

    public interface h {
        void a(float f10, int i10);
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    protected static final class i {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final i f3973b = new i("SHOW_NEVER", 0);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final i f3974c = new i("SHOW_ALWAYS", 1);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final i f3975d = new i("SHOW_VISIBLE_OR_GONE", 2);

        private i(String str, int i10) {
            super(str, i10);
        }
    }

    public a(Context context) {
        super(context);
        this.f3943b = true;
        this.f3945d = true;
        this.f3946e = false;
        this.f3947f = 3;
        i iVar = i.f3975d;
        this.A = new Handler(new C0100a());
        this.B = new b();
        this.C = new c();
        this.D = new d();
        this.E = new e();
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.f3942a.a()) {
            this.f3942a.b();
        } else {
            this.f3942a.d();
        }
        u();
    }

    private void k() {
        ImageButton imageButton = this.f3954m;
        if (imageButton != null) {
            imageButton.requestFocus();
            this.f3954m.setOnClickListener(this.B);
        }
        if (this.f3945d) {
            ImageButton imageButton2 = this.f3955n;
            if (imageButton2 != null) {
                a(imageButton2, 0);
                this.f3955n.setOnClickListener(this.C);
            }
        } else {
            a(this.f3955n, 8);
        }
        ImageView imageView = this.f3962u;
        if (imageView != null) {
            imageView.setOnClickListener(this.E);
        }
        ImageButton imageButton3 = this.f3956o;
        if (imageButton3 != null) {
            imageButton3.setOnClickListener(this.D);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int n() {
        f fVar = this.f3942a;
        if (fVar == null || this.f3944c) {
            return 0;
        }
        int iF = fVar.f();
        int iE = this.f3942a.e();
        if (this.f3950i != null) {
            if (iE > 0) {
                float f10 = iF / iE;
                h hVar = this.f3966y;
                if (hVar != null) {
                    hVar.a(f10, iF);
                }
                this.f3950i.setProgress((int) (f10 * 1000.0f));
            }
            this.f3950i.setSecondaryProgress(this.f3942a.g() * 10);
        }
        TextView textView = this.f3951j;
        if (textView != null) {
            textView.setText(d(iE));
        }
        TextView textView2 = this.f3952k;
        if (textView2 != null) {
            textView2.setText(d(iF));
        }
        return iF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        a(this.f3956o, this.f3946e ? 0 : 4);
    }

    private void u() {
        ImageButton imageButton;
        String str;
        f fVar = this.f3942a;
        if (fVar == null || !fVar.a()) {
            imageButton = this.f3954m;
            str = "iVBORw0KGgoAAAANSUhEUgAAADgAAAA4CAMAAACfWMssAAAAQlBMVEUAAAD///////////////////////////////////////////////////////////////////////////////////8IX9KGAAAAFXRSTlMAtPD8DgOeNOO+Vicd26l5PsqEYoeGu3ayAAAAlElEQVRIx+3VuxpFMBREYQkSDuduv/+r0k09q0CR6f9mybd1bW0Xr+Z5RbBE5AeBKY69Bghj+kAY/W9kMOK7QBj5j6AamVCNCIx+GwFUIwDVyIBqBKAamVDvyILaTGEsZ8ME47xZnGdln6OQB6DT5UIdSwOqigFVBcACToeqGFBVLKgqJlQVAMtw4m+uTmnt2trutx1vtyP8m6K/swAAAABJRU5ErkJggg==";
        } else {
            imageButton = this.f3954m;
            str = "iVBORw0KGgoAAAANSUhEUgAAADgAAAA4BAMAAABaqCYtAAAAGFBMVEUAAAD///////////////////////////8jfp1fAAAAB3RSTlMAHvq+4MgxaI51OgAAAElJREFUOMtjGAXUAMLq5UVhIEYqkGGIJmleXl5eAmK4AxnFaJLq5UAgwMDACKKL0CTLkSXLRyVHJUcl4ZJ4MxLeLIg/844CKgAA/gibZXJbivoAAAAASUVORK5CYII=";
        }
        com.aggmoread.sdk.z.a.m.j.a(imageButton, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        ImageButton imageButton;
        String str;
        if (this.f3946e) {
            imageButton = this.f3955n;
            str = "iVBORw0KGgoAAAANSUhEUgAAADgAAAA4BAMAAABaqCYtAAAALVBMVEUAAAD///////////////////////////////////////////////////////+hSKubAAAADnRSTlMAiHmWyg99QwOvY/5hsQj4B2EAAADWSURBVDjLYxgFVACMCsg8JgEUSblHyDy9hyga371TQNL47h1YK4KLpFUPoRTBj5RgYGicysAGV4nQ+ozV7xUDw7onAXkIjQitIu8eMzDYvXMEa0TX+g4i+Q6hEaEVJonQiABsCMkEDMkQhKQruhyrH0LySQCaJCfIIcBQkwPRE7BY+W47A0M1iBZAk+Q4KCgoWMDAwA6kpBoYBh4gO0imgZBXCAcC4eDDDHjCUUY4sjGTCd4ERnzS1AM5IxaUqK9CEjXO7IDQipmRQFoF8GVB/Jl3FFAOAMFHuuusc6BSAAAAAElFTkSuQmCC";
        } else {
            imageButton = this.f3955n;
            str = "iVBORw0KGgoAAAANSUhEUgAAADgAAAA4CAYAAACohjseAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NEUwNEE3ODVGODQyMTFFMzhCMTNBN0I3OUU0MDBEMDIiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NEUwNEE3ODZGODQyMTFFMzhCMTNBN0I3OUU0MDBEMDIiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo0RTA0QTc4M0Y4NDIxMUUzOEIxM0E3Qjc5RTQwMEQwMiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo0RTA0QTc4NEY4NDIxMUUzOEIxM0E3Qjc5RTQwMEQwMiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PkG6ngcAAAJnSURBVHja7Jg7SwNBEMdzRhsLFUJa/QQWNiJopSn8CjEaEbGNyTXGZ6Px0eTy8Av4+gA2FhKwsvCBliIoKPgFrI2es7AHS7jN7e7tJiHMwJ+TdXbdnzM3s3uW67qRbraeSJcbAiIgAiIgAiIgAnax9SrMmabizX0FnYJ+JdeNgc5BM6A+js8LaAV0K7wqOYtKKAH6c4NtV3JdorIrZh8y68qm6CzIEvAbVciMe8Goj5h8B/sFfB5BiwqAF6AlhdTW/g4GwSVA34rzz+jzRDBTWl5Fr0LAeTamC84E4A4oH2J+EZTr5BQldkCfh5LzHFC23Y2+sQA8gPY5kHkNcMegdKjCI9mrlpl+dAcapONbnJ61LrCmw5lbBVnUZx5Up+M3MnuWBYyCCqBLBi4SApIHV2HgPM1R/7hJwCDxIDdCwilLdxXdA237jA/5jH35jFVBq+TN0bYjzRH0tMlE5KiJn834lXVGzpOJNkGsQJ8DoLWAvuedL7NaI0fNwi/bCIiAXQlIbgMlkC3gm6O+lpGdGGgRpHCVmPJvt7NNmIDz+7ZiB8AZg+wxkJYZn98NC45ltKer5H8kTs+QScHIuTRdLU60Zc6jyVYctmt0A+TqkmI2WuFs1AlIOVHIFHNdqpkErDMbID+nQ8CJQJI74ULD3/0xCShqjkKxcCTWbyugE6LqFTsd0NFQ2os6AXW2CXItedKwznM7L7xBVqdFQTV6jQWlI99BtoXIKCUIZzRFPwV8oqAJhWQap3N17EE5RSdBbwHRuwbFFCIYo3ObRfEdNCWzLn6yQEAEREAEREAEREAE7Fj7F2AA+Z+qB36kbeAAAAAASUVORK5CYII=";
        }
        com.aggmoread.sdk.z.a.m.j.a(imageButton, str);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        boolean z10 = keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 0;
        if (keyCode == 79 || keyCode == 85 || keyCode == 62) {
            if (z10) {
                b();
                b(3000);
                ImageButton imageButton = this.f3954m;
                if (imageButton != null) {
                    imageButton.requestFocus();
                }
            }
            return true;
        }
        if (keyCode == 126) {
            if (z10 && !this.f3942a.a()) {
                this.f3942a.d();
                u();
                b(3000);
            }
            return true;
        }
        if (keyCode == 86 || keyCode == 127) {
            if (z10 && this.f3942a.a()) {
                this.f3942a.b();
                u();
                b(3000);
            }
            return true;
        }
        if (keyCode == 25 || keyCode == 24 || keyCode == 164 || keyCode == 27) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (keyCode != 4 && keyCode != 82) {
            b(3000);
            return super.dispatchKeyEvent(keyEvent);
        }
        if (z10) {
            f();
        }
        return true;
    }

    protected View.OnTouchListener e() {
        throw null;
    }

    public void f() {
        if (this.f3943b) {
            i iVarC = c();
            i iVar = i.f3975d;
            if (iVarC == iVar) {
                this.A.removeMessages(2);
                a(this.f3961t, 8);
            }
            if (d() == iVar) {
                a(this.f3960s, 8);
            }
            this.f3943b = false;
        }
    }

    public void g() {
        if (this.f3947f == 9) {
            this.f3947f = 3;
            i();
        }
        a(this.f3962u, 8);
    }

    protected ProgressBar h(RelativeLayout relativeLayout) {
        throw null;
    }

    public void i() {
        FrameLayout frameLayout = this.f3959r;
        if (frameLayout != null) {
            a(frameLayout, 8);
        }
    }

    public void j() {
        this.A.sendEmptyMessage(4);
    }

    public boolean l() {
        return this.f3943b;
    }

    protected void m() {
        this.f3956o = new ImageButton(this.f3964w);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 50.0d), -1);
        a(this.f3956o, 4);
        com.aggmoread.sdk.z.a.m.j.a(this.f3956o, "iVBORw0KGgoAAAANSUhEUgAAABcAAAAmCAMAAAAY0vCaAAAAVFBMVEUAAAD///////////////////////////////////////////////////////////////////////////////////////////////////////////8wXzyWAAAAG3RSTlMAD2P8Zsv2YPDGHOjghC4n13A2zExGPqufFQQwMkirAAAAeElEQVQoz7XM2Q5AMBCF4VFULbXv8/7vSSQiY6aEcC6/PznANg3a2JlxUuI6KzNmZ85wm5EZR8LFzo1HOL3mkHD+iGvzhHsHa5G7G44JtzLnvshgCXOvDqI/6hQUvg7Bj8H/LETvg3IEXThCBSxQp8EkwNaWOq5hAY/EHeIxvlzAAAAAAElFTkSuQmCC");
        this.f3956o.setContentDescription("返回");
        this.f3956o.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        this.f3956o.setBackgroundColor(Color.parseColor("#00000000"));
        this.f3960s.addView(this.f3956o, layoutParams);
        this.f3953l = new TextView(this.f3964w);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 16;
        layoutParams2.rightMargin = com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 50.0d);
        this.f3953l.setEllipsize(TextUtils.TruncateAt.END);
        this.f3953l.setGravity(17);
        this.f3953l.setPadding(com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 30.0d), 0, com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 30.0d), 0);
        this.f3953l.setSingleLine(true);
        this.f3953l.setTextColor(Color.parseColor("#ffffff"));
        com.aggmoread.sdk.z.a.m.b.a(this.f3953l, 18);
        this.f3960s.addView(this.f3953l, layoutParams2);
    }

    public void o() {
        b(3000);
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        b(3000);
        return false;
    }

    public void p() {
        a(this.f3962u, 0);
    }

    public void q() {
        this.A.sendEmptyMessage(7);
    }

    public void r() {
        this.A.sendEmptyMessage(5);
    }

    public void s() {
        this.A.sendEmptyMessage(3);
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        ImageButton imageButton;
        ImageButton imageButton2 = this.f3954m;
        if (imageButton2 != null) {
            imageButton2.setEnabled(z10);
        }
        ProgressBar progressBar = this.f3950i;
        if (progressBar != null) {
            progressBar.setEnabled(z10);
        }
        if (this.f3945d && (imageButton = this.f3955n) != null) {
            imageButton.setEnabled(z10);
        }
        ImageButton imageButton3 = this.f3956o;
        if (imageButton3 != null) {
            imageButton3.setEnabled(true);
        }
    }

    private void a() {
        f fVar;
        try {
            if (this.f3954m == null || (fVar = this.f3942a) == null || fVar.c()) {
                return;
            }
            this.f3954m.setEnabled(false);
        } catch (IncompatibleClassChangeError unused) {
        }
    }

    private void e(RelativeLayout relativeLayout) {
        this.f3959r = new FrameLayout(this.f3964w);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        this.f3959r.setBackgroundColor(Color.parseColor("#ff000000"));
        a(this.f3959r, 8);
        TextView textView = new TextView(this.f3964w);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 10.0d);
        layoutParams2.gravity = 17;
        textView.setText("点击播放视频!");
        textView.setTextColor(-1);
        com.aggmoread.sdk.z.a.m.b.a(textView, 13);
        this.f3959r.addView(textView, layoutParams2);
        relativeLayout.addView(this.f3959r, layoutParams);
        ImageView imageView = new ImageView(this.f3964w);
        this.f3963v = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f3959r.addView(this.f3963v, new FrameLayout.LayoutParams(-1, -1));
    }

    private void f(RelativeLayout relativeLayout) {
        this.f3958q = new LinearLayout(this.f3964w);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        this.f3958q.setBackgroundColor(Color.parseColor("#ff000000"));
        this.f3958q.setGravity(17);
        this.f3958q.setOrientation(1);
        a(this.f3958q, 8);
        ImageView imageView = new ImageView(this.f3964w);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        com.aggmoread.sdk.z.a.m.j.a(imageView, "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");
        this.f3958q.addView(imageView, layoutParams2);
        TextView textView = new TextView(this.f3964w);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.topMargin = com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 10.0d);
        textView.setText("出错了!");
        textView.setTextColor(-1);
        com.aggmoread.sdk.z.a.m.b.a(textView, 13);
        this.f3958q.addView(textView, layoutParams3);
        relativeLayout.addView(this.f3958q, layoutParams);
    }

    private void g(RelativeLayout relativeLayout) {
        this.f3960s = new LinearLayout(this.f3964w);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 50.0d));
        layoutParams.addRule(10);
        this.f3960s.setBackgroundColor(Color.parseColor("#7f000000"));
        this.f3960s.setOrientation(0);
        m();
        relativeLayout.addView(this.f3960s, layoutParams);
        a(this.f3960s, d() == i.f3973b ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.f3947f == 9) {
            return;
        }
        a(this.f3962u, 8);
        a(this.f3958q, 8);
        a(this.f3957p, 8);
    }

    public void b(int i10) {
        if (!this.f3943b) {
            n();
            ImageButton imageButton = this.f3954m;
            if (imageButton != null) {
                imageButton.requestFocus();
            }
            a();
            this.f3943b = true;
        }
        u();
        t();
        if (getVisibility() != 0) {
            setVisibility(0);
        }
        i iVarD = d();
        i iVar = i.f3973b;
        if (iVarD != iVar) {
            a(this.f3960s, 0);
        } else {
            a(this.f3960s, 8);
        }
        if (c() != iVar) {
            a(this.f3961t, 0);
        } else {
            a(this.f3961t, 8);
        }
        this.A.sendEmptyMessage(2);
        Message messageObtainMessage = this.A.obtainMessage(1);
        if (i10 != 0) {
            this.A.removeMessages(1);
            this.A.sendMessageDelayed(messageObtainMessage, i10);
        }
    }

    protected i c() {
        throw null;
    }

    protected i d() {
        throw null;
    }

    private void b(RelativeLayout relativeLayout) {
        g(relativeLayout);
        e(relativeLayout);
        a(relativeLayout);
        d(relativeLayout);
        c(relativeLayout);
        f(relativeLayout);
        k();
        this.f3948g = new StringBuilder();
        this.f3949h = new Formatter(this.f3948g, Locale.getDefault());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10) {
        View view;
        LinearLayout linearLayout;
        if (i10 != 3) {
            if (i10 == 5) {
                a(this.f3958q, 0);
                a(this.f3962u, 8);
                linearLayout = this.f3957p;
            } else {
                if (i10 != 7) {
                    return;
                }
                a(this.f3962u, 0);
                view = this.f3957p;
            }
            a(linearLayout, 8);
        }
        a(this.f3957p, 0);
        view = this.f3962u;
        a(view, 8);
        linearLayout = this.f3958q;
        a(linearLayout, 8);
    }

    private String d(int i10) {
        int i11 = i10 / 1000;
        int i12 = i11 % 60;
        int i13 = (i11 / 60) % 60;
        int i14 = i11 / 3600;
        this.f3948g.setLength(0);
        return (i14 > 0 ? this.f3949h.format("%d:%02d:%02d", Integer.valueOf(i14), Integer.valueOf(i13), Integer.valueOf(i12)) : this.f3949h.format("%02d:%02d", Integer.valueOf(i13), Integer.valueOf(i12))).toString();
    }

    public void a(int i10) {
        LinearLayout linearLayout = this.f3957p;
        if (linearLayout != null) {
            linearLayout.setBackgroundColor(i10);
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void a(Context context) {
        this.f3964w = context;
        RelativeLayout relativeLayout = new RelativeLayout(this.f3964w);
        ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        relativeLayout.setBackgroundColor(0);
        addView(relativeLayout, layoutParams);
        relativeLayout.setOnTouchListener(e());
        b(relativeLayout);
    }

    private void c(RelativeLayout relativeLayout) {
        this.f3957p = new LinearLayout(this.f3964w);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        this.f3957p.setBackgroundColor(Color.parseColor("#ff000000"));
        this.f3957p.setGravity(17);
        this.f3957p.setOrientation(1);
        a(this.f3957p, 8);
        ProgressBar progressBar = new ProgressBar(this.f3964w);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 36.0d), com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 36.0d));
        progressBar.setBackgroundColor(0);
        RotateDrawable rotateDrawable = new RotateDrawable();
        rotateDrawable.setDrawable(com.aggmoread.sdk.z.a.m.j.a(getResources(), "iVBORw0KGgoAAAANSUhEUgAAAG4AAABuCAMAAADxhdbJAAAAYFBMVEUAAAD///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////98JRy6AAAAIHRSTlMAswGsBQsCFXilf3KFJR+WVqGKj2YtnE88D19rNEdCsCgMELYAAAU2SURBVGjetNbd0powEAbgd4GgYEIDiIgGuP+7rAedadkknxC2z6kzuNm/BIcos9j7TXf9h76+7TJM+D8KY+sH+Sr9cgqyprnOKW7V40XuXIte6at+FMnr5V7RPvnV4CRT0xGdy5Cuqemo3iHR9F4pQd0gQTZXlGZ9Fcc7RFO6XwbHPCs6Y7Ul9ivedJae9ieyo/Nag32aliTkDnsMOcXl/c0uznwMz8W+ux836YzvXB5fxNYUfFya+RrvqhHfuDU2vYtCWOFusRBtWibz1wU/UWObcr4mmJjKKnxTzA8KeSLuEopxvSvsUY45+XITj7AnX2f2z+s1lJpoGd6B4MYMB7gqEG+BoCd5HgbHTB157uFU+JFpBSZp3Tr4Mk3crUCCkbhWwTP7SciQZFmJeYObKj/lqfzIh69decuQzBLTs481PAG6wAl3YmZs1HwCFM4oNf/eJnrjr55zpvan49XeIj9rWNnxyn8qx/cOq6xE+ZZoW+YNzlMP1px/f8lp4wUJfAWbyFhWCiK6yGrR/IEhY2CnKP407bqtnIKQLngxzLxyUhxbi8Ghu0BKtm3ONsNHse1LDTk20JsD3zZisktgV1neKIJ6+tfVL52GpNe2ePhoY8tZfvQmQPFyCuJt6HgAeQlRHU/dwva2rDt/bVk2+ZL4xqr5XWchy/HcXdmdK6vZviB4MR1kTdtG5GNnIKukDSBnfydse5eW4IMorKJ/qd+919uSojAQgOFsOK6QIEgGEND3f8vt7jQTYnZcD3H/qhnnaj67Q8ry09N5H3lX+eGz8x/8TojO401sbrz5LC33h5mM8aDwy0mTCjEnOy0ZImtSTs0vrtVSiGOSXL+1pI/Oyaziz/IiB+6SQFcowQ6xOaxY+37QeY6cSfa1MjLHgWW5gqFrQhUf5kQLlAMvH+Fym4AO1uJfVVwt5I7W4do0LsfxLqGFoatFl9gct3EZY/xSxdcch9XJvt9ZfI49QQ2elqzxOU5Q2p+uSeNrzNm6b4oaPzUcN2ya9bo8kpb/nZt+A+Vq10gaFXKiwsnYgpopBpfbQk0YhFhDcI4xXApZkC+dq2YNMMrE0NjjxK7F175Ob6+TMAbxRXrvpfa8r69KRtFcwsu0LXGsfTXHt7T8VsuFX+kw1JpmfEfLsiwYzku3DiPvtLyjpehlwXCuI1mMIQfe67MxuJEiKO1IYw86da/tExzL0R8E5iJMeRhy3Spf0KZsYm4jUQsbNsvuErjunD2rZRNEniN/2HkJDGI8HFbq545tKgr2XD+taKob7tTQcDW0pk+MVmATFWhh+uQ48GryKvXoqRVb1rPivXdrWMN4vMPhcNYPYVrrwhdJu9dIGnvMIajkP9aolVI7b9pAcb8VNMYcV5blPE53BlPGGPL8AUMt9JjjZR6Iw6rzWIQ3SGbaLMtiIMs5EbQH7u3YgYQ/EGgUcdA8jErb/wIXuNDKjBR6xKm999CllQYhq0GOI6/v+zN0hIZ1XS8Xy7G3DcjaY+lDRxgdXe005OYdNwC395TnpY9f1544G2rklRuHEcfzBeNBoD2eXOtuw3zOH484ApnbvEmKp1JlHXiWY4+43T4NcyRm4tmyoXZHx5w/HoM8H07HIizyhfSMHuZz/HRunH98Bkd7LblUB5s/3S0HoOMKKV4uZbCkNg5B4vzjQw32+Fa56W+32d/MBxpzRS7er1gr9pij3NOyjiNyapIiTrka5j03g8beAAGGW4zaZIbZPSvgQXaXi8qk+ESZXsbheO7tfMfhsqgiE/+h9MV5/gCFR4YPq8+2SgAAAABJRU5ErkJggg=="));
        rotateDrawable.setFromDegrees(0.0f);
        rotateDrawable.setPivotX(0.5f);
        rotateDrawable.setPivotY(0.5f);
        rotateDrawable.setToDegrees(360.0f);
        progressBar.setIndeterminateDrawable(rotateDrawable);
        try {
            Field declaredField = progressBar.getClass().getDeclaredField("mDuration");
            declaredField.setAccessible(true);
            declaredField.setInt(progressBar, 1000);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f3957p.addView(progressBar, layoutParams2);
        this.f3965x = new TextView(this.f3964w);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.topMargin = com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 10.0d);
        this.f3965x.setText("加载中...");
        this.f3965x.setTextColor(-1);
        com.aggmoread.sdk.z.a.m.b.a(this.f3965x, 13);
        this.f3957p.addView(this.f3965x, layoutParams3);
        relativeLayout.addView(this.f3957p, layoutParams);
    }

    private void d(RelativeLayout relativeLayout) {
        this.f3961t = new RelativeLayout(this.f3964w);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        this.f3961t.setBackgroundColor(Color.parseColor("#7f000000"));
        this.f3961t.setGravity(16);
        ProgressBar progressBarH = h(this.f3961t);
        this.f3950i = progressBarH;
        if (progressBarH != null) {
            progressBarH.setMax(1000);
        }
        relativeLayout.addView(this.f3961t, layoutParams);
    }

    public void a(Bitmap bitmap) {
        if (this.f3959r != null) {
            this.f3947f = 9;
            o();
            if (bitmap != null) {
                this.f3963v.setImageBitmap(bitmap);
                a(this.f3963v, 0);
            } else {
                a(this.f3963v, 8);
            }
            a(this.f3959r, 0);
            p();
        }
    }

    private void a(View view, int i10) {
        if (view == null || view.getVisibility() == i10) {
            return;
        }
        view.setVisibility(i10);
    }

    private void a(RelativeLayout relativeLayout) {
        this.f3962u = new ImageView(this.f3964w);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        com.aggmoread.sdk.z.a.m.j.a(this.f3962u, "iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAYAAADimHc4AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MUVBRDQ1QjczNTA2MTFFNUFGNTk5NTgwNjE0RTM2MzYiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MUVBRDQ1QjgzNTA2MTFFNUFGNTk5NTgwNjE0RTM2MzYiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDoxRUFENDVCNTM1MDYxMUU1QUY1OTk1ODA2MTRFMzYzNiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDoxRUFENDVCNjM1MDYxMUU1QUY1OTk1ODA2MTRFMzYzNiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PtvEHoEAAAa+SURBVHja7F1NTFxVFL4+hjICM7YUhY6gLa20TSRIIGpbm4JR65auiAnIAhLSDSFpWECNmsDSBMKSlQugm7IBokIDJdWiNKFpSZQhlIoiitKhZQY6wAieU87DyTDD/PS9mXvfu1/yJYWQcvm+efeec+5991gYvzgAzCDagTZgGjAFaAUqwGT62U3gFtALXAeuAt3AFaCLuMHjH/kCR2NBYXOADmAWCa8l0IRF4AJwnowyvQGpwGPA4yR6vMazTWY8AD4ErpnJAPyducBTwNc5+BCgGXPAKeDv9LUhDcA5+ySwAHiQ03XnMXAS6KQ1xRAGqMIXAdOZGPAA78bDCL0NwHn9PeBhJiYeAb+n9UIoAzBMfJvmeSMAn4SfKMzl3oCjwAsUVhoJGLaOAn/l1QCc69+hRdbImKSnYYsnAzBL/QD4MjMH/gHeoGw74QZkAz+ied9MwPXgGzIjYQZgFvs+MImZE1iDGqLSRtwNeANYyviqJyUCuBbcBM7E04B8El/if6AJ07FELrFMOxek3nuAmuTpbcArwDI57YScTcpII10MwE2Rj4EWqXVIJJFGdq0NQNE/NGGoGQusFJZbtDTgLBO3oJYI4G7eOa0MwIXllNQ0apyMZFEOZ8CLwPNSy5hxnjSM2QCcelKkjjEjJdxUtJ8BeELhuNTwuZFHWkZlAH7/jNROM5wJpbWyzwJySOqmGQ6RphEZgMlEkdRMcxSxIFXjYAZglTNd6qU5UNP8cAZgPeMtqZVuKGQBdbRAA/DEml3qpBvspHFIA05LjXTH6VAGpAa6I6ELcknrPQbksdg2aDSH0+m8XFpammFQAxTmVyPyF/wYLyPMz88vHBwc/KK3t/diamqqYkAT9hiANYtsnkaYnJycUl5efmlubu5qfX39CYMZkEWa7xqQyzjdZszMzHy1ra3typ07d6oKCgqMkp+o70jsGnCE9wGXlJScGx8f/7Kzs/OsoihG2JN2+BuQLcKIrVZrek1NzacwLV2pqKhwGGAaemYAvo0oVOEtJyfnRFdX19Xh4eFLDodD1P0K1PwAGvCSkLGcoiSVlZVdnJqa+ry1tbVQUBMyhDVAhc1mO9zU1HRZ0NzhmQEHmQGAucPQ0JBouYNd+CfAHxaLRc0dPhMkd7ChATajpZmQOzgEyR3S0ACjnnYTIXewKszgx044zx1SFMZJBdSkuYPif+WL4cFh7pCsMHOCm/UAj1BvmuUp2AKMjo4OVVVVDczPz/NwX9AmGrBlBvFB8JnGxsbunp6eP3j6TKAB60aOhLxe72p3d/f12tra2/AAbHM2vHU0AF84NuJRlO2JiYmx6urq65OTkx5ePx+4CLuNpvzS0tJCQ0PDV8XFxV9zLD5iFZ+AJ0YR3ufzrff39w9UVlbe8Hg8/wowZDca8NgI4k9PT9+vq6u7NjIy8kigYa8I/wS43W5XR0fHtebm5nsCDt8lrAEcxvQxG4A3yi4zgfaFOY3powVqvqG+TLwoggEQ03sgpu/lNKaPFotqKQKB1/ny/C6wCDF9tFjwN0C9MZa7TQuM6VtaWrra29tnmHGwTZrvGoCL2F+MoxNyGNP39fUNwCIrSkwf7fSz7m8A4iEvBgga00eDWfUf/lMOvjTwCTPJDlkiI2hgN6Mb2/3FXlPnJQl9o2jmd11+4Kf9F6mP7vjZ/4tAA/AJWJEa6YaVwFlGCRIe3ZM66Yb7LKBBRLAFF69e9EitNAc2FnIGfjOYARhz35V6aY4J0jasAYycWpaaaYblYJ/+/QzAWHVM6qYZxliI0ydKmHh1VmqnSdYb8nLvcFnvD4yThmeCArW7vd8PhDPgKfCW1DFm3GJhmsQpET5CTqll1HBGMoVHWnjDqcglNY0YLtKMaWWADzjIdGjjZEB4SSuflgYgsI7xLTPJYd4Y4SONIq6nRVv7/xs4zOLc8FIQ4AfzO9KI6WWAuiiPSr334CYw6mMysTZjUHulYNsO2cQnAU18VMg2VglsY6VCNnJ7DshWhrGBq1aGKnAawha2ZmjmOc6C1PYTbYCKo0y2s02oAQhs24HdN4zSAOIB26lqPtX6P9Y7hMSbAd9l4vYiwJ2sH5mO56XiEcNjsofNC/D+fFGuncRDCbgv7mQ6l17imUQlkRFvMn5v6XpCi6xTq0WWJwP8fydOTXiL+GscZNJY1/qN7ZwKVI/px1WMRAIPBOcRs+I4HhQZj4jPEtcSJQBPdRwMW7HdE16qdESHaQpfx/2T7byZMs842evmuZCGF8pmEO2UbaeRUVZaU9Rioo/mbC8Ju0pZKtblXcQNHv/I/wQYAIJy2o1KCq5pAAAAAElFTkSuQmCC");
        a(this.f3962u, 8);
        this.f3962u.setContentDescription(null);
        this.f3962u.setScaleType(ImageView.ScaleType.FIT_XY);
        relativeLayout.addView(this.f3962u, layoutParams);
    }

    public void a(f fVar) {
        this.f3942a = fVar;
        u();
    }

    public void a(g gVar) {
        this.f3967z = gVar;
    }

    public void a(h hVar) {
        this.f3966y = hVar;
    }

    public void a(String str) {
        if (this.f3965x == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f3965x.setText(str);
    }

    protected void a(boolean z10) {
        this.f3946e = z10;
        v();
        t();
    }
}
