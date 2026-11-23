.class public Lcom/kongzue/dialogx/style/a$g;
.super Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kongzue/dialogx/style/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/style/a;


# direct methods
.method public constructor <init>(Lcom/kongzue/dialogx/style/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/style/a$g;->b:Lcom/kongzue/dialogx/style/a;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;-><init>(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    return v0
.end method

.method public d(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/kongzue/dialogx/R$color;->white:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/kongzue/dialogx/R$color;->black:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method public e(Z)I
    .locals 0

    .line 1
    sget p1, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_wait:I

    .line 2
    .line 3
    return p1
.end method

.method public f(Landroid/content/Context;Z)Lcom/kongzue/dialogx/interfaces/b0;
    .locals 0

    .line 1
    new-instance p2, Lcom/kongzue/dialogx/util/views/ProgressView;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Lcom/kongzue/dialogx/util/views/ProgressView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method
