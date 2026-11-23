.class public Lcom/byazt/pg/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pg/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x52a,
        0x14
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/ddx/sp;

.field public c:Lcom/byazt/ete/ic;

.field public da:Lcom/byazt/pop/ve;

.field public i:Lcom/byazt/xj/ve;

.field public m:Lcom/byazt/ua/c;

.field public n:I

.field public nu:Lcom/byazt/pop/c;

.field public sl:Lorg/json/JSONObject;

.field public sp:Landroid/app/Activity;

.field public t:Lcom/byazt/ete/uj;

.field public tt:Lcom/byazt/pg/tt;

.field public u:Ljava/lang/String;

.field public uj:Ljava/lang/String;

.field public ve:Lcom/byazt/qj/c;

.field public x:Landroid/view/ViewGroup;

.field public yp:Lcom/byazt/qzm/tt;

.field public z:Lcom/byazt/vn/tt;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/byazt/ddx/sp;Lcom/byazt/ete/ic;Ljava/lang/String;ILcom/byazt/ua/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/pg/c$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/byazt/pg/c$1;-><init>(Lcom/byazt/pg/c;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/pg/c;->nu:Lcom/byazt/pop/c;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/byazt/pg/c;->sp:Landroid/app/Activity;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/byazt/pg/c;->a:Lcom/byazt/ddx/sp;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/byazt/pg/c;->x:Landroid/view/ViewGroup;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/byazt/pg/c;->uj:Ljava/lang/String;

    .line 20
    .line 21
    iput p6, p0, Lcom/byazt/pg/c;->n:I

    .line 22
    .line 23
    iput-object p7, p0, Lcom/byazt/pg/c;->m:Lcom/byazt/ua/c;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic a(Lcom/byazt/pg/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/pg/c;->sp:Landroid/app/Activity;

    return-object p0
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/pg/c;->sl:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/byazt/pg/c;->sp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "download_buttons"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/byazt/pg/c;->sp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/byazt/pg/c;->sp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, "url"

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/byazt/pg/c;->sp()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/pg/c;)Lcom/byazt/ddx/sp;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/pg/c;->a:Lcom/byazt/ddx/sp;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/pg/c;Lcom/byazt/ete/uj;)Lcom/byazt/ete/uj;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/pg/c;->t:Lcom/byazt/ete/uj;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/pg/c;Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/pg/c;->i:Lcom/byazt/xj/ve;

    return-object p1
.end method

