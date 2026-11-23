package com.byazt.xj;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.cd.x;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1471, 20})
public class c<E extends ViewGroup> extends ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<ve<View>> f21852c;

    public c(Context context) {
        this(context, null);
    }

    public void c(ve veVar) {
        if (veVar == null) {
            return;
        }
        this.f21852c.add(veVar);
        View viewI = veVar.i();
        if (viewI != null) {
            ((ViewGroup) this.f21881n).addView(viewI);
        }
    }

    public List<ve<View>> sp() {
        return this.f21852c;
    }

    @Override // com.byazt.xj.ve
    public void tt() {
        super.tt();
    }

    @Override // com.byazt.xj.ve
    public ve ve(String str) {
        ve<T> veVarA;
        if (!TextUtils.isEmpty(str) && da(str) != null) {
            return this;
        }
        for (ve<View> veVar : this.f21852c) {
            if (veVar != null && (veVarA = veVar.a(str)) != 0) {
                return veVarA;
            }
        }
        return null;
    }

    public C0482c x() {
        return new C0482c(this);
    }

    public c(Context context, c cVar) {
        super(context, cVar);
        this.f21852c = new ArrayList();
    }

    @Override // com.byazt.xj.ve
    public ve tt(String str) {
        ve<T> veVarN;
        if (!TextUtils.isEmpty(str) && TextUtils.equals(str, this.f21888t)) {
            return this;
        }
        for (ve<View> veVar : this.f21852c) {
            if (veVar != null && (veVarN = veVar.n(str)) != 0) {
                return veVarN;
            }
        }
        return null;
    }

    public void c(ve veVar, ViewGroup.LayoutParams layoutParams) {
        if (veVar == null) {
            return;
        }
        this.f21852c.add(veVar);
        View viewI = veVar.i();
        if (viewI != null) {
            ((ViewGroup) this.f21881n).addView(viewI, layoutParams);
        }
    }

    @Override // com.byazt.xj.ve
    public ve c(String str) {
        ve<T> veVarUj;
        if (!TextUtils.isEmpty(str) && TextUtils.equals(str, this.sl)) {
            return this;
        }
        for (ve<View> veVar : this.f21852c) {
            if (veVar != null && (veVarUj = veVar.uj(str)) != 0) {
                return veVarUj;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: com.byazt.xj.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 1471, 44})
    public static class C0482c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f21853a;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public float f21855da;
        public ViewGroup.LayoutParams gr;
        public boolean gt;
        public boolean gu;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f21856i;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f21857m;
        public boolean my;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public float f21858n;
        public boolean nu;
        public boolean qy;
        public boolean rh;
        public boolean rl;
        public float sl;
        public float sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public float f21859t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public float f21860u;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public float f21861x;
        public float yp;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public boolean f21862z;
        public c zm;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f21854c = -2.0f;
        public float tt = -2.0f;
        public float ve = 0.0f;
        public float uj = 0.0f;

        public C0482c(c cVar) {
            this.zm = cVar;
        }

        public void c(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
            }
            str.hashCode();
            switch (str) {
                case "paddingLeft":
                    this.sl = x.c(context, str2);
                    this.f21857m = true;
                    break;
                case "minWidth":
                    this.ve = x.c(context, str2);
                    break;
                case "height":
                    if (TextUtils.equals(str2, "match_parent")) {
                        this.tt = -1.0f;
                        break;
                    } else {
                        if (!TextUtils.equals(str2, "wrap_content")) {
                            this.tt = x.c(context, str2);
                        } else {
                            this.tt = -2.0f;
                        }
                        break;
                    }
                    break;
                case "margin":
                    this.f21858n = x.c(context, str2);
                    break;
                case "marginTop":
                    this.f21861x = x.c(context, str2);
                    this.qy = true;
                    break;
                case "padding":
                    this.f21855da = x.c(context, str2);
                    this.f21862z = true;
                    break;
                case "marginBottom":
                    this.f21856i = x.c(context, str2);
                    this.gu = true;
                    break;
                case "minHeight":
                    this.uj = x.c(context, str2);
                    break;
                case "paddingTop":
                    this.f21859t = x.c(context, str2);
                    this.rh = true;
                    break;
                case "width":
                    if (TextUtils.equals(str2, "match_parent")) {
                        this.f21854c = -1.0f;
                        break;
                    } else {
                        if (!TextUtils.equals(str2, "wrap_content")) {
                            this.f21854c = x.c(context, str2);
                        } else {
                            this.f21854c = -2.0f;
                        }
                        break;
                    }
                    break;
                case "paddingBottom":
                    this.yp = x.c(context, str2);
                    this.my = true;
                    break;
                case "paddingRight":
                    this.f21860u = x.c(context, str2);
                    this.nu = true;
                    break;
                case "marginRight":
                    this.sp = x.c(context, str2);
                    this.rl = true;
                    break;
                case "marginLeft":
                    this.f21853a = x.c(context, str2);
                    this.gt = true;
                    break;
            }
        }

        public String toString() {
            return "LayoutParams{mWidth=" + this.f21854c + ", mHeight=" + this.tt + ", mMargin=" + this.f21858n + ", mMarginLeft=" + this.f21853a + ", mMarginRight=" + this.sp + ", mMarginTop=" + this.f21861x + ", mMarginBottom=" + this.f21856i + ", mParams=" + this.gr + '}';
        }

        public ViewGroup.LayoutParams c() {
            ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams((int) this.f21854c, (int) this.tt);
            marginLayoutParams.leftMargin = (int) (this.gt ? this.f21853a : this.f21858n);
            marginLayoutParams.rightMargin = (int) (this.rl ? this.sp : this.f21858n);
            marginLayoutParams.topMargin = (int) (this.qy ? this.f21861x : this.f21858n);
            marginLayoutParams.bottomMargin = (int) (this.gu ? this.f21856i : this.f21858n);
            return marginLayoutParams;
        }
    }
}
