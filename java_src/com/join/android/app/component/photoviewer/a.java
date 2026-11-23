package com.join.android.app.component.photoviewer;

import android.graphics.drawable.Animatable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.controller.c;
import com.facebook.imagepipeline.image.g;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import me.relex.photodraweeview.PhotoDraweeView;
import me.relex.photodraweeview.h;

/* JADX INFO: loaded from: classes5.dex */
public class a extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f35017c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PhotoDraweeView f35018d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ProgressBar f35019e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    View.OnLongClickListener f35020f;

    /* JADX INFO: renamed from: com.join.android.app.component.photoviewer.a$a, reason: collision with other inner class name */
    class C0647a implements h {
        C0647a() {
        }

        @Override // me.relex.photodraweeview.h
        public void a(View view, float v10, float v11) {
            try {
                a.this.getActivity().finish();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class b implements c<g> {
        b() {
        }

        @Override // com.facebook.drawee.controller.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onFinalImageSet(String id2, g imageInfo, Animatable animatable) {
            a.this.f35019e.setVisibility(8);
            a.this.f35018d.update(imageInfo.getWidth(), imageInfo.getHeight());
        }

        @Override // com.facebook.drawee.controller.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onIntermediateImageSet(String id2, g imageInfo) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onFailure(String id2, Throwable throwable) {
            try {
                Toast.makeText(a.this.getActivity(), "加载失败", 0).show();
            } catch (Exception unused) {
            }
            a.this.f35018d.setScaleType(ImageView.ScaleType.FIT_CENTER);
            a.this.f35018d.setImageResource(R.drawable.main_normal_icon);
            a.this.f35019e.setVisibility(8);
        }

        @Override // com.facebook.drawee.controller.c
        public void onIntermediateImageFailed(String id2, Throwable throwable) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onRelease(String id2) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onSubmit(String id2, Object callerContext) {
        }
    }

    private void O() {
        try {
            this.f35019e.setVisibility(0);
            this.f35018d.setController(Fresco.newDraweeControllerBuilder().I(new b()).b(l.I(this.f35017c)).F(true).build());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void P() {
    }

    private void Q() {
    }

    public static a R(String imageUrl) {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putString("url", imageUrl);
        aVar.setArguments(bundle);
        return aVar;
    }

    private void S() {
        this.f35018d.setOnViewTapListener(new C0647a());
        this.f35018d.setOnLongClickListener(this.f35020f);
    }

    void T(View.OnLongClickListener l10) {
        this.f35020f = l10;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        O();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.f35017c = getArguments() != null ? getArguments().getString("url") : null;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewInflate = inflater.inflate(R.layout.image_detail_fragment, container, false);
        this.f35019e = (ProgressBar) viewInflate.findViewById(R.id.loading);
        this.f35018d = (PhotoDraweeView) viewInflate.findViewById(R.id.image);
        S();
        return viewInflate;
    }
}
