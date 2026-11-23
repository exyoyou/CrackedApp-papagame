.class public Lcom/byazt/lcf/TTBaseVideoActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kcl/c$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26,
        0x64c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/lcf/TTBaseVideoActivity;->sp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/lcf/TTBaseVideoActivity;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$2;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$2;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/kcl/tt;->c(II)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$2;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const-string v0, "\u70b9\u51fb\u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {p1, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(ZJJLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$2;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, p1, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    const/4 v5, 0x3

    move-wide v1, p4

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/byazt/kcl/tt;->c(JJI)V

    :cond_0
    const-wide/16 p6, 0x0

    cmp-long p1, p2, p6

    if-lez p1, :cond_1

    const-wide/16 p6, 0x64

    mul-long p4, p4, p6

    .line 4
    div-long/2addr p4, p2

    long-to-int p1, p4

    .line 5
    iget-object p2, p0, Lcom/byazt/lcf/TTBaseVideoActivity$2;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "\u5df2\u4e0b\u8f7d"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(ZJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$2;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    const/4 p2, 0x5

    const/16 p3, 0x64

    invoke-virtual {p1, p2, p3}, Lcom/byazt/kcl/tt;->c(II)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$2;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const-string p2, "\u70b9\u51fb\u5b89\u88c5"

    invoke-virtual {p1, p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$2;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    const/4 p2, 0x6

    const/16 p3, 0x64

    invoke-virtual {p1, p2, p3}, Lcom/byazt/kcl/tt;->c(II)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$2;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const-string p2, "\u70b9\u51fb\u6253\u5f00"

    invoke-virtual {p1, p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method public tt(ZJJLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$2;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 6
    .line 7
    const/4 v5, 0x2

    .line 8
    move-wide v1, p4

    .line 9
    move-wide v3, p2

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/kcl/tt;->c(JJI)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$2;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 14
    .line 15
    const-string p2, "\u4e0b\u8f7d\u6682\u505c"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public ve(ZJJLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$2;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 6
    .line 7
    const/4 v5, 0x4

    .line 8
    move-wide v1, p4

    .line 9
    move-wide v3, p2

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/kcl/tt;->c(JJI)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$2;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 14
    .line 15
    const-string p2, "\u4e0b\u8f7d\u5931\u8d25"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
