.class public Lcom/byazt/vvt/c$3;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/vvt/c;->c(ILcom/byazt/dj/tt;Lcom/byazt/nh/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic c:Lcom/byazt/dj/tt;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic sp:Lcom/byazt/vvt/c;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:J

.field public final synthetic ve:Lcom/byazt/nh/a;


# direct methods
.method public constructor <init>(Lcom/byazt/vvt/c;Ljava/lang/String;Lcom/byazt/dj/tt;Ljava/lang/String;Lcom/byazt/nh/a;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vvt/c$3;->sp:Lcom/byazt/vvt/c;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/vvt/c$3;->c:Lcom/byazt/dj/tt;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/vvt/c$3;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/vvt/c$3;->ve:Lcom/byazt/nh/a;

    .line 8
    .line 9
    iput-wide p6, p0, Lcom/byazt/vvt/c$3;->uj:J

    .line 10
    .line 11
    iput-object p8, p0, Lcom/byazt/vvt/c$3;->n:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p9, p0, Lcom/byazt/vvt/c$3;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/byazt/vvt/c$3;->c:Lcom/byazt/dj/tt;

    .line 4
    .line 5
    invoke-static {v2, v1}, Lcom/byazt/omf/h;->checkExpressAdParamValid(Lcom/byazt/dj/tt;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/byazt/vvt/c$3;->sp:Lcom/byazt/vvt/c;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/byazt/vvt/c$3;->tt:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v4, Lcom/byazt/lq/ve;

    .line 16
    .line 17
    const/16 v5, 0x6e

    .line 18
    .line 19
    invoke-static {v5}, Lcom/byazt/omf/sp;->c(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-direct {v4, v5, v6}, Lcom/byazt/lq/ve;-><init>(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/byazt/vvt/c;->c(Ljava/lang/String;Ljava/util/List;ZLcom/byazt/lq/ve;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/byazt/vvt/c$3;->ve:Lcom/byazt/nh/a;

    .line 30
    .line 31
    invoke-static {v5}, Lcom/byazt/omf/sp;->c(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v5, v3}, Lcom/byazt/nh/a;->c(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v3, p0, Lcom/byazt/vvt/c$3;->sp:Lcom/byazt/vvt/c;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/byazt/vvt/c$3;->c:Lcom/byazt/dj/tt;

    .line 42
    .line 43
    iget-object v5, p0, Lcom/byazt/vvt/c$3;->ve:Lcom/byazt/nh/a;

    .line 44
    .line 45
    iget-wide v6, p0, Lcom/byazt/vvt/c$3;->uj:J

    .line 46
    .line 47
    iget-object v8, p0, Lcom/byazt/vvt/c$3;->tt:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v9, p0, Lcom/byazt/vvt/c$3;->n:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static/range {v3 .. v9}, Lcom/byazt/vvt/c;->c(Lcom/byazt/vvt/c;Lcom/byazt/dj/tt;Lcom/byazt/nh/a;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception v2

    .line 56
    iget-object v3, p0, Lcom/byazt/vvt/c$3;->sp:Lcom/byazt/vvt/c;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/byazt/vvt/c$3;->tt:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v5, Lcom/byazt/lq/ve;

    .line 61
    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v7, " msg = "

    .line 65
    .line 66
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const/16 v8, 0xfa0

    .line 81
    .line 82
    invoke-direct {v5, v8, v6}, Lcom/byazt/lq/ve;-><init>(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v4, v0, v1, v5}, Lcom/byazt/vvt/c;->c(Ljava/lang/String;Ljava/util/List;ZLcom/byazt/lq/ve;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/byazt/vvt/c$3;->ve:Lcom/byazt/nh/a;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v8, v1}, Lcom/byazt/nh/a;->c(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/byazt/vvt/c$3;->a:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v1, " error, pls check"

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string v1, "BaseLoadManager"

    .line 129
    .line 130
    invoke-static {v1, v0, v2}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method
