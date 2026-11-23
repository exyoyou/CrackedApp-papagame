.class Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingOneKeyDialog;->showMenu()V
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
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSpBind(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/papa91/arc/bean/SpBindsDataBean;->getSp_binds()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ge v0, v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/papa91/arc/bean/SpBindsDataBean;->getSp_binds()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;->getBinds()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 41
    .line 42
    iget v2, v2, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    .line 43
    .line 44
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 55
    .line 56
    iget v3, v2, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillIdx:I

    .line 57
    .line 58
    if-ne v1, v3, :cond_0

    .line 59
    .line 60
    iget v1, v2, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    .line 61
    .line 62
    const/4 v3, -0x1

    .line 63
    invoke-virtual {v2, v0, v1, v3}, Lcom/papa91/arc/dialog/SettingDialog;->setSPBindData(III)V

    .line 64
    .line 65
    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 70
    .line 71
    iget v1, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    .line 72
    .line 73
    iget v2, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillIdx:I

    .line 74
    .line 75
    invoke-virtual {v0, p1, v1, v2}, Lcom/papa91/arc/dialog/SettingDialog;->setSPBindData(III)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->saveBindsFileData()V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->dismissOnly()V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->getSpBindsData()Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p1, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 97
    .line 98
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->access$000(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 105
    .line 106
    .line 107
    return-void
.end method
