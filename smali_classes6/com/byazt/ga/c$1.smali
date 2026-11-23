.class public Lcom/byazt/ga/c$1;
.super Lcom/byazt/ga/z;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x100,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ga/c;->tt()Lcom/byazt/ga/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/ga/z<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ga/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ga/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ga/c$1;->c:Lcom/byazt/ga/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/ga/z;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/c$1;->c:Lcom/byazt/ga/c;

    iget v0, v0, Lcom/byazt/ga/c;->tt:I

    return v0
.end method

.method public c(Ljava/lang/Object;)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ga/c$1;->c:Lcom/byazt/ga/c;

    invoke-virtual {v0, p1}, Lcom/byazt/ga/c;->c(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public c(II)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/byazt/ga/c$1;->c:Lcom/byazt/ga/c;

    iget-object p2, p2, Lcom/byazt/ga/c;->c:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public c(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/ga/c$1;->c:Lcom/byazt/ga/c;

    invoke-virtual {v0, p1}, Lcom/byazt/ga/c;->ve(I)Ljava/lang/Object;

    return-void
.end method

.method public tt()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "not a map"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/c$1;->c:Lcom/byazt/ga/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ga/c;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
