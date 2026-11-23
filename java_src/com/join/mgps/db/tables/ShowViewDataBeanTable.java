package com.join.mgps.db.tables;

import android.text.TextUtils;
import com.j256.ormlite.field.DatabaseField;
import com.join.mgps.dto.ShowViewDataBean;
import com.join.mgps.dto.SplashIntentBean;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class ShowViewDataBeanTable {

    @DatabaseField
    private String begin_times;

    @DatabaseField
    private String end_times;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67266id;

    @DatabaseField
    private String imagePath;
    private boolean isNeedDelt;

    @DatabaseField
    private String is_default;

    @DatabaseField
    private String jump_info;

    @DatabaseField
    private String pic_addr;

    @DatabaseField
    private long show_time;

    @DatabaseField
    private String strategy_id;

    @DatabaseField
    private String strategy_name;

    @DatabaseField
    private int tag_show;

    @DatabaseField
    private String up_times;

    public ShowViewDataBeanTable() {
        this.isNeedDelt = true;
    }

    public String getBegin_times() {
        return this.begin_times;
    }

    public String getEnd_times() {
        return this.end_times;
    }

    public int getId() {
        return this.f67266id;
    }

    public String getImagePath() {
        return this.imagePath;
    }

    public String getIs_default() {
        return this.is_default;
    }

    public String getJump_info() {
        return this.jump_info;
    }

    public String getPic_addr() {
        return this.pic_addr;
    }

    public ShowViewDataBean getShowVieDatabean() {
        String[] strArr = new String[0];
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(this.jump_info)) {
            try {
                JSONArray jSONArray = new JSONArray(this.jump_info);
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i10);
                    if (jSONObject != null) {
                        arrayList.add(SplashIntentBean.from(jSONObject));
                    }
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        return new ShowViewDataBean(this.f67266id, this.strategy_id, this.strategy_name, this.up_times, strArr, this.begin_times, this.end_times, this.is_default, this.imagePath, this.tag_show, this.isNeedDelt, arrayList, this.show_time);
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

    public int isTag_show() {
        return this.tag_show;
    }

    public void setBegin_times(String begin_times) {
        this.begin_times = begin_times;
    }

    public void setEnd_times(String end_times) {
        this.end_times = end_times;
    }

    public void setId(int id2) {
        this.f67266id = id2;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public void setIs_default(String is_default) {
        this.is_default = is_default;
    }

    public void setJump_info(String jump_info) {
        this.jump_info = jump_info;
    }

    public void setNeedDelt(boolean isNeedDelt) {
        this.isNeedDelt = isNeedDelt;
    }

    public void setPic_addr(String pic_addr) {
        this.pic_addr = pic_addr;
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

    public ShowViewDataBeanTable(int id2, String strategy_id, String strategy_name, String up_times, String pic_addr, String begin_times, String end_times, String is_default, String imagePath, int tag_show, boolean isNeedDelt, String jump_info, long show_time) {
        this.f67266id = id2;
        this.strategy_id = strategy_id;
        this.strategy_name = strategy_name;
        this.up_times = up_times;
        this.pic_addr = pic_addr;
        this.begin_times = begin_times;
        this.end_times = end_times;
        this.is_default = is_default;
        this.imagePath = imagePath;
        this.tag_show = tag_show;
        this.isNeedDelt = isNeedDelt;
        this.jump_info = jump_info;
        this.show_time = show_time;
    }
}
