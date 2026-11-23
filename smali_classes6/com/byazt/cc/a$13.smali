.class public Lcom/byazt/cc/a$13;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x58a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/a;->c(ZLcom/byazt/ete/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Lcom/byazt/ete/y;

.field public final synthetic ve:Lcom/byazt/cc/a;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/a;Ljava/lang/String;ZLcom/byazt/ete/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/a$13;->ve:Lcom/byazt/cc/a;

    .line 2
    .line 3
    iput-boolean p3, p0, Lcom/byazt/cc/a$13;->c:Z

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/cc/a$13;->tt:Lcom/byazt/ete/y;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/cc/a$13;->ve:Lcom/byazt/cc/a;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/byazt/cc/a$13;->c:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/cc/a;->x(Lcom/byazt/cc/a;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/cc/a$13;->ve:Lcom/byazt/cc/a;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/cc/a;->d(Lcom/byazt/cc/a;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a$13;->ve:Lcom/byazt/cc/a;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/byazt/cc/a;->my(Lcom/byazt/cc/a;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object v0, p0, Lcom/byazt/cc/a$13;->tt:Lcom/byazt/ete/y;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/ete/y;->cu()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_1
    iget-object v3, p0, Lcom/byazt/cc/a$13;->tt:Lcom/byazt/ete/y;

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/byazt/ete/y;->zb()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 v1, 0x0

    .line 49
    :goto_2
    iget-boolean v2, p0, Lcom/byazt/cc/a$13;->c:Z

    .line 50
    .line 51
    iget-object v3, p0, Lcom/byazt/cc/a$13;->ve:Lcom/byazt/cc/a;

    .line 52
    .line 53
    invoke-static {v3, v2}, Lcom/byazt/cc/a;->uj(Lcom/byazt/cc/a;Z)Lcom/byazt/ete/ic;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v4, p0, Lcom/byazt/cc/a$13;->ve:Lcom/byazt/cc/a;

    .line 58
    .line 59
    invoke-static {v4}, Lcom/byazt/cc/a;->rl(Lcom/byazt/cc/a;)Lcom/byazt/dj/tt;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v2, v3, v4, v0, v1}, Lcom/byazt/cc/sp;->c(ZLcom/byazt/ete/ic;Lcom/byazt/dj/tt;ZZ)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
