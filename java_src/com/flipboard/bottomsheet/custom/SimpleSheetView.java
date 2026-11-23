package com.flipboard.bottomsheet.custom;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.StringRes;
import androidx.core.view.ViewCompat;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class SimpleSheetView extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final ListView f29133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final TextView f29134c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final View f29135d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final d f29136e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final List<c> f29137f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected b f29138g;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ d f29139b;

        a(final d val$listener) {
            this.f29139b = val$listener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f29139b.onClose();
        }
    }

    private class b extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Context f29141b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List<c> f29142c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private LayoutInflater f29143d;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ c f29145b;

            a(final c val$info) {
                this.f29145b = val$info;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                d dVar = SimpleSheetView.this.f29136e;
                if (dVar != null) {
                    dVar.b(this.f29145b);
                }
            }
        }

        /* JADX INFO: renamed from: com.flipboard.bottomsheet.custom.SimpleSheetView$b$b, reason: collision with other inner class name */
        class C0589b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final ImageView f29147a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final TextView f29148b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final TextView f29149c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final View f29150d;

            C0589b(View root) {
                this.f29147a = (ImageView) root.findViewById(R.id.icon);
                this.f29148b = (TextView) root.findViewById(R.id.title);
                this.f29149c = (TextView) root.findViewById(R.id.desc);
                this.f29150d = root.findViewById(R.id.download);
            }
        }

        public b(Context context, List<c> mixins) {
            this.f29141b = context;
            this.f29142c = mixins;
            this.f29143d = LayoutInflater.from(context);
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c getItem(int position) {
            return this.f29142c.get(position);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f29142c.size();
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return this.f29142c.get(position).f29152a.hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            C0589b c0589b;
            if (convertView == null) {
                convertView = this.f29143d.inflate(R.layout.simple_sheet_item, parent, false);
                c0589b = new C0589b(convertView);
                convertView.setTag(c0589b);
            } else {
                c0589b = (C0589b) convertView.getTag();
            }
            c cVar = this.f29142c.get(position);
            c0589b.f29148b.setText(cVar.f29153b);
            c0589b.f29149c.setText(cVar.f29154c);
            c0589b.f29150d.setOnClickListener(new a(cVar));
            return convertView;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f29152a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f29153b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f29154c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f29155d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f29156e;

        public c(String id2, String title, String desc) {
            this.f29152a = id2;
            this.f29153b = title;
            this.f29154c = desc;
        }

        public String a() {
            return this.f29156e;
        }

        public String b() {
            return this.f29155d;
        }

        public void c(String downloadUrl) {
            this.f29156e = downloadUrl;
        }

        public void d(String from) {
            this.f29155d = from;
        }
    }

    public interface d {
        void a(c item);

        void b(c item);

        void onClose();
    }

    public SimpleSheetView(Context context, @StringRes int titleRes, d listener) {
        this(context, context.getString(titleRes), listener);
    }

    public List<c> getMixins() {
        return this.f29137f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        b bVar = new b(getContext(), this.f29137f);
        this.f29138g = bVar;
        this.f29133b.setAdapter((ListAdapter) bVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        View.MeasureSpec.getSize(widthMeasureSpec);
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        setOutlineProvider(new com.flipboard.bottomsheet.custom.a.C0590a(w10, h10));
    }

    public void setMixins(@NonNull List<c> infos) {
        this.f29137f.clear();
        this.f29137f.addAll(infos);
    }

    public void setTitle(String title) {
        TextView textView = this.f29134c;
        if (textView != null) {
            textView.setText(title);
        }
    }

    public SimpleSheetView(Context context, final String title, final d listener) {
        super(context);
        this.f29137f = new ArrayList();
        View.inflate(context, R.layout.simple_sheet_view, this);
        this.f29133b = (ListView) findViewById(R.id.list);
        TextView textView = (TextView) findViewById(R.id.title);
        this.f29134c = textView;
        View viewFindViewById = findViewById(R.id.close);
        this.f29135d = viewFindViewById;
        textView.setText(title);
        this.f29136e = listener;
        viewFindViewById.setOnClickListener(new a(listener));
        ViewCompat.setElevation(this, com.flipboard.bottomsheet.custom.a.a(getContext(), 16.0f));
    }
}
