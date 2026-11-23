.class public abstract Lcom/byazt/pct/ve;
.super Lcom/byazt/pct/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7c,
        0x36
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/pct/gu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/tt;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lcom/byazt/pct/tt;->tt()Lcom/byazt/pct/gu;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/byazt/pct/ve;->c:Lcom/byazt/pct/gu;

    .line 9
    .line 10
    return-void
.end method