.method private c(Lcom/byazt/ete/ic;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/byazt/pg/c;->t:Lcom/byazt/ete/uj;

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->rh()Lcom/byazt/ete/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v1, p0, Lcom/byazt/pg/c;->t:Lcom/byazt/ete/uj;

    invoke-virtual {v0}, Lcom/byazt/ete/a;->uj()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/ete/uj;->c(Lorg/json/JSONArray;)V

    .line 44
    iget-object v1, p0, Lcom/byazt/pg/c;->t:Lcom/byazt/ete/uj;

    invoke-virtual {v0}, Lcom/byazt/ete/a;->ve()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/byazt/ete/uj;->c(F)V

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/byazt/pg/c;->t:Lcom/byazt/ete/uj;

    invoke-virtual {v0}, Lcom/byazt/ete/uj;->x()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->fv()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/byazt/pg/c;->sp:Landroid/app/Activity;

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;

    if-eqz v2, :cond_3

    .line 48
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;->sl()V

    .line 49
    :cond_3
    iget-object v1, p0, Lcom/byazt/pg/c;->sp:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/byazt/pg/c$6;

    invoke-direct {v2, p0}, Lcom/byazt/pg/c$6;-><init>(Lcom/byazt/pg/c;)V

    invoke-static {v1, p1, v0, v2}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/n$c;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/pg/c;Lorg/json/JSONObject;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/pg/c;->tt(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/pg/c;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/byazt/pg/c;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/pg/c;Z)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/byazt/pg/c;->uj(Z)V

    return-void
.end method

.method private c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/byazt/pg/c;->a:Lcom/byazt/ddx/sp;

    invoke-virtual {v0}, Lcom/byazt/ddx/sp;->tt()V

    .line 19
    iget-object v0, p0, Lcom/byazt/pg/c;->tt:Lcom/byazt/pg/tt;

    invoke-virtual {v0, p0}, Lcom/byazt/pg/tt;->c(Lcom/byazt/pg/tt$c;)V

    .line 20
    iget-object v0, p0, Lcom/byazt/pg/c;->tt:Lcom/byazt/pg/tt;

    new-instance v1, Lcom/byazt/pg/c$4;

    invoke-direct {v1, p0}, Lcom/byazt/pg/c$4;-><init>(Lcom/byazt/pg/c;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/byazt/pg/tt;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/ux/sp;)V

    return-void
.end method

.method private c(Z)V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/byazt/pg/c;->yp:Lcom/byazt/qzm/tt;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p1}, Lcom/byazt/qzm/tt;->uj(Z)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/pg/c;->z:Lcom/byazt/vn/tt;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/byazt/pg/c;->sp:Landroid/app/Activity;

    if-eqz p1, :cond_1

    const-string p1, "tt_mute"

    goto :goto_0

    :cond_1
    const-string p1, "tt_unmute"

    :goto_0
    iget-object v1, p0, Lcom/byazt/pg/c;->z:Lcom/byazt/vn/tt;

    invoke-virtual {v1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v2, 0x140

    invoke-static {v0, p1, v1, v2}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    :cond_2
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/pg/c;->yp:Lcom/byazt/qzm/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/pg/c;->m:Lcom/byazt/ua/c;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/qzm/tt;->c(Lcom/byazt/ua/c;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic n(Lcom/byazt/pg/c;)Lcom/byazt/ete/uj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/pg/c;->t:Lcom/byazt/ete/uj;

    return-object p0
.end method

.method private n()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/byazt/ete/xd;->da(Lcom/byazt/ete/ic;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/byazt/pg/c;->i:Lcom/byazt/xj/ve;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/byazt/qzm/tt;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/byazt/qzm/tt;

    iput-object v0, p0, Lcom/byazt/pg/c;->yp:Lcom/byazt/qzm/tt;

    .line 6
    invoke-virtual {v0, v2}, Lcom/byazt/qzm/tt;->n(Z)V

    .line 7
    invoke-direct {p0}, Lcom/byazt/pg/c;->i()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/pg/c;->i:Lcom/byazt/xj/ve;

    const-string v1, "mute"

    invoke-virtual {v0, v1}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/byazt/vn/tt;

    if-eqz v1, :cond_1

    .line 10
    check-cast v0, Lcom/byazt/vn/tt;

    iput-object v0, p0, Lcom/byazt/pg/c;->z:Lcom/byazt/vn/tt;

    .line 11
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 12
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const-string v3, "#99333333"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object v1, p0, Lcom/byazt/pg/c;->sp:Landroid/app/Activity;

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {v1, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 14
    iget-object v1, p0, Lcom/byazt/pg/c;->sp:Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 15
    iget-object v1, p0, Lcom/byazt/pg/c;->z:Lcom/byazt/vn/tt;

    invoke-virtual {v1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/byazt/vn/RoundImageView;

    invoke-virtual {v1, v0}, Lcom/byazt/vn/RoundImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/byazt/pg/c;->m:Lcom/byazt/ua/c;

    if-eqz v0, :cond_2

    .line 17
    iget-boolean v0, v0, Lcom/byazt/ua/c;->x:Z

    invoke-direct {p0, v0}, Lcom/byazt/pg/c;->c(Z)V

    return-void

    .line 18
    :cond_2
    invoke-direct {p0, v2}, Lcom/byazt/pg/c;->c(Z)V

    :cond_3
    return-void
.end method

.method private sp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/aas/nb;->my(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/pg/c;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/pg/c;->x:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private tt(Lcom/byazt/ete/ic;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/pg/c;->t:Lcom/byazt/ete/uj;

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->rh()Lcom/byazt/ete/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v1, p0, Lcom/byazt/pg/c;->t:Lcom/byazt/ete/uj;

    invoke-virtual {v0}, Lcom/byazt/ete/a;->uj()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/ete/uj;->c(Lorg/json/JSONArray;)V

    .line 18
    iget-object v1, p0, Lcom/byazt/pg/c;->t:Lcom/byazt/ete/uj;

    invoke-virtual {v0}, Lcom/byazt/ete/a;->ve()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/byazt/ete/uj;->c(F)V

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/byazt/pg/c;->t:Lcom/byazt/ete/uj;

    invoke-virtual {v0}, Lcom/byazt/ete/uj;->x()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->fv()Ljava/lang/String;

    move-result-object v0

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/byazt/pg/c;->sp:Landroid/app/Activity;

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;

    if-eqz v2, :cond_3

    .line 22
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;->sl()V

    .line 23
    :cond_3
    iget-object v1, p0, Lcom/byazt/pg/c;->sp:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/byazt/pg/c$7;

    invoke-direct {v2, p0}, Lcom/byazt/pg/c$7;-><init>(Lcom/byazt/pg/c;)V

    invoke-static {v1, p1, v2, v0}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/aas/n$c;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/pg/c;Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/pg/c;->ve(Lorg/json/JSONObject;)V

    return-void
.end method

.method private tt(Lorg/json/JSONObject;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/pg/c;->sl:Lorg/json/JSONObject;

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/pg/c;->uj(Lorg/json/JSONObject;)V

    return-void
.end method

.method private tt(Z)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/byazt/pg/c;->x()V

    .line 6
    iget-object v0, p0, Lcom/byazt/pg/c;->da:Lcom/byazt/pop/ve;

    instance-of v1, v0, Lcom/byazt/wz/sp;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Lcom/byazt/wz/sp;

    invoke-virtual {v0}, Lcom/byazt/wz/sp;->x()Lcom/byazt/yzg/ve;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/byazt/yzg/ve;->c(Z)V

    :cond_0
    return-void
.end method

.method private tt(Lcom/byazt/sz/m;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/sz/m;->c()Lcom/byazt/xj/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object p1

    .line 10
    instance-of v1, p1, Landroid/widget/TextView;

    if-nez v1, :cond_1

    return v0

    .line 11
    :cond_1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 13
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u4e0b\u8f7d"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public static synthetic uj(Lcom/byazt/pg/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/pg/c;->u:Ljava/lang/String;

    return-object p0
.end method

.method private uj(Lorg/json/JSONObject;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/pg/c;->t:Lcom/byazt/ete/uj;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/byazt/pg/c;->t:Lcom/byazt/ete/uj;

    invoke-virtual {v1}, Lcom/byazt/ete/uj;->x()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "is_support_func_desc"

    const-string v2, "true"

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app"

    .line 5
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/pg/c;->ve(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/byazt/pg/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/pg/c;->u:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object p1, p0, Lcom/byazt/pg/c;->ve:Lcom/byazt/qj/c;

    if-eqz p1, :cond_1

    const/4 v0, -0x4

    .line 10
    invoke-interface {p1, v0}, Lcom/byazt/qj/c;->c(I)V

    :cond_1
    return-void

    .line 11
    :cond_2
    new-instance v0, Lcom/byazt/pg/c$5;

    const-string v1, "tt_pl_download_check"

    invoke-direct {v0, p0, v1, p1}, Lcom/byazt/pg/c$5;-><init>(Lcom/byazt/pg/c;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method private uj(Z)V
    .locals 5

    .line 12
    invoke-direct {p0}, Lcom/byazt/pg/c;->x()V

    .line 13
    new-instance v0, Lcom/byazt/hkv/c;

    iget-object v1, p0, Lcom/byazt/pg/c;->sp:Landroid/app/Activity;

    iget-object v2, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    const-string v3, "embeded_ad_landingpage"

    iget v4, p0, Lcom/byazt/pg/c;->n:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/hkv/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 14
    const-class v1, Lcom/byazt/nat/c;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v2

    check-cast v2, Lcom/byazt/nat/c;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/byazt/nat/c;->ve(Z)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v2

    check-cast v2, Lcom/byazt/nat/c;

    invoke-virtual {v2, v3}, Lcom/byazt/nat/c;->c(Z)V

    .line 16
    iget-object v2, p0, Lcom/byazt/pg/c;->da:Lcom/byazt/pop/ve;

    invoke-interface {v2, p1}, Lcom/byazt/pop/ve;->tt(Z)V

    .line 17
    iget-object p1, p0, Lcom/byazt/pg/c;->da:Lcom/byazt/pop/ve;

    iget-object v2, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/byazt/pop/ve;->c(Lcom/byazt/ete/ic;Z)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/nat/c;

    iget-object v0, p0, Lcom/byazt/pg/c;->da:Lcom/byazt/pop/ve;

    invoke-virtual {p1, v0}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 19
    iget-object p1, p0, Lcom/byazt/pg/c;->da:Lcom/byazt/pop/ve;

    iget-object v0, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/nb;->qy(Lcom/byazt/ete/ic;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Lcom/byazt/pop/ve;->c(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private ve(Lcom/byazt/ete/ic;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->rh()Lcom/byazt/ete/a;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/byazt/pg/c;->t:Lcom/byazt/ete/uj;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/byazt/ete/uj;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Lcom/byazt/ete/a;->i()Ljava/lang/String;

    move-result-object v0

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/byazt/pg/c;->sp:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/byazt/pg/c$8;

    invoke-direct {v2, p0}, Lcom/byazt/pg/c$8;-><init>(Lcom/byazt/pg/c;)V

    invoke-static {v1, v0, p1, v2}, Lcom/byazt/aas/n;->tt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/n$c;)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/pg/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pg/c;->n()V

    return-void
.end method

.method private ve(Lorg/json/JSONObject;)V
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lp_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->pu()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->lt()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    .line 4
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->to()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/byazt/pg/c$3;

    invoke-direct {v3, p0, p1}, Lcom/byazt/pg/c$3;-><init>(Lcom/byazt/pg/c;Lorg/json/JSONObject;)V

    .line 5
    invoke-static {v1, v0, v2, v3}, Lcom/byazt/ux/n;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ux/n$c;)V

    return-void
.end method

.method private ve(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/byazt/pg/c;->tt(Z)V

    .line 7
    invoke-direct {p0, p1}, Lcom/byazt/pg/c;->uj(Z)V

    return-void
.end method

.method private x()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/pg/c;->da:Lcom/byazt/pop/ve;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/pg/c;->sp:Landroid/app/Activity;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/byazt/pg/c;->u:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/byazt/pg/c;->uj:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v2, v3, v4}, Lcom/byazt/yih/x;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/pop/ve;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/byazt/pg/c;->da:Lcom/byazt/pop/ve;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/byazt/wz/x;->c(Lcom/byazt/ete/ic;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-interface {v0, v2}, Lcom/byazt/pop/ve;->c(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/pg/c;->da:Lcom/byazt/pop/ve;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/byazt/pg/c;->nu:Lcom/byazt/pop/c;

    .line 32
    .line 33
    invoke-interface {v0, v2, v1}, Lcom/byazt/pop/ve;->c(Lcom/byazt/pop/c;Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/byazt/pg/c;->da:Lcom/byazt/pop/ve;

    .line 37
    .line 38
    invoke-interface {v0, v1}, Lcom/byazt/pop/ve;->c(Z)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/byazt/pg/c;->da:Lcom/byazt/pop/ve;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/byazt/pg/c;->sp:Landroid/app/Activity;

    .line 44
    .line 45
    invoke-interface {v0, v2, v1}, Lcom/byazt/pop/ve;->c(Landroid/app/Activity;Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public c()V
    .locals 5

    .line 10
    new-instance v0, Lcom/byazt/pg/tt;

    iget-object v1, p0, Lcom/byazt/pg/c;->sp:Landroid/app/Activity;

    iget-object v2, p0, Lcom/byazt/pg/c;->a:Lcom/byazt/ddx/sp;

    iget-object v3, p0, Lcom/byazt/pg/c;->uj:Ljava/lang/String;

    iget v4, p0, Lcom/byazt/pg/c;->n:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/pg/tt;-><init>(Landroid/content/Context;Lcom/byazt/ddx/sp;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/byazt/pg/c;->tt:Lcom/byazt/pg/tt;

    .line 11
    iget-object v0, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->kp()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->kp()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, v0}, Lcom/byazt/pg/c;->tt(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->pu()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->lo()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/byazt/pg/c$2;

    invoke-direct {v1, p0}, Lcom/byazt/pg/c$2;-><init>(Lcom/byazt/pg/c;)V

    invoke-static {v0, v1}, Lcom/byazt/hy/tt;->c(Ljava/lang/String;Lcom/byazt/hy/tt$c;)V

    return-void

    .line 17
    :cond_2
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/byazt/pg/c;->tt(Lorg/json/JSONObject;)V

    return-void
.end method

.method public c(Lcom/byazt/qj/c;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/byazt/pg/c;->ve:Lcom/byazt/qj/c;

    return-void
.end method

.method public c(Lcom/byazt/sz/m;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/sz/m;->tt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 26
    invoke-virtual {p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v2, "type"

    .line 27
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "openInfringement"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_1
    const-string v2, "openAppPolicy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2
    const-string v2, "muteVideo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_3
    const-string v2, "downloadDirect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "downloadEvent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_5
    const-string v2, "openAppFunctionDesc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_6
    const-string v2, "clickVideo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_7
    const-string v2, "openAppPermission"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 29
    :pswitch_0
    iget-object p1, p0, Lcom/byazt/pg/c;->sp:Landroid/app/Activity;

    iget-object v0, p0, Lcom/byazt/pg/c;->uj:Ljava/lang/String;

    iget-object v1, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    invoke-static {p1, v0, v1}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;)V

    return-void

    .line 30
    :pswitch_1
    iget-object p1, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    invoke-direct {p0, p1}, Lcom/byazt/pg/c;->tt(Lcom/byazt/ete/ic;)V

    return-void

    .line 31
    :pswitch_2
    iget-object p1, p0, Lcom/byazt/pg/c;->z:Lcom/byazt/vn/tt;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/byazt/pg/c;->yp:Lcom/byazt/qzm/tt;

    if-eqz p1, :cond_a

    .line 32
    invoke-virtual {p1}, Lcom/byazt/qzm/tt;->x()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 33
    invoke-direct {p0, p1}, Lcom/byazt/pg/c;->c(Z)V

    return-void

    .line 34
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/byazt/pg/c;->tt(Lcom/byazt/sz/m;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/byazt/pg/c;->ve(Z)V

    return-void

    .line 35
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/byazt/pg/c;->tt(Z)V

    .line 36
    invoke-direct {p0, p1}, Lcom/byazt/pg/c;->tt(Lcom/byazt/sz/m;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/byazt/pg/c;->uj(Z)V

    return-void

    .line 37
    :pswitch_5
    iget-object p1, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    invoke-direct {p0, p1}, Lcom/byazt/pg/c;->ve(Lcom/byazt/ete/ic;)V

    return-void

    .line 38
    :pswitch_6
    iget-object p1, p0, Lcom/byazt/pg/c;->yp:Lcom/byazt/qzm/tt;

    if-eqz p1, :cond_a

    .line 39
    invoke-virtual {p1}, Lcom/byazt/qzm/tt;->oz()V

    goto :goto_1

    .line 40
    :pswitch_7
    iget-object p1, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    invoke-direct {p0, p1}, Lcom/byazt/pg/c;->c(Lcom/byazt/ete/ic;)V

    :cond_a
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ca7475a -> :sswitch_7
        -0x2ed26c2d -> :sswitch_6
        -0x1b5c2c60 -> :sswitch_5
        0x78cef2 -> :sswitch_4
        0xc3aca91 -> :sswitch_3
        0x44a639e2 -> :sswitch_2
        0x49c19b89 -> :sswitch_1
        0x4a82dfbc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lcom/byazt/xj/ve;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    return-void
.end method

.method public tt()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/byazt/pg/c;->yp:Lcom/byazt/qzm/tt;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/byazt/qzm/tt;->kk()V

    :cond_0
    return-void
.end method

.method public uj()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/byazt/pg/c;->da:Lcom/byazt/pop/ve;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0}, Lcom/byazt/pop/ve;->ve()V

    :cond_0
    return-void
.end method

.method public ve()V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/pg/c;->da:Lcom/byazt/pop/ve;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0}, Lcom/byazt/pop/ve;->tt()V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/pg/c;->yp:Lcom/byazt/qzm/tt;

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Lcom/byazt/qzm/tt;->q()V

    :cond_1
    return-void
.end method
