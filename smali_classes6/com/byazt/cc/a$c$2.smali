.class public Lcom/byazt/cc/a$c$2;
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
        0x8a2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/a$c;->c(Lcom/byazt/im/sp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/im/sp;

.field public final synthetic tt:Lcom/byazt/cc/a$c;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/a$c;Lcom/byazt/im/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/a$c$2;->tt:Lcom/byazt/cc/a$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cc/a$c$2;->c:Lcom/byazt/im/sp;

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
    iget-object v0, p0, Lcom/byazt/cc/a$c$2;->tt:Lcom/byazt/cc/a$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/cc/a;->rh(Lcom/byazt/cc/a;)Lcom/byazt/nh/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/cc/a$c$2;->c:Lcom/byazt/im/sp;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/im/sp;->uj()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x16

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/cc/a$c$2;->c:Lcom/byazt/im/sp;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/im/sp;->tt(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/byazt/lq/ve;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/byazt/cc/a$c$2;->c:Lcom/byazt/im/sp;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/byazt/im/sp;->uj()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v2, p0, Lcom/byazt/cc/a$c$2;->c:Lcom/byazt/im/sp;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/byazt/im/sp;->n()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-direct {v0, v1, v2}, Lcom/byazt/lq/ve;-><init>(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/byazt/cc/a$c$2;->tt:Lcom/byazt/cc/a$c;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-static {v1, v2, v3, v0}, Lcom/byazt/cc/a;->tt(Lcom/byazt/cc/a;Ljava/lang/String;ZLcom/byazt/lq/ve;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/byazt/cc/a$c$2;->tt:Lcom/byazt/cc/a$c;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/byazt/cc/a;->rh(Lcom/byazt/cc/a;)Lcom/byazt/nh/c;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Lcom/byazt/nh/c;->c(Lcom/byazt/nc/c;)V

    .line 62
    .line 63
    .line 64
    const-string v0, "Splash_FullLink"

    .line 65
    .line 66
    const-string v1, "onSplashLoadFail \u56de\u8c03"

    .line 67
    .line 68
    invoke-static {v0, v1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method
