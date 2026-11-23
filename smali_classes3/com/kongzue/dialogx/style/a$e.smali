.class public Lcom/kongzue/dialogx/style/a$e;
.super Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kongzue/dialogx/style/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/style/a;


# direct methods
.method public constructor <init>(Lcom/kongzue/dialogx/style/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/style/a$e;->a:Lcom/kongzue/dialogx/style/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;
    .locals 1

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;->BOTTOM:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Z)I
    .locals 0

    .line 1
    sget p1, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_enter:I

    .line 2
    .line 3
    return p1
.end method

.method public f(Z)I
    .locals 0

    .line 1
    sget p1, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_exit:I

    .line 2
    .line 3
    return p1
.end method

.method public g(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_poptip_material:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_poptip_material_dark:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method public h()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
