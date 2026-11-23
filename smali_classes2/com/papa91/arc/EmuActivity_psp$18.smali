.class Lcom/papa91/arc/EmuActivity_psp$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/EmuActivity_psp;
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
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$18;->this$0:Lcom/papa91/arc/EmuActivity_psp;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$18;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->access$1400(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$18;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->access$1500(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->hideTimer()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$18;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->access$1600(Lcom/papa91/arc/EmuActivity_psp;)Lcom/papa91/arc/view/MenuView;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->releaseTimer()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
