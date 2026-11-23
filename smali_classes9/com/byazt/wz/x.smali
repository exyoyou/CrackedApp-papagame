.class public Lcom/byazt/wz/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0x47
    }
.end annotation


# direct methods
.method private static a(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p2, p0}, Lcom/byazt/wz/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    .line 7
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/aas/n;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/byazt/ete/ic;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->u_()Lcom/byazt/ete/gt;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->by()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    return v0

    .line 3
    :cond_2
    invoke-static {p0}, Lcom/byazt/wz/x;->n(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 4
    :cond_3
    invoke-static {p0}, Lcom/byazt/ete/my;->u(Lcom/byazt/ete/ic;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public static c(Lcom/byazt/ete/ic;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->en()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->st()I

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->st()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 4
    invoke-static {p0}, Lcom/byazt/wz/x;->sp(Lcom/byazt/ete/ic;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->st()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    return v0

    :cond_3
    return v2

    :cond_4
    return v0
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/ete/uj;I)Landroid/widget/FrameLayout;
    .locals 20

    move-object/from16 v6, p0

    const/4 v0, 0x0

    if-nez v6, :cond_0

    return-object v0

    .line 39
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ete/ic;->rh()Lcom/byazt/ete/a;

    move-result-object v1

    .line 40
    invoke-static/range {p1 .. p1}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_1

    .line 41
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/uj;->c()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/uj;->ve()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/uj;->tt()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/uj;->a()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/uj;->x()Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/uj;->n()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    move-object v8, v5

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {v1}, Lcom/byazt/ete/a;->yp()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v1}, Lcom/byazt/ete/a;->sp()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {v1}, Lcom/byazt/ete/a;->n()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-virtual {v1}, Lcom/byazt/ete/a;->sl()Ljava/lang/String;

    move-result-object v1

    move-object v8, v0

    move-object v9, v8

    move-object/from16 v19, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, v19

    goto :goto_0

    :cond_2
    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v8, v4

    move-object v9, v8

    .line 51
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v0, "#99FFFFFF"

    .line 52
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "\u70b9\u51fb"

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x8

    move/from16 v12, p3

    if-ne v12, v11, :cond_4

    const-string v11, "\u4e0b"

    goto :goto_1

    :cond_4
    const-string v11, "\u4e0a"

    :goto_1
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\u65b9\u6309\u94ae \u7acb\u5373\u4e0b\u8f7d\u5e94\u7528"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\u5e94\u7528\u540d\u79f0\uff1a"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   |   \u5f00\u53d1\u8005\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "  |  \u529f\u80fd  |  \u6743\u9650  |  \u9690\u79c1  "

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v1, "  |  \u529f\u80fd  |  \u6743\u9650  |  \u9690\u79c1  |  \u5907\u6848  "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :goto_2
    new-instance v11, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\u529f\u80fd"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v13, v12, 0x2

    const-string v1, "\u9690\u79c1"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v15, v14, 0x2

    const-string v1, "\u6743\u9650"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v3, v5, 0x2

    .line 63
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x1

    const/16 v2, 0x22

    if-nez v1, :cond_6

    const-string v1, "\u5907\u6848"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x2

    move/from16 p2, v3

    .line 65
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 66
    invoke-virtual {v11, v3, v1, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 67
    new-instance v3, Lcom/byazt/wz/x$2;

    move v6, v0

    move-object v0, v3

    move/from16 p3, v14

    move v14, v1

    move-object/from16 v1, p1

    move/from16 v16, v15

    const/16 v15, 0x22

    move-object v2, v8

    move/from16 v17, p2

    move-object/from16 p2, v8

    move-object v8, v3

    move-object/from16 v3, p0

    move-object v4, v7

    move/from16 v18, v5

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/byazt/wz/x$2;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v11, v8, v14, v6, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_6
    move/from16 v17, v3

    move/from16 v18, v5

    move-object/from16 p2, v8

    move/from16 p3, v14

    move/from16 v16, v15

    const/16 v15, 0x22

    .line 68
    :goto_3
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 69
    invoke-virtual {v11, v0, v12, v13, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 70
    new-instance v8, Lcom/byazt/wz/x$3;

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v3, p0

    move-object v4, v7

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/byazt/wz/x$3;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v11, v8, v12, v13, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 71
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    move/from16 v8, p3

    move/from16 v14, v16

    .line 72
    invoke-virtual {v11, v0, v8, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 73
    new-instance v9, Lcom/byazt/wz/x$4;

    move-object v0, v9

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/byazt/wz/x$4;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v11, v9, v8, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 74
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    move/from16 v9, v17

    move/from16 v8, v18

    .line 75
    invoke-virtual {v11, v0, v8, v9, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 76
    new-instance v12, Lcom/byazt/wz/x$5;

    move-object v0, v12

    invoke-direct/range {v0 .. v5}, Lcom/byazt/wz/x$5;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v11, v12, v8, v9, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 77
    new-instance v0, Landroid/widget/TextView;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 80
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 81
    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v1, 0x41100000    # 9.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 82
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 83
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x0

    .line 85
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 86
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 87
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 88
    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2

    :cond_7
    :goto_4
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/byazt/ete/a;
    .locals 2

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 30
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 31
    :catch_0
    invoke-static {v1}, Lcom/byazt/omf/c;->n(Lorg/json/JSONObject;)Lcom/byazt/ete/a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 6
    invoke-static {p0}, Lcom/byazt/ete/gt;->yp(Lcom/byazt/ete/ic;)I

    move-result v0

    .line 7
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/byazt/omf/x;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-lez v0, :cond_0

    .line 9
    invoke-static {p1}, Lcom/byazt/nr/a;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 12
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "message"

    const-string v0, "download_url is null"

    .line 13
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_1

    const-string p2, "reqId"

    .line 14
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "cid"

    .line 15
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "rit"

    const-string v0, ""

    .line 16
    invoke-static {p0, v0}, Lcom/byazt/aas/nb;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    :cond_1
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p0

    const-string p2, "dl_download_url_empty"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method

.method public static c(ILorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 32
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->yf()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz v0, :cond_1

    const-string v2, "resume_download_max_count"

    .line 33
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    :cond_1
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_2

    const-string v0, "failed_resume_max_count"

    .line 34
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_3

    const-string v0, "paused_resume_max_count"

    .line 35
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "enable_notification_ui"

    const/4 v2, 0x2

    .line 36
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_4

    const-string v0, "uninstall_resume_max_count"

    .line 37
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_5

    const-string p0, "install_queue_enable"

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/byazt/ete/ic;)V
    .locals 9

    .line 89
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x2

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "downloadstatuscontroller_type"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p1}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v3

    .line 92
    new-instance v0, Lcom/byazt/ete/i$c;

    invoke-direct {v0}, Lcom/byazt/ete/i$c;-><init>()V

    .line 93
    invoke-static {p0}, Lcom/byazt/aas/pf;->a(Landroid/content/Context;)F

    move-result v1

    const-string v2, "device_info_new"

    .line 94
    invoke-static {v2}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/dna/u;

    .line 95
    invoke-interface {v2}, Lcom/byazt/dna/u;->getDisplayDpi()I

    move-result v2

    .line 96
    invoke-static {p0}, Lcom/byazt/aas/pf;->sp(Landroid/content/Context;)F

    move-result p0

    .line 97
    invoke-virtual {v0, v1}, Lcom/byazt/ete/i$c;->c(F)Lcom/byazt/ete/i$c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/byazt/ete/i$c;->tt(I)Lcom/byazt/ete/i$c;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/byazt/ete/i$c;->c(B)Lcom/byazt/ete/i$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/ete/i$c;->tt(F)Lcom/byazt/ete/i$c;

    move-result-object p0

    invoke-static {p1}, Lcom/byazt/wz/x;->tt(Lcom/byazt/ete/ic;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/i$c;->c(I)Lcom/byazt/ete/i$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/ete/i$c;->c()Lcom/byazt/ete/i;

    move-result-object v2

    const-string v0, "click"

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 98
    invoke-static/range {v0 .. v8}, Lcom/byazt/ddx/uj;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Lcom/byazt/ete/i;Ljava/lang/String;ZLjava/util/Map;IZZ)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 19
    :goto_0
    invoke-static {p1, p2}, Lcom/byazt/wz/x;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_1

    const-string p1, "\u5e94\u7528\u4fe1\u606f\u7f3a\u5931\uff0c\u6682\u65e0\u6cd5\u54cd\u5e94\u4e0b\u8f7d"

    const/4 p2, 0x1

    .line 21
    invoke-static {p0, p1, p2}, Lcom/byazt/nr/h;->c(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 22
    :cond_1
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/byazt/wz/x$1;

    const-string v0, "tt_download_toast"

    invoke-direct {p2, v0, p0}, Lcom/byazt/wz/x$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "reqId"

    .line 24
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cid"

    .line 25
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adId"

    .line 26
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->gu()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "dlscene"

    .line 27
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p0

    const-string p1, "download_no_response"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 99
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {p2, p0}, Lcom/byazt/wz/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    .line 101
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/aas/n;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static n(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p2, p0}, Lcom/byazt/wz/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    .line 7
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/aas/n;->ve(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static n(Lcom/byazt/ete/ic;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->u_()Lcom/byazt/ete/gt;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {v1}, Lcom/byazt/ete/gt;->ve()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->by()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    return v0

    .line 4
    :cond_3
    invoke-static {p0}, Lcom/byazt/wz/x;->uj(Lcom/byazt/ete/ic;)Z

    move-result p0

    return p0
.end method

.method private static sp(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/byazt/wz/x;->x(Lcom/byazt/ete/ic;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static tt(Lcom/byazt/ete/ic;)I
    .locals 4

    const/high16 v0, -0x80000000

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byazt/zz/ve;->zm()Lcom/byazt/zz/da;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 4
    invoke-static {p0, v2, v3}, Lcom/byazt/wz/x;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {v2, p0}, Lcom/byazt/zz/ve;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 6
    invoke-interface {v1, p0}, Lcom/byazt/zz/da;->tt(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p0

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/byazt/aas/nb;->p(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-interface {v1}, Lcom/byazt/zz/da;->tt()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/t/DownloadInfo;

    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object p0, v2

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_6

    return v0

    .line 11
    :cond_6
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v1

    .line 12
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getStatusAtDbInit()I

    .line 13
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getRealStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 14
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v1

    const-string v2, "createAdDownloadModel"

    invoke-virtual {v1, v2, p0}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static tt(Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 4

    .line 18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "message"

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "meta is null"

    .line 19
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->u_()Lcom/byazt/ete/gt;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "download_conf is null"

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 22
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 23
    invoke-virtual {v2, v3}, Lcom/byazt/ete/gt;->c(Lorg/json/JSONObject;)V

    .line 24
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v1, "req_id"

    .line 25
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cid"

    .line 26
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rit"

    const-string v2, ""

    .line 27
    invoke-static {p0, v2}, Lcom/byazt/aas/nb;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string p0, "dl_type"

    .line 28
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :catch_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p0

    const-string p1, "download_no_suspend"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 15
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p2, p0}, Lcom/byazt/wz/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    .line 17
    invoke-static {p2, p1, p0, p3}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic uj(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/wz/x;->n(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static uj(Lcom/byazt/ete/ic;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->gy()Lcom/byazt/ete/pu;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    return v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->by()I

    move-result v1

    if-eq v1, v2, :cond_3

    return v0

    .line 5
    :cond_3
    invoke-static {p0}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result p0

    if-eq p0, v2, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x5

    if-eq p0, v1, :cond_4

    const/4 v1, 0x6

    if-eq p0, v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public static ve(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->an()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->an()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->op()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->op()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->ls()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->ls()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static synthetic ve(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/wz/x;->a(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static x(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->rh()Lcom/byazt/ete/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/a;->yp()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ete/a;->n()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    return v0

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/ete/a;->sp()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    return v0

    .line 42
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/ete/a;->c()Ljava/util/HashMap;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_4

    .line 47
    .line 48
    return v0

    .line 49
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/ete/a;->c()Ljava/util/HashMap;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-gtz v1, :cond_5

    .line 58
    .line 59
    return v0

    .line 60
    :cond_5
    invoke-virtual {p0}, Lcom/byazt/ete/a;->x()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    return v0

    .line 71
    :cond_6
    invoke-virtual {p0}, Lcom/byazt/ete/a;->i()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_7

    .line 80
    .line 81
    return v0

    .line 82
    :cond_7
    const/4 p0, 0x1

    .line 83
    return p0
.end method
