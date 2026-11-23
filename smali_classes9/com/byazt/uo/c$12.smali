.class public Lcom/byazt/uo/c$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x4cf
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uo/c;->tt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/uo/c;


# direct methods
.method public constructor <init>(Lcom/byazt/uo/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/c$12;->c:Lcom/byazt/uo/c;

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
    iget-object v0, p0, Lcom/byazt/uo/c$12;->c:Lcom/byazt/uo/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/byazt/uo/c;->yp:Z

    .line 5
    .line 6
    sget-boolean v0, Lcom/byazt/yzg/a;->c:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lcom/byazt/yzg/a;->c:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/uo/c$12;->c:Lcom/byazt/uo/c;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    .line 16
    .line 17
    instance-of v0, v0, Lcom/byazt/wz/c;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/uo/c$12;->c:Lcom/byazt/uo/c;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    .line 24
    .line 25
    check-cast v0, Lcom/byazt/wz/c;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byazt/wz/c;->x()Lcom/byazt/yzg/ve;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/byazt/uo/c$12$1;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/byazt/uo/c$12$1;-><init>(Lcom/byazt/uo/c$12;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/av/c;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/c$12;->c:Lcom/byazt/uo/c;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/byazt/uo/c;->da(Lcom/byazt/uo/c;)Lcom/byazt/cc/i;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/byazt/uo/c$12;->c:Lcom/byazt/uo/c;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/byazt/uo/c;->da(Lcom/byazt/uo/c;)Lcom/byazt/cc/i;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/byazt/cc/i;->tt()V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method
