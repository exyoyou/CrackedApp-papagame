package fm.jiecao.jcvideoplayer_lib;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.SeekBar;
import android.widget.Toast;

/* JADX INFO: loaded from: classes5.dex */
public class JCVideoPlayerSimple extends JCVideoPlayer {
    public JCVideoPlayerSimple(Context context) {
        super(context);
    }

    private void W() {
        int i10 = this.f91211c;
        if (i10 == 3) {
            this.f91217i.setImageResource(R.drawable.jc_click_pause_selector);
        } else if (i10 == 7) {
            this.f91217i.setImageResource(R.drawable.jc_click_error_selector);
        } else {
            this.f91217i.setImageResource(R.drawable.jc_click_play_selector);
        }
    }

    public void V() {
        if (this.f91212d == 2) {
            this.f91219k.setImageResource(R.drawable.jc_shrink);
        } else {
            this.f91219k.setImageResource(R.drawable.jc_enlarge);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public int getLayoutId() {
        return R.layout.jc_layout_base;
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.fullscreen && this.f91211c == 0) {
            Toast.makeText(getContext(), "Play video first", 0).show();
        } else {
            super.onClick(view);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i10, boolean z10) {
        if (z10 && this.f91211c == 0) {
            Toast.makeText(getContext(), "Play video first", 0).show();
        } else {
            super.onProgressChanged(seekBar, i10, z10);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void setUp(String str, int i10, Object... objArr) {
        super.setUp(str, i10, objArr);
        V();
        this.f91219k.setVisibility(8);
    }

    public JCVideoPlayerSimple(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
