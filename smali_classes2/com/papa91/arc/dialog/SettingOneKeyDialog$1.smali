.class Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;
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
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

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
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->isSPVisible()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->access$000(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;

    .line 28
    .line 29
    const-string v1, "1"

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->getSkill_noSP()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "\u6b64\u6280\u80fd\u4e3a\u8fde\u62db\uff0c\u65e0\u6cd5\u7ed1\u5b9a\u6280\u80fd\u952e"

    .line 48
    .line 49
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 54
    .line 55
    iput p1, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillIdx:I

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->showMenu()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 62
    .line 63
    const-string v0, "0"

    .line 64
    .line 65
    filled-new-array {v0}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->showVip([Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    return-void
.end method
