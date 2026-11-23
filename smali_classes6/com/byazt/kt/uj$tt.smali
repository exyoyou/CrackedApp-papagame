.class public Lcom/byazt/kt/uj$tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x99
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kt/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "tt"
.end annotation


# instance fields
.field public c:Z

.field public n:I

.field public tt:I

.field public uj:Lcom/byazt/kt/RecyclerView;

.field public ve:I


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
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/kt/uj$tt;->c:Z

    .line 3
    .line 4
    iput v0, p0, Lcom/byazt/kt/uj$tt;->tt:I

    .line 5
    .line 6
    iput v0, p0, Lcom/byazt/kt/uj$tt;->ve:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/byazt/kt/uj$tt;->uj:Lcom/byazt/kt/RecyclerView;

    .line 10
    .line 11
    iput v0, p0, Lcom/byazt/kt/uj$tt;->n:I

    .line 12
    .line 13
    return-void
.end method
