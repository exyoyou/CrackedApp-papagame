.class public Lcom/byazt/zb/x$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xb8,
        0x566
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zb/x;->qp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zb/x;


# direct methods
.method public constructor <init>(Lcom/byazt/zb/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zb/x$7;->c:Lcom/byazt/zb/x;

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
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/zb/x$7;->c:Lcom/byazt/zb/x;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zb/x;->i(Lcom/byazt/zb/x;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-string v2, "\u70b9\u51fb\u70ed\u533a\u5361\u6b7b"

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    cmp-long v6, v0, v4

    .line 13
    .line 14
    if-lez v6, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/zb/x$7;->c:Lcom/byazt/zb/x;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/zb/x;->i(Lcom/byazt/zb/x;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget-object v6, p0, Lcom/byazt/zb/x$7;->c:Lcom/byazt/zb/x;

    .line 23
    .line 24
    invoke-static {v6}, Lcom/byazt/zb/x;->da(Lcom/byazt/zb/x;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    sub-long/2addr v0, v6

    .line 29
    iget-object v6, p0, Lcom/byazt/zb/x$7;->c:Lcom/byazt/zb/x;

    .line 30
    .line 31
    invoke-static {v6}, Lcom/byazt/zb/x;->sl(Lcom/byazt/zb/x;)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    int-to-long v6, v6

    .line 36
    cmp-long v8, v0, v6

    .line 37
    .line 38
    if-gtz v8, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/zb/x$7;->c:Lcom/byazt/zb/x;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/byazt/zb/x;->d()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/byazt/zb/x$7;->c:Lcom/byazt/zb/x;

    .line 46
    .line 47
    invoke-static {v0, v4, v5}, Lcom/byazt/zb/x;->c(Lcom/byazt/zb/x;J)J

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/byazt/zb/x$7;->c:Lcom/byazt/zb/x;

    .line 51
    .line 52
    invoke-static {v0, v4, v5}, Lcom/byazt/zb/x;->tt(Lcom/byazt/zb/x;J)J

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/byazt/zb/x$7;->c:Lcom/byazt/zb/x;

    .line 57
    .line 58
    invoke-virtual {v0, v3, v2}, Lcom/byazt/zb/x;->tt(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/byazt/zb/x$7;->c:Lcom/byazt/zb/x;

    .line 63
    .line 64
    invoke-virtual {v0, v3, v2}, Lcom/byazt/zb/x;->tt(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
