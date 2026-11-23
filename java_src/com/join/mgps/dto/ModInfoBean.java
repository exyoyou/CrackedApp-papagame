package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class ModInfoBean implements Serializable {
    private String compatible_version;
    private String down_url;
    private int ext64;
    private String ext64_package_name;
    private long ext64_size;
    private String ext64_url;
    private int ext64_ver;
    private boolean isIncompatible;
    private int is_64_finger;
    private int is_golden_finger;
    private String main_game_id;
    private String main_game_ver;
    private String main_package_name;
    private String mod_game_id;
    private String mod_package_name;
    private int status = 14;
    private int ver;

    public String getCompatible_version() {
        return this.compatible_version;
    }

    public String getDown_url() {
        return this.down_url;
    }

    public int getExt64() {
        return this.ext64;
    }

    public String getExt64_package_name() {
        return this.ext64_package_name;
    }

    public long getExt64_size() {
        return this.ext64_size;
    }

    public String getExt64_url() {
        return this.ext64_url;
    }

    public int getExt64_ver() {
        return this.ext64_ver;
    }

    public int getIs_64_finger() {
        return this.is_64_finger;
    }

    public int getIs_golden_finger() {
        return this.is_golden_finger;
    }

    public String getMain_game_id() {
        return this.main_game_id;
    }

    public String getMain_game_ver() {
        return this.main_game_ver;
    }

    public String getMain_package_name() {
        return this.main_package_name;
    }

    public String getMod_game_id() {
        return this.mod_game_id;
    }

    public String getMod_package_name() {
        return this.mod_package_name;
    }

    public int getStatus() {
        return this.status;
    }

    public int getVer() {
        return this.ver;
    }

    public boolean isIncompatible() {
        return this.isIncompatible;
    }

    public void setCompatible_version(String compatible_version) {
        this.compatible_version = compatible_version;
    }

    public void setDown_url(String down_url) {
        this.down_url = down_url;
    }

    public void setExt64(int ext64) {
        this.ext64 = ext64;
    }

    public void setExt64_package_name(String ext64_package_name) {
        this.ext64_package_name = ext64_package_name;
    }

    public void setExt64_size(long ext64_size) {
        this.ext64_size = ext64_size;
    }

    public void setExt64_url(String ext64_url) {
        this.ext64_url = ext64_url;
    }

    public void setExt64_ver(int ext64_ver) {
        this.ext64_ver = ext64_ver;
    }

    public void setIncompatible(boolean incompatible) {
        this.isIncompatible = incompatible;
    }

    public void setIs_64_finger(int is_64_finger) {
        this.is_64_finger = is_64_finger;
    }

    public void setIs_golden_finger(int is_golden_finger) {
        this.is_golden_finger = is_golden_finger;
    }

    public void setMain_game_id(String main_game_id) {
        this.main_game_id = main_game_id;
    }

    public void setMain_game_ver(String main_game_ver) {
        this.main_game_ver = main_game_ver;
    }

    public void setMain_package_name(String main_package_name) {
        this.main_package_name = main_package_name;
    }

    public void setMod_game_id(String mod_game_id) {
        this.mod_game_id = mod_game_id;
    }

    public void setMod_package_name(String mod_package_name) {
        this.mod_package_name = mod_package_name;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setVer(int ver) {
        this.ver = ver;
    }
}
