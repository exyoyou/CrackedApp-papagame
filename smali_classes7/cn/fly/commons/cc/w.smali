.class final Lcn/fly/commons/cc/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;I)Ljava/lang/RuntimeException;
    .locals 3

    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad oper at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Lcn/fly/commons/cc/u$b;ILjava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    .line 3
    :pswitch_0
    invoke-static {p2, p3}, Lcn/fly/commons/cc/w;->a(Ljava/lang/String;I)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_1
    const/16 v3, 0x25

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    .line 4
    invoke-static/range {v0 .. v5}, Lcn/fly/commons/cc/w;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/Object;CLjava/lang/String;I)V

    goto/16 :goto_0

    .line 5
    :pswitch_2
    invoke-static {p0, v1, v2, p2, p3}, Lcn/fly/commons/cc/w;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 6
    :pswitch_3
    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_4
    if-nez v1, :cond_1

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 7
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 8
    :cond_1
    instance-of p1, v1, Ljava/lang/Number;

    if-eqz p1, :cond_3

    instance-of p1, v2, Ljava/lang/Number;

    if-eqz p1, :cond_3

    .line 9
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    cmpl-double p3, p1, v1

    if-nez p3, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 10
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 11
    :pswitch_5
    invoke-static {v1, v2, p2, p3}, Lcn/fly/commons/cc/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_6
    if-nez v1, :cond_5

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    .line 12
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 13
    :cond_5
    instance-of p1, v1, Ljava/lang/Number;

    if-eqz p1, :cond_7

    instance-of p1, v2, Ljava/lang/Number;

    if-eqz p1, :cond_7

    .line 14
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    cmpl-double p3, p1, v1

    if-eqz p3, :cond_6

    const/4 v0, 0x1

    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 15
    :cond_7
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 16
    :pswitch_7
    invoke-static {p0, v1, v2}, Lcn/fly/commons/cc/w;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 17
    :pswitch_8
    instance-of p1, v1, Ljava/lang/Number;

    if-eqz p1, :cond_9

    instance-of p1, v2, Ljava/lang/Number;

    if-eqz p1, :cond_9

    .line 18
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    cmpg-double p3, p1, v1

    if-gez p3, :cond_8

    const/4 v0, 0x1

    :cond_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 19
    :cond_9
    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_a

    const/4 v0, 0x1

    :cond_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_9
    const/16 v3, 0x2d

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    .line 20
    invoke-static/range {v0 .. v5}, Lcn/fly/commons/cc/w;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/Object;CLjava/lang/String;I)V

    goto/16 :goto_0

    .line 21
    :pswitch_a
    instance-of p1, v1, Ljava/lang/Number;

    if-eqz p1, :cond_c

    instance-of p1, v2, Ljava/lang/Number;

    if-eqz p1, :cond_c

    .line 22
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    cmpl-double p3, p1, v1

    if-lez p3, :cond_b

    const/4 v0, 0x1

    :cond_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 23
    :cond_c
    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_d

    const/4 v0, 0x1

    :cond_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_b
    const/16 v3, 0x2a

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    .line 24
    invoke-static/range {v0 .. v5}, Lcn/fly/commons/cc/w;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/Object;CLjava/lang/String;I)V

    goto/16 :goto_0

    .line 25
    :pswitch_c
    instance-of p1, v1, Ljava/lang/Number;

    if-eqz p1, :cond_f

    instance-of p1, v2, Ljava/lang/Number;

    if-eqz p1, :cond_f

    .line 26
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    cmpg-double p3, p1, v1

    if-gtz p3, :cond_e

    const/4 v0, 0x1

    :cond_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 27
    :cond_f
    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_d
    const/16 v3, 0x2f

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    .line 28
    invoke-static/range {v0 .. v5}, Lcn/fly/commons/cc/w;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/Object;CLjava/lang/String;I)V

    goto :goto_0

    .line 29
    :pswitch_e
    instance-of p1, v1, Ljava/lang/Number;

    if-eqz p1, :cond_12

    instance-of p1, v2, Ljava/lang/Number;

    if-eqz p1, :cond_12

    .line 30
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    cmpl-double p3, p1, v1

    if-ltz p3, :cond_11

    const/4 v0, 0x1

    :cond_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 31
    :cond_12
    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_13

    const/4 v0, 0x1

    :cond_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lcn/fly/commons/cc/u$b;Ljava/lang/Number;Ljava/lang/Number;C)V
    .locals 7

    .line 127
    instance-of v0, p1, Ljava/lang/Double;

    const/16 v1, 0x2f

    const/16 v2, 0x2a

    const/16 v3, 0x2d

    const/16 v4, 0x2b

    if-nez v0, :cond_1d

    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_0

    goto/16 :goto_9

    .line 128
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_18

    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_1

    goto/16 :goto_7

    .line 129
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_13

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_2

    goto/16 :goto_5

    .line 130
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_e

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    goto :goto_3

    .line 131
    :cond_3
    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_9

    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_4

    goto :goto_1

    .line 132
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    .line 133
    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result p2

    if-ne p3, v4, :cond_5

    add-int/2addr p1, p2

    goto :goto_0

    :cond_5
    if-ne p3, v3, :cond_6

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_6
    if-ne p3, v2, :cond_7

    mul-int p1, p1, p2

    goto :goto_0

    :cond_7
    if-ne p3, v1, :cond_8

    .line 134
    div-int/2addr p1, p2

    goto :goto_0

    :cond_8
    rem-int/2addr p1, p2

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 135
    :cond_9
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    .line 136
    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    move-result p2

    if-ne p3, v4, :cond_a

    add-int/2addr p1, p2

    goto :goto_2

    :cond_a
    if-ne p3, v3, :cond_b

    sub-int/2addr p1, p2

    goto :goto_2

    :cond_b
    if-ne p3, v2, :cond_c

    mul-int p1, p1, p2

    goto :goto_2

    :cond_c
    if-ne p3, v1, :cond_d

    .line 137
    div-int/2addr p1, p2

    goto :goto_2

    :cond_d
    rem-int/2addr p1, p2

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 138
    :cond_e
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 139
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-ne p3, v4, :cond_f

    add-int/2addr p1, p2

    goto :goto_4

    :cond_f
    if-ne p3, v3, :cond_10

    sub-int/2addr p1, p2

    goto :goto_4

    :cond_10
    if-ne p3, v2, :cond_11

    mul-int p1, p1, p2

    goto :goto_4

    :cond_11
    if-ne p3, v1, :cond_12

    .line 140
    div-int/2addr p1, p2

    goto :goto_4

    :cond_12
    rem-int/2addr p1, p2

    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 141
    :cond_13
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 142
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    if-ne p3, v4, :cond_14

    add-long/2addr v5, p1

    goto :goto_6

    :cond_14
    if-ne p3, v3, :cond_15

    sub-long/2addr v5, p1

    goto :goto_6

    :cond_15
    if-ne p3, v2, :cond_16

    mul-long v5, v5, p1

    goto :goto_6

    :cond_16
    if-ne p3, v1, :cond_17

    .line 143
    div-long/2addr v5, p1

    goto :goto_6

    :cond_17
    rem-long/2addr v5, p1

    :goto_6
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto :goto_b

    .line 144
    :cond_18
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 145
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    if-ne p3, v4, :cond_19

    add-float/2addr p1, p2

    goto :goto_8

    :cond_19
    if-ne p3, v3, :cond_1a

    sub-float/2addr p1, p2

    goto :goto_8

    :cond_1a
    if-ne p3, v2, :cond_1b

    mul-float p1, p1, p2

    goto :goto_8

    :cond_1b
    if-ne p3, v1, :cond_1c

    div-float/2addr p1, p2

    goto :goto_8

    :cond_1c
    rem-float/2addr p1, p2

    .line 146
    :goto_8
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto :goto_b

    .line 147
    :cond_1d
    :goto_9
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    .line 148
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    if-ne p3, v4, :cond_1e

    add-double/2addr v5, p1

    goto :goto_a

    :cond_1e
    if-ne p3, v3, :cond_1f

    sub-double/2addr v5, p1

    goto :goto_a

    :cond_1f
    if-ne p3, v2, :cond_20

    mul-double v5, v5, p1

    goto :goto_a

    :cond_20
    if-ne p3, v1, :cond_21

    div-double/2addr v5, p1

    goto :goto_a

    :cond_21
    rem-double/2addr v5, p1

    .line 149
    :goto_a
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    :goto_b
    return-void
