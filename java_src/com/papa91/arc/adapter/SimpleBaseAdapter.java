package com.papa91.arc.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.papa91.arc.interfaces.IOnItemClickListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SimpleBaseAdapter<T> extends BaseAdapter {
    private IOnItemClickListener itemClickListener;
    private List<T> mDataList = new ArrayList();

    public void addData(T t10) {
        this.mDataList.add(t10);
    }

    public void addDatas(List<T> list) {
        if (list != null) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                this.mDataList.add(it2.next());
            }
        }
        notifyDataSetChanged();
    }

    public void clear() {
        this.mDataList.clear();
        notifyDataSetChanged();
    }

    public abstract void convert(int i10, View view, ViewGroup viewGroup, boolean z10);

    @Override // android.widget.Adapter
    public int getCount() {
        List<T> list = this.mDataList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public T getItem(int i10) {
        if (i10 > this.mDataList.size() - 1) {
            return null;
        }
        return this.mDataList.get(i10);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    public abstract int getLayoutId();

    @Override // android.widget.Adapter
    public View getView(final int i10, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(getLayoutId(), (ViewGroup) null);
            convert(i10, view, viewGroup, true);
        } else {
            convert(i10, view, viewGroup, false);
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.adapter.SimpleBaseAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (SimpleBaseAdapter.this.itemClickListener != null) {
                    SimpleBaseAdapter.this.itemClickListener.onItemClick(i10);
                }
            }
        });
        return view;
    }

    public boolean remove(T t10) {
        return this.mDataList.remove(t10);
    }

    public void setDatas(List<T> list) {
        this.mDataList.clear();
        addDatas(list);
    }

    public void setItemClickListener(IOnItemClickListener iOnItemClickListener) {
        this.itemClickListener = iOnItemClickListener;
    }

    public void addData(int i10, T t10) {
        this.mDataList.add(i10, t10);
    }

    public T remove(int i10) {
        return this.mDataList.remove(i10);
    }
}
