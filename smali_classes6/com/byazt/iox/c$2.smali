.class public Lcom/byazt/iox/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/gu$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c3,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iox/c;->c(Lcom/byazt/im/a;Lcom/byazt/gat/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Lcom/byazt/gat/tt;

.field public final synthetic uj:Lcom/byazt/iox/c;

.field public final synthetic ve:Lcom/byazt/im/a;


# direct methods
.method public constructor <init>(Lcom/byazt/iox/c;JLcom/byazt/gat/tt;Lcom/byazt/im/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iox/c$2;->uj:Lcom/byazt/iox/c;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/iox/c$2;->c:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/iox/c$2;->tt:Lcom/byazt/gat/tt;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/iox/c$2;->ve:Lcom/byazt/im/a;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c(ZJJ)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/byazt/iox/c$2;->uj:Lcom/byazt/iox/c;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/byazt/iox/c;->n(Lcom/byazt/iox/c;)Lcom/byazt/dj/tt;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    iget-wide v5, v0, Lcom/byazt/iox/c$2;->c:J

    .line 13
    .line 14
    sub-long v7, v3, v5

    .line 15
    .line 16
    const/4 v9, 0x4

    .line 17
    const/4 v10, 0x1

    .line 18
    move-wide v3, p2

    .line 19
    move-wide/from16 v5, p4

    .line 20
    .line 21
    move v11, p1

    .line 22
    invoke-static/range {v2 .. v11}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/dj/tt;JJJIII)V

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object v1, v0, Lcom/byazt/iox/c$2;->tt:Lcom/byazt/gat/tt;

    .line 28
    .line 29
    iget-object v2, v0, Lcom/byazt/iox/c$2;->ve:Lcom/byazt/im/a;

    .line 30
    .line 31
    invoke-interface {v1, v2}, Lcom/byazt/gat/tt;->tt(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v1, v0, Lcom/byazt/iox/c$2;->uj:Lcom/byazt/iox/c;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/byazt/iox/c;->c(Lcom/byazt/iox/c;)Lcom/byazt/im/sp;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/16 v2, 0x16

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/byazt/im/sp;->tt(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/byazt/iox/c$2;->uj:Lcom/byazt/iox/c;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/byazt/iox/c;->c(Lcom/byazt/iox/c;)Lcom/byazt/im/sp;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "check server cache unavailable"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/byazt/im/sp;->c(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/byazt/iox/c$2;->uj:Lcom/byazt/iox/c;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/byazt/iox/c;->c(Lcom/byazt/iox/c;)Lcom/byazt/im/sp;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    move-wide v2, p2

    .line 64
    invoke-virtual {v1, p2, p3}, Lcom/byazt/im/sp;->c(J)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/byazt/iox/c$2;->tt:Lcom/byazt/gat/tt;

    .line 68
    .line 69
    iget-object v2, v0, Lcom/byazt/iox/c$2;->uj:Lcom/byazt/iox/c;

    .line 70
    .line 71
    invoke-static {v2}, Lcom/byazt/iox/c;->c(Lcom/byazt/iox/c;)Lcom/byazt/im/sp;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v1, v2}, Lcom/byazt/gat/tt;->c(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
