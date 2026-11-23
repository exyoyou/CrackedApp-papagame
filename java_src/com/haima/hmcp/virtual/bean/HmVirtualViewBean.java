package com.haima.hmcp.virtual.bean;

import com.alibaba.fastjson.annotation.JSONField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kuaishou.weapon.p0.t;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirtualViewBean {

    @JSONField(name = "cross_pic_rocker_direction")
    private String crossPicRockerDirection;

    @JSONField(name = "cross_pic_rocker_direction_MD5")
    private String crossPicRockerDirectionMD5;

    @JSONField(name = "cross_pic_rocker_direction_url")
    private String crossPicRockerDirectionUrl;

    @JSONField(name = "drawer_id")
    private Long drawerId;

    @JSONField(name = "drawer_list")
    private List<HmVirtualViewBean> drawerList;
    private String drawerSelectedBorderColor;

    @JSONField(name = "hide_text")
    private boolean hideText;

    @JSONField(name = "kT")
    private int keyType;

    @JSONField(name = MediationConstant.ADN_KS)
    private List<KeysDTO> keys;

    @JSONField(name = "n")
    private String name;

    @JSONField(name = "pic_center")
    private String picCenter;

    @JSONField(name = "pic_center_MD5")
    private String picCenterMD5;

    @JSONField(name = "pic_center_url")
    private String picCenterUrl;

    @JSONField(name = "pic_selected")
    private String picSelected;

    @JSONField(name = "pic_selected_MD5")
    private String picSelectedMD5;

    @JSONField(name = "pic_selected_url")
    private String picSelectedUrl;

    @JSONField(name = "pic_unselected")
    private String picUnselected;

    @JSONField(name = "pic_unselected_MD5")
    private String picUnselectedMD5;

    @JSONField(name = "pic_unselected_url")
    private String picUnselectedUrl;

    @JSONField(name = "p")
    private PositionDTO position;

    @JSONField(name = "s")
    private float scale;

    @JSONField(name = "sT")
    private int sendType;

    @JSONField(name = "sens")
    private Float sensitivity;

    @JSONField(deserialize = false, serialize = false)
    public boolean sensitivityFnBtnChecked;

    @JSONField(name = "text_rocker_center")
    private String textRocketCenter;
    private String uuid;

    public static class KeysDTO {

        @JSONField(name = "c")
        private int code;

        @JSONField(name = t.f74876a)
        private String key;

        public KeysDTO() {
        }

        public int getCode() {
            return this.code;
        }

        public String getKey() {
            return this.key;
        }

        public void setCode(int i10) {
            this.code = i10;
        }

        public void setKey(String str) {
            this.key = str;
        }

        public String toString() {
            return "KeysDTO{key='" + this.key + "', code=" + this.code + '}';
        }

        public KeysDTO(String str, int i10) {
            this.key = str;
            this.code = i10;
        }
    }

    public static class PositionDTO {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f34094h;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private int f34095w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private double f34096x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private double f34097y;

        public int getH() {
            return this.f34094h;
        }

        public int getW() {
            return this.f34095w;
        }

        public double getX() {
            return this.f34096x;
        }

        public double getY() {
            return this.f34097y;
        }

        public void setH(int i10) {
            this.f34094h = i10;
        }

        public void setW(int i10) {
            this.f34095w = i10;
        }

        public void setX(double d10) {
            this.f34096x = d10;
        }

        public void setY(double d10) {
            this.f34097y = d10;
        }

        public String toString() {
            return "PositionDTO{x=" + this.f34096x + ", y=" + this.f34097y + ", w=" + this.f34095w + ", h=" + this.f34094h + '}';
        }
    }

    public HmVirtualViewBean copy() {
        HmVirtualViewBean hmVirtualViewBean = new HmVirtualViewBean();
        int i10 = this.keyType;
        if (i10 == 13 || i10 == -2 || i10 == -1) {
            if (this.position == null) {
                return null;
            }
        } else if (this.position == null || this.keys == null) {
            return null;
        }
        hmVirtualViewBean.setName(this.name);
        hmVirtualViewBean.setKeyType(this.keyType);
        hmVirtualViewBean.setSendType(this.sendType);
        hmVirtualViewBean.setScale(this.scale);
        hmVirtualViewBean.setSensitivity(this.sensitivity);
        hmVirtualViewBean.sensitivityFnBtnChecked = this.sensitivityFnBtnChecked;
        hmVirtualViewBean.setUuid(this.uuid);
        hmVirtualViewBean.setDrawerId(this.drawerId);
        hmVirtualViewBean.setPicCenter(this.picCenter);
        hmVirtualViewBean.setPicCenterMD5(this.picCenterMD5);
        hmVirtualViewBean.setPicCenterUrl(this.picCenterUrl);
        PositionDTO positionDTO = new PositionDTO();
        PositionDTO positionDTO2 = this.position;
        if (positionDTO2 != null) {
            positionDTO.setX(positionDTO2.getX());
            positionDTO.setY(this.position.getY());
            positionDTO.setH(this.position.getH());
            positionDTO.setW(this.position.getW());
        } else {
            positionDTO.setX(0.5d);
            positionDTO.setY(0.5d);
            positionDTO.setW(108);
            positionDTO.setH(108);
        }
        hmVirtualViewBean.setPosition(positionDTO);
        if (this.keys != null) {
            ArrayList arrayList = new ArrayList();
            for (KeysDTO keysDTO : this.keys) {
                KeysDTO keysDTO2 = new KeysDTO();
                keysDTO2.setCode(keysDTO.getCode());
                keysDTO2.setKey(keysDTO.getKey());
                arrayList.add(keysDTO2);
            }
            hmVirtualViewBean.setKeys(arrayList);
        }
        hmVirtualViewBean.setPicSelected(this.picSelected);
        hmVirtualViewBean.setPicSelectedMD5(this.picSelectedMD5);
        hmVirtualViewBean.setPicSelectedUrl(this.picSelectedUrl);
        hmVirtualViewBean.setPicUnselected(this.picUnselected);
        hmVirtualViewBean.setPicUnselectedMD5(this.picUnselectedMD5);
        hmVirtualViewBean.setPicUnselectedUrl(this.picUnselectedUrl);
        hmVirtualViewBean.setCrossPicRockerDirection(this.crossPicRockerDirection);
        hmVirtualViewBean.setCrossPicRockerDirectionMD5(this.crossPicRockerDirectionMD5);
        hmVirtualViewBean.setCrossPicRockerDirectionUrl(this.crossPicRockerDirectionUrl);
        hmVirtualViewBean.setTextRocketCenter(this.textRocketCenter);
        hmVirtualViewBean.setHideText(this.hideText);
        hmVirtualViewBean.setDrawerSelectedBorderColor(this.drawerSelectedBorderColor);
        if (this.drawerList != null) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<HmVirtualViewBean> it2 = this.drawerList.iterator();
            while (it2.hasNext()) {
                arrayList2.add(it2.next().copy());
            }
            hmVirtualViewBean.setDrawerList(arrayList2);
        }
        return hmVirtualViewBean;
    }

    public String getCrossPicRockerDirection() {
        return this.crossPicRockerDirection;
    }

    public String getCrossPicRockerDirectionMD5() {
        return this.crossPicRockerDirectionMD5;
    }

    public String getCrossPicRockerDirectionUrl() {
        return this.crossPicRockerDirectionUrl;
    }

    public Long getDrawerId() {
        return this.drawerId;
    }

    public List<HmVirtualViewBean> getDrawerList() {
        return this.drawerList;
    }

    public String getDrawerSelectedBorderColor() {
        return this.drawerSelectedBorderColor;
    }

    public boolean getHideText() {
        return this.hideText;
    }

    public int getKeyType() {
        return this.keyType;
    }

    public List<KeysDTO> getKeys() {
        return this.keys;
    }

    public String getName() {
        String str = this.name;
        return str == null ? "" : str;
    }

    public String getPicCenter() {
        return this.picCenter;
    }

    public String getPicCenterMD5() {
        return this.picCenterMD5;
    }

    public String getPicCenterUrl() {
        return this.picCenterUrl;
    }

    public String getPicSelected() {
        return this.picSelected;
    }

    public String getPicSelectedMD5() {
        return this.picSelectedMD5;
    }

    public String getPicSelectedUrl() {
        return this.picSelectedUrl;
    }

    public String getPicUnselected() {
        return this.picUnselected;
    }

    public String getPicUnselectedMD5() {
        return this.picUnselectedMD5;
    }

    public String getPicUnselectedUrl() {
        return this.picUnselectedUrl;
    }

    public PositionDTO getPosition() {
        return this.position;
    }

    public float getScale() {
        float f10 = this.scale;
        if (f10 < 0.0f) {
            return 1.0f;
        }
        return f10;
    }

    public int getSendType() {
        return this.sendType;
    }

    public Float getSensitivity() {
        return this.sensitivity;
    }

    public String getTextRocketCenter() {
        return this.textRocketCenter;
    }

    public String getUuid() {
        return this.uuid;
    }

    public void setCrossPicRockerDirection(String str) {
        this.crossPicRockerDirection = str;
    }

    public void setCrossPicRockerDirectionMD5(String str) {
        this.crossPicRockerDirectionMD5 = str;
    }

    public void setCrossPicRockerDirectionUrl(String str) {
        this.crossPicRockerDirectionUrl = str;
    }

    public void setDrawerId(Long l10) {
        this.drawerId = l10;
    }

    public void setDrawerList(List<HmVirtualViewBean> list) {
        this.drawerList = list;
    }

    public void setDrawerSelectedBorderColor(String str) {
        this.drawerSelectedBorderColor = str;
    }

    public void setHideText(boolean z10) {
        this.hideText = z10;
    }

    public void setKeyType(int i10) {
        this.keyType = i10;
    }

    public void setKeys(List<KeysDTO> list) {
        this.keys = list;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPicCenter(String str) {
        this.picCenter = str;
    }

    public void setPicCenterMD5(String str) {
        this.picCenterMD5 = str;
    }

    public void setPicCenterUrl(String str) {
        this.picCenterUrl = str;
    }

    public void setPicSelected(String str) {
        this.picSelected = str;
    }

    public void setPicSelectedMD5(String str) {
        this.picSelectedMD5 = str;
    }

    public void setPicSelectedUrl(String str) {
        this.picSelectedUrl = str;
    }

    public void setPicUnselected(String str) {
        this.picUnselected = str;
    }

    public void setPicUnselectedMD5(String str) {
        this.picUnselectedMD5 = str;
    }

    public void setPicUnselectedUrl(String str) {
        this.picUnselectedUrl = str;
    }

    public void setPosition(PositionDTO positionDTO) {
        this.position = positionDTO;
    }

    public void setScale(float f10) {
        this.scale = f10;
    }

    public void setSendType(int i10) {
        this.sendType = i10;
    }

    public void setSensitivity(Float f10) {
        this.sensitivity = f10;
    }

    public void setTextRocketCenter(String str) {
        this.textRocketCenter = str;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public String toString() {
        return "HmVirtualViewBean{uuid='" + this.uuid + "', name='" + this.name + "', keys=" + this.keys + ", position=" + this.position + ", keyType=" + this.keyType + ", sendType=" + this.sendType + ", scale=" + this.scale + ", drawerId=" + this.drawerId + ", drawerList=" + this.drawerList + ", picCenter='" + this.picCenter + "', picCenterMD5='" + this.picCenterMD5 + "', picCenterUrl='" + this.picCenterUrl + "', picSelectedUrl='" + this.picSelectedUrl + "', picUnselectedUrl='" + this.picUnselectedUrl + "', crossPicRockerDirectionUrl='" + this.crossPicRockerDirectionUrl + "'}";
    }
}
