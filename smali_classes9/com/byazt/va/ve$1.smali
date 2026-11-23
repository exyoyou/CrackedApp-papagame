.class public Lcom/byazt/va/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gqp/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x74,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/va/ve;->c(Lcom/byazt/mh/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/mh/c;

.field public final synthetic tt:Lcom/byazt/va/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/va/ve;Lcom/byazt/mh/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/va/ve$1;->tt:Lcom/byazt/va/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/va/ve$1;->c:Lcom/byazt/mh/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Lcom/byazt/gqp/tt;Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/va/ve$1;->c:Lcom/byazt/mh/c;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/va/ve$1;->tt:Lcom/byazt/va/ve;

    .line 6
    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/byazt/gqp/tt;Lcom/byazt/gqp/m;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/byazt/va/ve$1;->c:Lcom/byazt/mh/c;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    new-instance v4, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_2

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->sp()Lcom/byazt/gqp/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/gqp/a;->c()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ge v0, v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/byazt/gqp/a;->c(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v0}, Lcom/byazt/gqp/a;->tt(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    const-string p1, ""

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/gqp/nu;->tt()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_1
    move-object v5, p1

    .line 53
    new-instance p1, Lcom/byazt/hm/tt;

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->uj()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->ve()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->n()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->tt()J

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->c()J

    .line 72
    .line 73
    .line 74
    move-result-wide v8

    .line 75
    move-object v0, p1

    .line 76
    invoke-direct/range {v0 .. v9}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Lcom/byazt/va/ve$1;->c:Lcom/byazt/mh/c;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/byazt/va/ve$1;->tt:Lcom/byazt/va/ve;

    .line 82
    .line 83
    invoke-virtual {p2, v0, p1}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void
.end method
