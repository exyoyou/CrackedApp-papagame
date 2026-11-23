package com.kongzue.dialogx.interfaces;

import android.app.Activity;
import android.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.util.views.ExtendChildLayoutParamsFrameLayout;

/* JADX INFO: loaded from: classes3.dex */
public abstract class r<D> {
    View customView;
    private int dialogHash;
    private Fragment fragment;
    int layoutResId;
    private int parentViewHash;
    private android.app.Fragment supportFragment;
    private Runnable waitBindRunnable;
    private final int PARENT_FLAG = -109;
    private int fragmentParentId = -1;

    class a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f74112b;

        a(int i10) {
            this.f74112b = i10;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            synchronized (r.this) {
                r.this.customView = LayoutInflater.from(BaseDialog.X()).inflate(this.f74112b, (ViewGroup) new RelativeLayout(BaseDialog.X()), false);
                if (r.this.waitBindRunnable != null) {
                    r.this.waitBindRunnable.run();
                    r.this.waitBindRunnable = null;
                }
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BaseDialog f74114b;

        b(BaseDialog baseDialog) {
            this.f74114b = baseDialog;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (r.this.fragment != null && (r.this.getCustomView() instanceof FrameLayout) && (this.f74114b.N() instanceof AppCompatActivity)) {
                AppCompatActivity appCompatActivity = (AppCompatActivity) this.f74114b.N();
                FragmentTransaction fragmentTransactionBeginTransaction = appCompatActivity.getSupportFragmentManager().beginTransaction();
                fragmentTransactionBeginTransaction.add(r.this.b(), r.this.fragment);
                fragmentTransactionBeginTransaction.commit();
                r rVar = r.this;
                rVar.onFragmentBind(this.f74114b, rVar.getCustomView(), r.this.fragment, appCompatActivity.getSupportFragmentManager());
            }
            if (r.this.supportFragment != null && (r.this.getCustomView() instanceof FrameLayout) && (this.f74114b.N() instanceof Activity)) {
                Activity activityN = this.f74114b.N();
                android.app.FragmentTransaction fragmentTransactionBeginTransaction2 = activityN.getFragmentManager().beginTransaction();
                fragmentTransactionBeginTransaction2.add(r.this.b(), r.this.supportFragment);
                fragmentTransactionBeginTransaction2.commit();
                r rVar2 = r.this;
                rVar2.onFragmentBind(this.f74114b, rVar2.getCustomView(), r.this.supportFragment, activityN.getFragmentManager());
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BaseDialog f74116b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ViewGroup f74117c;

        c(BaseDialog baseDialog, ViewGroup viewGroup) {
            this.f74116b = baseDialog;
            this.f74117c = viewGroup;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (r.this.getCustomView() == null) {
                BaseDialog baseDialog = this.f74116b;
                if (baseDialog == null) {
                    r.this.bindParent(this.f74117c);
                } else {
                    r.this.bindParent(this.f74117c, baseDialog);
                }
            }
        }
    }

    public r(int i10) {
        if (BaseDialog.X() == null) {
            DialogX.b(DialogX.f73589a);
        } else {
            this.layoutResId = i10;
            this.customView = LayoutInflater.from(BaseDialog.X()).inflate(i10, (ViewGroup) new RelativeLayout(BaseDialog.X()), false);
        }
    }

    private void a(D d10, View view) {
        if (d10.hashCode() == this.dialogHash && view.hashCode() == this.parentViewHash) {
            return;
        }
        this.dialogHash = d10.hashCode();
        this.parentViewHash = view.hashCode();
        setEvent(d10, getCustomView());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b() {
        if (this.fragmentParentId == -1) {
            this.fragmentParentId = View.generateViewId();
        }
        return this.fragmentParentId;
    }

    private void c(ViewGroup viewGroup, BaseDialog baseDialog) {
        this.waitBindRunnable = new c(baseDialog, viewGroup);
    }

    @Deprecated
    public void bindParent(ViewGroup viewGroup) {
        if (getCustomView() == null) {
            c(viewGroup, null);
            return;
        }
        if (getCustomView().getParent() != null) {
            if (getCustomView().getParent() == viewGroup) {
                return;
            } else {
                ((ViewGroup) getCustomView().getParent()).removeView(getCustomView());
            }
        }
        ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        }
        viewGroup.addView(getCustomView(), layoutParams);
    }

    public void clean() {
        this.layoutResId = 0;
        this.customView = null;
    }

    public View getCustomView() {
        if (this.customView == null) {
            this.customView = LayoutInflater.from(BaseDialog.X()).inflate(this.layoutResId, (ViewGroup) new RelativeLayout(BaseDialog.X()), false);
        }
        return this.customView;
    }

    public int getLayoutResId() {
        return this.layoutResId;
    }

    public abstract void onBind(D d10, View view);

    public void onFragmentBind(D d10, View view, android.app.Fragment fragment, FragmentManager fragmentManager) {
    }

    public r<D> setCustomView(View view) {
        this.customView = view;
        return this;
    }

    public void setEvent(D d10, View view) {
    }

    public r<D> setLayoutResId(int i10) {
        this.layoutResId = i10;
        return this;
    }

    public void onFragmentBind(D d10, View view, Fragment fragment, androidx.fragment.app.FragmentManager fragmentManager) {
    }

    public r(int i10, boolean z10) {
        if (BaseDialog.X() == null) {
            DialogX.b(DialogX.f73589a);
            return;
        }
        this.layoutResId = i10;
        if (z10) {
            new a(i10).start();
        } else {
            this.customView = LayoutInflater.from(BaseDialog.X()).inflate(i10, (ViewGroup) new RelativeLayout(BaseDialog.X()), false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void bindParent(ViewGroup viewGroup, BaseDialog baseDialog) {
        if (getCustomView() == null) {
            c(viewGroup, null);
            return;
        }
        if (getCustomView().getParent() == viewGroup || viewGroup.getTag(-109) == getCustomView().toString()) {
            return;
        }
        if (getCustomView().getParent() != null) {
            ((ViewGroup) getCustomView().getParent()).removeView(getCustomView());
        }
        ViewGroup.LayoutParams layoutParams = getCustomView().getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        }
        viewGroup.addView(getCustomView(), layoutParams);
        onBind(baseDialog, getCustomView());
        a(baseDialog, getCustomView());
        if (this.fragment == null && this.supportFragment == null) {
            return;
        }
        if (baseDialog.A() != DialogX.IMPL_MODE.VIEW) {
            BaseDialog.r(baseDialog.n() + "非 VIEW 实现模式不支持 fragment 作为子布局显示。\n其原因为 Window 中不存在 FragmentManager，无法对子布局中的 fragment 进行管理。");
            return;
        }
        getCustomView().post(new b(baseDialog));
    }

    public r(View view) {
        this.customView = view;
    }

    public r(Fragment fragment) {
        if (BaseDialog.X() == null) {
            return;
        }
        ExtendChildLayoutParamsFrameLayout extendChildLayoutParamsFrameLayout = new ExtendChildLayoutParamsFrameLayout(BaseDialog.X());
        this.customView = extendChildLayoutParamsFrameLayout;
        extendChildLayoutParamsFrameLayout.setId(b());
        this.fragment = fragment;
        this.supportFragment = null;
    }

    public r(android.app.Fragment fragment) {
        if (BaseDialog.X() == null) {
            return;
        }
        ExtendChildLayoutParamsFrameLayout extendChildLayoutParamsFrameLayout = new ExtendChildLayoutParamsFrameLayout(BaseDialog.X());
        this.customView = extendChildLayoutParamsFrameLayout;
        extendChildLayoutParamsFrameLayout.setId(b());
        this.supportFragment = fragment;
        this.fragment = null;
    }
}
