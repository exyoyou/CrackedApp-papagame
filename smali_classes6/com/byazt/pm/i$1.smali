.class public Lcom/byazt/pm/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x54b,
        0xcb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/pm/i;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Ljava/util/List;Lcom/byazt/pm/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic n:Lcom/byazt/pm/i;

.field public final synthetic tt:I

.field public final synthetic uj:Ljava/util/List;

.field public final synthetic ve:Lcom/byazt/xj/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/pm/i;Ljava/lang/String;ILcom/byazt/xj/ve;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/byazt/pm/i$1;->n:Lcom/byazt/pm/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/pm/i$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/pm/i$1;->tt:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/pm/i$1;->ve:Lcom/byazt/xj/ve;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/pm/i$1;->uj:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/pm/i$1;->n:Lcom/byazt/pm/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/pm/i;->c(Lcom/byazt/pm/i;)Lcom/byazt/sz/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/pm/i$1;->n:Lcom/byazt/pm/i;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/pm/i;->c(Lcom/byazt/pm/i;)Lcom/byazt/sz/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/pm/i$1;->ve:Lcom/byazt/xj/ve;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/byazt/pm/i$1;->c:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/byazt/pm/i$1;->uj:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/sz/a;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/pm/i$1;->n:Lcom/byazt/pm/i;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/byazt/pm/i$1;->c:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/byazt/pm/i$1;->uj:Ljava/util/List;

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/byazt/pm/i;->c(Lcom/byazt/pm/i;Ljava/lang/String;Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
