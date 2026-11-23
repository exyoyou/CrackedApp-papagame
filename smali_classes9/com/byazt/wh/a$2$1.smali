.class public Lcom/byazt/wh/a$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x494,
        0x6b7
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wh/a$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wh/a$2;


# direct methods
.method public constructor <init>(Lcom/byazt/wh/a$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wh/a$2$1;->c:Lcom/byazt/wh/a$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/byazt/wh/a;->c(Z)Z

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/wh/a$2$1;->c:Lcom/byazt/wh/a$2;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/byazt/wh/a$2;->tt:Lcom/byazt/wh/a;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/wh/a;->n(Lcom/byazt/wh/a;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/wh/a$2$1;->c:Lcom/byazt/wh/a$2;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/byazt/wh/a$2;->tt:Lcom/byazt/wh/a;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/byazt/wh/a;->c(Lcom/byazt/wh/a;)Lcom/byazt/zz/ve$c$c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/wh/a$2$1;->c:Lcom/byazt/wh/a$2;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/byazt/wh/a$2;->tt:Lcom/byazt/wh/a;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/byazt/wh/a;->sp(Lcom/byazt/wh/a;)Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/byazt/wh/a$2$1;->c:Lcom/byazt/wh/a$2;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/byazt/wh/a$2;->tt:Lcom/byazt/wh/a;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/byazt/wh/a;->a(Lcom/byazt/wh/a;)Ljava/lang/Runnable;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-wide/16 v2, 0x7d0

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method
