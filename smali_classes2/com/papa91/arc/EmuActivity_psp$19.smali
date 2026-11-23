.class Lcom/papa91/arc/EmuActivity_psp$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->initTimeLimitedDialog()V
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
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$19;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBuyVip(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$19;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa91/arc/EmuActivity_psp;->isLogined()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->login()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "4"

    .line 18
    .line 19
    const-string v3, ""

    .line 20
    .line 21
    const-string v5, ""

    .line 22
    .line 23
    const-string v6, ""

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onExit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$19;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
