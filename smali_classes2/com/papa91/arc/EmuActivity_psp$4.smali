.class Lcom/papa91/arc/EmuActivity_psp$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/dialog/TipTwoDialog$OnOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->exit1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$4;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$4;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/papa91/arc/EmuActivity_psp;->access$502(Lcom/papa91/arc/EmuActivity_psp;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$4;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$4;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/papa91/arc/EmuActivity_psp;->access$202(Lcom/papa91/arc/EmuActivity_psp;I)I

    .line 15
    .line 16
    .line 17
    return-void
.end method