.end method

.method private static a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "null"

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v0

    .line 120
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 121
    check-cast p1, Ljava/lang/Number;

    check-cast p2, Ljava/lang/Number;

    const/16 v0, 0x2b

    invoke-static {p0, p1, p2, v0}, Lcn/fly/commons/cc/w;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/Number;Ljava/lang/Number;C)V

    goto :goto_0

    .line 122
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/Object;CLjava/lang/String;I)V
    .locals 1

    .line 123
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 124
    check-cast p1, Ljava/lang/Number;

    check-cast p2, Ljava/lang/Number;

    invoke-static {p0, p1, p2, p3}, Lcn/fly/commons/cc/w;->a(Lcn/fly/commons/cc/u$b;Ljava/lang/Number;Ljava/lang/Number;C)V

    return-void

    .line 125
    :cond_0
    invoke-static {p4, p5}, Lcn/fly/commons/cc/w;->a(Ljava/lang/String;I)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcn/fly/commons/cc/u$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 1

    .line 32
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 34
    :cond_1
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "."

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 37
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 38
    :catchall_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 39
    :catchall_1
    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_2
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 41
    :catchall_2
    :try_start_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    .line 42
    :catchall_3
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object p1, p2

    .line 43
    :goto_2
    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 44
    :cond_3
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_a

    .line 45
    :cond_4
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_9

    .line 46
    :cond_5
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_8

    .line 47
    :cond_6
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_7

    .line 48
    :cond_7
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_6

    .line 49
    :cond_8
    const-class v0, Ljava/lang/Character;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_5

    .line 50
    :cond_9
    const-class p3, Ljava/lang/Byte;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_13

    sget-object p3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    goto/16 :goto_4

    .line 51
    :cond_a
    const-class p3, Ljava/lang/Boolean;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    if-nez p1, :cond_b

    .line 52
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 53
    :cond_b
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_d

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmpl-double v0, p1, p3

    if-nez v0, :cond_c

    const/4 p1, 0x1

    goto :goto_3

    :cond_c
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 55
    :cond_d
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_e

    .line 56
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "004hAcicfPe"

    invoke-static {p2}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 57
    :cond_e
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_f

    .line 58
    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 59
    :cond_f
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 60
    :cond_10
    const-class p3, Ljava/math/BigInteger;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 61
    new-instance p2, Ljava/math/BigInteger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 62
    :cond_11
    const-class p3, Ljava/math/BigDecimal;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 63
    new-instance p2, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 64
    :cond_12
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 65
    :cond_13
    :goto_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 66
    :cond_14
    :goto_5
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_15

    .line 67
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 68
    :cond_15
    instance-of p2, p1, Ljava/lang/Long;

    if-eqz p2, :cond_16

    .line 69
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    long-to-int p2, p1

    int-to-char p1, p2

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 70
    :cond_16
    instance-of p2, p1, Ljava/lang/Short;

    if-eqz p2, :cond_17

    .line 71
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 72
    :cond_17
    instance-of p2, p1, Ljava/lang/Byte;

    if-eqz p2, :cond_18

    .line 73
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 74
    :cond_18
    instance-of p2, p1, Ljava/lang/Double;

    if-eqz p2, :cond_19

    .line 75
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    double-to-int p1, p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 76
    :cond_19
    instance-of p2, p1, Ljava/lang/Float;

    if-eqz p2, :cond_1a

    .line 77
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto :goto_b

    .line 78
    :cond_1a
    invoke-static {p3, p4}, Lcn/fly/commons/cc/w;->a(Ljava/lang/String;I)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 79
    :cond_1b
    :goto_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto :goto_b

    .line 80
    :cond_1c
    :goto_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto :goto_b

    .line 81
    :cond_1d
    :goto_8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto :goto_b

    .line 82
    :cond_1e
    :goto_9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    goto :goto_b

    .line 83
    :cond_1f
    :goto_a
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    :goto_b
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 84
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 85
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_0

    .line 86
    check-cast p0, Ljava/util/Collection;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 87
    :cond_0
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 88
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 89
    check-cast p0, Ljava/util/Map;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_4

    .line 90
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 91
    new-instance v0, Ljava/io/ByteArrayInputStream;

    check-cast p1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 92
    :cond_3
    instance-of v0, p1, [B

    if-eqz v0, :cond_4

    .line 93
    new-instance v0, Ljava/io/ByteArrayInputStream;

    check-cast p1, [B

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 94
    :cond_4
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_5

    .line 95
    new-instance v0, Ljava/io/FileInputStream;

    check-cast p1, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 96
    :cond_5
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_6

    .line 97
    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    const/4 p1, 0x0

    goto :goto_1

    .line 98
    :cond_6
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_c

    .line 99
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 100
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 101
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 103
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 104
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, p1

    goto :goto_0

    .line 105
    :goto_1
    instance-of v3, p0, Ljava/io/File;

    if-eqz v3, :cond_8

    .line 106
    check-cast p0, Ljava/io/File;

    .line 107
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_7

    .line 108
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 109
    :cond_7
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    goto :goto_2

    .line 110
    :cond_8
    instance-of p1, p0, Ljava/io/OutputStream;

    if-eqz p1, :cond_b

    .line 111
    move-object p2, p0

    check-cast p2, Ljava/io/OutputStream;

    const/4 p1, 0x0

    :goto_2
    const/16 p0, 0x400

    new-array p0, p0, [B

    .line 112
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result p3

    :goto_3
    const/4 v1, -0x1

    if-eq p3, v1, :cond_9

    .line 113
    invoke-virtual {p2, p0, v2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 114
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result p3

    goto :goto_3

    .line 115
    :cond_9
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz p1, :cond_a

    .line 116
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 117
    :cond_a
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :goto_4
    return-void

    .line 118
    :cond_b
    invoke-static {p2, p3}, Lcn/fly/commons/cc/w;->a(Ljava/lang/String;I)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 119
    :cond_c
    invoke-static {p2, p3}, Lcn/fly/commons/cc/w;->a(Ljava/lang/String;I)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static b(Lcn/fly/commons/cc/u$b;ILjava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/fly/commons/cc/u$b;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    xor-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcn/fly/commons/cc/u$b;->a(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {p2, p3}, Lcn/fly/commons/cc/w;->a(Ljava/lang/String;I)Ljava/lang/RuntimeException;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    throw p0
.end method
