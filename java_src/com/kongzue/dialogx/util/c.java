package com.kongzue.dialogx.util;

import android.content.Context;
import android.content.res.ColorStateList;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.interfaces.BaseDialog;
import com.kongzue.dialogx.interfaces.SELECT_MODE;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class c extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.kongzue.dialogx.dialogs.b f74147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<CharSequence> f74148c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Context f74149d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextInfo f74150e;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ImageView f74151a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f74152b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f74153c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Space f74154d;

        a() {
        }
    }

    public c(com.kongzue.dialogx.dialogs.b bVar, Context context, List<CharSequence> list) {
        this.f74148c = list;
        this.f74149d = context;
        this.f74147b = bVar;
    }

    private int b(float f10) {
        return (int) ((f10 / this.f74149d.getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CharSequence getItem(int i10) {
        return this.f74148c.get(i10);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f74148c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        a aVar;
        int iE;
        if (view == null) {
            a aVar2 = new a();
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f74149d);
            int iE2 = R.layout.item_dialogx_material_bottom_menu_normal_text;
            if (this.f74147b.T().f() != null && (iE = this.f74147b.T().f().e(this.f74147b.i0(), i10, getCount(), false)) != 0) {
                iE2 = (!(BaseDialog.j0(this.f74147b.x2()) && BaseDialog.j0(this.f74147b.o2()) && this.f74147b.i2() == null) && i10 == 0) ? this.f74147b.T().f().e(this.f74147b.i0(), i10, getCount(), true) : iE;
            }
            View viewInflate = layoutInflaterFrom.inflate(iE2, (ViewGroup) null);
            aVar2.f74151a = (ImageView) viewInflate.findViewById(R.id.img_dialogx_menu_icon);
            aVar2.f74152b = (ImageView) viewInflate.findViewById(R.id.img_dialogx_menu_selection);
            aVar2.f74153c = (TextView) viewInflate.findViewById(R.id.txt_dialogx_menu_text);
            aVar2.f74154d = (Space) viewInflate.findViewById(R.id.space_dialogx_right_padding);
            viewInflate.setTag(aVar2);
            aVar = aVar2;
            view = viewInflate;
        } else {
            aVar = (a) view.getTag();
        }
        if (this.f74147b.X4(i10)) {
            view.setAlpha(1.0f);
        } else {
            view.setAlpha(0.4f);
        }
        if (this.f74147b.P4() == SELECT_MODE.SINGLE) {
            if (aVar.f74152b != null) {
                if (this.f74147b.R4() == i10) {
                    aVar.f74152b.setVisibility(0);
                    int iH = this.f74147b.T().f().h(this.f74147b.i0(), true);
                    if (iH != 0) {
                        aVar.f74152b.setImageResource(iH);
                    }
                } else {
                    int iH2 = this.f74147b.T().f().h(this.f74147b.i0(), false);
                    if (iH2 != 0) {
                        aVar.f74152b.setVisibility(0);
                        aVar.f74152b.setImageResource(iH2);
                    } else {
                        aVar.f74152b.setVisibility(4);
                    }
                }
            }
        } else if (this.f74147b.P4() != SELECT_MODE.MULTIPLE) {
            aVar.f74152b.setVisibility(8);
        } else if (aVar.f74152b != null) {
            if (this.f74147b.U4().contains(Integer.valueOf(i10))) {
                aVar.f74152b.setVisibility(0);
                int iG = this.f74147b.T().f().g(this.f74147b.i0(), true);
                if (iG != 0) {
                    aVar.f74152b.setImageResource(iG);
                }
            } else {
                int iG2 = this.f74147b.T().f().g(this.f74147b.i0(), false);
                if (iG2 != 0) {
                    aVar.f74152b.setVisibility(0);
                    aVar.f74152b.setImageResource(iG2);
                } else {
                    aVar.f74152b.setVisibility(4);
                }
            }
        }
        int i11 = this.f74147b.T().f() != null ? this.f74147b.T().f().i(this.f74147b.i0()) : 0;
        if (this.f74147b.R4() == i10 && i11 != 0) {
            view.setBackgroundTintList(ColorStateList.valueOf(this.f74149d.getResources().getColor(i11)));
        }
        CharSequence charSequence = this.f74148c.get(i10);
        int iF = this.f74147b.i0() ? R.color.black90 : R.color.white90;
        if (this.f74147b.T().f() != null && this.f74147b.T().f().f(this.f74147b.i0()) != 0) {
            iF = this.f74147b.T().f().f(this.f74147b.i0());
        }
        if (charSequence != null) {
            if (this.f74150e == null) {
                this.f74150e = new TextInfo().p(aVar.f74153c.getEllipsize() == TextUtils.TruncateAt.END).k(aVar.f74153c.getTextColors().getDefaultColor()).j(aVar.f74153c.getPaint().isFakeBoldText()).l(b(aVar.f74153c.getTextSize())).n(aVar.f74153c.getGravity()).o(aVar.f74153c.getMaxLines());
            }
            aVar.f74153c.setText(charSequence);
            aVar.f74153c.setTextColor(this.f74149d.getResources().getColor(iF));
            if (this.f74147b.I4() != null) {
                TextInfo textInfoB = this.f74147b.I4().b(this.f74147b, i10, charSequence.toString());
                if (textInfoB != null) {
                    BaseDialog.S0(aVar.f74153c, textInfoB);
                } else if (this.f74147b.M4() != null) {
                    BaseDialog.S0(aVar.f74153c, this.f74147b.M4());
                } else {
                    BaseDialog.S0(aVar.f74153c, this.f74150e);
                }
            } else if (this.f74147b.M4() != null) {
                BaseDialog.S0(aVar.f74153c, this.f74147b.M4());
            }
            if (aVar.f74152b != null) {
                if (this.f74147b.T().f() == null || !this.f74147b.T().f().j(this.f74147b.i0())) {
                    aVar.f74152b.setImageTintList(null);
                } else {
                    aVar.f74152b.setImageTintList(ColorStateList.valueOf(this.f74149d.getResources().getColor(iF)));
                }
            }
            if (this.f74147b.N4() != null) {
                if (this.f74147b.N4() instanceof com.kongzue.dialogx.interfaces.l) {
                    boolean zC = ((com.kongzue.dialogx.interfaces.l) this.f74147b.N4()).c(this.f74147b, i10, charSequence.toString(), aVar.f74151a);
                    boolean zW4 = this.f74147b.N4().b() == null ? this.f74147b.W4() : this.f74147b.N4().b().booleanValue();
                    aVar.f74151a.setVisibility(zC ? 0 : 8);
                    if (zC) {
                        if (zW4) {
                            aVar.f74151a.setImageTintList(ColorStateList.valueOf(this.f74149d.getResources().getColor(iF)));
                        }
                        Space space = aVar.f74154d;
                        if (space != null) {
                            space.setVisibility(0);
                        }
                    } else {
                        Space space2 = aVar.f74154d;
                        if (space2 != null) {
                            space2.setVisibility(8);
                        }
                    }
                } else {
                    int iA = this.f74147b.N4().a(this.f74147b, i10, charSequence.toString());
                    boolean zW5 = this.f74147b.N4().b() == null ? this.f74147b.W4() : this.f74147b.N4().b().booleanValue();
                    if (iA != 0) {
                        aVar.f74151a.setVisibility(0);
                        aVar.f74151a.setImageResource(iA);
                        Space space3 = aVar.f74154d;
                        if (space3 != null) {
                            space3.setVisibility(0);
                        }
                        if (zW5) {
                            aVar.f74151a.setImageTintList(ColorStateList.valueOf(this.f74149d.getResources().getColor(iF)));
                        }
                    } else {
                        aVar.f74151a.setVisibility(8);
                        Space space4 = aVar.f74154d;
                        if (space4 != null) {
                            space4.setVisibility(8);
                        }
                    }
                }
            } else if (this.f74147b.H4() != null) {
                int iG4 = this.f74147b.G4(i10);
                boolean zW6 = this.f74147b.W4();
                if (iG4 != 0) {
                    aVar.f74151a.setVisibility(0);
                    aVar.f74151a.setImageResource(iG4);
                    Space space5 = aVar.f74154d;
                    if (space5 != null) {
                        space5.setVisibility(0);
                    }
                    if (zW6) {
                        aVar.f74151a.setImageTintList(ColorStateList.valueOf(this.f74149d.getResources().getColor(iF)));
                    }
                } else {
                    aVar.f74151a.setVisibility(8);
                    Space space6 = aVar.f74154d;
                    if (space6 != null) {
                        space6.setVisibility(8);
                    }
                }
            } else {
                aVar.f74151a.setVisibility(8);
                Space space7 = aVar.f74154d;
                if (space7 != null) {
                    space7.setVisibility(8);
                }
            }
        }
        if (this.f74147b.L4() != null) {
            this.f74147b.L4().a(this.f74147b, i10, view, viewGroup);
        }
        return view;
    }
}
