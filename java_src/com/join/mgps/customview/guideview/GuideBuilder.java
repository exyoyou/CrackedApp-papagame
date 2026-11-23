package com.join.mgps.customview.guideview;

import android.graphics.Rect;
import android.view.View;
import androidx.annotation.AnimatorRes;
import androidx.annotation.IdRes;
import androidx.annotation.IntRange;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GuideBuilder {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f66381b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f66383d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f66384e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<com.join.mgps.customview.guideview.b> f66382c = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Configuration f66380a = new Configuration();

    public enum SlideState {
        UP,
        DOWN
    }

    public interface a {
        void a(SlideState state);
    }

    public interface b {
        void onDismiss();

        void onShown();
    }

    public GuideBuilder a(com.join.mgps.customview.guideview.b component) {
        if (this.f66381b) {
            throw new BuildException("Already created, rebuild a new one.");
        }
        this.f66382c.add(component);
        return this;
    }

    public d b() {
        d dVar = new d();
        dVar.i((com.join.mgps.customview.guideview.b[]) this.f66382c.toArray(new com.join.mgps.customview.guideview.b[this.f66382c.size()]));
        dVar.j(this.f66380a);
        dVar.h(this.f66383d);
        dVar.k(this.f66384e);
        this.f66382c = null;
        this.f66380a = null;
        this.f66383d = null;
        this.f66381b = true;
        return dVar;
    }

    public GuideBuilder c(@IntRange(from = 0, to = 255) int alpha) {
        if (this.f66381b) {
            throw new BuildException("Already created. rebuild a new one.");
        }
        if (alpha < 0 || alpha > 255) {
            alpha = 0;
        }
        this.f66380a.f66368i = alpha;
        return this;
    }

    public GuideBuilder d(boolean b10) {
        if (this.f66381b) {
            throw new BuildException("Already created, rebuild a new one.");
        }
        this.f66380a.f66374o = b10;
        return this;
    }

    public GuideBuilder e(@AnimatorRes int id2) {
        if (this.f66381b) {
            throw new BuildException("Already created. rebuild a new one.");
        }
        this.f66380a.f66377r = id2;
        return this;
    }

    public GuideBuilder f(@AnimatorRes int id2) {
        if (this.f66381b) {
            throw new BuildException("Already created. rebuild a new one.");
        }
        this.f66380a.f66378s = id2;
        return this;
    }

    public GuideBuilder g(@IdRes int id2) {
        if (this.f66381b) {
            throw new BuildException("Already created. rebuild a new one.");
        }
        this.f66380a.f66373n = id2;
        return this;
    }

    public GuideBuilder h(int corner) {
        if (this.f66381b) {
            throw new BuildException("Already created. rebuild a new one.");
        }
        if (corner < 0) {
            this.f66380a.f66371l = 0;
        }
        this.f66380a.f66371l = corner;
        return this;
    }

    public GuideBuilder i(int style) {
        if (this.f66381b) {
            throw new BuildException("Already created. rebuild a new one.");
        }
        this.f66380a.f66372m = style;
        return this;
    }

    public GuideBuilder j(int padding) {
        if (this.f66381b) {
            throw new BuildException("Already created. rebuild a new one.");
        }
        if (padding < 0) {
            this.f66380a.f66362c = 0;
        }
        this.f66380a.f66362c = padding;
        return this;
    }

    public GuideBuilder k(int padding) {
        if (this.f66381b) {
            throw new BuildException("Already created. rebuild a new one.");
        }
        if (padding < 0) {
            this.f66380a.f66366g = 0;
        }
        this.f66380a.f66366g = padding;
        return this;
    }

    public GuideBuilder l(int padding) {
        if (this.f66381b) {
            throw new BuildException("Already created. rebuild a new one.");
        }
        if (padding < 0) {
            this.f66380a.f66363d = 0;
        }
        this.f66380a.f66363d = padding;
        return this;
    }

    public GuideBuilder m(int padding) {
        if (this.f66381b) {
            throw new BuildException("Already created. rebuild a new one.");
        }
        if (padding < 0) {
            this.f66380a.f66365f = 0;
        }
        this.f66380a.f66365f = padding;
        return this;
    }

    public GuideBuilder n(int padding) {
        if (this.f66381b) {
            throw new BuildException("Already created. rebuild a new one.");
        }
        if (padding < 0) {
            this.f66380a.f66364e = 0;
        }
        this.f66380a.f66364e = padding;
        return this;
    }

    public GuideBuilder o(a onSlideListener) {
        if (this.f66381b) {
            throw new BuildException("Already created, rebuild a new one.");
        }
        this.f66384e = onSlideListener;
        return this;
    }

    public GuideBuilder p(b onVisibilityChangedListener) {
        if (this.f66381b) {
            throw new BuildException("Already created, rebuild a new one.");
        }
        this.f66383d = onVisibilityChangedListener;
        return this;
    }

    public GuideBuilder q(boolean touchable) {
        this.f66380a.f66367h = touchable;
        return this;
    }

    public GuideBuilder r(boolean b10) {
        if (this.f66381b) {
            throw new BuildException("Already created, rebuild a new one.");
        }
        this.f66380a.f66375p = b10;
        return this;
    }

    public GuideBuilder s(Rect targetRect) {
        if (this.f66381b) {
            throw new BuildException("Already created. rebuild a new one.");
        }
        this.f66380a.f66379t = targetRect;
        return this;
    }

    public GuideBuilder t(View v10) {
        if (this.f66381b) {
            throw new BuildException("Already created. rebuild a new one.");
        }
        this.f66380a.f66361b = v10;
        return this;
    }

    public GuideBuilder u(@IdRes int id2) {
        if (this.f66381b) {
            throw new BuildException("Already created. rebuild a new one.");
        }
        this.f66380a.f66370k = id2;
        return this;
    }
}
