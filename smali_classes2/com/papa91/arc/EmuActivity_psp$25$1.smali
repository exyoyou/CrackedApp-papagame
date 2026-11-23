.class Lcom/papa91/arc/EmuActivity_psp$25$1;
.super Lcom/papa91/arc/interfaces/DialogListenerWrap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/EmuActivity_psp$25;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp$25;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$25$1;->this$1:Lcom/papa91/arc/EmuActivity_psp$25;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/interfaces/DialogListenerWrap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCenterClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/arc/interfaces/DialogListenerWrap;->onCenterClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25$1;->this$1:Lcom/papa91/arc/EmuActivity_psp$25;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/papa91/arc/EmuActivity_psp;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 9
    .line 10
    iget v0, v0, Lcom/papa91/arc/EmuActivity_psp$25;->val$type:I

    .line 11
    .line 12
    invoke-static {v1, v2, p1, p2, v0}, Lcom/papa91/arc/EmuActivity_psp;->access$2000(Lcom/papa91/arc/EmuActivity_psp;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onCloseClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/arc/interfaces/DialogListenerWrap;->onCloseClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25$1;->this$1:Lcom/papa91/arc/EmuActivity_psp$25;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 7
    .line 8
    const-string v1, "closedRealNameWindow"

    .line 9
    .line 10
    const-string v2, "0"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$25$1;->this$1:Lcom/papa91/arc/EmuActivity_psp$25;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/papa91/arc/EmuActivity_psp$25;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/papa91/arc/EmuActivity_psp;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    .line 20
    .line 21
    iget v0, v0, Lcom/papa91/arc/EmuActivity_psp$25;->val$type:I

    .line 22
    .line 23
    invoke-static {v1, v2, p1, p2, v0}, Lcom/papa91/arc/EmuActivity_psp;->access$2000(Lcom/papa91/arc/EmuActivity_psp;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
