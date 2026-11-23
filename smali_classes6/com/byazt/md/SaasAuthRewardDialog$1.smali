.class public Lcom/byazt/md/SaasAuthRewardDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x15d,
        0x50d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/md/SaasAuthRewardDialog;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/md/SaasAuthRewardDialog;


# direct methods
.method public constructor <init>(Lcom/byazt/md/SaasAuthRewardDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/md/SaasAuthRewardDialog$1;->c:Lcom/byazt/md/SaasAuthRewardDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/md/SaasAuthRewardDialog$1;->c:Lcom/byazt/md/SaasAuthRewardDialog;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/md/SaasAuthRewardDialog;->c(Lcom/byazt/md/SaasAuthRewardDialog;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/byazt/md/SaasAuthRewardDialog$1;->c:Lcom/byazt/md/SaasAuthRewardDialog;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
