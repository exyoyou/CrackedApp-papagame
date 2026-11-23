.class public Lcom/kongzue/dialogx/style/a;
.super Lcom/kongzue/dialogx/interfaces/DialogXStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/style/a$c;,
        Lcom/kongzue/dialogx/style/a$d;,
        Lcom/kongzue/dialogx/style/a$e;,
        Lcom/kongzue/dialogx/style/a$a;,
        Lcom/kongzue/dialogx/style/a$g;,
        Lcom/kongzue/dialogx/style/a$f;,
        Lcom/kongzue/dialogx/style/a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static q()Lcom/kongzue/dialogx/style/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/style/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/style/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    sget v0, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_enter:I

    .line 2
    .line 3
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    sget v0, Lcom/kongzue/dialogx/R$anim;->anim_dialogx_default_exit:I

    .line 2
    .line 3
    return v0
.end method

.method public c()[I
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x4

    .line 5
    filled-new-array {v2, v3, v0, v1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public d(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_material:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_material_dark:I

    .line 7
    .line 8
    :goto_0
    return p1
.end method

.method public e()Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/style/a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/style/a$a;-><init>(Lcom/kongzue/dialogx/style/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public g()Lcom/kongzue/dialogx/interfaces/DialogXStyle$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/style/a$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/style/a$b;-><init>(Lcom/kongzue/dialogx/style/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public h()Lcom/kongzue/dialogx/interfaces/DialogXStyle$e;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/style/a$f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/style/a$f;-><init>(Lcom/kongzue/dialogx/style/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public i()Lcom/kongzue/dialogx/interfaces/DialogXStyle$f;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/style/a$g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/style/a$g;-><init>(Lcom/kongzue/dialogx/style/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/style/a$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/style/a$c;-><init>(Lcom/kongzue/dialogx/style/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/style/a$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/style/a$d;-><init>(Lcom/kongzue/dialogx/style/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public l()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/style/a$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/style/a$e;-><init>(Lcom/kongzue/dialogx/style/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public m(Z)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public n()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public p()[I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    filled-new-array {v2, v0, v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method
