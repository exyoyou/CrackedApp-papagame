package com.join.mgps.activity.mygame.adapter;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class WufunGameAdapter extends RecyclerView.Adapter {
    List<WufunMainItemData> dataList = new ArrayList();

    class GuesslikeHolder extends RecyclerView.ViewHolder {
        public GuesslikeHolder(View itemView) {
            super(itemView);
        }
    }

    public enum Type {
        GAMEITEM(2),
        GUESSLIKE(1);

        int number;

        Type(int number) {
            this.number = number;
        }
    }

    public static class WufunMainItemData {
        public Object object;
        public Type type;

        public WufunMainItemData(Type type, Object object) {
            this.type = type;
            this.object = object;
        }
    }

    public List<WufunMainItemData> getDataList() {
        return this.dataList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.dataList.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return this.dataList.get(position).type.number;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        return null;
    }
}
