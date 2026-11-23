package com.join.mgps.customview.input;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class InputNumView extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f66599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f66600c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private GridView f66601d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InputView_Num f66602e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d f66603f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f66604g;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (InputNumView.this.f66603f != null) {
                InputNumView.this.f66603f.a();
            }
        }
    }

    class b implements AdapterView.OnItemClickListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
            if (i10 == 11) {
                InputNumView.this.f66602e.c();
            } else if (i10 == 10) {
                InputNumView.this.f66602e.a("0", true);
            } else {
                if (i10 == 9) {
                    return;
                }
                InputNumView.this.f66602e.a(String.valueOf(i10 + 1), true);
            }
        }
    }

    class c implements InputView_Num.a {
        c() {
        }

        @Override // com.join.mgps.customview.input.InputView_Num.a
        public void a(String num) {
            if (InputNumView.this.f66603f != null) {
                InputNumView.this.f66603f.b(num);
            }
        }
    }

    public interface d {
        void a();

        void b(String num);
    }

    class e extends BaseAdapter {
        e() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return 12;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewInflate = LayoutInflater.from(InputNumView.this.f66599b).inflate(R.layout.item_inputviewlist, viewGroup, false);
            TextView textView = (TextView) viewInflate.findViewById(R.id.myInputPwdListItem_tv);
            if (i10 == 9) {
                textView.setVisibility(8);
                viewInflate.findViewById(R.id.myInputPwdListItem_delete).setVisibility(8);
            } else if (i10 == 10) {
                viewInflate.findViewById(R.id.myInputPwdListItem_delete).setVisibility(8);
                textView.setVisibility(0);
                textView.setText("0");
            } else if (i10 == 11) {
                viewInflate.findViewById(R.id.myInputPwdListItem_delete).setVisibility(0);
                textView.setVisibility(8);
            } else {
                textView.setText((i10 + 1) + "");
                viewInflate.findViewById(R.id.myInputPwdListItem_delete).setVisibility(8);
                textView.setVisibility(0);
            }
            return viewInflate;
        }
    }

    public InputNumView(Context context) {
        super(context);
        e();
    }

    private void f() {
        this.f66600c.setOnClickListener(new a());
        this.f66601d.setOnItemClickListener(new b());
        this.f66602e.setOnFinishListener(new c());
    }

    public void d() {
        this.f66602e.b();
    }

    public void e() {
        Context context = getContext();
        this.f66599b = context;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_input, this);
        this.f66604g = (TextView) viewInflate.findViewById(R.id.tv_title);
        this.f66600c = viewInflate.findViewById(R.id.iv_close);
        this.f66601d = (GridView) viewInflate.findViewById(R.id.MyPwdInput_list);
        this.f66602e = (InputView_Num) findViewById(R.id.MyPwdInput_inputpwd);
        this.f66601d.setAdapter((ListAdapter) new e());
        f();
    }

    public void setCurrentPwd(String pwd) {
        int length = pwd.length();
        for (int i10 = 0; i10 < length; i10++) {
            this.f66602e.a(String.valueOf(pwd.charAt(i10)), false);
        }
    }

    public void setListener(d inputNumListener) {
        this.f66603f = inputNumListener;
    }

    public void setNumLengthAndIsPwd(int length, boolean isPwd) {
        this.f66602e.setNumLengthAndIsPwd(length, isPwd);
    }

    public void setTitle(String title) {
        this.f66604g.setText(title);
    }

    public InputNumView(Context context, AttributeSet attrs) {
        super(context, attrs);
        e();
    }

    public InputNumView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        e();
    }
}
