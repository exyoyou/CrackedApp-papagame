package com.join.android.app.component.album.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CropOption;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class b extends ArrayAdapter<CropOption> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<CropOption> f34912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f34913c;

    public b(Context context, ArrayList<CropOption> options) {
        super(context, R.layout.crop_selector, options);
        this.f34912b = options;
        this.f34913c = LayoutInflater.from(context);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup group) {
        if (convertView == null) {
            convertView = this.f34913c.inflate(R.layout.crop_selector, (ViewGroup) null);
        }
        CropOption cropOption = this.f34912b.get(position);
        if (cropOption == null) {
            return null;
        }
        ((ImageView) convertView.findViewById(R.id.iv_icon)).setImageDrawable(cropOption.icon);
        ((TextView) convertView.findViewById(R.id.tv_name)).setText(cropOption.title);
        return convertView;
    }
}
