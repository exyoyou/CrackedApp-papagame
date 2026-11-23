package com.kwad.sdk.mvp;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.service.d;
import com.kwad.sdk.wrapper.m;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class Presenter {
    private Object bjo;
    private View mRootView;
    private final List<Presenter> bjn = new CopyOnWriteArrayList();
    private PresenterState bjp = PresenterState.INIT;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'INIT' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static abstract class PresenterState {
        private static final /* synthetic */ PresenterState[] $VALUES;
        public static final PresenterState BIND;
        public static final PresenterState CREATE;
        public static final PresenterState DESTROY;
        public static final PresenterState INIT;
        public static final PresenterState UNBIND;
        private int mIndex;

        static {
            int i10 = 0;
            PresenterState presenterState = new PresenterState("INIT", i10, i10) { // from class: com.kwad.sdk.mvp.Presenter.PresenterState.1
                @Override // com.kwad.sdk.mvp.Presenter.PresenterState
                public final void performCallState(Presenter presenter) {
                }
            };
            INIT = presenterState;
            int i11 = 1;
            PresenterState presenterState2 = new PresenterState("CREATE", i11, i11) { // from class: com.kwad.sdk.mvp.Presenter.PresenterState.2
                @Override // com.kwad.sdk.mvp.Presenter.PresenterState
                public final void performCallState(Presenter presenter) {
                    Iterator it2 = presenter.bjn.iterator();
                    while (it2.hasNext()) {
                        try {
                            ((Presenter) it2.next()).N(presenter.mRootView);
                        } catch (Exception e10) {
                            d.gatherException(e10);
                            c.printStackTrace(e10);
                        }
                    }
                }
            };
            CREATE = presenterState2;
            int i12 = 2;
            PresenterState presenterState3 = new PresenterState("BIND", i12, i12) { // from class: com.kwad.sdk.mvp.Presenter.PresenterState.3
                @Override // com.kwad.sdk.mvp.Presenter.PresenterState
                final void performCallState(Presenter presenter) {
                    Iterator it2 = presenter.bjn.iterator();
                    while (it2.hasNext()) {
                        try {
                            ((Presenter) it2.next()).q(presenter.bjo);
                        } catch (Throwable th) {
                            d.gatherException(th);
                            c.printStackTrace(th);
                        }
                    }
                }
            };
            BIND = presenterState3;
            int i13 = 3;
            PresenterState presenterState4 = new PresenterState("UNBIND", i13, i13) { // from class: com.kwad.sdk.mvp.Presenter.PresenterState.4
                @Override // com.kwad.sdk.mvp.Presenter.PresenterState
                final void performCallState(Presenter presenter) {
                    Iterator it2 = presenter.bjn.iterator();
                    while (it2.hasNext()) {
                        try {
                            ((Presenter) it2.next()).oe();
                        } catch (Exception e10) {
                            d.gatherException(e10);
                            c.printStackTrace(e10);
                        }
                    }
                }
            };
            UNBIND = presenterState4;
            int i14 = 4;
            PresenterState presenterState5 = new PresenterState("DESTROY", i14, i14) { // from class: com.kwad.sdk.mvp.Presenter.PresenterState.5
                @Override // com.kwad.sdk.mvp.Presenter.PresenterState
                final void performCallState(Presenter presenter) {
                    Iterator it2 = presenter.bjn.iterator();
                    while (it2.hasNext()) {
                        try {
                            ((Presenter) it2.next()).destroy();
                        } catch (Exception e10) {
                            d.gatherException(e10);
                            c.printStackTrace(e10);
                        }
                    }
                }
            };
            DESTROY = presenterState5;
            $VALUES = new PresenterState[]{presenterState, presenterState2, presenterState3, presenterState4, presenterState5};
        }

        public static PresenterState valueOf(String str) {
            return (PresenterState) Enum.valueOf(PresenterState.class, str);
        }

        public static PresenterState[] values() {
            return (PresenterState[]) $VALUES.clone();
        }

        public int index() {
            return this.mIndex;
        }

        abstract void performCallState(Presenter presenter);

        private PresenterState(String str, int i10, int i11) {
            super(str, i10);
            this.mIndex = i11;
        }
    }

    private boolean Sz() {
        return this.bjp.index() >= PresenterState.CREATE.index();
    }

    private void b(Presenter presenter) {
        Object obj;
        View view;
        int iIndex = this.bjp.index();
        PresenterState presenterState = PresenterState.UNBIND;
        if (iIndex >= presenterState.index() || presenter.bjp.index() >= presenterState.index()) {
            return;
        }
        if (Sz() && !presenter.Sz() && (view = this.mRootView) != null) {
            presenter.N(view);
        }
        if (!isBound() || !presenter.Sz() || presenter.isBound() || (obj = this.bjo) == null) {
            return;
        }
        presenter.q(obj);
    }

    private boolean isBound() {
        return this.bjp == PresenterState.BIND;
    }

    @UiThread
    public final void N(View view) {
        try {
            this.bjp = PresenterState.CREATE;
            this.mRootView = view;
            onCreate();
            this.bjp.performCallState(this);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public final List<Presenter> SA() {
        return this.bjn;
    }

    public final Object SB() {
        return this.bjo;
    }

    public final void a(Presenter presenter) {
        this.bjn.add(presenter);
        if (!Sz() || presenter.Sz()) {
            return;
        }
        N(this.mRootView);
    }

    protected void ay() {
    }

    @UiThread
    public final void destroy() {
        try {
            if (this.bjp == PresenterState.BIND) {
                oe();
            }
            this.bjp = PresenterState.DESTROY;
            onDestroy();
            this.bjp.performCallState(this);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public final <T extends View> T findViewById(int i10) {
        return (T) this.mRootView.findViewById(i10);
    }

    @Nullable
    @UiThread
    public final Activity getActivity() {
        return m.getActivityFromContext(getContext());
    }

    @NonNull
    public final Context getContext() {
        return this.mRootView.getContext();
    }

    public final View getRootView() {
        return this.mRootView;
    }

    @UiThread
    public final void oe() {
        try {
            this.bjp = PresenterState.UNBIND;
            onUnbind();
            this.bjp.performCallState(this);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    protected void onCreate() {
    }

    protected void onDestroy() {
    }

    protected void onUnbind() {
    }

    @UiThread
    public final void q(@NonNull Object obj) {
        try {
            PresenterState presenterState = this.bjp;
            if (presenterState != PresenterState.INIT) {
                PresenterState presenterState2 = PresenterState.DESTROY;
            }
            PresenterState presenterState3 = PresenterState.BIND;
            if (presenterState == presenterState3) {
                oe();
            }
            this.bjp = presenterState3;
            this.bjo = obj;
            ay();
            this.bjp.performCallState(this);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public final void a(Presenter presenter, boolean z10) {
        this.bjn.add(presenter);
        try {
            b(presenter);
        } catch (Throwable th) {
            d.gatherException(th);
            c.printStackTrace(th);
        }
    }
}
