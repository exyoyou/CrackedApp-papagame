.class Lcom/papa91/arc/dialog/SettingCheatDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog;->showAddCheatDialog()V
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
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog;->rbt_type_cheat:Landroid/widget/RadioButton;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-static {p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$002(Lcom/papa91/arc/dialog/SettingCheatDialog;Z)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog;->rbt_type_gg:Landroid/widget/RadioButton;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-ne p2, p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    invoke-static {p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$002(Lcom/papa91/arc/dialog/SettingCheatDialog;Z)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 35
    .line 36
    iget-object p2, p1, Lcom/papa91/arc/dialog/SettingCheatDialog;->textView10:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$000(Lcom/papa91/arc/dialog/SettingCheatDialog;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->getCustomCheatTip(Z)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
