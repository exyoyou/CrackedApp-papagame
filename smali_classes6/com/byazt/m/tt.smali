.class public Lcom/byazt/m/tt;
.super Lcom/byazt/m/BaseException;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x82,
        0xd
    }
.end annotation


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/byazt/m/tt;->c:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/m/tt;->c:I

    .line 2
    .line 3
    return v0
.end method
