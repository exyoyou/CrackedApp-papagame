package com.join.mgps.dto;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class ModGameArchiveTagBean implements Parcelable, Serializable {
    public static final Parcelable.Creator<ModGameArchiveTagBean> CREATOR = new Parcelable.Creator<ModGameArchiveTagBean>() { // from class: com.join.mgps.dto.ModGameArchiveTagBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ModGameArchiveTagBean createFromParcel(Parcel in2) {
            return new ModGameArchiveTagBean(in2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ModGameArchiveTagBean[] newArray(int size) {
            return new ModGameArchiveTagBean[size];
        }
    };
    private int count;
    private boolean isSelected;
    private String name;
    private String tagId;
    private int type;

    public ModGameArchiveTagBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCount() {
        return this.count;
    }

    public String getName() {
        return this.name;
    }

    public String getTagId() {
        return this.tagId;
    }

    public int getType() {
        return this.type;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSelected(boolean selected) {
        this.isSelected = selected;
    }

    public void setTagId(String tagId) {
        this.tagId = tagId;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.name);
        parcel.writeInt(this.count);
        parcel.writeString(this.tagId);
        parcel.writeInt(this.type);
        parcel.writeByte(this.isSelected ? (byte) 1 : (byte) 0);
    }

    protected ModGameArchiveTagBean(Parcel in2) {
        this.name = in2.readString();
        this.count = in2.readInt();
        this.tagId = in2.readString();
        this.type = in2.readInt();
        this.isSelected = in2.readByte() != 0;
    }
}
