.class public Lcom/byazt/vd/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x62e,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/vd/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public static c(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)Lcom/byazt/vd/c;
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/pm/a$c;->tt()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/byazt/pm/uj;->c(Ljava/lang/String;)Lcom/byazt/pm/tt;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/byazt/pm/a$c;->c()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/byazt/pm/a$c;->c()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "global"

    .line 30
    .line 31
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    :cond_1
    invoke-virtual {p2}, Lcom/byazt/pm/a$c;->n()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/byazt/pm/uj;->c(Ljava/lang/String;)Lcom/byazt/pm/tt;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_2
    if-nez v0, :cond_3

    .line 46
    .line 47
    new-instance v0, Lcom/byazt/vd/ve;

    .line 48
    .line 49
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/vd/ve;-><init>(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_3
    invoke-virtual {v0, p0, p1, p2}, Lcom/byazt/pm/tt;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)Lcom/byazt/vd/c;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    new-instance v0, Lcom/byazt/vd/ve;

    .line 60
    .line 61
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/vd/ve;-><init>(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    return-object v0
.end method
