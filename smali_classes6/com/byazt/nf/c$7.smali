.class public Lcom/byazt/nf/c$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f1,
        0x68
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nf/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nf/c;


# direct methods
.method public constructor <init>(Lcom/byazt/nf/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nf/c$7;->c:Lcom/byazt/nf/c;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/nf/c$7;->c:Lcom/byazt/nf/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/nf/c;->da(Lcom/byazt/nf/c;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    const-string v4, "GROMORE_SS_REWARD_VERIFY"

    .line 10
    .line 11
    cmp-long v5, v0, v2

    .line 12
    .line 13
    if-nez v5, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/nf/c$7;->c:Lcom/byazt/nf/c;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/nf/c;->a(Lcom/byazt/nf/c;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/nf/c$7;->c:Lcom/byazt/nf/c;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/byazt/nf/c;->yp(Lcom/byazt/nf/c;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "--==-- showListen\u8ba1\u65f6\u5230\u65f6\u95f4\uff0c\u53d1\u8d77\u8bf7\u6c42"

    .line 33
    .line 34
    invoke-static {v4, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/byazt/nf/c$7;->c:Lcom/byazt/nf/c;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/byazt/nf/c;->t(Lcom/byazt/nf/c;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/byazt/nf/c$c;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/byazt/nf/c$7;->c:Lcom/byazt/nf/c;

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-direct {v0, v1, v2}, Lcom/byazt/nf/c$c;-><init>(Lcom/byazt/nf/c;I)V

    .line 48
    .line 49
    .line 50
    const-wide/16 v1, 0xbb8

    .line 51
    .line 52
    invoke-static {v0, v1, v2}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;J)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/byazt/nf/c$c;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/byazt/nf/c$7;->c:Lcom/byazt/nf/c;

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    invoke-direct {v0, v1, v2}, Lcom/byazt/nf/c$c;-><init>(Lcom/byazt/nf/c;I)V

    .line 61
    .line 62
    .line 63
    const-wide/16 v1, 0x1770

    .line 64
    .line 65
    invoke-static {v0, v1, v2}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;J)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/byazt/nf/c$c;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/byazt/nf/c$7;->c:Lcom/byazt/nf/c;

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    invoke-direct {v0, v1, v2}, Lcom/byazt/nf/c$c;-><init>(Lcom/byazt/nf/c;I)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v1, 0x2328

    .line 77
    .line 78
    invoke-static {v0, v1, v2}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;J)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_1
    :goto_0
    const-string v0, "--==-- showListen\u8ba1\u65f6\u5230\u65f6\u95f4\uff0c\u5df2\u7ecfdestroy\uff0c\u6216\u8005skip\uff0c\u6216\u8005\u6bd4complete/verify\u56de\u8c03\u8fd8\u665a\uff0c\u76f4\u63a5return"

    .line 83
    .line 84
    invoke-static {v4, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
