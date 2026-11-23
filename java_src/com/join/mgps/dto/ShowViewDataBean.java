package com.join.mgps.dto;

import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.db.tables.ShowViewDataBeanTable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ShowViewDataBean {
    private String begin_times;
    private String end_times;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f68110id;
    private String imagePath;
    private boolean isNeedDelt;
    private String is_force;
    private List<SplashIntentBean> jump_info;
    private long show_time;
    private String strategy_id;
    private String strategy_name;
    private int tag_show;
    private String up_times;

    public ShowViewDataBean() {
        this.isNeedDelt = true;
    }

    public String getBegin_times() {
        return this.begin_times;
    }

    public String getEnd_times() {
        return this.end_times;
    }

    public int getId() {
        return this.f68110id;
    }

    public String getImagePath() {
        return this.imagePath;
    }

    public String getIs_force() {
        return this.is_force;
    }

    public List<SplashIntentBean> getJump_info() {
        return this.jump_info;
    }

    public ShowViewDataBeanTable getShowVieDatabeanTable() {
        return new ShowViewDataBeanTable(this.f68110id, this.strategy_id, this.strategy_name, this.up_times, "", this.begin_times, this.end_times, this.is_force, this.imagePath, this.tag_show, this.isNeedDelt, JsonMapper.getInstance().toJson(this.jump_info), this.show_time);
    }

    public long getShow_time() {
        return this.show_time;
    }

    public String getStrategy_id() {
        return this.strategy_id;
    }

    public String getStrategy_name() {
        return this.strategy_name;
    }

    public int getTag_show() {
        return this.tag_show;
    }

    public String getUp_times() {
        return this.up_times;
    }

    public boolean isNeedDelt() {
        return this.isNeedDelt;
    }

    public void setBegin_times(String begin_times) {
        this.begin_times = begin_times;
    }

    public void setEnd_times(String end_times) {
        this.end_times = end_times;
    }

    public void setId(int id2) {
        this.f68110id = id2;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public void setIs_force(String is_force) {
        this.is_force = is_force;
    }

    public void setJump_info(List<SplashIntentBean> jump_info) {
        this.jump_info = jump_info;
    }

    public void setNeedDelt(boolean isNeedDelt) {
        this.isNeedDelt = isNeedDelt;
    }

    public void setShow_time(long show_time) {
        this.show_time = show_time;
    }

    public void setStrategy_id(String strategy_id) {
        this.strategy_id = strategy_id;
    }

    public void setStrategy_name(String strategy_name) {
        this.strategy_name = strategy_name;
    }

    public void setTag_show(int tag_show) {
        this.tag_show = tag_show;
    }

    public void setUp_times(String up_times) {
        this.up_times = up_times;
    }

    public ShowViewDataBean(int id2, String strategy_id, String strategy_name, String up_times, String[] pic_addr, String begin_times, String end_times, String is_force, String imagePath, int tag_show, boolean isNeedDelt, List<SplashIntentBean> jump_info, long show_time) {
        this.f68110id = id2;
        this.strategy_id = strategy_id;
        this.strategy_name = strategy_name;
        this.up_times = up_times;
        this.begin_times = begin_times;
        this.end_times = end_times;
        this.is_force = is_force;
        this.imagePath = imagePath;
        this.tag_show = tag_show;
        this.isNeedDelt = isNeedDelt;
        this.jump_info = jump_info;
        this.show_time = show_time;
    }

    public ShowViewDataBean(int id2, String strategy_id, String strategy_name, String up_times, String[] pic_addr, String begin_times, String end_times, String is_force, String imagePath, int tag_show, boolean isNeedDelt, List<SplashIntentBean> jump_info, long show_time, String vedio_url) {
        this.f68110id = id2;
        this.strategy_id = strategy_id;
        this.strategy_name = strategy_name;
        this.up_times = up_times;
        this.begin_times = begin_times;
        this.end_times = end_times;
        this.is_force = is_force;
        this.imagePath = imagePath;
        this.tag_show = tag_show;
        this.isNeedDelt = isNeedDelt;
        this.jump_info = jump_info;
        this.show_time = show_time;
    }
}
