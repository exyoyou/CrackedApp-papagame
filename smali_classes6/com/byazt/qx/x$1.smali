.class public final Lcom/byazt/qx/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pct/uj$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x1e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qx/x;->c(Lcom/byazt/pct/nu;Lcom/byazt/omf/d;Lcom/byazt/ete/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/omf/d;

.field public final synthetic tt:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/d;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qx/x$1;->c:Lcom/byazt/omf/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/qx/x$1;->tt:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/pct/uj;
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/qx/x;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/qx/x$1;->c:Lcom/byazt/omf/d;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/qx/x$1;->tt:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/byazt/qx/x;-><init>(Lcom/byazt/omf/d;Lcom/byazt/ete/ic;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
