.class public Lcom/byazt/ogz/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a6,
        0x42
    }
.end annotation


# instance fields
.field public a:I

.field public c:I

.field public i:I

.field public n:I

.field public sp:I

.field public tt:I

.field public uj:I

.field public ve:I

.field public x:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/byazt/ogz/t;
    .locals 3

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/byazt/ogz/t;

    invoke-direct {v0}, Lcom/byazt/ogz/t;-><init>()V

    .line 4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "banner"

    .line 5
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/byazt/ogz/t;->c:I

    const-string p0, "splash"

    .line 6
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/byazt/ogz/t;->tt:I

    const-string p0, "rewarded"

    .line 7
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/byazt/ogz/t;->ve:I

    const-string p0, "feed"

    .line 8
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/byazt/ogz/t;->uj:I

    const-string p0, "draw"

    .line 9
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/byazt/ogz/t;->n:I

    const-string p0, "full_screen"

    .line 10
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/byazt/ogz/t;->a:I

    const-string p0, "slide_move_max_num"

    const/4 v2, 0x5

    .line 11
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/byazt/ogz/t;->sp:I

    const-string p0, "motion_max_num"

    const/16 v2, 0x12c

    .line 12
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/byazt/ogz/t;->x:I

    const-string p0, "sensor_interval"

    const/4 v2, 0x3

    .line 13
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/byazt/ogz/t;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method private c(II)Z
    .locals 0

    .line 1
    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private uj(I)I
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const/4 p1, 0x0

    .line 5
    return p1

    .line 6
    :pswitch_1
    iget p1, p0, Lcom/byazt/ogz/t;->n:I

    .line 7
    .line 8
    return p1

    .line 9
    :pswitch_2
    iget p1, p0, Lcom/byazt/ogz/t;->a:I

    .line 10
    .line 11
    return p1

    .line 12
    :pswitch_3
    iget p1, p0, Lcom/byazt/ogz/t;->ve:I

    .line 13
    .line 14
    return p1

    .line 15
    :pswitch_4
    iget p1, p0, Lcom/byazt/ogz/t;->uj:I

    .line 16
    .line 17
    return p1

    .line 18
    :pswitch_5
    iget p1, p0, Lcom/byazt/ogz/t;->tt:I

    .line 19
    .line 20
    return p1

    .line 21
    :pswitch_6
    iget p1, p0, Lcom/byazt/ogz/t;->c:I

    .line 22
    .line 23
    return p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/byazt/ogz/t;->sp:I

    return v0
.end method

.method public c(I)Z
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Lcom/byazt/ogz/t;->uj(I)I

    move-result p1

    const/4 v0, 0x2

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/byazt/ogz/t;->c(II)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "banner"

    .line 7
    .line 8
    iget v2, p0, Lcom/byazt/ogz/t;->c:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "splash"

    .line 14
    .line 15
    iget v2, p0, Lcom/byazt/ogz/t;->tt:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "rewarded"

    .line 21
    .line 22
    iget v2, p0, Lcom/byazt/ogz/t;->ve:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "feed"

    .line 28
    .line 29
    iget v2, p0, Lcom/byazt/ogz/t;->uj:I

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "draw"

    .line 35
    .line 36
    iget v2, p0, Lcom/byazt/ogz/t;->n:I

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "full_screen"

    .line 42
    .line 43
    iget v2, p0, Lcom/byazt/ogz/t;->a:I

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v1, "slide_move_max_num"

    .line 49
    .line 50
    iget v2, p0, Lcom/byazt/ogz/t;->sp:I

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v1, "motion_max_num"

    .line 56
    .line 57
    iget v2, p0, Lcom/byazt/ogz/t;->x:I

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string v1, "sensor_interval"

    .line 63
    .line 64
    iget v2, p0, Lcom/byazt/ogz/t;->i:I

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    return-object v0

    .line 74
    :catchall_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method

.method public tt()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/byazt/ogz/t;->x:I

    return v0
.end method

.method public tt(I)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/ogz/t;->uj(I)I

    move-result p1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/byazt/ogz/t;->c(II)Z

    move-result p1

    return p1
.end method

.method public ve()I
    .locals 2

    .line 3
    iget v0, p0, Lcom/byazt/ogz/t;->i:I

    const/4 v1, 0x3

    if-ltz v0, :cond_1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public ve(I)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/ogz/t;->uj(I)I

    move-result p1

    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/byazt/ogz/t;->c(II)Z

    move-result p1

    return p1
.end method
