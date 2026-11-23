package com.join.mgps.activity.login;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes9.dex */
public class SplashAdapter extends RecyclerView.Adapter<ViewHolder> {
    private int imgWidth;

    public class ViewHolder extends RecyclerView.ViewHolder {
        ImageView item_bg;

        public ViewHolder(final View itemView) {
            super(itemView);
            this.item_bg = (ImageView) itemView.findViewById(R.id.item_bg);
        }
    }

    public SplashAdapter(Context context) {
        this.imgWidth = getScreenWidth(context);
    }

    public static int getScreenWidth(Context context) {
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getWidth();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return Integer.MAX_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final ViewHolder holder, final int position) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new ViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.wufunlogin_splash_recitem, parent, false));
    }
}
