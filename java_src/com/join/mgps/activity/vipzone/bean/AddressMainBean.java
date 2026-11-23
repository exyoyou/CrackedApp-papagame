package com.join.mgps.activity.vipzone.bean;

import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class AddressMainBean {
    List<LuckAddressbean> citys;
    List<LuckAddressbean> privences;
    List<LuckAddressbean> towns;

    public List<LuckAddressbean> getCitys() {
        return this.citys;
    }

    public List<LuckAddressbean> getPrivences() {
        return this.privences;
    }

    public List<LuckAddressbean> getTowns() {
        return this.towns;
    }

    public void setCitys(List<LuckAddressbean> citys) {
        this.citys = citys;
    }

    public void setPrivences(List<LuckAddressbean> privences) {
        this.privences = privences;
    }

    public void setTowns(List<LuckAddressbean> towns) {
        this.towns = towns;
    }
}
