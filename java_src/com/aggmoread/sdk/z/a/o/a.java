package com.aggmoread.sdk.z.a.o;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aggmoread.sdk.z.a.m.p;
import com.aggmoread.sdk.z.a.u.k;
import com.aggmoread.sdk.z.c.a.a.e.n;

/* JADX INFO: loaded from: classes7.dex */
public class a implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f3740a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.u.g<View> f3741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.g.h f3742c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private j f3743d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.s.a f3744e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f3745f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ViewGroup f3746g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ImageView f3747h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TextView f3748i;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.o.a$a, reason: collision with other inner class name */
    class C0082a extends com.aggmoread.sdk.z.a.u.h {
        C0082a(a aVar, Context context) {
            super(context);
        }

        @Override // com.aggmoread.sdk.z.a.u.h
        public boolean a(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            return true;
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.t.f f3749a;

        b(com.aggmoread.sdk.z.a.t.f fVar) {
            this.f3749a = fVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            view.setVisibility(8);
            if (a.this.f3742c != null) {
                a aVar = a.this;
                aVar.a(aVar.a(this.f3749a), a.this.f3742c.f3461b);
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.f3740a != null) {
                a.this.f3740a.finish();
            }
            if (a.this.f3743d != null) {
                a.this.f3743d.d();
            }
        }
    }

    class d implements com.aggmoread.sdk.z.a.s.a.InterfaceC0092a {
        d() {
        }

        @Override // com.aggmoread.sdk.z.a.s.a.InterfaceC0092a
        public void a(View view, com.aggmoread.sdk.z.a.g.d dVar) {
            if (a.this.f3743d != null) {
                a.this.f3743d.a(a.this.f3740a);
            }
        }
    }

    class e implements com.aggmoread.sdk.z.a.p.a.g {

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.o.a$e$a, reason: collision with other inner class name */
        class RunnableC0083a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Bitmap f3754b;

            RunnableC0083a(Bitmap bitmap) {
                this.f3754b = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f3743d != null) {
                    a.this.f3743d.a(a.this.f3744e);
                }
                a.this.f3744e.a(com.aggmoread.sdk.z.a.m.b.a(a.this.f3746g, a.this.f3741b, a.this.f3742c.f3465f, a.this.f3742c.f3467h));
                View viewA = a.this.f3741b.a();
                if (viewA instanceof ImageView) {
                    ((ImageView) viewA).setImageBitmap(this.f3754b);
                }
                a.this.f3745f.setVisibility(0);
            }
        }

        e() {
        }

        @Override // com.aggmoread.sdk.z.a.p.a.g
        public void a(int i10, byte[] bArr, com.aggmoread.sdk.z.a.g.f fVar) {
            a aVar = a.this;
            if (fVar != null) {
                aVar.e();
                return;
            }
            if (bArr == null) {
                aVar.e();
                return;
            }
            p.a().post(new RunnableC0083a(com.aggmoread.sdk.z.a.n.a.a().a(aVar.f3741b.getWidth(), a.this.f3741b.getHeight(), Bitmap.Config.ARGB_8888, ImageView.ScaleType.CENTER_INSIDE, bArr)));
        }
    }

    class f implements com.aggmoread.sdk.z.a.t.f.j {
        f() {
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void a(MediaPlayer mediaPlayer) {
            if (a.this.f3743d != null) {
                a.this.f3743d.b();
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void b(MediaPlayer mediaPlayer) {
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void c(MediaPlayer mediaPlayer) {
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void d(MediaPlayer mediaPlayer) {
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void e(MediaPlayer mediaPlayer) {
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void f(MediaPlayer mediaPlayer) {
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void g(MediaPlayer mediaPlayer) {
            if (a.this.f3743d != null) {
                a.this.f3743d.c();
            }
        }

        @Override // com.aggmoread.sdk.z.a.t.f.j
        public void a(boolean z10) {
        }
    }

    class g implements MediaPlayer.OnPreparedListener {
        g() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            if (a.this.f3747h != null) {
                a.this.f3747h.setVisibility(8);
            }
        }
    }

    class h implements MediaPlayer.OnCompletionListener {
        h() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            if (a.this.f3743d != null) {
                a.this.f3743d.a();
            }
        }
    }

    class i implements MediaPlayer.OnErrorListener {
        i() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
            if (a.this.f3743d == null) {
                return false;
            }
            a.this.f3743d.a(i10, "extra msg: " + i11);
            return false;
        }
    }

    public interface j {
        void a();

        void a(int i10, String str);

        void a(Activity activity);

        void a(com.aggmoread.sdk.z.a.s.a aVar);

        void b();

        void c();

        void d();
    }

    private View d() {
        Bitmap bitmap;
        FrameLayout frameLayout = new FrameLayout(this.f3740a);
        frameLayout.setBackgroundColor(Color.parseColor("#50000000"));
        this.f3746g = new C0082a(this, this.f3740a);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(com.aggmoread.sdk.z.a.m.b.a(this.f3740a, 300.0d), com.aggmoread.sdk.z.a.m.b.a(this.f3740a, 500.0d));
        layoutParams.gravity = 17;
        int iA = com.aggmoread.sdk.z.a.m.b.a(this.f3740a, 6.0d);
        Drawable drawableA = com.aggmoread.sdk.z.a.m.b.a(-16777216, 1.0f, iA, 0, 0);
        this.f3746g.setLayoutParams(layoutParams);
        LinearLayout linearLayout = new LinearLayout(this.f3740a);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        this.f3741b = new com.aggmoread.sdk.z.a.u.g<>(this.f3740a);
        com.aggmoread.sdk.z.a.g.h hVar = this.f3742c;
        if (hVar == null || TextUtils.isEmpty(hVar.f3461b)) {
            n nVar = new n(this.f3740a);
            nVar.a(iA);
            nVar.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.f3741b.setBackground(drawableA);
            this.f3741b.a(nVar);
        } else {
            com.aggmoread.sdk.z.a.t.f fVar = new com.aggmoread.sdk.z.a.t.f(this.f3740a);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
            layoutParams2.gravity = 17;
            this.f3741b.a(fVar, layoutParams2);
            ImageView imageView = new ImageView(this.f3740a);
            this.f3747h = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            this.f3747h.setVisibility(8);
            com.aggmoread.sdk.z.a.g.h hVar2 = this.f3742c;
            if (hVar2 != null && (bitmap = hVar2.f3466g) != null) {
                this.f3747h.setImageBitmap(bitmap);
                this.f3747h.setVisibility(0);
            }
            this.f3741b.addView(this.f3747h, new FrameLayout.LayoutParams(-1, -1));
            TextView textView = new TextView(this.f3740a.getApplicationContext());
            this.f3748i = textView;
            textView.setTextSize(16.0f);
            this.f3748i.setText("点击可播放视频");
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams3.gravity = 81;
            layoutParams3.bottomMargin = com.aggmoread.sdk.z.a.m.b.a(this.f3740a.getApplicationContext(), 30.0d);
            this.f3748i.setOnClickListener(new b(fVar));
            this.f3748i.setVisibility(8);
            this.f3741b.addView(this.f3748i, layoutParams3);
            this.f3741b.setBackgroundColor(-16777216);
        }
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams4.weight = 1.0f;
        this.f3741b.setLayoutParams(layoutParams4);
        linearLayout.addView(this.f3741b);
        this.f3745f = new TextView(this.f3740a);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        int iA2 = com.aggmoread.sdk.z.a.m.b.a(this.f3740a, 10.0d);
        com.aggmoread.sdk.z.a.m.b.a(this.f3740a, 20.0d);
        layoutParams5.topMargin = iA2;
        this.f3745f.setLayoutParams(layoutParams5);
        this.f3745f.setText("查看详情");
        this.f3745f.setTextColor(Color.parseColor("#ffffff"));
        this.f3745f.setTextSize(15.0f);
        this.f3745f.setPadding(iA2, iA2, iA2, iA2);
        this.f3745f.setGravity(17);
        this.f3745f.setBackground(com.aggmoread.sdk.z.a.m.b.a(Color.parseColor("#0a81fc"), 1.0f, com.aggmoread.sdk.z.a.m.b.a(this.f3740a, 6.0d), 0, 0));
        this.f3745f.setVisibility(4);
        linearLayout.addView(this.f3745f);
        this.f3746g.addView(linearLayout);
        ImageView imageView2 = new ImageView(this.f3740a);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(com.aggmoread.sdk.z.a.m.b.a(this.f3740a, 24.0d), com.aggmoread.sdk.z.a.m.b.a(this.f3740a, 24.0d));
        layoutParams6.gravity = 53;
        layoutParams6.topMargin = com.aggmoread.sdk.z.a.m.b.a(this.f3740a, 10.0d);
        layoutParams6.rightMargin = com.aggmoread.sdk.z.a.m.b.a(this.f3740a, 10.0d);
        imageView2.setLayoutParams(layoutParams6);
        com.aggmoread.sdk.z.a.m.j.a(imageView2, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAmZJREFUWEfVlzloFmEQhp+30FIQQVAUBK9ORLQQDyKS1IKaWkjpFQUbU6igQbTQJJYGe2PAq9LCI9opqJ0HaCEKKe3ldT+ZHzabvRIDiwvbfNc8O/POzLei40cd2+f/ArC9ExgA+oG1wJrw4E/gB3APmJH0oa1nW3nA9j7gNHC4cPA34DewsTA+DYxJmmkCaQSwfQU4Hwe9A14Bb4HnkhIAttcBu+M9CGyL9ROSTtVB1ALYTsb2xAHXgcuSftUdaHs1cAs4Guu+SNpctacSwPZnYFNsHJD0tMmd+XnbKWQ3Y+y1pL1l+0sBbI8DJ9MGSY1havCIY35U0khx7bzDQ3AvY+GwpLGFfHlxre2UMU9ifH9RmGUAKZWS2qckDfYOtN2XCa8vc8jFhi8eBu73BBoivQacA6YlHcnvnwNgO6n3PZDyuF/SbA4gGb5QBCvE/W6I71Ie1PYK4EUGth3YJelNb18R4Hgo+Eam9rMl7uwZmOOd+MrKuZifAE4AI5JGqwCeJTcDg5Kmylxte56hsrES+GPAnagfB6oAPgJbgPWSvlfFOm8w1qScn+eVQng2AF+BT5K2VgGkIjMrqZf/lXrLQaQ1tcZzOkoAqyQlTfx9ihroHGAxIVgGHGrygu1WIViwCG0vBx5Fm64Mhe1WIlxUGtpeCTwEUr0vhbDdKg3rCtEQcLvGQGrJDzKQHcAZSb1GlNp1u0IUBaO0FMfckKTJmvRM6XU1S+NJSY9z6m9XisNIuv1014wCort2nHNbdxeSHER3V7IcRHeX0hxEd9fyQkfr5seksiUuwcQ/3XiXwH73P6d/AMNtZjBWZp4QAAAAAElFTkSuQmCC");
        imageView2.setOnClickListener(new c());
        this.f3746g.addView(imageView2);
        try {
            com.aggmoread.sdk.z.a.g.i iVarE = com.aggmoread.sdk.z.a.h.a.d().e();
            if (iVarE != null) {
                ImageView imageView3 = new ImageView(this.f3740a);
                if (iVarE.f3469a != 0) {
                    imageView3.setImageResource(com.aggmoread.sdk.z.a.h.a.d().e().f3469a);
                } else {
                    Bitmap bitmap2 = iVarE.f3470b;
                    if (bitmap2 != null) {
                        imageView3.setImageBitmap(bitmap2);
                    }
                }
                imageView3.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-2, -2);
                layoutParams7.gravity = 51;
                this.f3746g.addView(imageView3, layoutParams7);
            }
        } catch (Exception unused) {
        }
        this.f3744e = com.aggmoread.sdk.z.a.s.a.a(this.f3746g, this.f3745f, new d());
        frameLayout.addView(this.f3746g);
        return frameLayout;
    }

    @Override // com.aggmoread.sdk.z.a.u.k
    public void onPause() {
    }

    @Override // com.aggmoread.sdk.z.a.u.k
    public void onResume() {
        com.aggmoread.sdk.z.a.u.g<View> gVar = this.f3741b;
        if (gVar == null || !(gVar.a() instanceof com.aggmoread.sdk.z.a.t.f)) {
            return;
        }
        ((com.aggmoread.sdk.z.a.t.f) this.f3741b.a()).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        j jVar = this.f3743d;
        if (jVar != null) {
            jVar.a(50006, "素材加载失败");
        }
    }

    private void f() {
        if (this.f3742c == null) {
            e();
            return;
        }
        com.aggmoread.sdk.z.a.u.g<View> gVar = this.f3741b;
        if (gVar != null) {
            View viewA = gVar.a();
            if (viewA instanceof ImageView) {
                com.aggmoread.sdk.z.a.p.a.a(this.f3742c.f3460a, null, new e());
                return;
            }
            if (viewA instanceof com.aggmoread.sdk.z.a.t.f) {
                if (com.aggmoread.sdk.z.a.p.e.c(com.aggmoread.sdk.z.a.h.a.d().a()) == 100) {
                    com.aggmoread.sdk.z.a.t.f fVarA = a((com.aggmoread.sdk.z.a.t.f) viewA);
                    String str = this.f3742c.f3461b;
                    if (!TextUtils.isEmpty(str)) {
                        a(fVarA, str);
                    }
                } else {
                    this.f3747h.setVisibility(0);
                    this.f3748i.setVisibility(0);
                }
                j jVar = this.f3743d;
                if (jVar != null) {
                    jVar.a(this.f3744e);
                }
                ViewGroup viewGroup = this.f3746g;
                com.aggmoread.sdk.z.a.u.g<View> gVar2 = this.f3741b;
                com.aggmoread.sdk.z.a.g.h hVar = this.f3742c;
                this.f3744e.a(com.aggmoread.sdk.z.a.m.b.a(viewGroup, gVar2, hVar.f3465f, hVar.f3467h));
                this.f3745f.setVisibility(0);
            }
        }
    }

    @Override // com.aggmoread.sdk.z.a.u.k
    public void b() {
        a((Activity) null);
        if (this.f3740a != null) {
            this.f3740a = null;
        }
        com.aggmoread.sdk.z.a.u.g<View> gVar = this.f3741b;
        if (gVar == null || !(gVar.a() instanceof com.aggmoread.sdk.z.a.t.f)) {
            return;
        }
        ((com.aggmoread.sdk.z.a.t.f) this.f3741b.a()).q();
    }

    public View c() {
        return this.f3746g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.aggmoread.sdk.z.a.t.f a(com.aggmoread.sdk.z.a.t.f fVar) {
        fVar.a(new f());
        fVar.a(new g());
        fVar.a(new h());
        fVar.a(new i());
        return fVar;
    }

    @Override // com.aggmoread.sdk.z.a.u.k
    public void a(Activity activity) {
        this.f3740a = activity;
    }

    @Override // com.aggmoread.sdk.z.a.u.k
    public void a(Intent intent) {
    }

    @Override // com.aggmoread.sdk.z.a.u.k
    public void a(Bundle bundle) {
        Activity activity = this.f3740a;
        if (activity != null) {
            activity.setContentView(d());
            f();
        }
    }

    public void a(com.aggmoread.sdk.z.a.g.h hVar) {
        this.f3742c = hVar;
    }

    public void a(j jVar) {
        this.f3743d = jVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.aggmoread.sdk.z.a.t.f fVar, String str) {
        if (TextUtils.isEmpty(str) || fVar == null) {
            return;
        }
        fVar.a(str);
        fVar.requestFocus();
        fVar.d();
    }

    @Override // com.aggmoread.sdk.z.a.u.k
    public boolean a() {
        return true;
    }

    @Override // com.aggmoread.sdk.z.a.u.k
    public boolean a(MotionEvent motionEvent) {
        return false;
    }
}
