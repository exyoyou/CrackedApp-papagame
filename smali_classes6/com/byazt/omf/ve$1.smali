.class public Lcom/byazt/omf/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/ve;->init(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/fb/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic c:Lcom/byazt/omf/qy;

.field public final synthetic da:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

.field public final synthetic i:I

.field public final synthetic n:J

.field public final synthetic sl:Lcom/byazt/omf/ve;

.field public final synthetic sp:J

.field public final synthetic tt:Landroid/content/Context;

.field public final synthetic uj:Lcom/byazt/fb/ve;

.field public final synthetic ve:Lcom/byazt/dj/c;

.field public final synthetic x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/ve;Lcom/byazt/omf/qy;Landroid/content/Context;Lcom/byazt/dj/c;Lcom/byazt/fb/ve;JJJLjava/lang/String;ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/ve$1;->sl:Lcom/byazt/omf/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/omf/ve$1;->c:Lcom/byazt/omf/qy;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/omf/ve$1;->tt:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/omf/ve$1;->ve:Lcom/byazt/dj/c;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/omf/ve$1;->uj:Lcom/byazt/fb/ve;

    .line 10
    .line 11
    iput-wide p6, p0, Lcom/byazt/omf/ve$1;->n:J

    .line 12
    .line 13
    iput-wide p8, p0, Lcom/byazt/omf/ve$1;->a:J

    .line 14
    .line 15
    iput-wide p10, p0, Lcom/byazt/omf/ve$1;->sp:J

    .line 16
    .line 17
    iput-object p12, p0, Lcom/byazt/omf/ve$1;->x:Ljava/lang/String;

    .line 18
    .line 19
    iput p13, p0, Lcom/byazt/omf/ve$1;->i:I

    .line 20
    .line 21
    iput-object p14, p0, Lcom/byazt/omf/ve$1;->da:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/omf/ve$1;->c:Lcom/byazt/omf/qy;

    .line 4
    .line 5
    const-string v2, "async_wait_cost"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/byazt/omf/qy;->tt(Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/byazt/omf/ve$1;->sl:Lcom/byazt/omf/ve;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/byazt/omf/ve$1;->tt:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v3, v0, Lcom/byazt/omf/ve$1;->ve:Lcom/byazt/dj/c;

    .line 15
    .line 16
    iget-object v4, v0, Lcom/byazt/omf/ve$1;->uj:Lcom/byazt/fb/ve;

    .line 17
    .line 18
    iget-object v5, v0, Lcom/byazt/omf/ve$1;->c:Lcom/byazt/omf/qy;

    .line 19
    .line 20
    invoke-static {v1, v2, v3, v4, v5}, Lcom/byazt/omf/ve;->c(Lcom/byazt/omf/ve;Landroid/content/Context;Lcom/byazt/dj/c;Lcom/byazt/fb/ve;Lcom/byazt/omf/qy;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v1, v0, Lcom/byazt/omf/ve$1;->c:Lcom/byazt/omf/qy;

    .line 27
    .line 28
    const-string v2, "async_done_cost"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/byazt/omf/qy;->tt(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    iget-wide v3, v0, Lcom/byazt/omf/ve$1;->n:J

    .line 38
    .line 39
    sub-long v11, v1, v3

    .line 40
    .line 41
    iget-object v1, v0, Lcom/byazt/omf/ve$1;->c:Lcom/byazt/omf/qy;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/byazt/omf/qy;->c()J

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    iget-wide v3, v0, Lcom/byazt/omf/ve$1;->n:J

    .line 51
    .line 52
    sub-long v13, v1, v3

    .line 53
    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    iget-wide v3, v0, Lcom/byazt/omf/ve$1;->a:J

    .line 59
    .line 60
    sub-long v9, v1, v3

    .line 61
    .line 62
    iget-object v5, v0, Lcom/byazt/omf/ve$1;->sl:Lcom/byazt/omf/ve;

    .line 63
    .line 64
    iget-object v6, v0, Lcom/byazt/omf/ve$1;->tt:Landroid/content/Context;

    .line 65
    .line 66
    iget-wide v7, v0, Lcom/byazt/omf/ve$1;->sp:J

    .line 67
    .line 68
    iget-object v15, v0, Lcom/byazt/omf/ve$1;->c:Lcom/byazt/omf/qy;

    .line 69
    .line 70
    const/16 v16, 0x1

    .line 71
    .line 72
    iget-object v1, v0, Lcom/byazt/omf/ve$1;->ve:Lcom/byazt/dj/c;

    .line 73
    .line 74
    move-object/from16 v17, v1

    .line 75
    .line 76
    iget-object v1, v0, Lcom/byazt/omf/ve$1;->x:Ljava/lang/String;

    .line 77
    .line 78
    move-object/from16 v18, v1

    .line 79
    .line 80
    iget v1, v0, Lcom/byazt/omf/ve$1;->i:I

    .line 81
    .line 82
    move/from16 v19, v1

    .line 83
    .line 84
    iget-object v1, v0, Lcom/byazt/omf/ve$1;->da:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 85
    .line 86
    move-object/from16 v20, v1

    .line 87
    .line 88
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->bw()Lcom/byazt/ogz/sp;

    .line 93
    .line 94
    .line 95
    move-result-object v21

    .line 96
    invoke-static/range {v5 .. v21}, Lcom/byazt/omf/ve;->c(Lcom/byazt/omf/ve;Landroid/content/Context;JJJJLcom/byazt/omf/qy;ZLcom/byazt/dj/c;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/ogz/sp;)V

    .line 97
    .line 98
    .line 99
    :cond_0
    return-void
.end method
