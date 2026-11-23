.class public Lcom/alibaba/fastjson/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final b:Lcom/alibaba/fastjson/parser/c;

.field private c:Lcom/alibaba/fastjson/f;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/c;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/d;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/alibaba/fastjson/parser/c;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/parser/c;-><init>(Lcom/alibaba/fastjson/parser/d;)V

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/d;-><init>(Lcom/alibaba/fastjson/parser/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/parser/f;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/parser/f;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/d;-><init>(Lcom/alibaba/fastjson/parser/d;)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/f;->a()Lcom/alibaba/fastjson/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/f;->b()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, -0x1

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    goto :goto_0

    .line 22
    :pswitch_0
    const/16 v0, 0x3ed

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_1
    const/16 v0, 0x3eb

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_2
    const/16 v0, 0x3ea

    .line 29
    .line 30
    :goto_0
    if-eq v0, v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/f;->c(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/f;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x3ea

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "illegal state : "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v1

    .line 36
    :pswitch_0
    const/4 v1, -0x1

    .line 37
    goto :goto_0

    .line 38
    :pswitch_1
    const/16 v1, 0x3ed

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_2
    const/16 v1, 0x3eb

    .line 42
    .line 43
    :goto_0
    :pswitch_3
    if-eq v1, v2, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/f;->c(I)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/f;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "illegal state : "

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v1

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/c;->a(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 42
    .line 43
    const/16 v2, 0x12

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/c;->b(II)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 50
    .line 51
    const/16 v1, 0x11

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/c;->a(I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    :pswitch_3
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/f;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "illegal state : "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/alibaba/fastjson/f;->b()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 40
    .line 41
    const/16 v1, 0x10

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/c;->a(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 48
    .line 49
    const/16 v1, 0x11

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/c;->a(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    :pswitch_2
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/parser/c;->h(Lcom/alibaba/fastjson/parser/Feature;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/c;->a(I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->e()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alibaba/fastjson/util/f;->a(Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/c;->a(I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->e()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/alibaba/fastjson/f;->b()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    packed-switch v1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    :pswitch_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "illegal state : "

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :pswitch_1
    const/16 v1, 0xf

    .line 50
    .line 51
    if-eq v0, v1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v2, 0x0

    .line 55
    :goto_0
    return v2

    .line 56
    :pswitch_2
    const/16 v1, 0xd

    .line 57
    .line 58
    if-eq v0, v1, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 v2, 0x0

    .line 62
    :goto_1
    return v2

    .line 63
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 64
    .line 65
    const-string v1, "context is null"

    .line 66
    .line 67
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public j()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->h()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->g()V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/k;->p(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public k()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->h()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->g()V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/k;->s(Ljava/lang/Object;)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public l(Lcom/alibaba/fastjson/h;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/h<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/h;->getType()Ljava/lang/reflect/Type;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/d;->n(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public m(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/c;->m0(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->h()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/c;->m0(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->g()V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method

.method public n(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/c;->n0(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->h()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/c;->n0(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->g()V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method

.method public o(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/c;->o0(Ljava/util/Map;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->h()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/c;->o0(Ljava/util/Map;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->g()V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method

.method public p(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/c;->q0(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->h()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/c;->q0(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->g()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->h()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->g()V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/k;->v(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public readObject()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->h()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/alibaba/fastjson/f;->b()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v1, 0x3e9

    .line 22
    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x3eb

    .line 26
    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/c;->k0()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->g()V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    const/16 v1, 0x3ec

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/alibaba/fastjson/f;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/f;-><init>(Lcom/alibaba/fastjson/f;I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->y()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/alibaba/fastjson/f;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 22
    .line 23
    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/f;-><init>(Lcom/alibaba/fastjson/f;I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 29
    .line 30
    const/16 v1, 0xe

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/c;->a(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public v()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    const/16 v1, 0x3e9

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/alibaba/fastjson/f;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/f;-><init>(Lcom/alibaba/fastjson/f;I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/d;->y()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/alibaba/fastjson/f;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 22
    .line 23
    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/f;-><init>(Lcom/alibaba/fastjson/f;I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/alibaba/fastjson/d;->c:Lcom/alibaba/fastjson/f;

    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/d;->b:Lcom/alibaba/fastjson/parser/c;

    .line 29
    .line 30
    const/16 v1, 0xc

    .line 31
    .line 32
    const/16 v2, 0x12

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/c;->b(II)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
