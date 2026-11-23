.class public Lcom/alibaba/fastjson/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field private b:Lcom/alibaba/fastjson/serializer/v1;

.field private c:Lcom/alibaba/fastjson/serializer/v0;

.field private d:Lcom/alibaba/fastjson/f;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/alibaba/fastjson/serializer/v1;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/v1;-><init>(Ljava/io/Writer;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/alibaba/fastjson/g;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 10
    .line 11
    new-instance p1, Lcom/alibaba/fastjson/serializer/v0;

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/alibaba/fastjson/g;->c:Lcom/alibaba/fastjson/serializer/v0;

    .line 17
    .line 18
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->d:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/f;->b()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    const/16 v0, 0x3ed

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :pswitch_1
    const/16 v0, 0x3eb

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :pswitch_2
    const/16 v0, 0x3ea

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :goto_0
    const/4 v0, -0x1

    .line 25
    :goto_1
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/alibaba/fastjson/g;->d:Lcom/alibaba/fastjson/f;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/f;->c(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->d:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/f;->b()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x3ea

    .line 11
    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    const/16 v1, 0x3eb

    .line 15
    .line 16
    const/16 v2, 0x2c

    .line 17
    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/16 v1, 0x3ed

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 38
    .line 39
    const/16 v1, 0x3a

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method private e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->d:Lcom/alibaba/fastjson/f;

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
    :pswitch_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "illegal state : "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v1

    .line 33
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 34
    .line 35
    const/16 v1, 0x2c

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 42
    .line 43
    const/16 v1, 0x3a

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 46
    .line 47
    .line 48
    :goto_0
    :pswitch_3
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->d:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/f;->a()Lcom/alibaba/fastjson/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/alibaba/fastjson/g;->d:Lcom/alibaba/fastjson/f;

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
    const/16 v1, 0x3e9

    .line 17
    .line 18
    const/16 v2, 0x3ea

    .line 19
    .line 20
    const/4 v3, -0x1

    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    const/16 v1, 0x3ec

    .line 26
    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    const/4 v2, -0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/16 v2, 0x3ed

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/16 v2, 0x3eb

    .line 35
    .line 36
    :cond_3
    :goto_0
    if-eq v2, v3, :cond_4

    .line 37
    .line 38
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->d:Lcom/alibaba/fastjson/f;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/f;->c(I)V

    .line 41
    .line 42
    .line 43
    :cond_4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->d(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    const/16 v1, 0x5d

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/alibaba/fastjson/g;->j()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    const/16 v1, 0x7d

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/alibaba/fastjson/g;->j()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->d:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/alibaba/fastjson/g;->e()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/f;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/alibaba/fastjson/g;->d:Lcom/alibaba/fastjson/f;

    .line 11
    .line 12
    const/16 v2, 0x3ec

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/f;-><init>(Lcom/alibaba/fastjson/f;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/alibaba/fastjson/g;->d:Lcom/alibaba/fastjson/f;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 20
    .line 21
    const/16 v1, 0x5b

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->d:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/alibaba/fastjson/g;->e()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/f;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/alibaba/fastjson/g;->d:Lcom/alibaba/fastjson/f;

    .line 11
    .line 12
    const/16 v2, 0x3e9

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/f;-><init>(Lcom/alibaba/fastjson/f;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/alibaba/fastjson/g;->d:Lcom/alibaba/fastjson/f;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 20
    .line 21
    const/16 v1, 0x7b

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public o()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/g;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public p()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/g;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/g;->s(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/alibaba/fastjson/g;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->c:Lcom/alibaba/fastjson/serializer/v0;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/v0;->L(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/alibaba/fastjson/g;->b()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public v()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/g;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/alibaba/fastjson/g;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson/g;->c:Lcom/alibaba/fastjson/serializer/v0;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/alibaba/fastjson/g;->b()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public y()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/g;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public z(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/g;->writeObject(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
