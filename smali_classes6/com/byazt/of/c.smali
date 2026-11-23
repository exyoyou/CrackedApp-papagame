.class public Lcom/byazt/of/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4c1,
        0x14
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final tt:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/of/c;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/of/c;->tt:[B

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/of/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/of/c;->tt:[B

    .line 2
    .line 3
    return-object v0
.end method
