package com.papa91.arc.bean;

/* JADX INFO: loaded from: classes2.dex */
public class OneKeyMenuBean {
    private int iconRes;
    private int iconResNormal;
    private boolean isCurrent;
    private String name;
    private SkillTableDataBean.SkillsTableBean.SkillBean skillBean;
    private String text;

    public int getIconRes() {
        return this.iconRes;
    }

    public int getIconResNormal() {
        return this.iconResNormal;
    }

    public String getName() {
        return this.name;
    }

    public SkillTableDataBean.SkillsTableBean.SkillBean getSkillBean() {
        return this.skillBean;
    }

    public String getText() {
        return this.text;
    }

    public boolean isCurrent() {
        return this.isCurrent;
    }

    public boolean isEmpty() {
        return "空".equals(this.name);
    }

    public void setCurrent(boolean z10) {
        this.isCurrent = z10;
    }

    public void setIconRes(int i10) {
        this.iconRes = i10;
    }

    public void setIconResNormal(int i10) {
        this.iconResNormal = i10;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setSkillBean(SkillTableDataBean.SkillsTableBean.SkillBean skillBean) {
        this.skillBean = skillBean;
    }

    public void setText(String str) {
        this.text = str;
    }
}
