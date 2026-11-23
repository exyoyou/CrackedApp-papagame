.class public final Lcom/byazt/aas/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/uph/c$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x38
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/aas/m;->c(Lcom/byazt/sml/tt;IILcom/byazt/aas/m$c;Ljava/lang/String;ILcom/byazt/yj/gt;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/aas/m$c;


# direct methods
.method public constructor <init>(Lcom/byazt/aas/m$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/aas/m$1;->c:Lcom/byazt/aas/m$c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    iget-object p1, p0, Lcom/byazt/aas/m$1;->c:Lcom/byazt/aas/m$c;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/byazt/aas/m$c;->c()V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/yj/m;Lcom/byazt/uph/tt;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/byazt/uph/tt;->uj()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/aas/m$1;->c:Lcom/byazt/aas/m$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p2, p1}, Lcom/byazt/aas/m$c;->c(Lcom/byazt/uph/tt;Lcom/byazt/yj/m;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/byazt/aas/m$1;->c:Lcom/byazt/aas/m$c;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/byazt/aas/m$c;->c()V

    :cond_1
    return-void
.end method
