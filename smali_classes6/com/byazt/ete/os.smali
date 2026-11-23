.class public Lcom/byazt/ete/os;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x244
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ete/ic;

.field public tt:[B

.field public ve:Lcom/byazt/ete/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/c;Lcom/byazt/ete/ic;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/ete/os;->ve:Lcom/byazt/ete/c;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/ete/os;->c:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/ete/os;->tt:[B

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/ete/ic;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/os;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Lcom/byazt/ete/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/os;->ve:Lcom/byazt/ete/c;

    .line 2
    .line 3
    return-object v0
.end method
