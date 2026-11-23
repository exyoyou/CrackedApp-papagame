.class public final Lcom/byazt/ete/d$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x264
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ete/d;->tt(Lorg/json/JSONObject;Lcom/byazt/ete/d$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Set;

.field public final synthetic tt:Lcom/byazt/ete/d$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Lcom/byazt/ete/d$c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/byazt/ete/d$1;->c:Ljava/util/Set;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/ete/d$1;->tt:Lcom/byazt/ete/d$c;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/aas/aw;->c()Lcom/byazt/aas/aw;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/ete/d$1;->c:Ljava/util/Set;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/ete/d$1;->tt:Lcom/byazt/ete/d$c;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/byazt/aas/aw;->c(Ljava/util/Set;Lcom/byazt/ete/d$c;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
