.class public Lcom/byazt/kft/c$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x118,
        0x4ff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/c;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/kft/c;


# direct methods
.method public constructor <init>(Lcom/byazt/kft/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/c$16;->tt:Lcom/byazt/kft/c;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/kft/c$16;->c:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/c$16;->tt:Lcom/byazt/kft/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/kft/c;->rh(Lcom/byazt/kft/c;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/byazt/fk/sp$c;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/byazt/kft/c$16;->tt:Lcom/byazt/kft/c;

    .line 24
    .line 25
    iget v3, p0, Lcom/byazt/kft/c$16;->c:I

    .line 26
    .line 27
    invoke-interface {v1, v2, v3}, Lcom/byazt/fk/sp$c;->onBufferingUpdate(Lcom/byazt/fk/sp;I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method
