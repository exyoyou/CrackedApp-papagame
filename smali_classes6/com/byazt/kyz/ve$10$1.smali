.class public Lcom/byazt/kyz/ve$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dyf/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x222,
        0x436
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kyz/ve$10;->setDislikeInteractionCallback(Lcom/byazt/dhf/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dhf/c;

.field public final synthetic tt:Lcom/byazt/kyz/ve$10;


# direct methods
.method public constructor <init>(Lcom/byazt/kyz/ve$10;Lcom/byazt/dhf/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kyz/ve$10$1;->tt:Lcom/byazt/kyz/ve$10;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/kyz/ve$10$1;->c:Lcom/byazt/dhf/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve$10$1;->c:Lcom/byazt/dhf/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/byazt/dhf/c;->c()V

    :cond_0
    return-void
.end method

.method public c(ILjava/lang/String;Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/kyz/ve$10$1;->tt:Lcom/byazt/kyz/ve$10;

    iget-object v0, v0, Lcom/byazt/kyz/ve$10;->c:Lcom/byazt/kyz/ve;

    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getLifecycleId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/byazt/rgb/tt;->ve(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcom/byazt/kyz/ve$10$1;->c:Lcom/byazt/dhf/c;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/dhf/c;->c(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve$10$1;->c:Lcom/byazt/dhf/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/dhf/c;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
