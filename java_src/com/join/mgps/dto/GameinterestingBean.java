package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameinterestingBean implements Serializable {
    private List<RecomDatabean> bottom;
    private int dynamic_module_tpl_type;
    private ClassfyNewTag jump_type;
    private List<RecomDatabean> middle;
    private List<RecomDatabean> more;
    private List<RecomDatabean> top;

    class ClassfyNewTag {
        int play_type;
        int point_type;
        int theme_type;

        public ClassfyNewTag() {
        }

        public int getPlay_type() {
            return this.play_type;
        }

        public int getPoint_type() {
            return this.point_type;
        }

        public int getTheme_type() {
            return this.theme_type;
        }

        public void setPlay_type(int play_type) {
            this.play_type = play_type;
        }

        public void setPoint_type(int point_type) {
            this.point_type = point_type;
        }

        public void setTheme_type(int theme_type) {
            this.theme_type = theme_type;
        }
    }

    public GameinterestingBean() {
    }

    public List<RecomDatabean> getBottom() {
        return this.bottom;
    }

    public int getDynamic_module_tpl_type() {
        return this.dynamic_module_tpl_type;
    }

    public ClassfyNewTag getJump_type() {
        return this.jump_type;
    }

    public List<RecomDatabean> getMiddle() {
        return this.middle;
    }

    public List<RecomDatabean> getMore() {
        return this.more;
    }

    public List<RecomDatabean> getTop() {
        return this.top;
    }

    public void setBottom(List<RecomDatabean> bottom) {
        this.bottom = bottom;
    }

    public void setDynamic_module_tpl_type(int dynamic_module_tpl_type) {
        this.dynamic_module_tpl_type = dynamic_module_tpl_type;
    }

    public void setJump_type(ClassfyNewTag jump_type) {
        this.jump_type = jump_type;
    }

    public void setMiddle(List<RecomDatabean> middle) {
        this.middle = middle;
    }

    public void setMore(List<RecomDatabean> more) {
        this.more = more;
    }

    public void setTop(List<RecomDatabean> top) {
        this.top = top;
    }

    public GameinterestingBean(List<RecomDatabean> top, List<RecomDatabean> middle, List<RecomDatabean> bottom, List<RecomDatabean> more) {
        this.top = top;
        this.middle = middle;
        this.bottom = bottom;
        this.more = more;
    }
}
