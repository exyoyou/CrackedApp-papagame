.class public final Lcom/byazt/qv/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1cb,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qv/n;->c(Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;)Lcom/byazt/qv/n$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/byazt/qv/n$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/qv/n$c;Lcom/byazt/qv/n$c;)I
    .locals 0

    .line 1
    iget p1, p1, Lcom/byazt/qv/n$c;->tt:I

    .line 2
    .line 3
    iget p2, p2, Lcom/byazt/qv/n$c;->tt:I

    .line 4
    .line 5
    sub-int/2addr p1, p2

    .line 6
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/qv/n$c;

    .line 2
    .line 3
    check-cast p2, Lcom/byazt/qv/n$c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/byazt/qv/n$1;->c(Lcom/byazt/qv/n$c;Lcom/byazt/qv/n$c;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
