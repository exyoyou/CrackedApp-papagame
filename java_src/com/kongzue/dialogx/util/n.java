package com.kongzue.dialogx.util;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.interfaces.BaseDialog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class n extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List<CharSequence> f74208b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f74209c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.kongzue.dialogx.dialogs.i f74210d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    LayoutInflater f74211e;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        LinearLayout f74212a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f74213b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f74214c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Space f74215d;

        a() {
        }
    }

    public n(com.kongzue.dialogx.dialogs.i iVar, Context context, List<CharSequence> list) {
        this.f74210d = iVar;
        this.f74208b = list;
        this.f74209c = context;
        this.f74211e = LayoutInflater.from(context);
    }

    private boolean b(int i10, int i11) {
        return (i10 & i11) == i11;
    }

    public List<CharSequence> a() {
        return this.f74208b;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.f74208b == null) {
            this.f74208b = new ArrayList();
        }
        return this.f74208b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return this.f74208b.get(i10);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        a aVar;
        Space space;
        int iG;
        if (view == null) {
            a aVar2 = new a();
            int i11 = R.layout.item_dialogx_material_context_menu_normal_text;
            if (this.f74210d.T().j() != null && (iG = this.f74210d.T().j().g(this.f74210d.i0())) != 0) {
                i11 = iG;
            }
            View viewInflate = this.f74211e.inflate(i11, (ViewGroup) null);
            aVar2.f74212a = (LinearLayout) viewInflate.findViewById(R.id.box_item);
            aVar2.f74213b = (ImageView) viewInflate.findViewById(R.id.img_dialogx_menu_icon);
            aVar2.f74214c = (TextView) viewInflate.findViewById(R.id.txt_dialogx_menu_text);
            aVar2.f74215d = (Space) viewInflate.findViewById(R.id.space_dialogx_right_padding);
            viewInflate.setTag(aVar2);
            aVar = aVar2;
            view = viewInflate;
        } else {
            aVar = (a) view.getTag();
        }
        if (this.f74210d.S2(i10)) {
            view.setAlpha(1.0f);
        } else {
            view.setAlpha(0.4f);
        }
        int iF = this.f74210d.T().j() == null ? 0 : this.f74210d.T().j().f(this.f74210d.i0(), i10, getCount(), false);
        if (iF != 0) {
            view.setBackgroundResource(iF);
        }
        if (aVar.f74212a != null) {
            if (this.f74210d.H2() == i10) {
                aVar.f74212a.setBackgroundResource(this.f74210d.i0() ? R.color.black5 : R.color.white5);
            } else {
                aVar.f74212a.setBackgroundResource(R.color.empty);
            }
        }
        aVar.f74213b.setVisibility(8);
        aVar.f74214c.setText(this.f74208b.get(i10));
        if (this.f74210d.T().j() != null && this.f74210d.T().j().j() != 0) {
            if (i10 == 0) {
                view.setPadding(0, this.f74210d.T().j().j(), 0, 0);
            } else if (i10 == getCount() - 1) {
                view.setPadding(0, 0, 0, this.f74210d.T().j().j());
            } else {
                view.setPadding(0, 0, 0, 0);
            }
        }
        int i12 = this.f74210d.i0() ? R.color.black90 : R.color.white90;
        aVar.f74214c.setTextColor(this.f74209c.getResources().getColor(i12));
        if (this.f74210d.C2() != null) {
            BaseDialog.S0(aVar.f74214c, this.f74210d.C2());
        }
        if (this.f74210d.F2() != null) {
            if (this.f74210d.F2() instanceof com.kongzue.dialogx.interfaces.l) {
                boolean zC = ((com.kongzue.dialogx.interfaces.l) this.f74210d.F2()).c(this.f74210d, i10, this.f74208b.get(i10).toString(), aVar.f74213b);
                boolean zQ2 = this.f74210d.F2().b() == null ? this.f74210d.Q2() : this.f74210d.F2().b().booleanValue();
                aVar.f74213b.setVisibility(zC ? 0 : 8);
                if (zC) {
                    if (zQ2) {
                        aVar.f74213b.setImageTintList(ColorStateList.valueOf(this.f74209c.getResources().getColor(i12)));
                    }
                    Space space2 = aVar.f74215d;
                    if (space2 != null) {
                        space2.setVisibility(0);
                    }
                } else {
                    Space space3 = aVar.f74215d;
                    if (space3 != null) {
                        space3.setVisibility(8);
                    }
                }
            } else {
                int iA = this.f74210d.F2().a(this.f74210d, i10, this.f74208b.get(i10).toString());
                boolean zQ3 = this.f74210d.F2().b() == null ? this.f74210d.Q2() : this.f74210d.F2().b().booleanValue();
                if (iA != 0) {
                    aVar.f74213b.setVisibility(0);
                    aVar.f74213b.setImageResource(iA);
                    if ((b(aVar.f74214c.getGravity(), 17) || b(aVar.f74214c.getGravity(), 1)) && (space = aVar.f74215d) != null) {
                        space.setVisibility(0);
                    }
                    if (zQ3) {
                        aVar.f74213b.setImageTintList(ColorStateList.valueOf(this.f74209c.getResources().getColor(i12)));
                    }
                } else {
                    aVar.f74213b.setVisibility(8);
                    Space space4 = aVar.f74215d;
                    if (space4 != null) {
                        space4.setVisibility(8);
                    }
                }
            }
        } else if (this.f74210d.x2() != null) {
            int iW2 = this.f74210d.w2(i10);
            boolean zQ4 = this.f74210d.Q2();
            if (iW2 != 0) {
                aVar.f74213b.setVisibility(0);
                aVar.f74213b.setImageResource(iW2);
                Space space5 = aVar.f74215d;
                if (space5 != null) {
                    space5.setVisibility(0);
                }
                if (zQ4) {
                    aVar.f74213b.setImageTintList(ColorStateList.valueOf(this.f74209c.getResources().getColor(i12)));
                }
            } else {
                aVar.f74213b.setVisibility(8);
                Space space6 = aVar.f74215d;
                if (space6 != null) {
                    space6.setVisibility(8);
                }
            }
        } else {
            aVar.f74213b.setVisibility(8);
            Space space7 = aVar.f74215d;
            if (space7 != null) {
                space7.setVisibility(8);
            }
        }
        if (this.f74210d.B2() != null) {
            this.f74210d.B2().a(this.f74210d, i10, view, viewGroup);
        }
        return view;
    }
}
