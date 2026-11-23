package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.textfield.TextInputEditText;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class hm0 extends gm0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f39393y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f39394z = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39395m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    private final TextView f39396n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    private final TextView f39397o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    private final TextView f39398p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    private final ImageView f39399q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f39400r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f39401s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f39402t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f39403u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f39404v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f39405w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f39406x;

    public hm0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 13, f39393y, f39394z));
    }

    private boolean F(MutableLiveData<ArchiveData> ViewModleArchive, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f39406x |= 8;
        }
        return true;
    }

    private boolean G(MutableLiveData<List<ArchiveData>> ViewModleArchiveDatas, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f39406x |= 2;
        }
        return true;
    }

    private boolean H(MutableLiveData<String> ViewModleImagepath, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f39406x |= 1;
        }
        return true;
    }

    private boolean I(MutableLiveData<String> ViewModleTitle, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f39406x |= 4;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.gm0
    public void B(@Nullable TextViewBindingAdapter.OnTextChanged AfterTextChange) {
        this.f38902k = AfterTextChange;
        synchronized (this) {
            this.f39406x |= 32;
        }
        notifyPropertyChanged(2);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.gm0
    public void C(@Nullable TextViewBindingAdapter.BeforeTextChanged BeforTextChange) {
        this.f38903l = BeforTextChange;
        synchronized (this) {
            this.f39406x |= 16;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.gm0
    public void D(@Nullable View.OnClickListener OnClickListener) {
        this.f38901j = OnClickListener;
        synchronized (this) {
            this.f39406x |= 64;
        }
        notifyPropertyChanged(33);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.gm0
    public void E(@Nullable ModUploadArchiveViewModle ViewModle) {
        this.f38900i = ViewModle;
        synchronized (this) {
            this.f39406x |= 128;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            View.OnClickListener onClickListener = this.f38901j;
            if (onClickListener != null) {
                onClickListener.onClick(callbackArg_0);
                return;
            }
            return;
        }
        if (sourceId == 2) {
            View.OnClickListener onClickListener2 = this.f38901j;
            if (onClickListener2 != null) {
                onClickListener2.onClick(callbackArg_0);
                return;
            }
            return;
        }
        if (sourceId == 3) {
            View.OnClickListener onClickListener3 = this.f38901j;
            if (onClickListener3 != null) {
                onClickListener3.onClick(callbackArg_0);
                return;
            }
            return;
        }
        if (sourceId == 4) {
            View.OnClickListener onClickListener4 = this.f38901j;
            if (onClickListener4 != null) {
                onClickListener4.onClick(callbackArg_0);
                return;
            }
            return;
        }
        if (sourceId != 5) {
            return;
        }
        View.OnClickListener onClickListener5 = this.f38901j;
        if (onClickListener5 != null) {
            onClickListener5.onClick(callbackArg_0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0078 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x007a  */
    /* JADX WARN: Code duplicated, block: B:46:0x0081  */
    /* JADX WARN: Code duplicated, block: B:49:0x0087  */
    /* JADX WARN: Code duplicated, block: B:50:0x008e  */
    /* JADX WARN: Code duplicated, block: B:52:0x0091  */
    /* JADX WARN: Code duplicated, block: B:53:0x0096  */
    /* JADX WARN: Code duplicated, block: B:56:0x009a  */
    /* JADX WARN: Code duplicated, block: B:58:0x009d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x009f  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a7 A[PHI: r2
      0x00a7: PHI (r2v6 long) = (r2v5 long), (r2v8 long) binds: [B:43:0x0076, B:62:0x00a5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:66:0x00af A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:75:0x00cd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:80:0x00db  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f3  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String playTime;
        int i10;
        int i11;
        String value;
        int i12;
        String archiveDesc;
        String str;
        String value2;
        int i13;
        long j11;
        int i14;
        MutableLiveData<ArchiveData> archive;
        ArchiveData value3;
        MutableLiveData<String> title;
        MutableLiveData<List<ArchiveData>> archiveDatas;
        List<ArchiveData> value4;
        int size;
        boolean z10;
        long j12;
        synchronized (this) {
            j10 = this.f39406x;
            this.f39406x = 0L;
        }
        TextViewBindingAdapter.BeforeTextChanged beforeTextChanged = this.f38903l;
        TextViewBindingAdapter.OnTextChanged onTextChanged = this.f38902k;
        ModUploadArchiveViewModle modUploadArchiveViewModle = this.f38900i;
        if ((399 & j10) != 0) {
            long j13 = j10 & 385;
            if (j13 != 0) {
                MutableLiveData<String> imagepath = modUploadArchiveViewModle != null ? modUploadArchiveViewModle.getImagepath() : null;
                updateLiveDataRegistration(0, imagepath);
                value2 = imagepath != null ? imagepath.getValue() : null;
                boolean z11 = value2 == null;
                boolean z12 = value2 != null;
                if (j13 != 0) {
                    j10 |= z11 ? 4096L : 2048L;
                }
                if ((j10 & 385) != 0) {
                    j10 |= z12 ? 1024L : 512L;
                }
                i11 = z11 ? 0 : 8;
                if (!z12) {
                    i13 = 8;
                }
                j11 = j10 & 386;
                if (j11 == 0) {
                    if (modUploadArchiveViewModle != null) {
                        archiveDatas = modUploadArchiveViewModle.getArchiveDatas();
                    } else {
                        archiveDatas = null;
                    }
                    updateLiveDataRegistration(1, archiveDatas);
                    if (archiveDatas != null) {
                        value4 = archiveDatas.getValue();
                    } else {
                        value4 = null;
                    }
                    if (value4 != null) {
                        size = value4.size();
                    } else {
                        size = 0;
                    }
                    z10 = size > 1;
                    if (j11 != 0) {
                        if (z10) {
                            j12 = 16384;
                        } else {
                            j12 = 8192;
                        }
                        j10 |= j12;
                    }
                    i14 = z10 ? 0 : 8;
                }
                if ((j10 & 388) == 0) {
                    value = null;
                } else {
                    if (modUploadArchiveViewModle != null) {
                        title = modUploadArchiveViewModle.getTitle();
                    } else {
                        title = null;
                    }
                    updateLiveDataRegistration(2, title);
                    if (title != null) {
                        value = title.getValue();
                    } else {
                        value = null;
                    }
                }
                if ((j10 & 392) == 0) {
                    str = value2;
                    i10 = i14;
                    i12 = i13;
                    playTime = null;
                    archiveDesc = null;
                } else {
                    if (modUploadArchiveViewModle != null) {
                        archive = modUploadArchiveViewModle.getArchive();
                    } else {
                        archive = null;
                    }
                    updateLiveDataRegistration(3, archive);
                    if (archive != null) {
                        value3 = archive.getValue();
                    } else {
                        value3 = null;
                    }
                    if (value3 != null) {
                        archiveDesc = value3.getArchiveDesc();
                        playTime = value3.getPlayTime();
                        str = value2;
                        i10 = i14;
                        i12 = i13;
                    } else {
                        str = value2;
                        i10 = i14;
                        i12 = i13;
                        playTime = null;
                        archiveDesc = null;
                    }
                }
            } else {
                value2 = null;
                i11 = 0;
            }
            i13 = 0;
            j11 = j10 & 386;
            if (j11 == 0) {
                if (modUploadArchiveViewModle != null) {
                    archiveDatas = modUploadArchiveViewModle.getArchiveDatas();
                } else {
                    archiveDatas = null;
                }
                updateLiveDataRegistration(1, archiveDatas);
                if (archiveDatas != null) {
                    value4 = archiveDatas.getValue();
                } else {
                    value4 = null;
                }
                if (value4 != null) {
                    size = value4.size();
                } else {
                    size = 0;
                }
                if (size > 1) {
                }
                if (j11 != 0) {
                    if (z10) {
                        j12 = 16384;
                    } else {
                        j12 = 8192;
                    }
                    j10 |= j12;
                }
                if (z10) {
                }
            }
            if ((j10 & 388) == 0) {
                value = null;
            } else {
                if (modUploadArchiveViewModle != null) {
                    title = modUploadArchiveViewModle.getTitle();
                } else {
                    title = null;
                }
                updateLiveDataRegistration(2, title);
                if (title != null) {
                    value = title.getValue();
                } else {
                    value = null;
                }
            }
            if ((j10 & 392) == 0) {
                str = value2;
                i10 = i14;
                i12 = i13;
                playTime = null;
                archiveDesc = null;
            } else {
                if (modUploadArchiveViewModle != null) {
                    archive = modUploadArchiveViewModle.getArchive();
                } else {
                    archive = null;
                }
                updateLiveDataRegistration(3, archive);
                if (archive != null) {
                    value3 = archive.getValue();
                } else {
                    value3 = null;
                }
                if (value3 != null) {
                    archiveDesc = value3.getArchiveDesc();
                    playTime = value3.getPlayTime();
                    str = value2;
                    i10 = i14;
                    i12 = i13;
                } else {
                    str = value2;
                    i10 = i14;
                    i12 = i13;
                    playTime = null;
                    archiveDesc = null;
                }
            }
        } else {
            playTime = null;
            i10 = 0;
            i11 = 0;
            value = null;
            i12 = 0;
            archiveDesc = null;
            str = null;
        }
        if ((j10 & 256) != 0) {
            this.f38893b.setOnClickListener(this.f39404v);
            this.f38894c.setOnClickListener(this.f39405w);
            this.f38895d.setOnClickListener(this.f39403u);
            this.f38896e.setOnClickListener(this.f39401s);
            this.f38898g.setOnClickListener(this.f39402t);
        }
        if ((j10 & 385) != 0) {
            this.f38895d.setVisibility(i11);
            this.f39400r.setVisibility(i12);
            SimpleDrawableViewKt.loadUrl(this.f38899h, str, null, 0);
        }
        if ((388 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f39396n, value);
        }
        if ((392 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f39397o, archiveDesc);
            TextViewBindingAdapter.setText(this.f39398p, playTime);
        }
        if ((386 & j10) != 0) {
            this.f39399q.setVisibility(i10);
        }
        if ((j10 & 304) != 0) {
            TextViewBindingAdapter.setTextWatcher(this.f38897f, beforeTextChanged, onTextChanged, null, null);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f39406x != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f39406x = 256L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId == 0) {
            return H((MutableLiveData) object, fieldId);
        }
        if (localFieldId == 1) {
            return G((MutableLiveData) object, fieldId);
        }
        if (localFieldId == 2) {
            return I((MutableLiveData) object, fieldId);
        }
        if (localFieldId != 3) {
            return false;
        }
        return F((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (5 == variableId) {
            C((TextViewBindingAdapter.BeforeTextChanged) variable);
        } else if (2 == variableId) {
            B((TextViewBindingAdapter.OnTextChanged) variable);
        } else if (33 == variableId) {
            D((View.OnClickListener) variable);
        } else {
            if (50 != variableId) {
                return false;
            }
            E((ModUploadArchiveViewModle) variable);
        }
        return true;
    }

    private hm0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 4, (LinearLayout) bindings[4], (ImageView) bindings[1], (ImageView) bindings[12], (ImageView) bindings[11], (TextInputEditText) bindings[8], (TextView) bindings[3], (SimpleDraweeView) bindings[10]);
        this.f39406x = -1L;
        this.f38893b.setTag(null);
        this.f38894c.setTag(null);
        this.f38895d.setTag(null);
        this.f38896e.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f39395m = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) bindings[2];
        this.f39396n = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) bindings[5];
        this.f39397o = textView2;
        textView2.setTag(null);
        TextView textView3 = (TextView) bindings[6];
        this.f39398p = textView3;
        textView3.setTag(null);
        ImageView imageView = (ImageView) bindings[7];
        this.f39399q = imageView;
        imageView.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) bindings[9];
        this.f39400r = relativeLayout;
        relativeLayout.setTag(null);
        this.f38897f.setTag(null);
        this.f38898g.setTag(null);
        this.f38899h.setTag(null);
        setRootTag(root);
        this.f39401s = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 4);
        this.f39402t = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f39403u = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 5);
        this.f39404v = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.f39405w = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
