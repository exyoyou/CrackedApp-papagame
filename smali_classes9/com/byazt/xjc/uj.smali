.class public Lcom/byazt/xjc/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ff,
        0xf
    }
.end annotation


# instance fields
.field public c:Z

.field public tt:I

.field public uj:Z

.field public ve:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/xjc/uj;->c:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/xjc/uj;->tt:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/byazt/xjc/uj;->ve:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/byazt/xjc/uj;->uj:Z

    .line 12
    .line 13
    return-void
.end method
