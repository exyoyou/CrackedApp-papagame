.class public final Lcom/byazt/hq/c$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x27c,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hq/c;->c(Lcom/byazt/hq/c$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/hq/c$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/hq/c$c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/byazt/hq/c$1;->c:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/hq/c$1;->tt:Lcom/byazt/hq/c$c;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/hq/c$1;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Lcom/byazt/hq/c;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/byazt/hq/c;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v0, "js_pform"

    .line 22
    .line 23
    invoke-static {v0}, Lcom/byazt/aas/eo;->c(Ljava/lang/String;)Lcom/byazt/iy/n;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/byazt/hq/c$1;->c:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/byazt/nr/a;->tt(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, ""

    .line 34
    .line 35
    invoke-interface {v0, v1, v2}, Lcom/byazt/iy/n;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/byazt/hq/c;->c:Ljava/lang/String;

    .line 40
    .line 41
    :cond_0
    sget-object v0, Lcom/byazt/hq/c;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/byazt/hq/c$1;->tt:Lcom/byazt/hq/c$c;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/byazt/hq/c$c;->run()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/byazt/hy/n;->tt()Lcom/byazt/hm/c;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/byazt/hm/c;->ve()Lcom/byazt/va/ve;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/byazt/hq/c$1;->c:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/byazt/va/uj;->c(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v2, "content-type"

    .line 80
    .line 81
    const-string v3, "application/json; charset=utf-8"

    .line 82
    .line 83
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/byazt/va/uj;->uj(Ljava/util/Map;)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Lcom/byazt/hq/c$1$1;

    .line 90
    .line 91
    invoke-direct {v1, p0}, Lcom/byazt/hq/c$1$1;-><init>(Lcom/byazt/hq/c$1;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/byazt/va/ve;->c(Lcom/byazt/mh/c;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
