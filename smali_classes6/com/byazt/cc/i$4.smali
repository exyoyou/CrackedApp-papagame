.class public Lcom/byazt/cc/i$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0xcf
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/i;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cc/i;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/i$4;->c:Lcom/byazt/cc/i;

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
    .locals 2

    .line 1
    sget-boolean v0, Lcom/byazt/yzg/a;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/byazt/yzg/a;->c:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/cc/i$4;->c:Lcom/byazt/cc/i;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/byazt/cc/i;->ve(Lcom/byazt/cc/i;)Lcom/byazt/pop/ve;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Lcom/byazt/wz/c;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/cc/i$4;->c:Lcom/byazt/cc/i;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/cc/i;->ve(Lcom/byazt/cc/i;)Lcom/byazt/pop/ve;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/byazt/wz/c;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/byazt/wz/c;->x()Lcom/byazt/yzg/ve;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/byazt/cc/i$4$1;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/byazt/cc/i$4$1;-><init>(Lcom/byazt/cc/i$4;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/av/c;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/i$4;->c:Lcom/byazt/cc/i;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/byazt/cc/i;->tt()V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method
