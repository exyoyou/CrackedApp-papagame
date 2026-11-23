.class public Lcom/byazt/hr/sp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d,
        0x87
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hr/sp;->sl()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/byazt/hr/n;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hr/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/hr/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hr/sp$1;->c:Lcom/byazt/hr/sp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/hr/n;Lcom/byazt/hr/n;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/byazt/hr/n;->tt()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p2}, Lcom/byazt/hr/n;->tt()J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    sub-long/2addr v0, p1

    .line 10
    const-wide/16 p1, 0x0

    .line 11
    .line 12
    cmp-long v2, v0, p1

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_0
    if-lez v2, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_1
    const/4 p1, -0x1

    .line 23
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/hr/n;

    .line 2
    .line 3
    check-cast p2, Lcom/byazt/hr/n;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/byazt/hr/sp$1;->c(Lcom/byazt/hr/n;Lcom/byazt/hr/n;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
