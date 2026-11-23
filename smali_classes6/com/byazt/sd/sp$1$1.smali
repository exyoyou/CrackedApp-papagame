.class public Lcom/byazt/sd/sp$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/e/tt$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d6,
        0x228
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sd/sp$1;->c()Lcom/byazt/s/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/sd/sp$1;


# direct methods
.method public constructor <init>(Lcom/byazt/sd/sp$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sd/sp$1$1;->c:Lcom/byazt/sd/sp$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/sd/sp$1$1;->c:Lcom/byazt/sd/sp$1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/sd/sp$1;->c(Lcom/byazt/sd/sp$1;)Landroid/content/DialogInterface$OnClickListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/sd/sp$1$1;->c:Lcom/byazt/sd/sp$1;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/sd/sp$1;->c(Lcom/byazt/sd/sp$1;)Landroid/content/DialogInterface$OnClickListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, -0x1

    .line 16
    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public tt(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/sd/sp$1$1;->c:Lcom/byazt/sd/sp$1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/sd/sp$1;->tt(Lcom/byazt/sd/sp$1;)Landroid/content/DialogInterface$OnClickListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/sd/sp$1$1;->c:Lcom/byazt/sd/sp$1;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/sd/sp$1;->tt(Lcom/byazt/sd/sp$1;)Landroid/content/DialogInterface$OnClickListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, -0x2

    .line 16
    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public ve(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sd/sp$1$1;->c:Lcom/byazt/sd/sp$1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/sd/sp$1;->ve(Lcom/byazt/sd/sp$1;)Landroid/content/DialogInterface$OnCancelListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/sd/sp$1$1;->c:Lcom/byazt/sd/sp$1;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/sd/sp$1;->ve(Lcom/byazt/sd/sp$1;)Landroid/content/DialogInterface$OnCancelListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
