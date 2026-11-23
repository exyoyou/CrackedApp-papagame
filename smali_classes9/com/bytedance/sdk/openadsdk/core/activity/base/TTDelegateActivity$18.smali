.class public Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ux/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x50,
        0x51,
        0x52,
        0x148,
        0x14b,
        0x22f,
        0x236
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->ve(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic da:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic m:Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic sl:Ljava/lang/String;

.field public final synthetic sp:Lorg/json/JSONArray;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic u:Ljava/lang/String;

.field public final synthetic uj:F

.field public final synthetic ve:Ljava/lang/String;

.field public final synthetic x:Ljava/lang/String;

.field public final synthetic yp:Ljava/lang/String;

.field public final synthetic z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    .line 1
    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->m:Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;

    move-object v1, p2

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->c:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->tt:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->ve:Ljava/lang/String;

    move v1, p5

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->uj:F

    move-object v1, p6

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->n:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->a:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->sp:Lorg/json/JSONArray;

    move-object v1, p9

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->x:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->i:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->da:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->sl:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->t:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->u:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->yp:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->z:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->m:Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->tt:Ljava/lang/String;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->ve:Ljava/lang/String;

    iget v5, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->uj:F

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->n:Ljava/lang/String;

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->a:Ljava/lang/String;

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->sp:Lorg/json/JSONArray;

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->x:Ljava/lang/String;

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->i:Ljava/lang/String;

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->da:Ljava/lang/String;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->sl:Ljava/lang/String;

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->t:Ljava/lang/String;

    iget-object v14, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->u:Ljava/lang/String;

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->yp:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->z:Ljava/lang/String;

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    invoke-static/range {v1 .. v16}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->m:Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;)Lcom/byazt/sgn/x;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity$18;->m:Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;)Lcom/byazt/sgn/x;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/byazt/sgn/x;->c(Lcom/byazt/ux/sp;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c()Lcom/byazt/ux/sp;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c()Lcom/byazt/ux/sp;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-interface {v1, v2, v3}, Lcom/byazt/ux/sp;->c(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/xj/ve;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c()Lcom/byazt/ux/sp;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c()Lcom/byazt/ux/sp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/byazt/ux/sp;->c(Lcom/byazt/xj/ve;)V

    :cond_0
    return-void
.end method
