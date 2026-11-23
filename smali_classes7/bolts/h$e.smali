.class final Lbolts/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/h;->h(Lbolts/i;Lbolts/g;Lbolts/h;Ljava/util/concurrent/Executor;Lbolts/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Lbolts/c;

.field final synthetic c:Lbolts/i;

.field final synthetic d:Lbolts/g;

.field final synthetic e:Lbolts/h;


# direct methods
.method constructor <init>(Lbolts/c;Lbolts/i;Lbolts/g;Lbolts/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbolts/h$e;->b:Lbolts/c;

    .line 2
    .line 3
    iput-object p2, p0, Lbolts/h$e;->c:Lbolts/i;

    .line 4
    .line 5
    iput-object p3, p0, Lbolts/h$e;->d:Lbolts/g;

    .line 6
    .line 7
    iput-object p4, p0, Lbolts/h$e;->e:Lbolts/h;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbolts/h$e;->b:Lbolts/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lbolts/c;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lbolts/h$e;->c:Lbolts/i;

    .line 12
    .line 13
    invoke-virtual {v0}, Lbolts/i;->b()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbolts/h$e;->d:Lbolts/g;

    .line 18
    .line 19
    iget-object v1, p0, Lbolts/h$e;->e:Lbolts/h;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lbolts/g;->a(Lbolts/h;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lbolts/h$e;->c:Lbolts/i;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lbolts/i;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    iget-object v1, p0, Lbolts/h$e;->c:Lbolts/i;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lbolts/i;->c(Ljava/lang/Exception;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_1
    iget-object v0, p0, Lbolts/h$e;->c:Lbolts/i;

    .line 39
    .line 40
    invoke-virtual {v0}, Lbolts/i;->b()V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method
