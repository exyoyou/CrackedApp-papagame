.class public Lcom/byazt/kyz/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/un/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x222,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kyz/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kyz/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/kyz/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kyz/ve$1;->c:Lcom/byazt/kyz/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->an()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Lcom/byazt/kyz/ve$1$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/byazt/kyz/ve$1$1;-><init>(Lcom/byazt/kyz/ve$1;)V

    .line 12
    .line 13
    .line 14
    int-to-long v2, v0

    .line 15
    invoke-static {v1, v2, v3}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
