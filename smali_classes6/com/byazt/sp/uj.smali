.class public Lcom/byazt/sp/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5b,
        0xf
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/dv/tt;Lcom/byazt/db/tt;)Lcom/byazt/db/c;
    .locals 1

    if-eqz p0, :cond_7

    .line 1
    invoke-virtual {p0}, Lcom/byazt/dv/tt;->z()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/byazt/dv/tt;->yv()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 p0, 0x1

    if-ne v0, p0, :cond_0

    .line 3
    new-instance p0, Lcom/byazt/nm/sp;

    invoke-direct {p0, p1}, Lcom/byazt/nm/sp;-><init>(Lcom/byazt/db/tt;)V

    return-object p0

    :cond_0
    const/4 p0, 0x2

    if-ne v0, p0, :cond_7

    .line 4
    new-instance p0, Lcom/byazt/nm/a;

    invoke-direct {p0, p1}, Lcom/byazt/nm/a;-><init>(Lcom/byazt/db/tt;)V

    return-object p0

    .line 5
    :pswitch_2
    new-instance p0, Lcom/byazt/nm/n;

    invoke-direct {p0, p1}, Lcom/byazt/nm/n;-><init>(Lcom/byazt/db/tt;)V

    return-object p0

    .line 6
    :pswitch_3
    new-instance p0, Lcom/byazt/nm/a;

    invoke-direct {p0, p1}, Lcom/byazt/nm/a;-><init>(Lcom/byazt/db/tt;)V

    return-object p0

    :pswitch_4
    const/4 p0, 0x6

    if-ne v0, p0, :cond_1

    .line 7
    new-instance p0, Lcom/byazt/nm/sl;

    invoke-direct {p0, p1}, Lcom/byazt/nm/sl;-><init>(Lcom/byazt/db/tt;)V

    return-object p0

    :cond_1
    const/4 p0, 0x7

    if-ne v0, p0, :cond_2

    .line 8
    new-instance p0, Lcom/byazt/nm/a;

    invoke-direct {p0, p1}, Lcom/byazt/nm/a;-><init>(Lcom/byazt/db/tt;)V

    return-object p0

    :cond_2
    const/16 p0, 0x8

    if-ne v0, p0, :cond_3

    .line 9
    new-instance p0, Lcom/byazt/nm/sp;

    invoke-direct {p0, p1}, Lcom/byazt/nm/sp;-><init>(Lcom/byazt/db/tt;)V

    return-object p0

    .line 10
    :cond_3
    new-instance p0, Lcom/byazt/nm/sl;

    invoke-direct {p0, p1}, Lcom/byazt/nm/sl;-><init>(Lcom/byazt/db/tt;)V

    return-object p0

    :pswitch_5
    const/4 p0, 0x4

    if-ne v0, p0, :cond_4

    .line 11
    new-instance p0, Lcom/byazt/nm/da;

    invoke-direct {p0, p1}, Lcom/byazt/nm/da;-><init>(Lcom/byazt/db/tt;)V

    return-object p0

    :cond_4
    const/4 p0, 0x5

    if-ne v0, p0, :cond_5

    .line 12
    new-instance p0, Lcom/byazt/nm/n;

    invoke-direct {p0, p1}, Lcom/byazt/nm/n;-><init>(Lcom/byazt/db/tt;)V

    return-object p0

    :cond_5
    const/4 p0, 0x3

    if-ne v0, p0, :cond_6

    .line 13
    new-instance p0, Lcom/byazt/nm/c;

    invoke-direct {p0, p1}, Lcom/byazt/nm/c;-><init>(Lcom/byazt/db/tt;)V

    return-object p0

    .line 14
    :cond_6
    new-instance p0, Lcom/byazt/nm/da;

    invoke-direct {p0, p1}, Lcom/byazt/nm/da;-><init>(Lcom/byazt/db/tt;)V

    return-object p0

    .line 15
    :pswitch_6
    new-instance p0, Lcom/byazt/nm/t;

    invoke-direct {p0, p1}, Lcom/byazt/nm/t;-><init>(Lcom/byazt/db/tt;)V

    return-object p0

    .line 16
    :pswitch_7
    new-instance p0, Lcom/byazt/nm/sp;

    invoke-direct {p0, p1}, Lcom/byazt/nm/sp;-><init>(Lcom/byazt/db/tt;)V

    return-object p0

    .line 17
    :pswitch_8
    new-instance p0, Lcom/byazt/nm/c;

    invoke-direct {p0, p1}, Lcom/byazt/nm/c;-><init>(Lcom/byazt/db/tt;)V

    return-object p0

    :cond_7
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;Lcom/byazt/dv/tt;Lcom/byazt/db/tt;)Lcom/byazt/db/c;
    .locals 1

    if-eqz p1, :cond_7

    .line 18
    invoke-virtual {p1}, Lcom/byazt/dv/tt;->z()I

    move-result v0

    .line 19
    invoke-virtual {p1}, Lcom/byazt/dv/tt;->yv()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    if-ne v0, p1, :cond_0

    .line 20
    new-instance p1, Lcom/byazt/wn/a;

    invoke-direct {p1, p0, p2}, Lcom/byazt/wn/a;-><init>(Ljava/lang/String;Lcom/byazt/db/tt;)V

    return-object p1

    :cond_0
    const/4 p1, 0x2

    if-ne v0, p1, :cond_7

    .line 21
    new-instance p1, Lcom/byazt/wn/n;

    invoke-direct {p1, p0, p2}, Lcom/byazt/wn/n;-><init>(Ljava/lang/String;Lcom/byazt/db/tt;)V

    return-object p1

    .line 22
    :pswitch_2
    new-instance p1, Lcom/byazt/wn/ve;

    invoke-direct {p1, p0, p2}, Lcom/byazt/wn/ve;-><init>(Ljava/lang/String;Lcom/byazt/db/tt;)V

    return-object p1

    .line 23
    :pswitch_3
    new-instance p1, Lcom/byazt/wn/n;

    invoke-direct {p1, p0, p2}, Lcom/byazt/wn/n;-><init>(Ljava/lang/String;Lcom/byazt/db/tt;)V

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    if-ne v0, p1, :cond_1

    .line 24
    new-instance p1, Lcom/byazt/wn/sp;

    invoke-direct {p1, p0, p2}, Lcom/byazt/wn/sp;-><init>(Ljava/lang/String;Lcom/byazt/db/tt;)V

    return-object p1

    :cond_1
    const/4 p1, 0x7

    if-ne v0, p1, :cond_2

    .line 25
    new-instance p1, Lcom/byazt/wn/n;

    invoke-direct {p1, p0, p2}, Lcom/byazt/wn/n;-><init>(Ljava/lang/String;Lcom/byazt/db/tt;)V

    return-object p1

    :cond_2
    const/16 p1, 0x8

    if-ne v0, p1, :cond_3

    .line 26
    new-instance p1, Lcom/byazt/wn/a;

    invoke-direct {p1, p0, p2}, Lcom/byazt/wn/a;-><init>(Ljava/lang/String;Lcom/byazt/db/tt;)V

    return-object p1

    .line 27
    :cond_3
    new-instance p1, Lcom/byazt/wn/sp;

    invoke-direct {p1, p0, p2}, Lcom/byazt/wn/sp;-><init>(Ljava/lang/String;Lcom/byazt/db/tt;)V

    return-object p1

    :pswitch_5
    const/4 p1, 0x4

    if-ne v0, p1, :cond_4

    .line 28
    new-instance p1, Lcom/byazt/wn/uj;

    invoke-direct {p1, p0, p2}, Lcom/byazt/wn/uj;-><init>(Ljava/lang/String;Lcom/byazt/db/tt;)V

    return-object p1

    :cond_4
    const/4 p1, 0x5

    if-ne v0, p1, :cond_5

    .line 29
    new-instance p1, Lcom/byazt/wn/ve;

    invoke-direct {p1, p0, p2}, Lcom/byazt/wn/ve;-><init>(Ljava/lang/String;Lcom/byazt/db/tt;)V

    return-object p1

    :cond_5
    const/4 p1, 0x3

    if-ne v0, p1, :cond_6

    .line 30
    new-instance p1, Lcom/byazt/wn/c;

    invoke-direct {p1, p0, p2}, Lcom/byazt/wn/c;-><init>(Ljava/lang/String;Lcom/byazt/db/tt;)V

    return-object p1

    .line 31
    :cond_6
    new-instance p1, Lcom/byazt/wn/uj;

    invoke-direct {p1, p0, p2}, Lcom/byazt/wn/uj;-><init>(Ljava/lang/String;Lcom/byazt/db/tt;)V

    return-object p1

    .line 32
    :pswitch_6
    new-instance p1, Lcom/byazt/wn/x;

    invoke-direct {p1, p0, p2}, Lcom/byazt/wn/x;-><init>(Ljava/lang/String;Lcom/byazt/db/tt;)V

    return-object p1

    .line 33
    :pswitch_7
    new-instance p1, Lcom/byazt/wn/a;

    invoke-direct {p1, p0, p2}, Lcom/byazt/wn/a;-><init>(Ljava/lang/String;Lcom/byazt/db/tt;)V

    return-object p1

    .line 34
    :pswitch_8
    new-instance p1, Lcom/byazt/wn/c;

    invoke-direct {p1, p0, p2}, Lcom/byazt/wn/c;-><init>(Ljava/lang/String;Lcom/byazt/db/tt;)V

    return-object p1

    :cond_7
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
