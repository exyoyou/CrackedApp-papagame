package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.proxy.CommonBottomDialogClickProxy;
import com.join.kotlin.discount.viewmodel.CommonBottomDialogViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class m0 extends l0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f41650m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f41651n;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final TextView f41652i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41653j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41654k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f41655l;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41651n = sparseIntArray;
        sparseIntArray.put(R.id.cl_container, 5);
    }

    public m0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 6, f41650m, f41651n));
    }

    private boolean w(MutableLiveData<String> VmBtnCancelText, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f41655l |= 4;
        }
        return true;
    }

    private boolean x(MutableLiveData<String> VmBtnConfirmText, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f41655l |= 8;
        }
        return true;
    }

    private boolean y(MutableLiveData<String> VmContent, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f41655l |= 2;
        }
        return true;
    }

    private boolean z(MutableLiveData<String> VmTitle, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f41655l |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            CommonBottomDialogClickProxy commonBottomDialogClickProxy = this.f41095h;
            if (commonBottomDialogClickProxy != null) {
                commonBottomDialogClickProxy.onConfirmClick();
                return;
            }
            return;
        }
        if (sourceId != 2) {
            return;
        }
        CommonBottomDialogClickProxy commonBottomDialogClickProxy2 = this.f41095h;
        if (commonBottomDialogClickProxy2 != null) {
            commonBottomDialogClickProxy2.onCancelClick();
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x014b  */
    /* JADX WARN: Code duplicated, block: B:107:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:16:0x0037  */
    /* JADX WARN: Code duplicated, block: B:25:0x0052  */
    /* JADX WARN: Code duplicated, block: B:58:0x00be A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:65:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:66:0x00da  */
    /* JADX WARN: Code duplicated, block: B:70:0x00e3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:74:0x00ec A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:76:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:79:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:80:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:82:0x0100  */
    /* JADX WARN: Code duplicated, block: B:85:0x0108  */
    /* JADX WARN: Code duplicated, block: B:88:0x011d  */
    /* JADX WARN: Code duplicated, block: B:91:0x0129  */
    /* JADX WARN: Code duplicated, block: B:94:0x0134  */
    /* JADX WARN: Code duplicated, block: B:97:0x013f  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        boolean z10;
        String value;
        String value2;
        MutableLiveData<String> btnConfirmText;
        String str;
        String value3;
        String str2;
        boolean z11;
        long j11;
        int i10;
        boolean z12;
        int i11;
        long j12;
        String value4;
        boolean z13;
        synchronized (this) {
            j10 = this.f41655l;
            this.f41655l = 0L;
        }
        CommonBottomDialogViewModel commonBottomDialogViewModel = this.f41094g;
        if ((95 & j10) != 0) {
            if ((j10 & 81) == 0) {
                value4 = null;
            } else {
                MutableLiveData<String> title = commonBottomDialogViewModel != null ? commonBottomDialogViewModel.getTitle() : null;
                updateLiveDataRegistration(0, title);
                if (title != null) {
                    value4 = title.getValue();
                } else {
                    value4 = null;
                }
            }
            if ((j10 & 82) == 0) {
                value = null;
            } else {
                MutableLiveData<String> content = commonBottomDialogViewModel != null ? commonBottomDialogViewModel.getContent() : null;
                updateLiveDataRegistration(1, content);
                if (content != null) {
                    value = content.getValue();
                } else {
                    value = null;
                }
            }
            long j13 = j10 & 92;
            if (j13 != 0) {
                MutableLiveData<String> btnCancelText = commonBottomDialogViewModel != null ? commonBottomDialogViewModel.getBtnCancelText() : null;
                updateLiveDataRegistration(2, btnCancelText);
                value2 = btnCancelText != null ? btnCancelText.getValue() : null;
                z13 = value2 == null;
                if (j13 != 0) {
                    j10 = z13 ? j10 | 256 : j10 | 128;
                }
            } else {
                value2 = null;
                z13 = false;
            }
            if ((j10 & 88) != 0) {
                MutableLiveData<String> btnConfirmText2 = commonBottomDialogViewModel != null ? commonBottomDialogViewModel.getBtnConfirmText() : null;
                updateLiveDataRegistration(3, btnConfirmText2);
                value3 = btnConfirmText2 != null ? btnConfirmText2.getValue() : null;
                MutableLiveData<String> mutableLiveData = btnConfirmText2;
                str = value4;
                z10 = z13;
                btnConfirmText = mutableLiveData;
            } else {
                str = value4;
                z10 = z13;
                btnConfirmText = null;
            }
            if ((j10 & 128) != 0) {
                if (commonBottomDialogViewModel != null) {
                    btnConfirmText = commonBottomDialogViewModel.getBtnConfirmText();
                }
                updateLiveDataRegistration(3, btnConfirmText);
                if (btnConfirmText != null) {
                    value3 = btnConfirmText.getValue();
                }
                str2 = value3;
                z11 = str2 == "";
                j11 = j10 & 92;
                if (j11 != 0) {
                    if (z10) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (j11 != 0) {
                        if (z12) {
                            j12 = 1024;
                        } else {
                            j12 = 512;
                        }
                        j10 |= j12;
                    }
                    if (z12) {
                        i11 = 8;
                    } else {
                        i11 = 0;
                    }
                    i10 = i11;
                } else {
                    i10 = 0;
                }
                if ((64 & j10) != 0) {
                    this.f41089b.setOnClickListener(this.f41654k);
                    this.f41652i.setOnClickListener(this.f41653j);
                }
                if ((88 & j10) != 0) {
                    TextViewBindingAdapter.setText(this.f41089b, str2);
                }
                if ((84 & j10) != 0) {
                    TextViewBindingAdapter.setText(this.f41652i, value2);
                }
                if ((j10 & 92) != 0) {
                    this.f41652i.setVisibility(i10);
                }
                if ((j10 & 82) != 0) {
                    TextViewBindingAdapter.setText(this.f41092e, value);
                }
                if ((j10 & 81) != 0) {
                    TextViewBindingAdapter.setText(this.f41093f, str);
                }
            }
            str2 = value3;
            j11 = j10 & 92;
            if (j11 != 0) {
                if (z10) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (j11 != 0) {
                    if (z12) {
                        j12 = 1024;
                    } else {
                        j12 = 512;
                    }
                    j10 |= j12;
                }
                if (z12) {
                    i11 = 8;
                } else {
                    i11 = 0;
                }
                i10 = i11;
            } else {
                i10 = 0;
            }
            if ((64 & j10) != 0) {
                this.f41089b.setOnClickListener(this.f41654k);
                this.f41652i.setOnClickListener(this.f41653j);
            }
            if ((88 & j10) != 0) {
                TextViewBindingAdapter.setText(this.f41089b, str2);
            }
            if ((84 & j10) != 0) {
                TextViewBindingAdapter.setText(this.f41652i, value2);
            }
            if ((j10 & 92) != 0) {
                this.f41652i.setVisibility(i10);
            }
            if ((j10 & 82) != 0) {
                TextViewBindingAdapter.setText(this.f41092e, value);
            }
            if ((j10 & 81) != 0) {
                TextViewBindingAdapter.setText(this.f41093f, str);
            }
        }
        z10 = false;
        value = null;
        value2 = null;
        btnConfirmText = null;
        str = null;
        value3 = null;
        if ((j10 & 128) != 0) {
            if (commonBottomDialogViewModel != null) {
                btnConfirmText = commonBottomDialogViewModel.getBtnConfirmText();
            }
            updateLiveDataRegistration(3, btnConfirmText);
            if (btnConfirmText != null) {
                value3 = btnConfirmText.getValue();
            }
            str2 = value3;
            if (str2 == "") {
            }
            j11 = j10 & 92;
            if (j11 != 0) {
                if (z10) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (j11 != 0) {
                    if (z12) {
                        j12 = 1024;
                    } else {
                        j12 = 512;
                    }
                    j10 |= j12;
                }
                if (z12) {
                    i11 = 8;
                } else {
                    i11 = 0;
                }
                i10 = i11;
            } else {
                i10 = 0;
            }
            if ((64 & j10) != 0) {
                this.f41089b.setOnClickListener(this.f41654k);
                this.f41652i.setOnClickListener(this.f41653j);
            }
            if ((88 & j10) != 0) {
                TextViewBindingAdapter.setText(this.f41089b, str2);
            }
            if ((84 & j10) != 0) {
                TextViewBindingAdapter.setText(this.f41652i, value2);
            }
            if ((j10 & 92) != 0) {
                this.f41652i.setVisibility(i10);
            }
            if ((j10 & 82) != 0) {
                TextViewBindingAdapter.setText(this.f41092e, value);
            }
            if ((j10 & 81) != 0) {
                TextViewBindingAdapter.setText(this.f41093f, str);
            }
        }
        str2 = value3;
        j11 = j10 & 92;
        if (j11 != 0) {
            if (z10) {
                z12 = true;
            } else {
                z12 = z11;
            }
            if (j11 != 0) {
                if (z12) {
                    j12 = 1024;
                } else {
                    j12 = 512;
                }
                j10 |= j12;
            }
            if (z12) {
                i11 = 8;
            } else {
                i11 = 0;
            }
            i10 = i11;
        } else {
            i10 = 0;
        }
        if ((64 & j10) != 0) {
            this.f41089b.setOnClickListener(this.f41654k);
            this.f41652i.setOnClickListener(this.f41653j);
        }
        if ((88 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f41089b, str2);
        }
        if ((84 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f41652i, value2);
        }
        if ((j10 & 92) != 0) {
            this.f41652i.setVisibility(i10);
        }
        if ((j10 & 82) != 0) {
            TextViewBindingAdapter.setText(this.f41092e, value);
        }
        if ((j10 & 81) != 0) {
            TextViewBindingAdapter.setText(this.f41093f, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f41655l != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f41655l = 64L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId == 0) {
            return z((MutableLiveData) object, fieldId);
        }
        if (localFieldId == 1) {
            return y((MutableLiveData) object, fieldId);
        }
        if (localFieldId == 2) {
            return w((MutableLiveData) object, fieldId);
        }
        if (localFieldId != 3) {
            return false;
        }
        return x((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (54 == variableId) {
            u((CommonBottomDialogViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((CommonBottomDialogClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.l0
    public void t(@Nullable CommonBottomDialogClickProxy Click) {
        this.f41095h = Click;
        synchronized (this) {
            this.f41655l |= 32;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.l0
    public void u(@Nullable CommonBottomDialogViewModel Vm) {
        this.f41094g = Vm;
        synchronized (this) {
            this.f41655l |= 16;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    private m0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 4, (TextView) bindings[3], (LinearLayout) bindings[5], (ConstraintLayout) bindings[0], (TextView) bindings[2], (TextView) bindings[1]);
        this.f41655l = -1L;
        this.f41089b.setTag(null);
        this.f41091d.setTag(null);
        TextView textView = (TextView) bindings[4];
        this.f41652i = textView;
        textView.setTag(null);
        this.f41092e.setTag(null);
        this.f41093f.setTag(null);
        setRootTag(root);
        this.f41653j = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f41654k = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
