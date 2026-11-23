.class public Lcom/byazt/mv/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x293,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/mv/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/byazt/vb/tt;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/mv/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/mv/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/mv/tt$1;->c:Lcom/byazt/mv/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/vb/tt;Lcom/byazt/vb/tt;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/mv/tt$1;->c:Lcom/byazt/mv/tt;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/byazt/mv/tt;->c(Lcom/byazt/mv/tt;Lcom/byazt/vb/tt;Lcom/byazt/vb/tt;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/vb/tt;

    .line 2
    .line 3
    check-cast p2, Lcom/byazt/vb/tt;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/byazt/mv/tt$1;->c(Lcom/byazt/vb/tt;Lcom/byazt/vb/tt;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
