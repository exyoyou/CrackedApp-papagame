.class public Lcom/byazt/ux/c$8;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1a3,
        0x70
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ux/c;->c(Lcom/byazt/xj/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xj/ve;

.field public final synthetic tt:Lcom/byazt/ux/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ux/c;Ljava/lang/String;Lcom/byazt/xj/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ux/c$8;->tt:Lcom/byazt/ux/c;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/ux/c$8;->c:Lcom/byazt/xj/ve;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ux/c$8;->tt:Lcom/byazt/ux/c;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/ux/c;->yp:Lorg/json/JSONObject;

    .line 6
    .line 7
    new-instance v2, Lcom/byazt/ux/c$8$1;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lcom/byazt/ux/c$8$1;-><init>(Lcom/byazt/ux/c$8;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lcom/byazt/ux/c$8;->tt:Lcom/byazt/ux/c;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->ij()Lcom/byazt/dj/tt;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v1, v0, v2, v3}, Lcom/byazt/hy/tt;->c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;Lcom/byazt/at/uj;Lcom/byazt/dj/tt;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
