package com.join.mgps.dto;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ModGameRecommendAdBean implements Serializable, Parcelable {
    public static final Parcelable.Creator<ModGameRecommendAdBean> CREATOR = new Parcelable.Creator<ModGameRecommendAdBean>() { // from class: com.join.mgps.dto.ModGameRecommendAdBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ModGameRecommendAdBean createFromParcel(Parcel in2) {
            return new ModGameRecommendAdBean(in2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ModGameRecommendAdBean[] newArray(int size) {
            return new ModGameRecommendAdBean[size];
        }
    };
    private String panel;
    private boolean popup;
    private List<CollectionBeanSub> rec_game_list;

    public ModGameRecommendAdBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getPanel() {
        return this.panel;
    }

    public List<CollectionBeanSub> getRec_game_list() {
        return this.rec_game_list;
    }

    public boolean isPopup() {
        return this.popup;
    }

    public void setPanel(String panel) {
        this.panel = panel;
    }

    public void setPopup(boolean popup) {
        this.popup = popup;
    }

    public void setRec_game_list(List<CollectionBeanSub> rec_game_list) {
        this.rec_game_list = rec_game_list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByte(this.popup ? (byte) 1 : (byte) 0);
        parcel.writeString(this.panel);
    }

    protected ModGameRecommendAdBean(Parcel in2) {
        this.popup = in2.readByte() != 0;
        this.panel = in2.readString();
    }
}
