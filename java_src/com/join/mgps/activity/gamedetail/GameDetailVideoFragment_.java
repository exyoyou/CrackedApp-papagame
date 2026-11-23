package com.join.mgps.activity.gamedetail;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.builder.d;
import zc.c;

/* JADX INFO: loaded from: classes4.dex */
public final class GameDetailVideoFragment_ extends GameDetailVideoFragment implements xc.a, zc.a, zc.b {
    private View contentView_;
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class FragmentBuilder_ extends d<FragmentBuilder_, GameDetailVideoFragment> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.androidannotations.api.builder.d
        public GameDetailVideoFragment build() {
            GameDetailVideoFragment_ gameDetailVideoFragment_ = new GameDetailVideoFragment_();
            gameDetailVideoFragment_.setArguments(this.args);
            return gameDetailVideoFragment_;
        }
    }

    public static FragmentBuilder_ builder() {
        return new FragmentBuilder_();
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(getActivity());
        c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.gamedetail.GameDetailVideoFragment
    public void changeGameFollow(final int type) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.14
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    GameDetailVideoFragment_.super.changeGameFollow(type);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.gamedetail.GameDetailVideoFragment
    public void delayCheckplay() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.8
            @Override // java.lang.Runnable
            public void run() {
                GameDetailVideoFragment_.super.delayCheckplay();
            }
        }, 1000L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.contentView_;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        c cVarC = c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.contentView_ = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.contentView_ = inflater.inflate(R.layout.gamedetail_video_fragment, container, false);
        }
        return this.contentView_;
    }

    @Override // com.join.mgps.activity.gamedetail.GameDetailVideoFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.contentView_ = null;
        this.cover = null;
        this.coverback = null;
        this.icon = null;
        this.videoView = null;
        this.sound = null;
        this.gameName = null;
        this.content = null;
        this.statuHVIew = null;
        this.instalButtomButn = null;
        this.progressbarLayout = null;
        this.instalbutnLayout = null;
        this.butn_showdownload = null;
        this.percent = null;
        this.playIcon = null;
        this.butnProgressBar = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.cover = (SimpleDraweeView) hasViews.internalFindViewById(R.id.cover);
        this.coverback = (SimpleDraweeView) hasViews.internalFindViewById(R.id.coverback);
        this.icon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.icon);
        this.videoView = (FulllScreenVideoView) hasViews.internalFindViewById(R.id.videoView);
        this.sound = (ImageView) hasViews.internalFindViewById(R.id.sound);
        this.gameName = (TextView) hasViews.internalFindViewById(R.id.gameName);
        this.content = (TextView) hasViews.internalFindViewById(R.id.content);
        this.statuHVIew = hasViews.internalFindViewById(R.id.statuHVIew);
        this.instalButtomButn = (TextView) hasViews.internalFindViewById(R.id.instalButtomButn);
        this.progressbarLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.progressbarLayout);
        this.instalbutnLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.instalbutnLayout);
        this.butn_showdownload = (ImageView) hasViews.internalFindViewById(R.id.butn_showdownload);
        this.percent = (TextView) hasViews.internalFindViewById(R.id.percent);
        this.playIcon = hasViews.internalFindViewById(R.id.playIcon);
        this.butnProgressBar = (ProgressBar) hasViews.internalFindViewById(R.id.butnProgressBar);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.coverText);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.gameInfoLayout);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.iv_back);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.progress_layout);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GameDetailVideoFragment_.this.coverText();
                }
            });
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GameDetailVideoFragment_.this.gameInfoLayout();
                }
            });
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GameDetailVideoFragment_.this.iv_back();
                }
            });
        }
        ImageView imageView = this.sound;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GameDetailVideoFragment_.this.sound();
                }
            });
        }
        TextView textView = this.instalButtomButn;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GameDetailVideoFragment_.this.instalButtomButn();
                }
            });
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GameDetailVideoFragment_.this.progress_layout();
                }
            });
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GameDetailVideoFragment_.this.setNetwork();
                }
            });
        }
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.gamedetail.GameDetailVideoFragment
    public void showInstallButn() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.11
            @Override // java.lang.Runnable
            public void run() {
                GameDetailVideoFragment_.super.showInstallButn();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.gamedetail.GameDetailVideoFragment
    public void showProgress() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.10
            @Override // java.lang.Runnable
            public void run() {
                GameDetailVideoFragment_.super.showProgress();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.gamedetail.GameDetailVideoFragment
    public void updateButn() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.12
            @Override // java.lang.Runnable
            public void run() {
                GameDetailVideoFragment_.super.updateButn();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.gamedetail.GameDetailVideoFragment
    public void updatePlayImg() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.9
            @Override // java.lang.Runnable
            public void run() {
                GameDetailVideoFragment_.super.updatePlayImg();
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.gamedetail.GameDetailVideoFragment
    public void updateTitleButn(final ResultMainBean result, final int type) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment_.13
            @Override // java.lang.Runnable
            public void run() {
                GameDetailVideoFragment_.super.updateTitleButn(result, type);
            }
        }, 0L);
    }
}
