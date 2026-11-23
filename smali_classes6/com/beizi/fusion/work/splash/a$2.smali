.class Lcom/beizi/fusion/work/splash/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/tool/an$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/splash/a;->aR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/work/splash/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/splash/a$2;->a:Lcom/beizi/fusion/work/splash/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1
    move-object v1, p0

    .line 2
    :try_start_0
    iget-object v0, v1, Lcom/beizi/fusion/work/splash/a$2;->a:Lcom/beizi/fusion/work/splash/a;

    .line 3
    .line 4
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->aB(Lcom/beizi/fusion/work/splash/a;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v1, Lcom/beizi/fusion/work/splash/a$2;->a:Lcom/beizi/fusion/work/splash/a;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->K(Lcom/beizi/fusion/work/splash/a;)Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, v1, Lcom/beizi/fusion/work/splash/a$2;->a:Lcom/beizi/fusion/work/splash/a;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/beizi/fusion/work/splash/a;->aC(Lcom/beizi/fusion/work/splash/a;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v0, v2, v3}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, v1, Lcom/beizi/fusion/work/splash/a$2;->a:Lcom/beizi/fusion/work/splash/a;

    .line 34
    .line 35
    const-string v2, "scroll"

    .line 36
    .line 37
    invoke-static {v0, v2}, Lcom/beizi/fusion/work/splash/a;->a(Lcom/beizi/fusion/work/splash/a;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    iget-object v0, v1, Lcom/beizi/fusion/work/splash/a$2;->a:Lcom/beizi/fusion/work/splash/a;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->aG(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v2, v1, Lcom/beizi/fusion/work/splash/a$2;->a:Lcom/beizi/fusion/work/splash/a;

    .line 47
    .line 48
    invoke-static {v2}, Lcom/beizi/fusion/work/splash/a;->aD(Lcom/beizi/fusion/work/splash/a;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v2}, Lcom/beizi/fusion/events/EventBean;->setClickType(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v1, Lcom/beizi/fusion/work/splash/a$2;->a:Lcom/beizi/fusion/work/splash/a;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/beizi/fusion/work/splash/a;->aH(Lcom/beizi/fusion/work/splash/a;)V

    .line 58
    .line 59
    .line 60
    const-string v0, "BeiZis"

    .line 61
    .line 62
    const-string v2, "enter onScrollSlideCallBack "

    .line 63
    .line 64
    invoke-static {v0, v2}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v3, v1, Lcom/beizi/fusion/work/splash/a$2;->a:Lcom/beizi/fusion/work/splash/a;

    .line 68
    .line 69
    const/4 v12, 0x1

    .line 70
    move-object v4, p1

    .line 71
    move-object v5, p2

    .line 72
    move-object/from16 v6, p3

    .line 73
    .line 74
    move-object/from16 v7, p4

    .line 75
    .line 76
    move-object/from16 v8, p5

    .line 77
    .line 78
    move-object/from16 v9, p6

    .line 79
    .line 80
    move-object/from16 v10, p7

    .line 81
    .line 82
    move-object/from16 v11, p8

    .line 83
    .line 84
    invoke-static/range {v3 .. v12}, Lcom/beizi/fusion/work/splash/a;->a(Lcom/beizi/fusion/work/splash/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method
