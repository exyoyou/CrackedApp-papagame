package com.join.mgps.base;

import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.util.Linkify;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RatingBar;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.StringRes;
import androidx.recyclerview.widget.RecyclerView;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class b extends RecyclerView.ViewHolder {
    private BaseQuickAdapter adapter;
    Object associatedObject;
    private final LinkedHashSet<Integer> childClickViewIds;

    @Deprecated
    public View convertView;
    private final LinkedHashSet<Integer> itemChildLongClickViewIds;
    private final HashSet<Integer> nestViews;
    private final SparseArray<View> views;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (b.this.adapter.getOnItemChildClickListener() != null) {
                b.this.adapter.getOnItemChildClickListener().onItemChildClick(b.this.adapter, v10, b.this.a());
            }
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.base.b$b, reason: collision with other inner class name */
    class ViewOnLongClickListenerC0701b implements View.OnLongClickListener {
        ViewOnLongClickListenerC0701b() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v10) {
            return b.this.adapter.getOnItemChildLongClickListener() != null && b.this.adapter.getOnItemChildLongClickListener().a(b.this.adapter, v10, b.this.a());
        }
    }

    public b(final View view) {
        super(view);
        this.views = new SparseArray<>();
        this.childClickViewIds = new LinkedHashSet<>();
        this.itemChildLongClickViewIds = new LinkedHashSet<>();
        this.nestViews = new HashSet<>();
        this.convertView = view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a() {
        return getLayoutPosition();
    }

    public b addOnClickListener(@IdRes final int... viewIds) {
        for (int i10 : viewIds) {
            this.childClickViewIds.add(Integer.valueOf(i10));
            View view = getView(i10);
            if (view != null) {
                if (!view.isClickable()) {
                    view.setClickable(true);
                }
                view.setOnClickListener(new a());
            }
        }
        return this;
    }

    public b addOnLongClickListener(@IdRes final int... viewIds) {
        for (int i10 : viewIds) {
            this.itemChildLongClickViewIds.add(Integer.valueOf(i10));
            View view = getView(i10);
            if (view != null) {
                if (!view.isLongClickable()) {
                    view.setLongClickable(true);
                }
                view.setOnLongClickListener(new ViewOnLongClickListenerC0701b());
            }
        }
        return this;
    }

    public Object getAssociatedObject() {
        return this.associatedObject;
    }

    public HashSet<Integer> getChildClickViewIds() {
        return this.childClickViewIds;
    }

    @Deprecated
    public View getConvertView() {
        return this.convertView;
    }

    public HashSet<Integer> getItemChildLongClickViewIds() {
        return this.itemChildLongClickViewIds;
    }

    public Set<Integer> getNestViews() {
        return this.nestViews;
    }

    public <T extends View> T getView(@IdRes int i10) {
        T t10 = (T) this.views.get(i10);
        if (t10 != null) {
            return t10;
        }
        T t11 = (T) this.itemView.findViewById(i10);
        this.views.put(i10, t11);
        return t11;
    }

    public b linkify(@IdRes int viewId) {
        Linkify.addLinks((TextView) getView(viewId), 15);
        return this;
    }

    public b setAdapter(@IdRes int viewId, Adapter adapter) {
        ((AdapterView) getView(viewId)).setAdapter(adapter);
        return this;
    }

    public b setAlpha(@IdRes int viewId, float value) {
        getView(viewId).setAlpha(value);
        return this;
    }

    public void setAssociatedObject(Object associatedObject) {
        this.associatedObject = associatedObject;
    }

    public b setBackgroundColor(@IdRes int viewId, @ColorInt int color) {
        getView(viewId).setBackgroundColor(color);
        return this;
    }

    public b setBackgroundRes(@IdRes int viewId, @DrawableRes int backgroundRes) {
        getView(viewId).setBackgroundResource(backgroundRes);
        return this;
    }

    public b setChecked(@IdRes int viewId, boolean checked) {
        KeyEvent.Callback view = getView(viewId);
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(checked);
        }
        return this;
    }

    public b setEnabled(@IdRes int viewId, boolean enable) {
        getView(viewId).setEnabled(enable);
        return this;
    }

    public b setGone(@IdRes int viewId, boolean visible) {
        getView(viewId).setVisibility(visible ? 0 : 8);
        return this;
    }

    public b setImageBitmap(@IdRes int viewId, Bitmap bitmap) {
        ((ImageView) getView(viewId)).setImageBitmap(bitmap);
        return this;
    }

    public b setImageDrawable(@IdRes int viewId, Drawable drawable) {
        ((ImageView) getView(viewId)).setImageDrawable(drawable);
        return this;
    }

    public b setImageResource(@IdRes int viewId, @DrawableRes int imageResId) {
        ((ImageView) getView(viewId)).setImageResource(imageResId);
        return this;
    }

    public b setMax(@IdRes int viewId, int max) {
        ((ProgressBar) getView(viewId)).setMax(max);
        return this;
    }

    public b setNestView(@IdRes int... viewIds) {
        for (int i10 : viewIds) {
            this.nestViews.add(Integer.valueOf(i10));
        }
        addOnClickListener(viewIds);
        addOnLongClickListener(viewIds);
        return this;
    }

    public b setOnCheckedChangeListener(@IdRes int viewId, CompoundButton.OnCheckedChangeListener listener) {
        ((CompoundButton) getView(viewId)).setOnCheckedChangeListener(listener);
        return this;
    }

    public b setOnItemLongClickListener(@IdRes int viewId, AdapterView.OnItemLongClickListener listener) {
        ((AdapterView) getView(viewId)).setOnItemLongClickListener(listener);
        return this;
    }

    public b setOnItemSelectedClickListener(@IdRes int viewId, AdapterView.OnItemSelectedListener listener) {
        ((AdapterView) getView(viewId)).setOnItemSelectedListener(listener);
        return this;
    }

    public b setProgress(@IdRes int viewId, int progress) {
        ((ProgressBar) getView(viewId)).setProgress(progress);
        return this;
    }

    public b setRating(@IdRes int viewId, float rating) {
        ((RatingBar) getView(viewId)).setRating(rating);
        return this;
    }

    public b setTag(@IdRes int viewId, Object tag) {
        getView(viewId).setTag(tag);
        return this;
    }

    public b setText(@IdRes int viewId, CharSequence value) {
        ((TextView) getView(viewId)).setText(value);
        return this;
    }

    public b setTextColor(@IdRes int viewId, @ColorInt int textColor) {
        ((TextView) getView(viewId)).setTextColor(textColor);
        return this;
    }

    public b setTypeface(@IdRes int viewId, Typeface typeface) {
        TextView textView = (TextView) getView(viewId);
        textView.setTypeface(typeface);
        textView.setPaintFlags(textView.getPaintFlags() | 128);
        return this;
    }

    public b setVisible(@IdRes int viewId, boolean visible) {
        getView(viewId).setVisibility(visible ? 0 : 4);
        return this;
    }

    protected b setAdapter(BaseQuickAdapter adapter) {
        this.adapter = adapter;
        return this;
    }

    public b setProgress(@IdRes int viewId, int progress, int max) {
        ProgressBar progressBar = (ProgressBar) getView(viewId);
        progressBar.setMax(max);
        progressBar.setProgress(progress);
        return this;
    }

    public b setRating(@IdRes int viewId, float rating, int max) {
        RatingBar ratingBar = (RatingBar) getView(viewId);
        ratingBar.setMax(max);
        ratingBar.setRating(rating);
        return this;
    }

    public b setTag(@IdRes int viewId, int key, Object tag) {
        getView(viewId).setTag(key, tag);
        return this;
    }

    public b setText(@IdRes int viewId, @StringRes int strId) {
        ((TextView) getView(viewId)).setText(strId);
        return this;
    }

    public b setTypeface(Typeface typeface, int... viewIds) {
        for (int i10 : viewIds) {
            TextView textView = (TextView) getView(i10);
            textView.setTypeface(typeface);
            textView.setPaintFlags(textView.getPaintFlags() | 128);
        }
        return this;
    }
}
