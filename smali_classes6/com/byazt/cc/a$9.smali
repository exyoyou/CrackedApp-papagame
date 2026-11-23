.class public Lcom/byazt/cc/a$9;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x18e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/a;->c(Lcom/byazt/dj/tt;Lcom/byazt/nh/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nh/c;

.field public final synthetic tt:Lcom/byazt/dj/tt;

.field public final synthetic uj:Lcom/byazt/cc/a;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/cc/a;Ljava/lang/String;Lcom/byazt/nh/c;Lcom/byazt/dj/tt;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/a$9;->uj:Lcom/byazt/cc/a;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/cc/a$9;->c:Lcom/byazt/nh/c;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/cc/a$9;->tt:Lcom/byazt/dj/tt;

    .line 6
    .line 7
    iput p5, p0, Lcom/byazt/cc/a$9;->ve:I

    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/byazt/omf/x;->sp(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/cc/a$9;->uj:Lcom/byazt/cc/a;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/cc/a$9;->c:Lcom/byazt/nh/c;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;Lcom/byazt/nh/c;)Lcom/byazt/nh/c;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/cc/a$9;->uj:Lcom/byazt/cc/a;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/byazt/cc/a$9;->tt:Lcom/byazt/dj/tt;

    .line 19
    .line 20
    iget v2, p0, Lcom/byazt/cc/a$9;->ve:I

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;Lcom/byazt/dj/tt;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    new-instance v1, Lcom/byazt/lq/ve;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, " msg = "

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/16 v3, 0xfa0

    .line 48
    .line 49
    invoke-direct {v1, v3, v2}, Lcom/byazt/lq/ve;-><init>(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/byazt/cc/a$9;->uj:Lcom/byazt/cc/a;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-static {v2, v3, v4, v1}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;Ljava/lang/String;ZLcom/byazt/lq/ve;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/byazt/cc/a$9;->c:Lcom/byazt/nh/c;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Lcom/byazt/nh/c;->c(Lcom/byazt/nc/c;)V

    .line 62
    .line 63
    .line 64
    const-string v1, "SplashLoadManager"

    .line 65
    .line 66
    const-string v2, "splash component maybe not exist, pls check1"

    .line 67
    .line 68
    invoke-static {v1, v2, v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
