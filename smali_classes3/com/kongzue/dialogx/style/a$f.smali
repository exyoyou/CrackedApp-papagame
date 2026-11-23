.class public Lcom/kongzue/dialogx/style/a$f;
.super Lcom/kongzue/dialogx/interfaces/DialogXStyle$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kongzue/dialogx/style/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/style/a;


# direct methods
.method public constructor <init>(Lcom/kongzue/dialogx/style/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/style/a$f;->b:Lcom/kongzue/dialogx/style/a;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$e;-><init>(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IZ)I
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/kongzue/dialogx/R$drawable;->button_dialogx_material_light:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/kongzue/dialogx/R$drawable;->button_dialogx_material_night:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method public b(IZ)I
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/kongzue/dialogx/R$drawable;->button_dialogx_material_light:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/kongzue/dialogx/R$drawable;->button_dialogx_material_night:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method public c(IZ)I
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/kongzue/dialogx/R$drawable;->button_dialogx_material_light:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/kongzue/dialogx/R$drawable;->button_dialogx_material_night:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method
