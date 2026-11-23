package com.haima.hmcp.virtual.bean;

import com.alibaba.fastjson.annotation.JSONField;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirtualLayoutBean {
    public ConfigDTO config;
    private List<HmVirtualViewBean> fnBtns;
    private List<HmVirtualViewBean> keyboard;
    private MouseDTO mouse;
    private List<HmVirtualViewBean> xbox;

    public static class ConfigDTO {

        @JSONField(name = "center_to_boundary_scale")
        private float centerToBoundaryScale;
        private String default_layout;

        @JSONField(name = "drawer_list")
        public List<HmVirtualViewBean> drawerList;

        @JSONField(name = "drawerkey_selected_border_color")
        public volatile String drawerSelectedBorderColor;
        public volatile String pic_common_bg_selected;
        private volatile String pic_common_bg_selected_MD5;

        @JSONField(name = "pic_common_bg_selected_url")
        private volatile String pic_common_bg_selected_url;
        public volatile String pic_common_bg_unselected;
        private volatile String pic_common_bg_unselected_MD5;

        @JSONField(name = "pic_common_bg_unselected_url")
        private volatile String pic_common_bg_unselected_url;
        public volatile String pic_common_drawer_bg_selected;
        public volatile String pic_common_drawer_bg_selected_MD5;

        @JSONField(name = "pic_common_drawer_bg_selected_url")
        public volatile String pic_common_drawer_bg_selected_url;
        public volatile String pic_common_drawer_bg_unselected;
        public volatile String pic_common_drawer_bg_unselected_MD5;

        @JSONField(name = "pic_common_drawer_bg_unselected_url")
        public volatile String pic_common_drawer_bg_unselected_url;
        public volatile String pic_common_drawer_icon;
        public volatile String pic_common_drawer_icon_MD5;

        @JSONField(name = "pic_common_drawer_icon_url")
        public volatile String pic_common_drawer_icon_url;
        public volatile String pic_rocker_center;
        private volatile String pic_rocker_center_MD5;

        @JSONField(name = "pic_rocker_center_url")
        private volatile String pic_rocker_center_url;
        public volatile String pic_rocker_direction;
        private volatile String pic_rocker_direction_MD5;

        @JSONField(name = "pic_rocker_direction_url")
        private volatile String pic_rocker_direction_url;
        private float xbox_alpha = 1.0f;
        private int xbox_joystick_center_reset = 0;

        public ConfigDTO copy() {
            ConfigDTO configDTO = new ConfigDTO();
            configDTO.default_layout = this.default_layout;
            configDTO.xbox_alpha = this.xbox_alpha;
            configDTO.xbox_joystick_center_reset = this.xbox_joystick_center_reset;
            configDTO.pic_common_bg_selected = this.pic_common_bg_selected;
            configDTO.pic_common_bg_selected_MD5 = this.pic_common_bg_selected_MD5;
            configDTO.pic_common_bg_selected_url = this.pic_common_bg_selected_url;
            configDTO.pic_common_bg_unselected = this.pic_common_bg_unselected;
            configDTO.pic_common_bg_unselected_MD5 = this.pic_common_bg_unselected_MD5;
            configDTO.pic_common_bg_unselected_url = this.pic_common_bg_unselected_url;
            configDTO.pic_rocker_center = this.pic_rocker_center;
            configDTO.pic_rocker_center_MD5 = this.pic_rocker_center_MD5;
            configDTO.pic_rocker_center_url = this.pic_rocker_center_url;
            configDTO.pic_rocker_direction = this.pic_rocker_direction;
            configDTO.pic_rocker_direction_MD5 = this.pic_rocker_direction_MD5;
            configDTO.pic_rocker_direction_url = this.pic_rocker_direction_url;
            configDTO.centerToBoundaryScale = this.centerToBoundaryScale;
            configDTO.pic_common_drawer_icon = this.pic_common_drawer_icon;
            configDTO.pic_common_drawer_icon_MD5 = this.pic_common_drawer_icon_MD5;
            configDTO.pic_common_drawer_icon_url = this.pic_common_drawer_icon_url;
            configDTO.pic_common_drawer_bg_selected = this.pic_common_drawer_bg_selected;
            configDTO.pic_common_drawer_bg_selected_MD5 = this.pic_common_drawer_bg_selected_MD5;
            configDTO.pic_common_drawer_bg_selected_url = this.pic_common_drawer_bg_selected_url;
            configDTO.pic_common_drawer_bg_unselected = this.pic_common_drawer_bg_unselected;
            configDTO.pic_common_drawer_bg_unselected_MD5 = this.pic_common_drawer_bg_unselected_MD5;
            configDTO.pic_common_drawer_bg_unselected_url = this.pic_common_drawer_bg_unselected_url;
            if (this.drawerList != null) {
                configDTO.drawerList = new ArrayList(this.drawerList.size());
                Iterator<HmVirtualViewBean> it2 = this.drawerList.iterator();
                while (it2.hasNext()) {
                    configDTO.drawerList.add(it2.next().copy());
                }
            }
            return configDTO;
        }

        public float getCenterToBoundaryScale() {
            return this.centerToBoundaryScale;
        }

        public String getDefault_layout() {
            return this.default_layout;
        }

        public List<HmVirtualViewBean> getDrawerList() {
            return this.drawerList;
        }

        public String getPic_common_bg_selected() {
            return this.pic_common_bg_selected;
        }

        public String getPic_common_bg_selected_MD5() {
            return this.pic_common_bg_selected_MD5;
        }

        public String getPic_common_bg_selected_url() {
            return this.pic_common_bg_selected_url;
        }

        public String getPic_common_bg_unselected() {
            return this.pic_common_bg_unselected;
        }

        public String getPic_common_bg_unselected_MD5() {
            return this.pic_common_bg_unselected_MD5;
        }

        public String getPic_common_bg_unselected_url() {
            return this.pic_common_bg_unselected_url;
        }

        public String getPic_common_drawer_bg_selected() {
            return this.pic_common_drawer_bg_selected;
        }

        public String getPic_common_drawer_bg_selected_MD5() {
            return this.pic_common_drawer_bg_selected_MD5;
        }

        public String getPic_common_drawer_bg_selected_url() {
            return this.pic_common_drawer_bg_selected_url;
        }

        public String getPic_common_drawer_bg_unselected() {
            return this.pic_common_drawer_bg_unselected;
        }

        public String getPic_common_drawer_bg_unselected_MD5() {
            return this.pic_common_drawer_bg_unselected_MD5;
        }

        public String getPic_common_drawer_bg_unselected_url() {
            return this.pic_common_drawer_bg_unselected_url;
        }

        public String getPic_common_drawer_icon() {
            return this.pic_common_drawer_icon;
        }

        public String getPic_common_drawer_icon_MD5() {
            return this.pic_common_drawer_icon_MD5;
        }

        public String getPic_common_drawer_icon_url() {
            return this.pic_common_drawer_icon_url;
        }

        public String getPic_rocker_center() {
            return this.pic_rocker_center;
        }

        public String getPic_rocker_center_MD5() {
            return this.pic_rocker_center_MD5;
        }

        public String getPic_rocker_center_url() {
            return this.pic_rocker_center_url;
        }

        public String getPic_rocker_direction() {
            return this.pic_rocker_direction;
        }

        public String getPic_rocker_direction_MD5() {
            return this.pic_rocker_direction_MD5;
        }

        public String getPic_rocker_direction_url() {
            return this.pic_rocker_direction_url;
        }

        public float getXbox_alpha() {
            return this.xbox_alpha;
        }

        public int getXbox_joystick_center_reset() {
            return this.xbox_joystick_center_reset;
        }

        public void setCenterToBoundaryScale(float f10) {
            this.centerToBoundaryScale = f10;
        }

        public void setDefault_layout(String str) {
            this.default_layout = str;
        }

        public void setDrawerList(List<HmVirtualViewBean> list) {
            this.drawerList = list;
        }

        public void setPic_common_bg_selected_MD5(String str) {
            this.pic_common_bg_selected_MD5 = str;
        }

        public void setPic_common_bg_selected_url(String str) {
            this.pic_common_bg_selected_url = str;
        }

        public void setPic_common_bg_unselected_MD5(String str) {
            this.pic_common_bg_unselected_MD5 = str;
        }

        public void setPic_common_bg_unselected_url(String str) {
            this.pic_common_bg_unselected_url = str;
        }

        public void setPic_common_drawer_bg_selected(String str) {
            this.pic_common_drawer_bg_selected = str;
        }

        public void setPic_common_drawer_bg_selected_MD5(String str) {
            this.pic_common_drawer_bg_selected_MD5 = str;
        }

        public void setPic_common_drawer_bg_selected_url(String str) {
            this.pic_common_drawer_bg_selected_url = str;
        }

        public void setPic_common_drawer_bg_unselected(String str) {
            this.pic_common_drawer_bg_unselected = str;
        }

        public void setPic_common_drawer_bg_unselected_MD5(String str) {
            this.pic_common_drawer_bg_unselected_MD5 = str;
        }

        public void setPic_common_drawer_bg_unselected_url(String str) {
            this.pic_common_drawer_bg_unselected_url = str;
        }

        public void setPic_common_drawer_icon(String str) {
            this.pic_common_drawer_icon = str;
        }

        public void setPic_common_drawer_icon_MD5(String str) {
            this.pic_common_drawer_icon_MD5 = str;
        }

        public void setPic_common_drawer_icon_url(String str) {
            this.pic_common_drawer_icon_url = str;
        }

        public void setPic_rocker_center_MD5(String str) {
            this.pic_rocker_center_MD5 = str;
        }

        public void setPic_rocker_center_url(String str) {
            this.pic_rocker_center_url = str;
        }

        public void setPic_rocker_direction_MD5(String str) {
            this.pic_rocker_direction_MD5 = str;
        }

        public void setPic_rocker_direction_url(String str) {
            this.pic_rocker_direction_url = str;
        }

        public void setXbox_alpha(float f10) {
            this.xbox_alpha = f10;
        }

        public void setXbox_joystick_center_reset(int i10) {
            this.xbox_joystick_center_reset = i10;
        }
    }

    public static class MouseDTO {
        private float btn_sensitivity;
        private int mode;
        private float sensitivity;

        public MouseDTO copy() {
            MouseDTO mouseDTO = new MouseDTO();
            mouseDTO.mode = this.mode;
            mouseDTO.sensitivity = this.sensitivity;
            mouseDTO.btn_sensitivity = this.btn_sensitivity;
            return mouseDTO;
        }

        public float getBtn_sensitivity() {
            float f10 = this.btn_sensitivity;
            if (f10 <= 0.0f) {
                return 1.0f;
            }
            return f10;
        }

        public int getMode() {
            return this.mode;
        }

        public float getSensitivity() {
            return this.sensitivity;
        }

        public void setBtn_sensitivity(float f10) {
            this.btn_sensitivity = f10;
        }

        public void setMode(int i10) {
            this.mode = i10;
        }

        public void setSensitivity(float f10) {
            this.sensitivity = f10;
        }
    }

    public HmVirtualLayoutBean copy() {
        HmVirtualLayoutBean hmVirtualLayoutBean = new HmVirtualLayoutBean();
        MouseDTO mouseDTO = this.mouse;
        if (mouseDTO != null) {
            hmVirtualLayoutBean.mouse = mouseDTO.copy();
        }
        ConfigDTO configDTO = this.config;
        if (configDTO != null) {
            hmVirtualLayoutBean.config = configDTO.copy();
        }
        if (this.keyboard != null) {
            hmVirtualLayoutBean.keyboard = new ArrayList(this.keyboard.size());
            Iterator<HmVirtualViewBean> it2 = this.keyboard.iterator();
            while (it2.hasNext()) {
                hmVirtualLayoutBean.keyboard.add(it2.next().copy());
            }
        }
        if (this.xbox != null) {
            hmVirtualLayoutBean.xbox = new ArrayList(this.xbox.size());
            Iterator<HmVirtualViewBean> it3 = this.xbox.iterator();
            while (it3.hasNext()) {
                hmVirtualLayoutBean.xbox.add(it3.next().copy());
            }
        }
        return hmVirtualLayoutBean;
    }

    public ConfigDTO getConfig() {
        return this.config;
    }

    public List<HmVirtualViewBean> getFnBtns() {
        return this.fnBtns;
    }

    public List<HmVirtualViewBean> getKeyboard() {
        return this.keyboard;
    }

    public MouseDTO getMouse() {
        return this.mouse;
    }

    public List<HmVirtualViewBean> getXbox() {
        return this.xbox;
    }

    public void setConfig(ConfigDTO configDTO) {
        this.config = configDTO;
    }

    public void setFnBtns(List<HmVirtualViewBean> list) {
        this.fnBtns = list;
    }

    public void setKeyboard(List<HmVirtualViewBean> list) {
        this.keyboard = list;
    }

    public void setMouse(MouseDTO mouseDTO) {
        this.mouse = mouseDTO;
    }

    public void setXbox(List<HmVirtualViewBean> list) {
        this.xbox = list;
    }
}
