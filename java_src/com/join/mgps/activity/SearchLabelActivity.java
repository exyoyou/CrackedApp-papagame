package com.join.mgps.activity;

import android.app.Activity;
import android.content.Intent;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.label.MainLabelActivity_;
import com.join.mgps.activity.posting.PostingActivity_;
import com.join.mgps.dto.LabelBean;
import com.join.mgps.dto.ResultResMainBean;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_search_label)
public class SearchLabelActivity extends Activity {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f55646o = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    ListView f55648c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    ImageView f55649d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    EditText f55650e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f55651f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    LinearLayout f55652g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    f f55654i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    com.join.mgps.rpc.i f55655j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    TextView f55656k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Bean
    com.join.mgps.Util.b f55658m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f55659n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Extra
    int f55647b = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    List<LabelBean> f55653h = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private InputFilter f55657l = new a();

    class a implements InputFilter {
        a() {
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
            if (source.equals(" ")) {
                return "";
            }
            return null;
        }
    }

    class b implements View.OnKeyListener {
        b() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View v10, int keyCode, KeyEvent event) {
            return keyCode == 66;
        }
    }

    class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s10) {
            String strTrim = s10.toString().trim();
            if (TextUtils.isEmpty(strTrim)) {
                SearchLabelActivity.this.c("");
                SearchLabelActivity.this.f55649d.setVisibility(8);
            } else {
                SearchLabelActivity.this.c(strTrim);
                SearchLabelActivity.this.f55649d.setVisibility(0);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            SearchLabelActivity.this.f55650e.setText("");
            SearchLabelActivity.this.f55653h.clear();
            f fVar = SearchLabelActivity.this.f55654i;
            if (fVar != null) {
                fVar.notifyDataSetChanged();
            }
        }
    }

    class e implements AdapterView.OnItemClickListener {
        e() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            LabelBean labelBean = SearchLabelActivity.this.f55653h.get(position);
            SearchLabelActivity searchLabelActivity = SearchLabelActivity.this;
            if (searchLabelActivity.f55647b == 1) {
                MainLabelActivity_.intent(searchLabelActivity).d(labelBean.getTag_id()).start();
            } else {
                Intent intent = new Intent();
                intent.putExtra(PostingActivity_.LABEL_EXTRA, labelBean);
                SearchLabelActivity.this.setResult(-1, intent);
            }
            SearchLabelActivity.this.finish();
        }
    }

    private class f extends BaseAdapter {

        class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            SimpleDraweeView f55666a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            TextView f55667b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            TextView f55668c;

            a() {
            }
        }

        private f() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return SearchLabelActivity.this.f55653h.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return SearchLabelActivity.this.f55653h.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            a aVar;
            if (convertView == null) {
                convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_search_label, (ViewGroup) null);
                aVar = new a();
                aVar.f55666a = (SimpleDraweeView) convertView.findViewById(R.id.iv_icon);
                aVar.f55667b = (TextView) convertView.findViewById(R.id.tv_label_name);
                aVar.f55668c = (TextView) convertView.findViewById(R.id.tv_count);
                convertView.setTag(aVar);
            } else {
                aVar = (a) convertView.getTag();
            }
            LabelBean labelBean = SearchLabelActivity.this.f55653h.get(position);
            com.join.android.app.common.utils.l.h(aVar.f55666a, labelBean.getTag_icon());
            aVar.f55667b.setText(labelBean.getTag_name());
            aVar.f55668c.setText(labelBean.getPosts() + "条帖子");
            return convertView;
        }

        /* synthetic */ f(SearchLabelActivity searchLabelActivity, a aVar) {
            this();
        }
    }

    private void d() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            i();
        } else {
            j();
            c("");
        }
    }

    @AfterViews
    void a() {
        this.f55655j = com.join.mgps.rpc.impl.g.A0();
        this.f55659n = getIntent().getIntExtra("postingLabelType", 1);
        this.f55650e.setFilters(new InputFilter[]{this.f55657l});
        this.f55650e.setOnKeyListener(new b());
        this.f55650e.addTextChangedListener(new c());
        this.f55649d.setOnClickListener(new d());
        f fVar = new f(this, null);
        this.f55654i = fVar;
        this.f55648c.setAdapter((ListAdapter) fVar);
        this.f55648c.setOnItemClickListener(new e());
        if (this.f55647b != 1) {
            d();
        } else {
            e();
        }
    }

    @Click
    void b() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void c(String key) {
        try {
            ResultResMainBean<List<LabelBean>> resultResMainBeanD = this.f55647b == 1 ? this.f55655j.d(key) : this.f55655j.Y(this.f55658m.getUid(), key, this.f55659n);
            if (f()) {
                return;
            }
            if (resultResMainBeanD.getError() == 0) {
                l(resultResMainBeanD.getData());
            } else if (this.f55653h.size() <= 0) {
                k("网络异常，请重试");
            } else {
                l(new ArrayList());
            }
        } catch (Exception unused) {
            if (this.f55653h.size() <= 0) {
                i();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e() {
        this.f55648c.setVisibility(0);
        this.f55652g.setVisibility(8);
        this.f55651f.setVisibility(8);
    }

    boolean f() {
        return isFinishing() || isDestroyed();
    }

    @Click
    void g() {
        d();
    }

    @Click
    void h() {
        UtilsMy.N3(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i() {
        this.f55648c.setVisibility(8);
        this.f55652g.setVisibility(8);
        this.f55651f.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void j() {
        this.f55652g.setVisibility(0);
        this.f55651f.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void k(String info) {
        if (f()) {
            return;
        }
        com.join.mgps.Util.a3.b(this).d(info);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l(List<LabelBean> datas) {
        if (TextUtils.isEmpty(this.f55650e.getText().toString().trim())) {
            if (this.f55647b == 1) {
                this.f55656k.setVisibility(8);
            } else {
                this.f55656k.setText("推荐话题");
                this.f55656k.setPadding(com.join.mgps.Util.i0.a(this, 15.0f), 0, 0, 0);
                this.f55656k.setGravity(19);
                this.f55656k.setVisibility(0);
            }
            this.f55648c.setVisibility(0);
        } else if (datas == null || datas.size() <= 0) {
            this.f55656k.setText("无匹配结果");
            this.f55656k.setPadding(0, 0, 0, 0);
            this.f55656k.setGravity(17);
            this.f55656k.setVisibility(0);
            this.f55648c.setVisibility(8);
        } else {
            this.f55656k.setVisibility(8);
            this.f55648c.setVisibility(0);
        }
        this.f55652g.setVisibility(8);
        this.f55651f.setVisibility(8);
        this.f55653h.clear();
        if (datas != null && datas.size() >= 0) {
            this.f55653h.addAll(datas);
        }
        this.f55654i.notifyDataSetChanged();
    }
}
