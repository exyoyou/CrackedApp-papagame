.class public Lcom/byazt/fs/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fs/aw;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2d0,
        0x2a
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/fs/aw<",
        "Lcom/byazt/nb/tt;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/byazt/fs/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/fs/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/fs/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/fs/i;->c:Lcom/byazt/fs/i;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static c(Landroid/util/JsonReader;Lcom/byazt/nb/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 32
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    if-gez v0, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    iput v0, p1, Lcom/byazt/nb/n;->tt:I

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 37
    iput v0, p1, Lcom/byazt/nb/n;->tt:I

    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p1, Lcom/byazt/nb/n;->c:I

    goto :goto_0

    .line 39
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method


# virtual methods
.method public c(Landroid/util/JsonReader;F)Lcom/byazt/nb/tt;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/nb/tt$c;->ve:Lcom/byazt/nb/tt$c;

    .line 2
    new-instance v15, Lcom/byazt/nb/n;

    invoke-direct {v15}, Lcom/byazt/nb/n;-><init>()V

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v6, v0

    move-object v0, v1

    move-object v2, v0

    move-object v14, v2

    move-object/from16 v16, v14

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v19

    const/16 v20, -0x1

    sparse-switch v19, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "line_cfg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v20, 0xf

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "elt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v20, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "els"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v20, 0xd

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "tr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v20, 0xc

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "sz"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v20, 0xb

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "sw"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v20, 0xa

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "sc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v20, 0x9

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "ps"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v20, 0x8

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "of"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    const/16 v20, 0x7

    goto :goto_1

    :sswitch_9
    const-string v3, "ls"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    const/16 v20, 0x6

    goto :goto_1

    :sswitch_a
    const-string v3, "lh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    const/16 v20, 0x5

    goto :goto_1

    :sswitch_b
    const-string v3, "fc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1

    :cond_b
    const/16 v20, 0x4

    goto :goto_1

    :sswitch_c
    const-string v3, "t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_1

    :cond_c
    const/16 v20, 0x3

    goto :goto_1

    :sswitch_d
    const-string v3, "s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    const/16 v20, 0x2

    goto :goto_1

    :sswitch_e
    const-string v3, "j"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_1

    :cond_e
    const/16 v20, 0x1

    goto :goto_1

    :sswitch_f
    const-string v3, "f"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_1

    :cond_f
    const/16 v20, 0x0

    :goto_1
    packed-switch v20, :pswitch_data_0

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    move-object/from16 v1, p1

    move/from16 v21, v5

    move-object/from16 v23, v14

    move-object/from16 v22, v15

    goto :goto_2

    :pswitch_0
    move-object/from16 v1, p1

    .line 7
    invoke-static {v1, v15}, Lcom/byazt/fs/i;->c(Landroid/util/JsonReader;Lcom/byazt/nb/n;)V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v1, p1

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v1, p1

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v1, p1

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v7

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v1, p1

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginArray()V

    .line 12
    new-instance v3, Landroid/graphics/PointF;

    move/from16 v21, v5

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, p2

    move-object/from16 v23, v14

    move-object/from16 v22, v15

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v5, v14

    mul-float v5, v5, p2

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endArray()V

    move-object/from16 v16, v3

    :cond_10
    :goto_2
    move/from16 v5, v21

    move-object/from16 v15, v22

    move-object/from16 v14, v23

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v1, p1

    move/from16 v21, v5

    move-object/from16 v23, v14

    move-object/from16 v22, v15

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v12, v3

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v1, p1

    move/from16 v21, v5

    move-object/from16 v23, v14

    move-object/from16 v22, v15

    .line 15
    invoke-static/range {p1 .. p1}, Lcom/byazt/fs/my;->c(Landroid/util/JsonReader;)I

    move-result v11

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v1, p1

    move/from16 v21, v5

    move-object/from16 v22, v15

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginArray()V

    .line 17
    new-instance v14, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, p2

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, p2

    invoke-direct {v14, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endArray()V

    move/from16 v5, v21

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v1, p1

    move/from16 v21, v5

    move-object/from16 v23, v14

    move-object/from16 v22, v15

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v13

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v1, p1

    move/from16 v21, v5

    move-object/from16 v23, v14

    move-object/from16 v22, v15

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v9, v3

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v1, p1

    move/from16 v21, v5

    move-object/from16 v23, v14

    move-object/from16 v22, v15

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v8, v3

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v1, p1

    move/from16 v21, v5

    move-object/from16 v23, v14

    move-object/from16 v22, v15

    .line 22
    invoke-static/range {p1 .. p1}, Lcom/byazt/fs/my;->c(Landroid/util/JsonReader;)I

    move-result v10

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v1, p1

    move/from16 v21, v5

    move-object/from16 v23, v14

    move-object/from16 v22, v15

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    const-string v2, ""

    goto/16 :goto_2

    :pswitch_d
    move-object/from16 v1, p1

    move-object/from16 v23, v14

    move-object/from16 v22, v15

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v5, v3

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v1, p1

    move/from16 v21, v5

    move-object/from16 v23, v14

    move-object/from16 v22, v15

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    .line 26
    sget-object v6, Lcom/byazt/nb/tt$c;->ve:Lcom/byazt/nb/tt$c;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-gt v3, v4, :cond_10

    if-gez v3, :cond_11

    goto/16 :goto_2

    .line 27
    :cond_11
    invoke-static {}, Lcom/byazt/nb/tt$c;->values()[Lcom/byazt/nb/tt$c;

    move-result-object v4

    aget-object v6, v4, v3

    goto/16 :goto_2

    :pswitch_f
    move-object/from16 v1, p1

    move/from16 v21, v5

    move-object/from16 v23, v14

    move-object/from16 v22, v15

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    move-object/from16 v1, p1

    move/from16 v21, v5

    move-object/from16 v23, v14

    move-object/from16 v22, v15

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 30
    new-instance v19, Lcom/byazt/nb/tt;

    move-object/from16 v1, v19

    move-object v3, v0

    move/from16 v4, v21

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    invoke-direct/range {v1 .. v17}, Lcom/byazt/nb/tt;-><init>(Ljava/lang/String;Ljava/lang/String;FLcom/byazt/nb/tt$c;IFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/byazt/nb/n;Ljava/lang/String;Ljava/lang/String;)V

    return-object v19

    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_f
        0x6a -> :sswitch_e
        0x73 -> :sswitch_d
        0x74 -> :sswitch_c
        0xcbd -> :sswitch_b
        0xd7c -> :sswitch_a
        0xd87 -> :sswitch_9
        0xdd7 -> :sswitch_8
        0xe03 -> :sswitch_7
        0xe50 -> :sswitch_6
        0xe64 -> :sswitch_5
        0xe67 -> :sswitch_4
        0xe7e -> :sswitch_3
        0x188ac -> :sswitch_2
        0x188ad -> :sswitch_1
        0x46de4599 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic tt(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/byazt/fs/i;->c(Landroid/util/JsonReader;F)Lcom/byazt/nb/tt;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
