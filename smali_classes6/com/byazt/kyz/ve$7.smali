.class public Lcom/byazt/kyz/ve$7;
.super Lcom/byazt/nc/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x222,
        0x1d9
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kyz/ve;->getDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)Lcom/byazt/nc/sp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/app/Dialog;

.field public final synthetic tt:Lcom/byazt/kyz/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/kyz/ve;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kyz/ve$7;->tt:Lcom/byazt/kyz/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/kyz/ve$7;->c:Landroid/app/Dialog;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/nc/sp;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public isShow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resetDislikeStatus()V
    .locals 0

    return-void
.end method

.method public setDislikeInteractionCallback(Lcom/byazt/dhf/c;)V
    .locals 0

    return-void
.end method

.method public setDislikeSource(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showDislikeDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve$7;->c:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Landroid/app/Activity;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/kyz/ve$7;->c:Landroid/app/Dialog;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/Activity;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/kyz/ve$7;->c:Landroid/app/Dialog;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
