.class public Lcom/beizi/ad/lance/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;)I
    .locals 1

    .line 70
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 71
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 72
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0

    :cond_0
    const/16 p0, 0x438

    return p0
.end method

.method public static a(ILandroid/view/View;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p2, p1, p3, v0}, Lcom/beizi/ad/lance/a/h;->a(ILandroid/view/View;Landroid/view/View;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(ILandroid/view/View;Landroid/view/View;Ljava/lang/String;Z)Landroid/view/View;
    .locals 23

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v1, :cond_11

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-double v6, v0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    .line 4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "BeiZisAd"

    invoke-static {v9, v8}, Lcom/beizi/ad/lance/a/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {v2, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v10, 0x2

    new-array v11, v10, [I

    .line 7
    invoke-virtual {v2, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v12, 0x0

    aget v13, v11, v12

    const/4 v14, 0x1

    aget v11, v11, v14

    .line 8
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delegateLeft = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",delegateTop = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/beizi/ad/lance/a/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/beizi/ad/lance/a/h;->a(Landroid/content/Context;)I

    move-result v10

    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/beizi/ad/lance/a/h;->b(Landroid/content/Context;)I

    move-result v15

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/beizi/ad/lance/a/h;->c(Landroid/content/Context;)I

    move-result v16

    add-int v15, v15, v16

    .line 12
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "screenWidth = "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",screenHeight = "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/beizi/ad/lance/a/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v12

    const-string v14, "BOTTOM"

    const-string v2, "RIGHT"

    const-string v1, "LEFT"

    move/from16 v18, v15

    const-string v15, "TOP"

    const/16 v19, -0x1

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v12, "CENTER"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v12, 0x8

    const/16 v19, 0x8

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_0

    :cond_2
    const/4 v12, 0x7

    const/16 v19, 0x7

    goto :goto_0

    :sswitch_2
    const-string v12, "BOTTOMRIGHT"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_0

    :cond_3
    const/4 v12, 0x6

    const/16 v19, 0x6

    goto :goto_0

    :sswitch_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_0

    :cond_4
    const/4 v12, 0x5

    const/16 v19, 0x5

    goto :goto_0

    :sswitch_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_0

    :cond_5
    const/4 v12, 0x4

    const/16 v19, 0x4

    goto :goto_0

    :sswitch_5
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_0

    :cond_6
    const/4 v12, 0x3

    const/16 v19, 0x3

    goto :goto_0

    :sswitch_6
    const-string v12, "TOPRIGHT"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_0

    :cond_7
    const/16 v19, 0x2

    goto :goto_0

    :sswitch_7
    const-string v12, "TOPLEFT"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_0

    :cond_8
    const/16 v19, 0x1

    goto :goto_0

    :sswitch_8
    const-string v12, "BOTTOMLEFT"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    goto :goto_0

    :cond_9
    const/16 v19, 0x0

    :goto_0
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    packed-switch v19, :pswitch_data_0

    move-object v12, v1

    move-object/from16 p4, v2

    move-object/from16 v16, v14

    move-object/from16 v19, v15

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    goto/16 :goto_3

    .line 14
    :pswitch_0
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    sub-double v6, v6, v20

    move-object v12, v1

    move-object/from16 p4, v2

    int-to-double v1, v4

    mul-double v1, v1, v6

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v1, v1, v19

    double-to-int v1, v1

    int-to-double v2, v5

    mul-double v6, v6, v2

    div-double v6, v6, v19

    double-to-int v2, v6

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expandTop = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/beizi/ad/lance/a/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    sub-int v3, v11, v2

    const/4 v6, 0x0

    .line 16
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v7, v13, v1

    .line 17
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v1

    const-string v1, "marginTop = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",marginLeft = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/beizi/ad/lance/a/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v2

    move-object/from16 v19, v15

    move/from16 v1, v16

    move v2, v1

    move-object/from16 v16, v14

    move v14, v3

    move v3, v6

    goto/16 :goto_3

    :pswitch_1
    move-object v12, v1

    move-object/from16 p4, v2

    sub-double v6, v6, v20

    int-to-double v1, v5

    mul-double v6, v6, v1

    double-to-int v1, v6

    add-int/lit8 v2, v11, 0x0

    const/4 v3, 0x0

    .line 19
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v6, v13, 0x0

    .line 20
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v3, v1

    move v7, v6

    move-object/from16 v16, v14

    move-object/from16 v19, v15

    const/4 v1, 0x0

    const/4 v6, 0x0

    move v14, v2

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_3

    :pswitch_2
    move-object v12, v1

    move-object/from16 p4, v2

    .line 21
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    sub-double v1, v1, v20

    int-to-double v6, v4

    mul-double v6, v6, v1

    double-to-int v3, v6

    int-to-double v6, v5

    mul-double v1, v1, v6

    double-to-int v1, v1

    add-int/lit8 v2, v11, 0x0

    const/4 v6, 0x0

    .line 22
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/lit8 v2, v13, 0x0

    .line 23
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v7, v2

    move v2, v3

    move-object/from16 v16, v14

    move-object/from16 v19, v15

    move/from16 v14, v17

    move v3, v1

    const/4 v1, 0x0

    goto/16 :goto_3

    :pswitch_3
    move-object v12, v1

    move-object/from16 p4, v2

    const/4 v1, 0x0

    sub-double v6, v6, v20

    int-to-double v2, v4

    mul-double v6, v6, v2

    double-to-int v2, v6

    add-int/lit8 v3, v11, 0x0

    .line 24
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/lit8 v3, v13, 0x0

    .line 25
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v7, v3

    move-object/from16 v16, v14

    move-object/from16 v19, v15

    move/from16 v14, v17

    goto :goto_2

    :pswitch_4
    move-object v12, v1

    move-object/from16 p4, v2

    const/4 v1, 0x0

    sub-double v6, v6, v20

    int-to-double v2, v4

    mul-double v6, v6, v2

    double-to-int v2, v6

    add-int/lit8 v3, v11, 0x0

    .line 26
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    sub-int v3, v13, v2

    .line 27
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v2

    move v7, v3

    move-object/from16 v16, v14

    move-object/from16 v19, v15

    move/from16 v14, v17

    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x0

    const/4 v6, 0x0

    goto/16 :goto_3

    :pswitch_5
    move-object v12, v1

    move-object/from16 p4, v2

    const/4 v1, 0x0

    sub-double v6, v6, v20

    int-to-double v2, v5

    mul-double v6, v6, v2

    double-to-int v2, v6

    sub-int v3, v11, v2

    .line 28
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/lit8 v3, v13, 0x0

    .line 29
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v6, v2

    move v7, v3

    move-object/from16 v16, v14

    move-object/from16 v19, v15

    move/from16 v14, v17

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_3

    :pswitch_6
    move-object v12, v1

    move-object/from16 p4, v2

    const/4 v1, 0x0

    .line 30
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sub-double v2, v2, v20

    int-to-double v6, v4

    mul-double v6, v6, v2

    double-to-int v6, v6

    move/from16 v16, v6

    int-to-double v6, v5

    mul-double v2, v2, v6

    double-to-int v2, v2

    sub-int v3, v11, v2

    .line 31
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/lit8 v3, v13, 0x0

    .line 32
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v6, v2

    move v7, v3

    move-object/from16 v19, v15

    move/from16 v2, v16

    const/4 v3, 0x0

    move-object/from16 v16, v14

    move/from16 v14, v17

    goto :goto_3

    :pswitch_7
    move-object v12, v1

    move-object/from16 p4, v2

    const/4 v1, 0x0

    .line 33
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sub-double v2, v2, v20

    int-to-double v6, v4

    mul-double v6, v6, v2

    double-to-int v6, v6

    move-object/from16 v16, v14

    move-object/from16 v19, v15

    int-to-double v14, v5

    mul-double v2, v2, v14

    double-to-int v2, v2

    sub-int v3, v11, v2

    .line 34
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v7, v13, v6

    .line 35
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v14, v3

    move v1, v6

    const/4 v3, 0x0

    move v6, v2

    goto/16 :goto_1

    :pswitch_8
    move-object v12, v1

    move-object/from16 p4, v2

    move-object/from16 v16, v14

    move-object/from16 v19, v15

    .line 36
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    sub-double v1, v1, v20

    int-to-double v6, v4

    mul-double v6, v6, v1

    double-to-int v3, v6

    int-to-double v6, v5

    mul-double v1, v1, v6

    double-to-int v1, v1

    add-int/lit8 v2, v11, 0x0

    const/4 v6, 0x0

    .line 37
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v7, v13, v3

    .line 38
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v14, v2

    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v22, v3

    move v3, v1

    move/from16 v1, v22

    .line 39
    :goto_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v12

    const-string v12, "area = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",expandLeft = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",expandTop = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",expandRight = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",expandBottom = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/beizi/ad/lance/a/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delegateArea old = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/beizi/ad/lance/a/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 42
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 43
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    move/from16 p0, v12

    move/from16 v15, v18

    .line 44
    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 45
    iget v0, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 46
    iget v0, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v6

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 47
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 48
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delegateArea new = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/beizi/ad/lance/a/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iget v1, v8, Landroid/graphics/Rect;->right:I

    iget v2, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 52
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    iget v3, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    move-object/from16 v3, p3

    move-object/from16 v6, v19

    .line 53
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    add-int v6, v11, v5

    :goto_4
    move-object/from16 v5, v20

    goto :goto_5

    :cond_a
    move-object/from16 v5, v16

    .line 54
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    sub-int v6, v15, v11

    goto :goto_4

    :cond_b
    move-object/from16 v5, v20

    const/4 v6, 0x0

    .line 55
    :goto_5
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    add-int v3, v13, v4

    goto :goto_6

    :cond_c
    move-object/from16 v4, p4

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    sub-int v3, v10, v13

    goto :goto_6

    :cond_d
    const/4 v3, 0x0

    :goto_6
    if-eqz v6, :cond_e

    .line 57
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_e
    if-eqz v3, :cond_f

    .line 58
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 59
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",remainHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",fWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",remainWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/beizi/ad/lance/a/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 60
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v3, p1

    .line 61
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_10

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rootView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/beizi/ad/lance/a/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_10

    .line 65
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "marginLeft = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",marginTop = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",marginRight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",marginBottom = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/beizi/ad/lance/a/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4, v7, v14, v6, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 68
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fHeight = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/beizi/ad/lance/a/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-object v0

    :cond_11
    :goto_7
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4754e74e -> :sswitch_8
        -0x191ac544 -> :sswitch_7
        -0x9e78219 -> :sswitch_6
        0x14535 -> :sswitch_5
        0x239807 -> :sswitch_4
        0x4a5c9fc -> :sswitch_3
        0x5d0e5eb1 -> :sswitch_2
        0x75208e2b -> :sswitch_1
        0x7645c055 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static b(Landroid/content/Context;)I
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    const/16 p0, 0x780

    .line 19
    .line 20
    return p0
.end method

.method private static c(Landroid/content/Context;)I
    .locals 3

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "dimen"

    .line 12
    .line 13
    const-string v1, "android"

    .line 14
    .line 15
    const-string v2, "status_bar_height"

    .line 16
    .line 17
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "Status height:"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZisAd"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/ad/lance/a/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return p0

    .line 48
    :cond_0
    const/4 p0, 0x0

    .line 49
    return p0
.end method
