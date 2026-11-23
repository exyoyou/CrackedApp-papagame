package com.join.mgps.dto;

import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ArchiveDataAddPd {
    private List<ArchiveData> cloud_archives;
    private DomainInfoBean pd_info;

    public List<ArchiveData> getCloud_archives() {
        return this.cloud_archives;
    }

    public DomainInfoBean getPd_info() {
        return this.pd_info;
    }

    public void setCloud_archives(List<ArchiveData> cloud_archives) {
        this.cloud_archives = cloud_archives;
    }

    public void setPd_info(DomainInfoBean pd_info) {
        this.pd_info = pd_info;
    }
}
