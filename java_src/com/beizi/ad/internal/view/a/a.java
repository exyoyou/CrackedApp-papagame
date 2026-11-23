package com.beizi.ad.internal.view.a;

import android.app.Dialog;
import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.beizi.ad.lance.a.n;
import com.beizi.fusion.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes6.dex */
public class a extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static e f9123b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<c> f9124a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f9125c;

    /* JADX INFO: renamed from: com.beizi.ad.internal.view.a.a$a, reason: collision with other inner class name */
    public static class C0222a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private RecyclerView f9126a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ImageView f9127b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f9128c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private RelativeLayout f9129d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private RelativeLayout f9130e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private EditText f9131f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f9132g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Button f9133h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private View f9134i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private a f9135j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private b f9136k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f9137l;

        public C0222a(final Context context) {
            this.f9135j = new a(context, R.style.beizi_ad_custom_dialog);
            View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.beizi_complaint_dialog, (ViewGroup) null, false);
            this.f9134i = viewInflate;
            this.f9135j.addContentView(viewInflate, new ViewGroup.LayoutParams(-1, -2));
            this.f9126a = (RecyclerView) this.f9134i.findViewById(R.id.dislike_reasons_list_recycleview);
            this.f9127b = (ImageView) this.f9134i.findViewById(R.id.complaint_dialog_close_view);
            this.f9128c = (TextView) this.f9134i.findViewById(R.id.complaint_other_suggest_view);
            this.f9129d = (RelativeLayout) this.f9134i.findViewById(R.id.complaint_normal_ui);
            this.f9130e = (RelativeLayout) this.f9134i.findViewById(R.id.complaint_other_suggest_layout);
            this.f9131f = (EditText) this.f9134i.findViewById(R.id.complaint_input_other_edittext);
            this.f9132g = (TextView) this.f9134i.findViewById(R.id.complaint_other_suggest_number_textview);
            this.f9133h = (Button) this.f9134i.findViewById(R.id.complaint_other_suggest_submit);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
            linearLayoutManager.setOrientation(1);
            this.f9126a.setLayoutManager(linearLayoutManager);
            a.f9123b.a(new d() { // from class: com.beizi.ad.internal.view.a.a.a.1
                @Override // com.beizi.ad.internal.view.a.a.d
                public void a(View view, int i10, String str) {
                    C0222a.this.a(str);
                }
            });
            this.f9126a.setAdapter(a.f9123b);
            this.f9128c.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.internal.view.a.a.a.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    C0222a.this.f9137l = true;
                    C0222a c0222a = C0222a.this;
                    c0222a.a(context, c0222a.f9131f);
                }
            });
            this.f9127b.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.internal.view.a.a.a.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (C0222a.this.f9137l) {
                        C0222a.this.f9137l = false;
                        C0222a c0222a = C0222a.this;
                        c0222a.a(context, c0222a.f9131f);
                    } else {
                        if (C0222a.this.f9135j != null) {
                            C0222a.this.f9135j.dismiss();
                        }
                        if (C0222a.this.f9136k != null) {
                            C0222a.this.f9136k.a();
                        }
                    }
                }
            });
            this.f9131f.addTextChangedListener(new TextWatcher() { // from class: com.beizi.ad.internal.view.a.a.a.4
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                    String string = charSequence.toString();
                    int length = charSequence.length();
                    if (string.isEmpty()) {
                        C0222a.this.f9133h.setBackground(ContextCompat.getDrawable(context, R.drawable.beizi_complaint_button_disable_shape));
                        C0222a.this.f9133h.setTextColor(context.getResources().getColor(android.R.color.white));
                        C0222a.this.f9133h.setEnabled(false);
                    } else {
                        C0222a.this.f9133h.setBackground(ContextCompat.getDrawable(context, R.drawable.beizi_complaint_button_enable_shape));
                        C0222a.this.f9133h.setTextColor(context.getResources().getColor(android.R.color.black));
                        C0222a.this.f9133h.setEnabled(true);
                    }
                    C0222a.this.f9132g.setText(String.valueOf(length));
                }
            });
            this.f9133h.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.internal.view.a.a.a.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    C0222a.this.a(C0222a.this.f9131f.getText().toString());
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str) {
            b bVar;
            if (!TextUtils.isEmpty(str) && (bVar = this.f9136k) != null) {
                bVar.a(str);
            }
            a aVar = this.f9135j;
            if (aVar != null) {
                aVar.dismiss();
            }
            n.b("BeiZisAd", str + " 被点击了");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Context context, EditText editText) {
            if (this.f9137l) {
                this.f9129d.setVisibility(8);
                this.f9130e.setVisibility(0);
                a(context, true, editText);
            } else {
                this.f9129d.setVisibility(0);
                this.f9130e.setVisibility(8);
                a(context, false, editText);
            }
        }

        private void a(final Context context, boolean z10, final EditText editText) {
            if (z10) {
                editText.requestFocus();
                new Timer().schedule(new TimerTask() { // from class: com.beizi.ad.internal.view.a.a.a.6
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
                        inputMethodManager.showSoftInput(editText, 2);
                        inputMethodManager.toggleSoftInput(2, 1);
                    }
                }, 100L);
            } else {
                editText.clearFocus();
                ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(editText.getWindowToken(), 0);
            }
        }

        public C0222a a(b bVar) {
            this.f9136k = bVar;
            return this;
        }

        public a a() {
            this.f9135j.setContentView(this.f9134i);
            this.f9135j.setCancelable(true);
            this.f9135j.setCanceledOnTouchOutside(false);
            return this.f9135j;
        }
    }

    public interface b {
        void a();

        void a(String str);
    }

    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f9149a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f9150b;

        c() {
        }

        public void a(int i10) {
            this.f9149a = i10;
        }

        public String a() {
            return this.f9150b;
        }

        public void a(String str) {
            this.f9150b = str;
        }
    }

    public interface d {
        void a(View view, int i10, String str);
    }

    class e extends RecyclerView.Adapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public d f9152a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private List<c> f9154c;

        /* JADX INFO: renamed from: com.beizi.ad.internal.view.a.a$e$a, reason: collision with other inner class name */
        public class C0223a extends RecyclerView.ViewHolder {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private TextView f9159b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private View f9160c;

            public C0223a(@NonNull View view) {
                super(view);
                this.f9159b = (TextView) view.findViewById(R.id.dislike_item_multi_one_title);
                this.f9160c = view.findViewById(R.id.complaint_reason_item_divider);
            }
        }

        public e(Context context, List<c> list) {
            this.f9154c = list;
        }

        public void a(d dVar) {
            this.f9152a = dVar;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f9154c.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            return a.this.f9125c;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull final RecyclerView.ViewHolder viewHolder, int i10) {
            final String strA = this.f9154c.get(i10).a();
            if (viewHolder instanceof C0223a) {
                C0223a c0223a = (C0223a) viewHolder;
                c0223a.f9159b.setText(strA);
                if (this.f9154c.size() > 0 && i10 == this.f9154c.size() - 1) {
                    c0223a.f9160c.setVisibility(8);
                }
            }
            if (this.f9152a != null) {
                viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.ad.internal.view.a.a.e.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        e.this.f9152a.a(viewHolder.itemView, viewHolder.getLayoutPosition(), strA);
                    }
                });
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return new C0223a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.beizi_complaint_item_multi_one, viewGroup, false));
        }
    }

    public a(@NonNull Context context, int i10) {
        super(context, i10);
        this.f9124a = null;
        this.f9125c = 1;
        List<c> listB = b();
        this.f9124a = listB;
        f9123b = new e(context, listB);
    }

    private List<c> b() {
        ArrayList arrayList = new ArrayList();
        String[] strArr = {"垃圾广告", "感觉有被冒犯或被歧视", "广告涉及欺诈造假", "广告涉及色情暴力", "广告涉及违禁商品/服务", "对广告内容不感兴趣"};
        for (int i10 = 0; i10 < 6; i10++) {
            String str = strArr[i10];
            c cVar = new c();
            cVar.a(str);
            cVar.a(this.f9125c);
            arrayList.add(cVar);
        }
        return arrayList;
    }
}
