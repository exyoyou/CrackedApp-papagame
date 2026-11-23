.class public final Lcom/byazt/z/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/s/da;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x85,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/z/ve;->c(Landroid/content/Context;IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:I

.field public final synthetic ve:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/z/ve$1;->c:Landroid/content/Context;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/z/ve$1;->tt:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/z/ve$1;->ve:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/z/ve$1;->c:Landroid/content/Context;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/z/ve$1;->tt:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/byazt/z/ve$1;->ve:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/byazt/z/ve;->ve(Landroid/content/Context;IZ)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Lcom/byazt/z/ve;->tt(I)I

    .line 12
    .line 13
    .line 14
    return-void
.end method
