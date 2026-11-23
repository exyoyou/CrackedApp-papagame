.class public Lcom/byazt/yzg/ve$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ux/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x308,
        0x15b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/yzg/ve;->ve(Ljava/lang/String;)Lcom/byazt/ux/sp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/yzg/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/yzg/ve;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yzg/ve$3;->tt:Lcom/byazt/yzg/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/yzg/ve$3;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/yzg/ve$3;->tt:Lcom/byazt/yzg/ve;

    invoke-static {v0}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/yzg/ve;)Lcom/byazt/ete/ic;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/yzg/ve$3;->c:Ljava/lang/String;

    const/4 v3, 0x6

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/yzg/ve;Lcom/byazt/ete/ic;Ljava/lang/String;IILjava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Lcom/byazt/ux/sp;)V

    return-void
.end method

.method public c(Lcom/byazt/xj/ve;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/yzg/ve$3;->tt:Lcom/byazt/yzg/ve;

    invoke-static {v0}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/yzg/ve;)Lcom/byazt/ete/ic;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/yzg/ve$3;->c:Ljava/lang/String;

    const/4 v3, 0x5

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/yzg/ve;Lcom/byazt/ete/ic;Ljava/lang/String;IILjava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Lcom/byazt/ux/sp;)V

    return-void
.end method
