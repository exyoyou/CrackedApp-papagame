.class public Lcom/kongzue/dialogx/style/a$c;
.super Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kongzue/dialogx/style/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/style/a;


# direct methods
.method public constructor <init>(Lcom/kongzue/dialogx/style/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/style/a$c;->b:Lcom/kongzue/dialogx/style/a;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;-><init>(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_popmenu_material:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_popmenu_material_dark:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method public d(Z)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public e(Z)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public f(ZIIZ)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public g(Z)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public h(Z)I
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

.method public i(Z)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public j()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public k(Z)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method
