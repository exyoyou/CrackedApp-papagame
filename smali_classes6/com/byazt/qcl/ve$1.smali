.class public final Lcom/byazt/qcl/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x242,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qcl/tt;

.field public final synthetic tt:Lcom/byazt/ete/ic;

.field public final synthetic ve:Lcom/byazt/ip/c;


# direct methods
.method public constructor <init>(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qcl/ve$1;->c:Lcom/byazt/qcl/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/qcl/ve$1;->tt:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/qcl/ve$1;->ve:Lcom/byazt/ip/c;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/qcl/ve$1;->c:Lcom/byazt/qcl/tt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/qcl/ve$1;->tt:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/qcl/ve$1;->ve:Lcom/byazt/ip/c;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/byazt/qcl/ve;->tt(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/byazt/feb/c;->c()Lcom/byazt/feb/c;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Lcom/byazt/feb/c;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :catchall_0
    :cond_0
    return-void
.end method
