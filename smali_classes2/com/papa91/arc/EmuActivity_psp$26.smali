.class Lcom/papa91/arc/EmuActivity_psp$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/interfaces/RealNameCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->showNativeRealName(Lcom/papa91/arc/bean/PopwindowBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$26;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/arc/EmuActivity_psp$26;->val$type:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$26;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    const-string v1, "clickClosedRealNameWindow"

    .line 4
    .line 5
    const-string v2, "0"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$26;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/papa91/arc/EmuActivity_psp;->realNameDialog:Lcom/papa91/arc/dialog/RealNameDialog;

    .line 13
    .line 14
    iget v2, p0, Lcom/papa91/arc/EmuActivity_psp$26;->val$type:I

    .line 15
    .line 16
    invoke-static {v0, v1, p1, p2, v2}, Lcom/papa91/arc/EmuActivity_psp;->access$2000(Lcom/papa91/arc/EmuActivity_psp;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$26;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/ppsspp/ppsspp/PpssppActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onFail(I)V
    .locals 0

    return-void
.end method

.method public onSuccess(Landroid/app/Dialog;Lcom/papa91/arc/bean/PopwindowBean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$26;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 5
    .line 6
    iget v0, p0, Lcom/papa91/arc/EmuActivity_psp$26;->val$type:I

    .line 7
    .line 8
    invoke-static {p1, p2, v0}, Lcom/papa91/arc/EmuActivity_psp;->access$2100(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/PopwindowBean;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/papa91/arc/bean/PopwindowBean;->getEndDuration()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-lez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$26;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    iput-wide v0, p1, Lcom/papa91/arc/EmuActivity_psp;->playTime:J

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/papa91/arc/bean/PopwindowBean;->getEndDuration()Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    int-to-long v0, p2

    .line 36
    invoke-static {p1, v0, v1}, Lcom/papa91/arc/EmuActivity_psp;->access$2200(Lcom/papa91/arc/EmuActivity_psp;J)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
