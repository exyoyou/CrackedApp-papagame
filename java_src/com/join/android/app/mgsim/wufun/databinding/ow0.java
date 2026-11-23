package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import com.join.kotlin.ui.account.viewmodle.UnbindViewModle;
import com.join.kotlin.ui.notice.ClickProxy;

/* JADX INFO: loaded from: classes4.dex */
public class ow0 extends nw0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f43096q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f43097r = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43098g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final TextView f43099h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final TextView f43100i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    private final EditText f43101j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    private final TextView f43102k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f43103l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f43104m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f43105n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private InverseBindingListener f43106o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f43107p;

    class a implements InverseBindingListener {
        a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(ow0.this.f43101j);
            UnbindViewModle unbindViewModle = ow0.this.f42541f;
            if (unbindViewModle != null) {
                MutableLiveData<String> codeText = unbindViewModle.getCodeText();
                if (codeText != null) {
                    codeText.setValue(textString);
                }
            }
        }
    }

    public ow0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 8, f43096q, f43097r));
    }

    private boolean A(MutableLiveData<Integer> ViewModleSendCodeButnColor, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f43107p |= 2;
        }
        return true;
    }

    private boolean B(MutableLiveData<String> ViewModleSendCodeButnText, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f43107p |= 1;
        }
        return true;
    }

    private boolean C(MutableLiveData<String> ViewModleTitle, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f43107p |= 8;
        }
        return true;
    }

    private boolean x(MutableLiveData<String> ViewModleAccount, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f43107p |= 16;
        }
        return true;
    }

    private boolean y(MutableLiveData<String> ViewModleCodeText, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f43107p |= 4;
        }
        return true;
    }

    private boolean z(MutableLiveData<String> ViewModleMoble, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f43107p |= 32;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            ClickProxy clickProxy = this.f42540e;
            if (clickProxy != null) {
                clickProxy.onClickBack();
                return;
            }
            return;
        }
        if (sourceId == 2) {
            UnbindViewModle unbindViewModle = this.f42541f;
            if (!(unbindViewModle != null) || callbackArg_0 == null) {
                return;
            }
            callbackArg_0.getContext();
            unbindViewModle.sendsmsCode(callbackArg_0.getContext());
            return;
        }
        if (sourceId != 3) {
            return;
        }
        UnbindViewModle unbindViewModle2 = this.f42541f;
        if (!(unbindViewModle2 != null) || callbackArg_0 == null) {
            return;
        }
        callbackArg_0.getContext();
        unbindViewModle2.sendUnbindThridPart(callbackArg_0.getContext());
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0039  */
    /* JADX WARN: Code duplicated, block: B:47:0x0093 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x0095  */
    /* JADX WARN: Code duplicated, block: B:49:0x009a  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:56:0x00af A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:61:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:65:0x00cd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:66:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:70:0x00db  */
    /* JADX WARN: Code duplicated, block: B:71:0x00e3  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String value;
        String value2;
        String value3;
        String value4;
        String value5;
        int iSafeUnbox;
        boolean z10;
        MutableLiveData<String> moble;
        MutableLiveData<String> account;
        MutableLiveData<String> title;
        synchronized (this) {
            j10 = this.f43107p;
            this.f43107p = 0L;
        }
        UnbindViewModle unbindViewModle = this.f42541f;
        if ((383 & j10) != 0) {
            if ((j10 & 321) == 0) {
                value2 = null;
            } else {
                MutableLiveData<String> sendCodeButnText = unbindViewModle != null ? unbindViewModle.getSendCodeButnText() : null;
                updateLiveDataRegistration(0, sendCodeButnText);
                if (sendCodeButnText != null) {
                    value2 = sendCodeButnText.getValue();
                } else {
                    value2 = null;
                }
            }
            if ((j10 & 322) != 0) {
                MutableLiveData<Integer> sendCodeButnColor = unbindViewModle != null ? unbindViewModle.getSendCodeButnColor() : null;
                updateLiveDataRegistration(1, sendCodeButnColor);
                iSafeUnbox = ViewDataBinding.safeUnbox(sendCodeButnColor != null ? sendCodeButnColor.getValue() : null);
            } else {
                iSafeUnbox = 0;
            }
            if ((j10 & 324) != 0) {
                MutableLiveData<String> codeText = unbindViewModle != null ? unbindViewModle.getCodeText() : null;
                updateLiveDataRegistration(2, codeText);
                value3 = codeText != null ? codeText.getValue() : null;
                boolean z11 = (value3 != null ? value3.length() : 0) == 6;
                if ((j10 & 328) == 0) {
                    value5 = null;
                } else {
                    if (unbindViewModle != null) {
                        title = unbindViewModle.getTitle();
                    } else {
                        title = null;
                    }
                    updateLiveDataRegistration(3, title);
                    if (title != null) {
                        value5 = title.getValue();
                    } else {
                        value5 = null;
                    }
                }
                if ((j10 & 336) == 0) {
                    value4 = null;
                } else {
                    if (unbindViewModle != null) {
                        account = unbindViewModle.getAccount();
                    } else {
                        account = null;
                    }
                    updateLiveDataRegistration(4, account);
                    if (account != null) {
                        value4 = account.getValue();
                    } else {
                        value4 = null;
                    }
                }
                if ((j10 & 352) == 0) {
                    value = null;
                } else {
                    if (unbindViewModle != null) {
                        moble = unbindViewModle.getMoble();
                    } else {
                        moble = null;
                    }
                    updateLiveDataRegistration(5, moble);
                    if (moble != null) {
                        value = moble.getValue();
                    } else {
                        value = null;
                    }
                }
                z10 = z11;
            } else {
                value3 = null;
            }
            if ((j10 & 328) == 0) {
                value5 = null;
            } else {
                if (unbindViewModle != null) {
                    title = unbindViewModle.getTitle();
                } else {
                    title = null;
                }
                updateLiveDataRegistration(3, title);
                if (title != null) {
                    value5 = title.getValue();
                } else {
                    value5 = null;
                }
            }
            if ((j10 & 336) == 0) {
                value4 = null;
            } else {
                if (unbindViewModle != null) {
                    account = unbindViewModle.getAccount();
                } else {
                    account = null;
                }
                updateLiveDataRegistration(4, account);
                if (account != null) {
                    value4 = account.getValue();
                } else {
                    value4 = null;
                }
            }
            if ((j10 & 352) == 0) {
                value = null;
            } else {
                if (unbindViewModle != null) {
                    moble = unbindViewModle.getMoble();
                } else {
                    moble = null;
                }
                updateLiveDataRegistration(5, moble);
                if (moble != null) {
                    value = moble.getValue();
                } else {
                    value = null;
                }
            }
            z10 = z11;
        } else {
            value = null;
            value2 = null;
            value3 = null;
            value4 = null;
            value5 = null;
            iSafeUnbox = 0;
            z10 = false;
        }
        if ((j10 & 256) != 0) {
            this.f42537b.setOnClickListener(this.f43105n);
            TextViewBindingAdapter.setTextWatcher(this.f43101j, null, null, null, this.f43106o);
            this.f43102k.setOnClickListener(this.f43103l);
            this.f42538c.setOnClickListener(this.f43104m);
        }
        if ((j10 & 336) != 0) {
            TextViewBindingAdapter.setText(this.f43099h, value4);
        }
        if ((352 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f43100i, value);
        }
        if ((324 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f43101j, value3);
            this.f42538c.setEnabled(z10);
        }
        if ((j10 & 321) != 0) {
            TextViewBindingAdapter.setText(this.f43102k, value2);
        }
        if ((322 & j10) != 0) {
            this.f43102k.setTextColor(iSafeUnbox);
        }
        if ((j10 & 328) != 0) {
            TextViewBindingAdapter.setText(this.f42538c, value5);
            TextViewBindingAdapter.setText(this.f42539d, value5);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f43107p != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f43107p = 256L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId == 0) {
            return B((MutableLiveData) object, fieldId);
        }
        if (localFieldId == 1) {
            return A((MutableLiveData) object, fieldId);
        }
        if (localFieldId == 2) {
            return y((MutableLiveData) object, fieldId);
        }
        if (localFieldId == 3) {
            return C((MutableLiveData) object, fieldId);
        }
        if (localFieldId == 4) {
            return x((MutableLiveData) object, fieldId);
        }
        if (localFieldId != 5) {
            return false;
        }
        return z((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (50 == variableId) {
            u((UnbindViewModle) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((ClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.nw0
    public void t(@Nullable ClickProxy Click) {
        this.f42540e = Click;
        synchronized (this) {
            this.f43107p |= 128;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.nw0
    public void u(@Nullable UnbindViewModle ViewModle) {
        this.f42541f = ViewModle;
        synchronized (this) {
            this.f43107p |= 64;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    private ow0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 6, (ImageView) bindings[1], (TextView) bindings[7], (TextView) bindings[2]);
        this.f43106o = new a();
        this.f43107p = -1L;
        this.f42537b.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f43098g = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) bindings[3];
        this.f43099h = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) bindings[4];
        this.f43100i = textView2;
        textView2.setTag(null);
        EditText editText = (EditText) bindings[5];
        this.f43101j = editText;
        editText.setTag(null);
        TextView textView3 = (TextView) bindings[6];
        this.f43102k = textView3;
        textView3.setTag(null);
        this.f42538c.setTag(null);
        this.f42539d.setTag(null);
        setRootTag(root);
        this.f43103l = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f43104m = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.f43105n = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
