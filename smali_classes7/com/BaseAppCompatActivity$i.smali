.class Lcom/BaseAppCompatActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseAppCompatActivity;->onRecivied(Landroid/content/Intent;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/BaseAppCompatActivity;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$intent",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/BaseAppCompatActivity$i;->d:Lcom/BaseAppCompatActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/BaseAppCompatActivity$i;->b:Landroid/content/Intent;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/BaseAppCompatActivity$i;->c:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/BaseAppCompatActivity$i;->d:Lcom/BaseAppCompatActivity;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/BaseAppCompatActivity$i;->b:Landroid/content/Intent;

    .line 7
    .line 8
    const-string v0, "gameId"

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p1, p2}, Lcom/BaseAppCompatActivity;->access$500(Lcom/BaseAppCompatActivity;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/BaseAppCompatActivity$i;->c:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object p2, Lcom/papa/sim/statistic/Event;->Unzip_cancelpermission:Lcom/papa/sim/statistic/Event;

    .line 24
    .line 25
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
