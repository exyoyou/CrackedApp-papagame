.class public Lcom/aggmoread/sdk/z/a/q/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/aggmoread/sdk/z/a/g/d;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->j:I

    const/4 v1, 0x2

    const/16 v2, -0x3e7

    if-ne v0, v1, :cond_1

    iput v2, p1, Lcom/aggmoread/sdk/z/a/g/d;->c:I

    iput v2, p1, Lcom/aggmoread/sdk/z/a/g/d;->d:I

    :cond_1
    iget v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->e:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "__WIDTH__"

    invoke-static {p0, v3, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "__HEIGHT__"

    invoke-static {p0, v3, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "__UP_X__"

    invoke-static {p0, v3, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->c:I

    iget v3, p1, Lcom/aggmoread/sdk/z/a/g/d;->e:I

    const/4 v4, 0x1

    if-le v0, v3, :cond_2

    sub-int/2addr v3, v4

    iput v3, p1, Lcom/aggmoread/sdk/z/a/g/d;->c:I

    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    iput v4, p1, Lcom/aggmoread/sdk/z/a/g/d;->c:I

    :cond_3
    :goto_0
    iget v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "__UP_Y__"

    invoke-static {p0, v3, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->d:I

    iget v3, p1, Lcom/aggmoread/sdk/z/a/g/d;->f:I

    if-le v0, v3, :cond_4

    sub-int/2addr v3, v4

    iput v3, p1, Lcom/aggmoread/sdk/z/a/g/d;->d:I

    goto :goto_1

    :cond_4
    if-gez v0, :cond_5

    iput v4, p1, Lcom/aggmoread/sdk/z/a/g/d;->d:I

    :cond_5
    :goto_1
    iget-object v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->i:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "__CLICK_ID__"

    invoke-static {p0, v3, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-wide v3, p1, Lcom/aggmoread/sdk/z/a/g/d;->h:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "__EVENT_TIME_END__"

    invoke-static {p0, v3, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->a:I

    iget v3, p1, Lcom/aggmoread/sdk/z/a/g/d;->c:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v3, Lcom/aggmoread/sdk/z/a/q/a;->a:I

    if-le v0, v3, :cond_6

    iget v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->c:I

    iput v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->a:I

    :cond_6
    iget v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->b:I

    iget v3, p1, Lcom/aggmoread/sdk/z/a/g/d;->d:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v3, Lcom/aggmoread/sdk/z/a/q/a;->a:I

    if-le v0, v3, :cond_7

    iget v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->d:I

    iput v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->b:I

    :cond_7
    iget v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->j:I

    if-ne v0, v1, :cond_8

    iput v2, p1, Lcom/aggmoread/sdk/z/a/g/d;->a:I

    iput v2, p1, Lcom/aggmoread/sdk/z/a/g/d;->b:I

    :cond_8
    iget v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__DOWN_X__"

    invoke-static {p0, v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__DOWN_Y__"

    invoke-static {p0, v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-wide v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->g:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__EVENT_TIME_START__"

    invoke-static {p0, v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->j:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__SLD__"

    invoke-static {p0, v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__ELEMENT__"

    invoke-static {p0, v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->l:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__X_MAX_ACC__"

    invoke-static {p0, v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget v0, p1, Lcom/aggmoread/sdk/z/a/g/d;->m:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__Y_MAX_ACC__"

    invoke-static {p0, v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget p1, p1, Lcom/aggmoread/sdk/z/a/g/d;->n:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "__Z_MAX_ACC__"

    invoke-static {p0, v0, p1}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Lcom/aggmoread/sdk/z/a/g/d;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aggmoread/sdk/z/a/g/d;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startReport Dsp Api  ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APIRTAG"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Lcom/aggmoread/sdk/z/a/g/d;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startReport2 Dsp Api  ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "APIRTAG"

    invoke-static {v0, p0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/aggmoread/sdk/z/a/q/a$a;

    invoke-direct {v2}, Lcom/aggmoread/sdk/z/a/q/a$a;-><init>()V

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/aggmoread/sdk/z/a/p/a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/aggmoread/sdk/z/a/p/a$g;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
