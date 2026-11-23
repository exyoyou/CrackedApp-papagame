.class public Lcom/byazt/mt/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2ac,
        0x62
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/mt/c;->c(Lcom/byazt/aq/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/byazt/aq/x;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/mt/c;


# direct methods
.method public constructor <init>(Lcom/byazt/mt/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/mt/c$4;->c:Lcom/byazt/mt/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/aq/x;Lcom/byazt/aq/x;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/aq/a;->hj()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p2}, Lcom/byazt/aq/a;->hj()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-lt p1, p2, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_1
    const/4 p1, -0x1

    .line 35
    return p1

    .line 36
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/aq/x;

    .line 2
    .line 3
    check-cast p2, Lcom/byazt/aq/x;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/byazt/mt/c$4;->c(Lcom/byazt/aq/x;Lcom/byazt/aq/x;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
