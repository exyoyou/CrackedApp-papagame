.class public Lcom/kongzue/dialogx/style/a$a;
.super Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kongzue/dialogx/style/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/style/a;


# direct methods
.method public constructor <init>(Lcom/kongzue/dialogx/style/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/style/a$a;->b:Lcom/kongzue/dialogx/style/a;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;-><init>(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    const v0, 0x3f19999a    # 0.6f

    return v0
.end method

.method public b(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_bottom_material:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_bottom_material_dark:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method public c(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/kongzue/dialogx/R$drawable;->rect_dialogx_material_menu_split_divider:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/kongzue/dialogx/R$drawable;->rect_dialogx_material_menu_split_divider_night:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method public d(Z)I
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public e(ZIIZ)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public f(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/kongzue/dialogx/R$color;->black90:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/kongzue/dialogx/R$color;->white90:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method public g(ZZ)I
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/kongzue/dialogx/R$mipmap;->img_dialogx_bottom_menu_material_item_multi_selection:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/kongzue/dialogx/R$mipmap;->img_dialogx_bottom_menu_material_item_non_multi_select:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method public h(ZZ)I
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/kongzue/dialogx/R$mipmap;->img_dialogx_bottom_menu_material_item_selection:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/kongzue/dialogx/R$mipmap;->img_dialogx_bottom_menu_material_item_non_select:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method public i(Z)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public j(Z)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
