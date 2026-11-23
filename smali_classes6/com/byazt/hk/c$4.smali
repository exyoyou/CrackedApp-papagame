.class public Lcom/byazt/hk/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83d,
        0x62
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/hk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/byazt/ix/sp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hk/c;


# direct methods
.method public constructor <init>(Lcom/byazt/hk/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hk/c$4;->c:Lcom/byazt/hk/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ix/sp;Lcom/byazt/ix/sp;)I
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-object p1, p1, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object v0, p2, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getFillTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    long-to-int p1, v0

    .line 19
    iget-object p2, p2, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getFillTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    long-to-int p2, v0

    .line 26
    sub-int/2addr p1, p2

    .line 27
    return p1

    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/ix/sp;

    .line 2
    .line 3
    check-cast p2, Lcom/byazt/ix/sp;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/byazt/hk/c$4;->c(Lcom/byazt/ix/sp;Lcom/byazt/ix/sp;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
