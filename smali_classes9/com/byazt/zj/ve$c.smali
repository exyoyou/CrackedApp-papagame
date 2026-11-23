.class public Lcom/byazt/zj/ve$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28c,
        0x18
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/zj/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public c:I

.field public tt:Ljava/lang/String;

.field public uj:I

.field public ve:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/byazt/zj/ve$c;-><init>(ILjava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/byazt/zj/ve$c;->c:I

    .line 3
    iput-object p2, p0, Lcom/byazt/zj/ve$c;->tt:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/byazt/zj/ve$c;->ve:Z

    .line 5
    iput p4, p0, Lcom/byazt/zj/ve$c;->uj:I

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zj/ve$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/zj/ve$c;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic tt(Lcom/byazt/zj/ve$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/zj/ve$c;->ve:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic ve(Lcom/byazt/zj/ve$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/zj/ve$c;->uj:I

    .line 2
    .line 3
    return p0
.end method
