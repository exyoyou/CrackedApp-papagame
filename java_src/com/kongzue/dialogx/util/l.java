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
public class l extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.kongzue.dialogx.dialogs.h f74199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<CharSequence> f74200c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Context f74201d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextInfo f74202e;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ImageView f74203a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f74204b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f74205c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Space f74206d;

        a() {
        }
    }

    public l(com.kongzue.dialogx.dialogs.h hVar, Context context, List<CharSequence> list) {
        this.f74200c = list;
        this.f74201d = context;
        this.f74199b = hVar;
    }

    private int b(float f10) {
        return (int) ((f10 / this.f74201d.getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CharSequence getItem(int i10) {
        return this.f74200c.get(i10);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f74200c.size();
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
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f74201d);
            int iE2 = R.layout.item_dialogx_material_bottom_menu_normal_text;
            if (this.f74199b.T().f() != null && (iE = this.f74199b.T().f().e(this.f74199b.i0(), i10, getCount(), false)) != 0) {
                iE2 = (!(BaseDialog.j0(this.f74199b.j3()) && BaseDialog.j0(this.f74199b.Y2()) && this.f74199b.R2() == null) && i10 == 0) ? this.f74199b.T().f().e(this.f74199b.i0(), i10, getCount(), true) : iE;
            }
            View viewInflate = layoutInflaterFrom.inflate(iE2, (ViewGroup) null);
            aVar2.f74203a = (ImageView) viewInflate.findViewById(R.id.img_dialogx_menu_icon);
            aVar2.f74204b = (ImageView) viewInflate.findViewById(R.id.img_dialogx_menu_selection);
            aVar2.f74205c = (TextView) viewInflate.findViewById(R.id.txt_dialogx_menu_text);
            aVar2.f74206d = (Space) viewInflate.findViewById(R.id.space_dialogx_right_padding);
            viewInflate.setTag(aVar2);
            aVar = aVar2;
            view = viewInflate;
        } else {
            aVar = (a) view.getTag();
        }
        if (this.f74199b.E5(i10)) {
            view.setAlpha(1.0f);
        } else {
            view.setAlpha(0.4f);
        }
        if (this.f74199b.w5() == SELECT_MODE.SINGLE) {
            if (aVar.f74204b != null) {
                if (this.f74199b.y5() == i10) {
                    aVar.f74204b.setVisibility(0);
                    int iH = this.f74199b.T().f().h(this.f74199b.i0(), true);
                    if (iH != 0) {
                        aVar.f74204b.setImageResource(iH);
                    }
                } else {
                    int iH2 = this.f74199b.T().f().h(this.f74199b.i0(), false);
                    if (iH2 != 0) {
                        aVar.f74204b.setVisibility(0);
                        aVar.f74204b.setImageResource(iH2);
                    } else {
                        aVar.f74204b.setVisibility(4);
                    }
                }
            }
        } else if (this.f74199b.w5() != SELECT_MODE.MULTIPLE) {
            aVar.f74204b.setVisibility(8);
        } else if (aVar.f74204b != null) {
            if (this.f74199b.B5().contains(Integer.valueOf(i10))) {
                aVar.f74204b.setVisibility(0);
                int iG = this.f74199b.T().f().g(this.f74199b.i0(), true);
                if (iG != 0) {
                    aVar.f74204b.setImageResource(iG);
                }
            } else {
                int iG2 = this.f74199b.T().f().g(this.f74199b.i0(), false);
                if (iG2 != 0) {
                    aVar.f74204b.setVisibility(0);
                    aVar.f74204b.setImageResource(iG2);
                } else {
                    aVar.f74204b.setVisibility(4);
                }
            }
        }
        int i11 = this.f74199b.T().f() != null ? this.f74199b.T().f().i(this.f74199b.i0()) : 0;
        if (this.f74199b.y5() == i10 && i11 != 0) {
            view.setBackgroundTintList(ColorStateList.valueOf(this.f74201d.getResources().getColor(i11)));
        }
        CharSequence charSequence = this.f74200c.get(i10);
        int iF = this.f74199b.i0() ? R.color.black90 : R.color.white90;
        if (this.f74199b.T().f() != null && this.f74199b.T().f().f(this.f74199b.i0()) != 0) {
            iF = this.f74199b.T().f().f(this.f74199b.i0());
        }
        if (charSequence != null) {
            if (this.f74202e == null) {
                this.f74202e = new TextInfo().p(aVar.f74205c.getEllipsize() == TextUtils.TruncateAt.END).k(aVar.f74205c.getTextColors().getDefaultColor()).j(aVar.f74205c.getPaint().isFakeBoldText()).l(b(aVar.f74205c.getTextSize())).n(aVar.f74205c.getGravity()).o(aVar.f74205c.getMaxLines());
            }
            aVar.f74205c.setText(charSequence);
            aVar.f74205c.setTextColor(this.f74201d.getResources().getColor(iF));
            if (this.f74199b.n5() != null) {
                TextInfo textInfoB = this.f74199b.n5().b(this.f74199b, i10, charSequence.toString());
                if (textInfoB != null) {
                    BaseDialog.S0(aVar.f74205c, textInfoB);
                } else if (this.f74199b.r5() != null) {
                    BaseDialog.S0(aVar.f74205c, this.f74199b.r5());
                } else {
                    BaseDialog.S0(aVar.f74205c, this.f74202e);
                }
            } else if (this.f74199b.r5() != null) {
                BaseDialog.S0(aVar.f74205c, this.f74199b.r5());
            }
            if (aVar.f74204b != null) {
                if (this.f74199b.T().f() == null || !this.f74199b.T().f().j(this.f74199b.i0())) {
                    aVar.f74204b.setImageTintList(null);
                } else {
                    aVar.f74204b.setImageTintList(ColorStateList.valueOf(this.f74201d.getResources().getColor(iF)));
                }
            }
            if (this.f74199b.u5() != null) {
                if (this.f74199b.u5() instanceof com.kongzue.dialogx.interfaces.l) {
                    boolean zC = ((com.kongzue.dialogx.interfaces.l) this.f74199b.u5()).c(this.f74199b, i10, charSequence.toString(), aVar.f74203a);
                    boolean zD5 = this.f74199b.u5().b() == null ? this.f74199b.D5() : this.f74199b.u5().b().booleanValue();
                    aVar.f74203a.setVisibility(zC ? 0 : 8);
                    if (zC) {
                        if (zD5) {
                            aVar.f74203a.setImageTintList(ColorStateList.valueOf(this.f74201d.getResources().getColor(iF)));
                        }
                        Space space = aVar.f74206d;
                        if (space != null) {
                            space.setVisibility(0);
                        }
                    } else {
                        Space space2 = aVar.f74206d;
                        if (space2 != null) {
                            space2.setVisibility(8);
                        }
                    }
                } else {
                    int iA = this.f74199b.u5().a(this.f74199b, i10, charSequence.toString());
                    boolean zD6 = this.f74199b.u5().b() == null ? this.f74199b.D5() : this.f74199b.u5().b().booleanValue();
                    if (iA != 0) {
                        aVar.f74203a.setVisibility(0);
                        aVar.f74203a.setImageResource(iA);
                        Space space3 = aVar.f74206d;
                        if (space3 != null) {
                            space3.setVisibility(0);
                        }
                        if (zD6) {
                            aVar.f74203a.setImageTintList(ColorStateList.valueOf(this.f74201d.getResources().getColor(iF)));
                        }
                    } else {
                        aVar.f74203a.setVisibility(8);
                        Space space4 = aVar.f74206d;
                        if (space4 != null) {
                            space4.setVisibility(8);
                        }
                    }
                }
            } else if (this.f74199b.l5() != null) {
                int iK5 = this.f74199b.k5(i10);
                boolean zD7 = this.f74199b.D5();
                if (iK5 != 0) {
                    aVar.f74203a.setVisibility(0);
                    aVar.f74203a.setImageResource(iK5);
                    Space space5 = aVar.f74206d;
                    if (space5 != null) {
                        space5.setVisibility(0);
                    }
                    if (zD7) {
                        aVar.f74203a.setImageTintList(ColorStateList.valueOf(this.f74201d.getResources().getColor(iF)));
                    }
                } else {
                    aVar.f74203a.setVisibility(8);
                    Space space6 = aVar.f74206d;
                    if (space6 != null) {
                        space6.setVisibility(8);
                    }
                }
            } else {
                aVar.f74203a.setVisibility(8);
                Space space7 = aVar.f74206d;
                if (space7 != null) {
                    space7.setVisibility(8);
                }
            }
        }
        if (this.f74199b.q5() != null) {
            this.f74199b.q5().a(this.f74199b, i10, view, viewGroup);
        }
        return view;
    }
}
