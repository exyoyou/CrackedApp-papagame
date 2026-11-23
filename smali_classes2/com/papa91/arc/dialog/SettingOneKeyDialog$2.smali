.class Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/interfaces/IOnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingOneKeyDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 2
    .line 3
    iget v1, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    .line 4
    .line 5
    if-eq v1, p1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SkillTableDataBean;->getSkills_table()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/papa91/arc/bean/SkillTableDataBean;->getSkills_table()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    .line 30
    .line 31
    iput-object v1, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->access$000(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->getSkill()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 51
    .line 52
    iput p1, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    .line 53
    .line 54
    invoke-static {v0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->access$100(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method
