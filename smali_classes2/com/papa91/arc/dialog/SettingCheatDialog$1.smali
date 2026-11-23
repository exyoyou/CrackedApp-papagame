.class Lcom/papa91/arc/dialog/SettingCheatDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/interfaces/IOnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 2
    .line 3
    iget v1, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->oldSelIndex:I

    .line 4
    .line 5
    if-eq p1, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/papa91/arc/bean/TypeBean;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/papa91/arc/bean/TypeBean;->getType()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x2

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 24
    .line 25
    iget-object v2, v1, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    .line 26
    .line 27
    iget v1, v1, Lcom/papa91/arc/dialog/SettingCheatDialog;->oldSelIndex:I

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/papa91/arc/bean/TypeBean;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/TypeBean;->setSelected(Z)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/TypeBean;->setSelected(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 44
    .line 45
    iput p1, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->oldSelIndex:I

    .line 46
    .line 47
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->setTab(I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method
