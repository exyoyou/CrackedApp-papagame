.class public Lcom/byazt/nq/ve$1;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3ee,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nq/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/byazt/nq/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nq/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/nq/ve;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nq/ve$1;->c:Lcom/byazt/nq/ve;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Lcom/byazt/nq/c;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Lcom/byazt/nq/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/byazt/nq/ve$1;->c(Ljava/lang/String;Lcom/byazt/nq/c;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
