.class public Lcom/byazt/bnd/tt;
.super Lcom/byazt/pp/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5ca,
        0xd
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public sp:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/byazt/bnd/tt;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/byazt/bnd/tt;->sp:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/bnd/tt;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/bnd/tt;->sp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
