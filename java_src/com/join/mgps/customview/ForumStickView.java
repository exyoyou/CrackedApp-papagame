package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.adapter.ForumPostsAdapter;

/* JADX INFO: loaded from: classes3.dex */
public class ForumStickView extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    TextView f64966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ImageView f64967c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f64968d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ImageView f64969e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    e f64970f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f64971g;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumStickView.this.e();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumStickView.this.e();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumStickView.this.d();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumStickView.this.d();
        }
    }

    public interface e {
        void sortComment();

        void viewPoster();
    }

    public ForumStickView(@NonNull Context context) {
        super(context);
        this.f64971g = false;
        c(context);
    }

    private void c(Context context) {
        LayoutInflater.from(context).inflate(R.layout.layout_forum_stick_view, this);
        this.f64966b = (TextView) findViewById(R.id.view_poster);
        this.f64969e = (ImageView) findViewById(R.id.iv_view_poster);
        this.f64967c = (ImageView) findViewById(R.id.iv_sort);
        this.f64968d = (TextView) findViewById(R.id.tv_sort);
        this.f64966b.setOnClickListener(new a());
        this.f64969e.setOnClickListener(new b());
        this.f64967c.setOnClickListener(new c());
        this.f64968d.setOnClickListener(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        e eVar = this.f64970f;
        if (eVar != null) {
            eVar.sortComment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        boolean z10 = !this.f64971g;
        this.f64971g = z10;
        this.f64969e.setImageResource(z10 ? R.drawable.ic_forum_detail_check_h : R.drawable.ic_forum_detail_check_n);
        e eVar = this.f64970f;
        if (eVar != null) {
            eVar.viewPoster();
        }
    }

    public void setData(ForumPostsAdapter.e0 viewBean) {
    }

    public void setForumStickViewListener(e iForumStickViewListener) {
        this.f64970f = iForumStickViewListener;
    }

    public ForumStickView(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f64971g = false;
        c(context);
    }

    public ForumStickView(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f64971g = false;
        c(context);
    }
}
