.class public Lcom/byazt/is/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3d8,
        0xf
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/is/c;

.field public tt:Lcom/byazt/is/tt;

.field public final uj:Ljava/io/File;

.field public final ve:Lcom/byazt/po/ve;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/is/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/is/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/is/uj;->c:Lcom/byazt/is/c;

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/is/tt;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/byazt/is/tt;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/is/uj;->tt:Lcom/byazt/is/tt;

    .line 17
    .line 18
    new-instance v0, Lcom/byazt/po/ve;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/byazt/po/ve;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/is/uj;->ve:Lcom/byazt/po/ve;

    .line 24
    .line 25
    new-instance v0, Ljava/io/File;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/byazt/is/uj;->uj:Ljava/io/File;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/is/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/is/uj;->c:Lcom/byazt/is/c;

    return-object v0
.end method

.method public c(Lcom/byazt/is/c;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/is/uj;->c:Lcom/byazt/is/c;

    return-void
.end method

.method public c(Lcom/byazt/is/tt;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/is/uj;->tt:Lcom/byazt/is/tt;

    return-void
.end method

.method public tt()Lcom/byazt/is/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/is/uj;->tt:Lcom/byazt/is/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Lcom/byazt/po/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/is/uj;->ve:Lcom/byazt/po/ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/is/uj;->uj:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method
