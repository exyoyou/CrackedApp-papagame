.class Lcom/papa91/arc/dialog/SettingGateDialog$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingGateDialog$3;->onConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingGateDialog$3;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingGateDialog$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog$3$1;->this$1:Lcom/papa91/arc/dialog/SettingGateDialog$3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog$3$1;->this$1:Lcom/papa91/arc/dialog/SettingGateDialog$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingGateDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/papa91/arc/dialog/SettingGateDialog;->access$200(Lcom/papa91/arc/dialog/SettingGateDialog;)Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingGateDialog$3$1;->this$1:Lcom/papa91/arc/dialog/SettingGateDialog$3;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/papa91/arc/dialog/SettingGateDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 12
    .line 13
    iget v2, v2, Lcom/papa91/arc/dialog/SettingGateDialog;->mid:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/papa91/arc/bean/GateBean;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/papa91/arc/bean/GateBean;->getGateIndex()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->loadGateStage(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
