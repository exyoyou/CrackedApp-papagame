.class public Lcom/byazt/dqg/n$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pop/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a,
        0x1fb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dqg/n;->c(Lcom/byazt/pop/ve;Lcom/byazt/ouz/NativeExpressView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/dqg/n;


# direct methods
.method public constructor <init>(Lcom/byazt/dqg/n;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dqg/n$3;->tt:Lcom/byazt/dqg/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/dqg/n$3;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/n$3;->tt:Lcom/byazt/dqg/n;

    invoke-static {v0}, Lcom/byazt/dqg/n;->c(Lcom/byazt/dqg/n;)Lcom/byazt/lcf/TTBaseVideoActivity;

    move-result-object v0

    const-string v1, "\u70b9\u51fb\u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/dqg/n$3;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/nt/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-wide/16 p5, 0x0

    cmp-long v0, p1, p5

    if-lez v0, :cond_0

    const-wide/16 p5, 0x64

    mul-long p5, p5, p3

    .line 3
    div-long/2addr p5, p1

    long-to-int p6, p5

    .line 4
    iget-object p5, p0, Lcom/byazt/dqg/n$3;->tt:Lcom/byazt/dqg/n;

    invoke-static {p5}, Lcom/byazt/dqg/n;->c(Lcom/byazt/dqg/n;)Lcom/byazt/lcf/TTBaseVideoActivity;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u4e0b\u8f7d"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, "%"

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p5, p0, Lcom/byazt/dqg/n$3;->c:Ljava/lang/String;

    invoke-static {p5, p1, p2, p3, p4}, Lcom/byazt/nt/c;->c(Ljava/lang/String;JJ)V

    return-void
.end method

.method public c(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    iget-object p1, p0, Lcom/byazt/dqg/n$3;->tt:Lcom/byazt/dqg/n;

    invoke-static {p1}, Lcom/byazt/dqg/n;->c(Lcom/byazt/dqg/n;)Lcom/byazt/lcf/TTBaseVideoActivity;

    move-result-object p1

    const-string p2, "\u70b9\u51fb\u5b89\u88c5"

    invoke-virtual {p1, p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/byazt/dqg/n$3;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/byazt/nt/c;->tt(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    iget-object p1, p0, Lcom/byazt/dqg/n$3;->tt:Lcom/byazt/dqg/n;

    invoke-static {p1}, Lcom/byazt/dqg/n;->c(Lcom/byazt/dqg/n;)Lcom/byazt/lcf/TTBaseVideoActivity;

    move-result-object p1

    const-string p2, "\u70b9\u51fb\u6253\u5f00"

    invoke-virtual {p1, p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/byazt/dqg/n$3;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/byazt/nt/c;->ve(Ljava/lang/String;)V

    return-void
.end method

.method public tt(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p5, p0, Lcom/byazt/dqg/n$3;->tt:Lcom/byazt/dqg/n;

    .line 2
    .line 3
    invoke-static {p5}, Lcom/byazt/dqg/n;->c(Lcom/byazt/dqg/n;)Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    .line 6
    move-result-object p5

    .line 7
    const-string p6, "\u4e0b\u8f7d\u6682\u505c"

    .line 8
    .line 9
    invoke-virtual {p5, p6}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p5, p0, Lcom/byazt/dqg/n$3;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p5, p1, p2, p3, p4}, Lcom/byazt/nt/c;->tt(Ljava/lang/String;JJ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public ve(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p5, p0, Lcom/byazt/dqg/n$3;->tt:Lcom/byazt/dqg/n;

    .line 2
    .line 3
    invoke-static {p5}, Lcom/byazt/dqg/n;->c(Lcom/byazt/dqg/n;)Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    .line 6
    move-result-object p5

    .line 7
    const-string p6, "\u4e0b\u8f7d\u5931\u8d25"

    .line 8
    .line 9
    invoke-virtual {p5, p6}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p5, p0, Lcom/byazt/dqg/n$3;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p5, p1, p2, p3, p4}, Lcom/byazt/nt/c;->ve(Ljava/lang/String;JJ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
