.class public Lcom/byazt/kt/n$tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x3a6
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kt/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "tt"
.end annotation


# instance fields
.field public c:I

.field public tt:Z

.field public uj:Z

.field public ve:Z


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
.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/byazt/kt/n$tt;->c:I

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/byazt/kt/n$tt;->tt:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/byazt/kt/n$tt;->ve:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/byazt/kt/n$tt;->uj:Z

    .line 9
    .line 10
    return-void
.end method
